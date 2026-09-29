`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 24.04.2026 11:58:00
// Module Name: home_alarm_tb
// Project Name: home_alarm_verilog
//////////////////////////////////////////////////////////////////////////////////


module home_alarm_tb();
reg Door01,Door02,Win01,Win02,en;
wire alarm;
home_alarm uut(Door01,Door02,Win01,Win02,en,alarm);
 initial
  begin
       Door01=0;Door02=0;Win01=0;Win02=0;en=1;
   #10 Door01=1;Door02=0;Win01=0;Win02=0;en=1;
   #10 Door01=0;Door02=1;Win01=0;Win02=0;en=1;
   #10 Door01=0;Door02=0;Win01=1;Win02=0;en=1;
   #10 Door01=0;Door02=0;Win01=0;Win02=1;en=1;
   #10 Door01=1;Door02=1;Win01=1;Win02=1;en=0;
   #10 $finish;
  end
endmodule
