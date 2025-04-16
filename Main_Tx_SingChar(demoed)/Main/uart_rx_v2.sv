// uart_rx_v2.sv
// Description: This module for UART in standardized way testing version 2
// Date: 2025-04-10
// Author: Taewoo Kim, Gregory Kirk

module uart_rx_v2 #(
    parameter CLK_FREQ = 50_000_000,   // 50 MHz FPGA clock
    parameter BAUD_RATE = 9600
)(
    input  logic clk,
    input  logic rst_n,
    input  logic rx,          // UART receive pin
    output logic [7:0] data,
    output logic data_ready
);

    localparam integer CLKS_PER_BIT = CLK_FREQ / BAUD_RATE;

    typedef enum logic [2:0] {
        IDLE,
        START,
        DATA,
        STOP,
        DONE
    } state_t;

    state_t state;
    logic [$clog2(CLKS_PER_BIT)-1:0] clk_cnt;
    logic [2:0] bit_idx;
    logic [7:0] rx_shift;
    logic sample_enable, rx_prev;
    logic rx_sync_0, rx_sync_1;    							  // For metastability sync

    always_ff @(posedge clk) begin
        rx_sync_0 <= rx;             // wait for one cycle
        rx_sync_1 <= rx_sync_0;      // wait for next cycle to avoid metastability
        rx_prev <= rx_sync_1;
    end

    // counting logic if it's not at the IDLE state we should count the tick
    // if it's at the IDLE we reset the tick counter.
    always_ff @(posedge clk, negedge rst_n) begin
        if (~rst_n)
            clk_cnt <= 0;
        else if (state != IDLE) 
            clk_cnt <= (clk_cnt == CLKS_PER_BIT - 1) ? 0 : clk_cnt + 1;
        else
            clk_cnt <= 0;
    end

    // Sample in the middle of each bit (we are counting 16 so middle is 8)
    assign sample_enable = (clk_cnt == CLKS_PER_BIT / 2);  


    always_ff @(posedge clk, negedge rst_n) begin
        if (~rst_n) begin
            state      <= IDLE;
            bit_idx    <= 0;
            rx_shift   <= 0;
            data_ready <= 0;
        end else begin
            data_ready <= 0;
            case (state)
                IDLE: begin
                    if (rx_sync_1 == 0 && rx_prev == 1) begin
                        bit_idx <= 0;
                        state   <= START;
                    end
                end

                START: begin
                    if (sample_enable) begin
                        if (rx_sync_1 == 0) begin // still low = valid start bit
                            state   <= DATA;
                            bit_idx <= 0;
                        end
                    end
                end

                DATA: begin
                    if (sample_enable) begin
                        rx_shift[bit_idx] <= rx_sync_1;
                        if (bit_idx == 7) begin
                            state <= STOP;
                        end else begin
                            bit_idx <= bit_idx + 1;
                        end
                    end
                end

                STOP: begin
                    if (sample_enable) begin
                        state <= DONE;
                    end
                end

                DONE: begin
                    data       <= rx_shift;
                    data_ready <= 1;
                    state      <= IDLE;
                end
            endcase
        end
    end
endmodule
