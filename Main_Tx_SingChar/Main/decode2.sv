// decode2.sv - ELEX 7660 lab1 2-to-4 decoder
// Greg Kirk 2025-1-20

module decode2 (
    input logic [1:0] digit,  // 2-bit input representing the active digit
    output logic [3:0] ct     // 4-bit output to enable specific digits
);

// Combinational logic to decode the digit into the corresponding enable signals
always_comb
    case (digit)
        0 : ct = 4'b1110;   // Enable digit 0
        1 : ct = 4'b1101;   // Enable digit 1
        2 : ct = 4'b1011;   // Enable digit 2
        3 : ct = 4'b0111;   // Enable digit 3
    endcase

endmodule
