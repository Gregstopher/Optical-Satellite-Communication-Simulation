module UART_RX
  #(parameter CLKS_PER_BIT = 217) // Set the number of system clocks per UART bit
  (
   input        i_Clock,        // System clock input
   input        i_RX_Serial,    // UART RX line
   output       o_RX_DV,        // Output data valid pulse (1 cycle)
   output [7:0] o_RX_Byte       // Output byte received from UART
   );
   
  // State machine states
  parameter IDLE         = 3'b000; // Waiting for start bit
  parameter RX_START_BIT = 3'b001; // Validating the start bit
  parameter RX_DATA_BITS = 3'b010; // Receiving data bits
  parameter RX_STOP_BIT  = 3'b011; // Checking stop bit
  parameter CLEANUP      = 3'b100; // Resetting after byte received

  // Internal registers
  reg [7:0]     r_Clock_Count = 0;  // Counts clock cycles per bit
  reg [2:0]     r_Bit_Index   = 0;  // Tracks which bit is being received (0-7)
  reg [7:0]     r_RX_Byte     = 0;  // Stores received byte
  reg           r_RX_DV       = 0;  // Data valid flag
  reg [2:0]     r_SM_Main     = 0;  // State machine current state
  
  // RX state machine
  always @(posedge i_Clock)
  begin
    case (r_SM_Main)

      IDLE :
        begin
          r_RX_DV       <= 1'b0;     // Clear data valid flag
          r_Clock_Count <= 0;        // Reset clock counter
          r_Bit_Index   <= 0;        // Reset bit index

          if (i_RX_Serial == 1'b0)   // Detect start bit (line goes low)
            r_SM_Main <= RX_START_BIT;
          else
            r_SM_Main <= IDLE;
        end

      RX_START_BIT :
        begin
          if (r_Clock_Count == (CLKS_PER_BIT-1)/2) // Wait until middle of start bit
          begin
            if (i_RX_Serial == 1'b0) // Confirm it’s still low (valid start bit)
            begin
              r_Clock_Count <= 0;    // Reset counter
              r_SM_Main     <= RX_DATA_BITS; // Proceed to data bit reception
            end
            else
              r_SM_Main <= IDLE;    // False start bit, return to IDLE
          end
          else
          begin
            r_Clock_Count <= r_Clock_Count + 1; // Increment counter
            r_SM_Main     <= RX_START_BIT;     // Stay in start bit check
          end
        end

      RX_DATA_BITS :
        begin
          if (r_Clock_Count < CLKS_PER_BIT-1)
          begin
            r_Clock_Count <= r_Clock_Count + 1; // Wait full bit time
            r_SM_Main     <= RX_DATA_BITS;
          end
          else
          begin
            r_Clock_Count <= 0;                        // Reset counter
            r_RX_Byte[r_Bit_Index] <= i_RX_Serial;     // Sample received bit

            if (r_Bit_Index < 7)
            begin
              r_Bit_Index <= r_Bit_Index + 1;          // Move to next bit
              r_SM_Main   <= RX_DATA_BITS;
            end
            else
            begin
              r_Bit_Index <= 0;                        // All bits received
              r_SM_Main   <= RX_STOP_BIT;              // Move to stop bit
            end
          end
        end

      RX_STOP_BIT :
        begin
          if (r_Clock_Count < CLKS_PER_BIT-1)
          begin
            r_Clock_Count <= r_Clock_Count + 1; // Wait for full stop bit duration
            r_SM_Main     <= RX_STOP_BIT;
          end
          else
          begin
            r_RX_DV       <= 1'b1;     // Indicate data is valid
            r_Clock_Count <= 0;        // Reset counter
            r_SM_Main     <= CLEANUP;  // Move to cleanup state
          end
        end

      CLEANUP :
        begin
          r_SM_Main <= IDLE;    // Return to idle for next byte
          r_RX_DV   <= 1'b0;    // Clear data valid flag
        end

      default :
        r_SM_Main <= IDLE;      // Default to IDLE on invalid state

    endcase
  end    

  // Assign internal signals to output ports
  assign o_RX_DV   = r_RX_DV;
  assign o_RX_Byte = r_RX_Byte;
  
endmodule // UART_RX
