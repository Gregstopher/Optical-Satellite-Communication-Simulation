// SigGen.sv
// Description: This module generates the simple digital pattern
// Date: 2025-03-10
// Author: Taewoo Kim, Gregory Kirk

// Example: Pattern = 7'b1001011

module siggen ( input logic [6:0] pattern,
                input logic clk,
                input logic rst_n,
                output logic out_bit );
        
        // index to check if the pattern is over.
        logic [2:0] index;


        // Uses synchronous to gernerate the pattern pulses.
        always @(posedge clk, negedge rst_n) begin
            if(~rst_n) begin
                index <= 3'b0;
                out_bit <= pattern[0];
            end
            else begin
                if (index == 3'd6)
                    index <= 3'd0;
                else
                    index <= index + 1'b1;

                out_bit <= pattern[index];
            end
        end
    

endmodule