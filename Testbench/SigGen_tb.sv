`timescale 1ns/1ps

module siggen_tb;
    
    logic clk;
    logic rst_n;
    logic [7:0] pattern;
    logic out_bit;
    
    // Instantiate the siggen module
    siggen uut (
        .pattern(pattern),
        .clk(clk),
        .rst_n(rst_n),
        .out_bit(out_bit)
    );
    
    // Generate clock (50MHz -> 20ns period)
    always #10 clk = ~clk;
    
    initial begin
        // Initialize signals
        clk = 0;
        rst_n = 0;
        pattern = 8'b10011010;
        
        // Apply reset
        #50 rst_n = 1;
        
        // Monitor output
        $monitor("Time = %0t | State Output = %b", $time, out_bit);
        
        // Run for enough cycles to observe multiple frames
        #500;
        
        // Finish simulation
        $stop;
    end
endmodule
