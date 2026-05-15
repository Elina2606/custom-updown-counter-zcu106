# custom-updown-counter-zcu106
zcu106-updown-counter-verilog
This project implements a 3-bit synchronous up/down counter
with preset functionality and full flag generation on the
Xilinx ZCU106 FPGA board using Verilog HDL.

## Features

- 3-bit synchronous counter
- Up/Down counting
- Preset on reset
- Full flag pulse generation
- VIO and ILA debugging
- LED visualization
  #vivado setup
  <img width="940" height="541" alt="image" src="https://github.com/user-attachments/assets/07e4396c-fce1-42f6-8dc1-255ffce71b8d" />


  #simulation waveform
  <img width="782" height="434" alt="image" src="https://github.com/user-attachments/assets/2e1fa766-a89a-4080-9165-1075dd37dcec" />

  #schematic diagram
  <img width="940" height="444" alt="image" src="https://github.com/user-attachments/assets/3c550f23-d657-4566-bc0b-4fbc76759fab" />


//details of the design specification

Custom Up/Down Counter with Preset on ZCU106 Board
Goal: Implement a custom 3-bit up/down counter with preset values on reset and control signal on the ZCU106 evaluation board. This will involve design, simulation, hardware implementation, and validation using various tools.
Design Specifications:
Counter: 3-bit synchronous counter
Preset:
On reset:
If control signal L) is high: Preset to 3'b111
If control signal is low: Preset to 3'b000
During normal operation: No preset
Clock: 50 MHz
Up/Down: Controlled by separate Up/Down signal (UD)
Up: Counter increments on each clock cycle
Down: Counter decrements on each clock cycle
Full Flag: Asserted as a single pulse when counter reaches maximum value (3'b111) in Up mode or minimum value (3'b000) in Down mode
Reset: Asynchronous signal to reset the counter and full flag
Implementation Stages:
Design and Simulation:
Design the counter logic using Verilog or VHDL.
Implement testbench to verify the counter functionality under various conditions (reset, control signal, up/down, full flag).
Simulate the design using Vivado Simulator and ensure it meets all specifications.
Hardware Implementation:
Create a new Vivado project targeting the ZCU106 board.
Synthesize and implement the design on the ZCU106 FPGA fabric.
Generate bitstream and program the ZCU106 using JTAG or other programming methods.
Validation with VIO and ILA:
Use the Vivado Design Debugger (VIO) to monitor the counter values, control signals, and full flag in real-time.
Use the Integrated Logic Analyzer (ILA) to capture and analyze counter behavior over time.
Verify that the hardware implementation matches the simulated behavior.
Final Implementation with LEDs:
Connect the counter outputs to the on-board LEDs to visualize the counting sequence.
Ensure proper voltage levels and LED connections.
Test the Up/Down functionality, preset on reset, and full flag behavior using LEDs.



