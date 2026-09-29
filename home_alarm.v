`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 24.04.2026 11:53:38 
// Module Name: home_alarm
// Project Name: home_alarm_verilog
// 
//////////////////////////////////////////////////////////////////////////////////


module home_alarm(
    input Door01,
    input Door02,
    input Win01,
    input Win02,
    input en,
    output reg alarm
    );
    reg home_sec_status;
    always@(*)
    begin
     home_sec_status=Door01|Door02|Win01|Win02;
     alarm=en&home_sec_status;
    end
endmodule