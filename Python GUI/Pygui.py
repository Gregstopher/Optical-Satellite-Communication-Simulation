# Pygui.py
# Description: simple gui object
# Author: Taewoo Kim
# Date: 2025-04-15


import tkinter as tk
from tkinter import ttk
from tkinter import messagebox as mb
from CommHandler import PyUART
import threading
import re
from time import sleep


class Py_Gui(tk.Tk):

    def __init__(self):
        
        # Initialization
        super().__init__()
        self.title("PortBridge")
        self.style = ttk.Style(self)
        
        try:
            self.tk.call("source", "forest-dark.tcl")
            self.style.theme_use("forest-dark")
        except Exception as e:
            print(f"Error loading theme: {e}")
            self.style.theme_use("default")  # Fallback theme


        # Initialize PortBridge
        self.uart_handler = None

        # Frame
        frame = ttk.Frame(self)
        frame.pack()

        # Frame - Widget frame
        self.widget_frame = ttk.Labelframe(frame, text="Basic Data")
        self.widget_frame.grid(row=0, column=0, padx=20, pady=10)

        # Frame - Widget frame - port & baud drop menu
        self.port_dropmenu()
        self.baud_rate_dropmenu()
        
        # Frame - Widget frame - Connect Port data button
        self.connect_button = ttk.Button(self.widget_frame, text="Connect", command=self.connection_thread)
        self.connect_button.grid(row=2, column=0, padx=5, pady=10, sticky="nsew")
        
        # Frame - Widget frame - Read Data button
        send_button = ttk.Button(self.widget_frame, text="Send Data", command=self.send_data)
        send_button.grid(row=3, column=0, padx=5, pady=10, sticky="nsew")
        
        # read_button = ttk.Button(self.widget_frame, text="Read Data", command=self.read_data)
        # read_button.grid(row=3, column=0, padx=5, pady=10, sticky="nsew")

        # Frame - Widget frame - Extract report button
        #disconnect_report_button = ttk.Button(widget_frame, text="Disconnect", command=self.disconnection_thread)
        #disconnect_report_button.grid(row=3, column=0, padx=5, pady=10, sticky="nsew")

        # Frame - Widget frame - Using continuous button mode
        #self.continuous_var = tk.IntVar()
        #self.continuous_chkbox = ttk.Checkbutton(widget_frame, text='Continuous Mode', variable=self.continuous_var, command=self.continous_mode_onoff)
        #self.continuous_chkbox.grid(row=5, column=0, padx=5, pady=10, sticky="nsew")

        # Seperator
        seperator = ttk.Separator(self.widget_frame)
        seperator.grid(row=6, column=0, padx=(20, 20), pady=10, sticky="ew")

        # Frame - widget frame - output
        self.output_box = tk.Text(self.widget_frame, height=4, width=3, wrap="word")
        self.output_box.grid(row=7, column=0, padx=10, pady=10, sticky="ew")

        # Frame - TreeFrame
        treeFrame = ttk.Labelframe(frame, text="Input Frame: Type what you want to send below")
        treeFrame.grid(row=0, column=1, padx=10, pady=10, sticky="new")

        # Frame - TreeFrame - text widget with wrapping
        self.input_data_frame = tk.Text(treeFrame, wrap="word")
        self.input_data_frame.grid(row=0, column=0, padx=2, pady=2, sticky="ew")


    def port_dropmenu(self):
        port_list = ['-'] + [f'COM{i}' for i in range(1, 10)]
        self.port_obj = ttk.Combobox(self.widget_frame, values=port_list)
        self.port_obj.grid(row=0, column=0, padx=5, pady=(0, 5), sticky="w")
    
    def baud_rate_dropmenu(self):
        br_list = ['-'] + ['1200', '2400', '4800', '9600', '19200', '38400', '57600', '115200']
        self.br_obj = ttk.Combobox(self.widget_frame, values=br_list)
        self.br_obj.grid(row=1, column=0, padx=5, pady=(0, 5), sticky="w")

    def clear_placeholder(self, entry_widget, placeholder):
        # Clear the placeholder text if it matches
        if entry_widget.get() == placeholder:
            entry_widget.delete(0, tk.END)

    def restore_placeholder(self, entry_widget, placeholder):
        # Restore the placeholder text if the entry is empty
        if not entry_widget.get():
            entry_widget.insert(0, placeholder)
 
    def display_output(self, output):
        # Clear the output box
        self.output_box.delete(1.0, tk.END)
        # Insert some sample output text
        self.output_box.insert(tk.END, output)
    
    def connection_thread(self):
        self.report_extraction_thread = threading.Thread(target=self.connection)
        self.report_extraction_thread.start()

    ###################################
    # Custom function for CommHandler #
    ###################################

    # Check if it connected properly
    def connection(self):
        # Retrieve port and baud rate from entries
        port = self.port_obj.get()
        baud_rate = self.br_obj.get()
        
        try:
            # Initialize and open UART connection
            self.uart_handler = PyUART(port, baud_rate)
            self.uart_handler.open()

            if self.connect_button["text"] == "Connect":
                if self.uart_handler.is_connect(): 
                    self.display_output(f"Successfully connected to port: {port} & baud rate: {baud_rate}")
                    self.connect_button["text"] = "Disconnect"
                    self.br_obj["state"] = "disable"
                    self.port_obj["state"] = "disable"
                    return True
                else:
                    Errormsg = f"Error: Failed connecting UART"
                    mb.showerror("showerror", Errormsg)
                    return False

            elif self.connect_button["text"] == "Disconnect":
                if self.disconnect_port():
                    self.connect_button["text"] = "Connect"
                    self.br_obj["state"] = "active"
                    self.port_obj["state"] = "active"
                    return True
                else:
                    Errormsg = f"Error: Failed disconnecting UART"
                    mb.showerror("showerror", Errormsg)
                    return False
            else:
                self.display_output(f"Error entering the loop")


        except Exception as e:
            self.display_output(f"Error: {e}")
            return False

    # Send Data if it's connected properly
    def send_data(self):
        if not self.uart_handler:
            self.display_output(f"Error: Please connect to the port first")
            return False
        elif not self.input_data_frame.get("1.0", "end-1c"):
            self.display_output(f"Error: Please Type something")
            return False
        try:
            tx_data = self.uart_handler.preprocess_data(self.input_data_frame.get("1.0", "end-1c"))
            print(f"{type(tx_data)}")
            self.uart_handler.send(tx_data)
        except Exception as E:
            self.display_output(f"Error: {E}")
        finally:
            self.display_output(f"Successfully sent {tx_data}")
           # sleep(1)
           # self.display_output(f"Now disconnecting")
           # self.uart_handler.close()
    
    # Receive Data if it's connected and run until it gets nothing or user stops
    def read_data(self):
        if not self.uart_handler.is_connect():
            self.display_output(f"Error: Please connect to the port first")
            return False
        try:
            # Clear the output box
            self.input_data_frame.delete(1.0, tk.END)
            while True:
                rx_data = self.uart_handler.receive()
                if rx_data:
                    self.display_output(f"Received: {rx_data}")
                    self.input_data_frame.insert(tk.END, rx_data)
                else:
                    break  # No more data, exit loop
        except KeyboardInterrupt:
            self.display_output("Reading stopped by user.")
        except Exception as E:
            self.display_output(f"Error: {E}")
        
        finally:
            self.uart_handler.close()
            self.display_output("Connection closed.")

    # Check if uart_handler object is initialized and close
    def disconnect_port(self):
        if self.uart_handler and self.uart_handler.close():
            self.display_output("Connection closed.")
            return True
        else:
            self.display_output("Nothing to close.")
            return False


    def is_number(self, input_data):
        # Regex pattern to check if the input is a valid number
        pattern = r'^-?\d+(\.\d+)?$'
        
        if isinstance(input_data, list):
            # Return False if any element is not a number
            return all(bool(re.match(pattern, str(item))) for item in input_data)
        
        # Handle single value input
        return bool(re.match(pattern, str(input_data)))


if __name__ == "__main__":
    app = Py_Gui()
    app.mainloop()