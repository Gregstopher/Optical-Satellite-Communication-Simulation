//freqgen.sv	module to generate frequency based on an input frequency up to ~1GHz
//25/3/20 Greg Kirk

module freqgen
#( parameter FCLK ) // clock frequency, Hz

( input logic [31:0] freq, // frequency to output on speaker
output logic new_freq, // speaker output
input logic reset_n, clk); // reset and clock

logic [31:0] count, increment; //can i even have a 64 bit counter??

always_ff @(posedge clk, negedge reset_n) 
begin
    if(~reset_n)
        begin
             count <= '0;
             new_freq <= '0; //what happens on reset
        end
	 else begin

    increment <= freq << 1; //generating the maximum count value

    //counting mechanism, once max is reached, toggle output and restart
    if(count < FCLK) count <= count + increment;
    else
    begin 
        new_freq <= ~new_freq;
        count <= '0;
    end
	 end
end

endmodule   