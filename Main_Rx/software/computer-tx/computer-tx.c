#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include "system.h"
#include "io.h"

int main() {
    char c;

    printf("Type characters to control the FPGA in real time!\n");

    while (1) {
        // Blocking read from JTAG UART
        c = getchar();

        // Write that byte to the PIO's base address
        IOWR_8DIRECT(PIO_BASE, 0, (uint8_t) c);

        // Echo back to console (debug)
        printf("You sent: %c (0x%02X)\n", c, (unsigned char) c);

        // optional small delay to avoid flooding
        usleep(10*1000); // 10ms
    }

    return 0;
}
