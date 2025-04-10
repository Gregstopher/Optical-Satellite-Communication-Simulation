module tb_uart_rx;

  // Parameter
  parameter CLKS_PER_BIT = 1000;

  // Signal declarations
  logic clk;
  logic rst_n;
  logic rx_serial;
  logic [7:0] data;
  logic data_valid;

  // Instantiate the uart_rx module
  uart_rx #(.CLKS_PER_BIT(CLKS_PER_BIT))
  uut (
    .clk(clk),
    .rst_n(rst_n),
    .rx_serial(rx_serial),
    .data(data),
    .data_valid(data_valid)
  );

  // Clock generation: 50MHz (20 ns period)
  initial begin
    clk = 0;
    forever #10 clk = ~clk;
  end

  // Reset generation: Assert low for 100 ns
  initial begin
    rst_n = 0;
    rx_serial = 1'b1; // idle state for UART is high
    #100;
    rst_n = 1;
  end

  // Monitor data_valid and output received data
  always @(posedge clk) begin
    if (data_valid)
      $display("Time %0t: Received data = %0h", $time, data);
  end

  // Main stimulus: Send one UART frame
  initial begin
    // Wait for reset deassertion and stabilize
    @(posedge rst_n);
    repeat (5) @(posedge clk);

    // Send a UART frame:
    // UART idle is high, then start bit (0), followed by 8 data bits (LSB first) and a stop bit (1).
    // For example, sending 8'hA5 (1010_0101) -> LSB order: 1,0,1,0,0,1,0,1
    send_bit(0); // IDLE State
    send_bit(1); // start bit
    send_bit(1); // bit0
    send_bit(0); // bit1
    send_bit(1); // bit2
    send_bit(0); // bit3
    send_bit(0); // bit4
    send_bit(1); // bit5
    send_bit(0); // bit6
    send_bit(1); // bit7
    send_bit(0); // stop bit

    
    // Wait enough time for the receiver to process the frame
    #(CLKS_PER_BIT * 20);
    $finish;
  end

  // Task to hold each bit value for one bit period (CLKS_PER_BIT cycles)
  task send_bit(input bit bit_value);
    integer i;
    begin
      rx_serial = bit_value;
      for (i = 0; i < CLKS_PER_BIT; i = i + 1)
        @(posedge clk);
    end
  endtask

endmodule
