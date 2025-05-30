// uart_rx.sv
// Description: This module receive the digital input using UART protocol
// Date: 2025-04-03
// Author: Taewoo Kim, Gregory Kirk

// #(parameter CLKS_PER_BIT = 1000) --> number of cycles it take to count the samples.
// clock divider --> 50MHz / 9600, = 50kHz = 1000

module uart_rx_standardize #(parameter CLKS_PER_BIT = 5208)

(
    input logic clk,           // System clock
    input logic rst_n,         // Active-low reset
    input logic rx_serial,     // Incoming serial data
    output logic [7:0] data,   // Received byte
    output logic data_valid    // High when data is ready
);


    logic [$clog2(CLKS_PER_BIT)-1:0] tick_count;        // Counts from 0 to 999
    logic [2:0] bit_count;         							  // Tracks number of bits received (0-7)
    logic [7:0] rx_shift_reg;      							  // Shift register to store received bits
    logic rx_sync_0, rx_sync_1;    							  // For metastability sync
    logic sample_enable;           							  // True when we sample the data bit
    logic rx_sync_1_prev;          							  // store the previous serial synced value
	 
	 
    // States for the State machine
    typedef enum logic [1:0] {
        IDLE,
        START,
        DATA,
        STOP
    } rx_state_t;


    rx_state_t state, next_state;
	 
	  
    // Give two cycles to stablize the serial input data
    always_ff @(posedge clk) begin
        rx_sync_0 <= rx_serial;      // wait for one cycle
        rx_sync_1 <= rx_sync_0;      // wait for next cycle to avoid metastability
    end

	 
    // counting logic if it's not at the IDLE state we should count the tick
    // if it's at the IDLE we reset the tick counter.
    always_ff @(posedge clk, negedge rst_n) begin
        if (~rst_n)
            tick_count <= 0;
        else if (state != IDLE) 
            tick_count <= (tick_count == CLKS_PER_BIT - 1) ? 0 : tick_count + 1;
        else
            tick_count <= 0;
    end

    // Sample in the middle of each bit (we are counting 16 so middle is 8)
    assign sample_enable = (tick_count == CLKS_PER_BIT / 2);  


    // state transition conditions
    always_comb begin
        
        next_state = state;
        data_valid = 0;
        
        case(state)

            IDLE : begin
					 
                if ((rx_sync_1 == 1'b0)) // detect the falling edge
                    next_state = START;
            end

            START : begin
                if (sample_enable) begin
                    if (rx_sync_1 == 1'b0)
                        next_state = DATA;
                    else
                        next_state = IDLE; // false start bit
                end
            end
            
            DATA : begin
                if (sample_enable) begin
                    if (bit_count == 3'd7)
                        next_state = STOP;
                end
            end
            
            STOP : begin
                if (sample_enable) begin
                    next_state = IDLE;
                    data_valid = 1;
                end
            end

            default : next_state = IDLE;

        endcase
    end

    // counting number of bits logic
    // it will count bits per cycles total 8 bits and at STOP it will send out the output.
    always_ff @(posedge clk, negedge rst_n) begin
        if (~rst_n) begin
            bit_count <= 0;
            rx_shift_reg <= 8'd0;
            data <= 8'd0;
        end 
        else begin
            if (state == DATA && sample_enable) begin
                rx_shift_reg <= {rx_sync_1, rx_shift_reg[7:1]}; // LSB first
                bit_count <= bit_count + 1;
            end

            if (state == STOP && sample_enable) begin
                data <= rx_shift_reg;
            end 

            if (state == IDLE)
                bit_count <= 0;
        end
    end 
    		  
    always_ff @(posedge clk, negedge rst_n) begin
        if (~rst_n)
            state <= IDLE; 		// reset to IDLE STATE
        else
            state <= next_state; // Transition to next state;
    end


endmodule