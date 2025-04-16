	soft_processor u0 (
		.clk_clk             (<connected-to-clk_clk>),             //            clk.clk
		.gpio_export         (<connected-to-gpio_export>),         //           gpio.export
		.reset_reset_n       (<connected-to-reset_reset_n>),       //          reset.reset_n
		.spi_0_external_MISO (<connected-to-spi_0_external_MISO>), // spi_0_external.MISO
		.spi_0_external_MOSI (<connected-to-spi_0_external_MOSI>), //               .MOSI
		.spi_0_external_SCLK (<connected-to-spi_0_external_SCLK>), //               .SCLK
		.spi_0_external_SS_n (<connected-to-spi_0_external_SS_n>)  //               .SS_n
	);

