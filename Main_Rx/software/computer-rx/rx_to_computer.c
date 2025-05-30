#include <stdio.h>
#include <unistd.h>
#include <stdint.h>
#include "system.h"
#include "io.h"

int main() {
    while (1) {
        uint8_t sensor_val = IORD(PIO_BASE, 0);
        printf("Sensor value: %c\n", sensor_val);
        usleep(500000); // 0.5 seconds
    }

    return 0;
}
