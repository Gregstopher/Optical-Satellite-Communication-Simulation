// SigGen.sv
// Description: This module generates the simple digital pattern
// Date: 2025-03-10
// Author: Taewoo Kim, Gregory Kirk

// Example: Pattern = 8'b10011010;

module siggen ( input logic [7:0] pattern,
                input logic clk,
                input logic rst_n,
                output logic out_bit );
        
        // index to check if the pattern is over.
        logic [2:0] index;
		  
		  
		  // satemachine to track uart
		  typedef enum logic [1:0] { IDLE = 2'b00, START = 2'b01, DATA = 2'b10, STOP = 2'b11 } state_t;
		  state_t state, next_state;
		  
		  
        // Uses synchronous to gernerate the pattern pulses.
        always_ff @(posedge clk, negedge rst_n) begin
            
				if(~rst_n) begin
                index <= 3'd0;
            end
            
				else if(state == START)
					index <= 3'd0;  // Ensure index starts properly at the first data bit
				else if(state == DATA) 
					index <= (index == 3'd7) ? 3'd0 : index + 1'b1;
				
				else 
					index <= 3'd0;
        end
    
		  
		  always_comb begin
				
				
				// Initialize the variables
				next_state = state;
				out_bit = 1'b0;
				
				case (state)
					
					IDLE : begin
						out_bit = 1'b0;
						if(index == 3'd0)
							next_state = START;
						else
							next_state = IDLE;
					end
					
					START : begin
						out_bit = 1'b1;
						next_state = DATA;	
					end
					
					DATA : begin
						out_bit = pattern[index];
						next_state = (index == 3'd7) ? STOP : DATA;
					end
					
					STOP : begin
						out_bit = 1'b0;
						if (index == 3'd0)
							next_state = IDLE;
						//next_state = (index == 3'd0) ? IDLE : STOP;
					end
					
					default: next_state = IDLE;
				
				endcase	
		  end
		  
		  always_ff @(posedge clk, negedge rst_n) begin
				if (~rst_n)
					state <= IDLE; 		// reset to IDLE STATE
				else
					state <= next_state; // Transition to next state;
		  end

endmodule