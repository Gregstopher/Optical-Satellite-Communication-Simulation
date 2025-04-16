# CommHandler.py
# Description: simple communication handler object
# Author: Taewoo Kim
# Date: 2025-04-15

import serial


class PyUART:
    # To Do: Fix the way to get parity set
    def __init__(self, port, baudrate=9600, timeout=1):
        # Initialize the UART connection.
        self._port = port
        self._baudrate = baudrate
        #self._parity = parity <- Gets error
        self._timeout = timeout
        self._connection = None

    def open(self):
        # Connect to the UART
        try:
            self._connection = serial.Serial(
                port=self._port,
                baudrate=self._baudrate,
                bytesize=serial.EIGHTBITS,
                parity=serial.PARITY_NONE,
                stopbits=serial.STOPBITS_ONE,
                timeout= self._timeout
            )
            print(f"Connected to {self._port} at {self._baudrate} baud.")
        except serial.SerialException as e:
            raise(f"Failed to open port {self._port}: {e}")

    def close(self):
        # Close the UART
        if self._connection and self._connection.is_open:
            self._connection.close()
            print(f"Connection to {self._port} closed.")
            return True
        else:
            return False
    
    # Send data, data type must be bytes
    def send(self, data):
        if self._connection and self._connection.is_open:
            if isinstance(data, str):
                data = data.encode()
            self._connection.write(data)
            print(f"Sent: {data}")
        else:
            print("Connection is not open. Unable to send data.")

    def receive(self):
        # Receive data via UART
        if self._connection and self._connection.is_open:
            try:
                data = self._connection.readline().decode().strip()
                if data:  # Check if data is not empty
                    print(f"Received: {data}")
                    return data
                else:
                    print("No more data to read.")
                    return None
            except Exception as e:
                print(f"Error reading data: {e}")
                return None
        else:
            print("Connection is not open. Unable to receive data.")
            return None
        
    def is_connect(self):
        return self._connection.is_open
    
    def preprocess_data(self, data):
        if isinstance(data, str):
            return data.encode()  # Convert string to bytes
        elif isinstance(data, int) and 0 <= data <= 255:
            return bytes([data])  # Convert integer to single-byte bytes
        elif isinstance(data, list) and all(0 <= i <= 255 for i in data):
            return bytes(data)  # Convert list of integers to bytes
        elif isinstance(data, (bytes, bytearray)):
            return data  # Already in bytes, no conversion needed
        else:
            raise TypeError("Data must be str, bytes, bytearray, int, or list of int.")