// decode7.sv - ELEX 7660 lab1 7-segment display decoder
// Greg Kirk 2025-1-20

module decode7 (
    input logic [3:0] num,    // 4-bit input representing a hexadecimal number
    output logic [7:0] leds   // 8-bit output for 7-segment LED signals
);

// Combinational logic to map each hexadecimal digit to its 7-segment representation
always_comb
    case (num)
        0  : leds = 7'h3f;   // Display 0
        1  : leds = 7'h06;   // Display 1
        2  : leds = 7'h5b;   // Display 2
        3  : leds = 7'h4f;   // Display 3
        4  : leds = 7'h66;   // Display 4
        5  : leds = 7'h6d;   // Display 5
        6  : leds = 7'h7d;   // Display 6
        7  : leds = 7'h07;   // Display 7
        8  : leds = 7'h7f;   // Display 8
        9  : leds = 7'h67;   // Display 9
        10 : leds = 7'h77;   // Display A
        11 : leds = 7'h7c;   // Display B
        12 : leds = 7'h39;   // Display C
        13 : leds = 7'h5e;   // Display D
        14 : leds = 7'h79;   // Display E
        15 : leds = 7'h71;   // Display F
    endcase

endmodule
