# Home Alarm (Verilog)

A small home security alarm project in Verilog. It has 2 door sensors and 2 window sensors. If any sensor is triggered while the enable switch is on, the alarm turns on.

## Tech and Tools

- Verilog HDL
- Xilinx Vivado (simulation and synthesis)
- FPGA board (switches as inputs, LED as output)

## Files

- `home_alarm.v` - main design
- `home_alarm_tb.v` - testbench for simulation
- `home_alarm.xdc` - pin constraints for the FPGA board

## Logic

```
alarm = en & (Door01 | Door02 | Win01 | Win02)
```