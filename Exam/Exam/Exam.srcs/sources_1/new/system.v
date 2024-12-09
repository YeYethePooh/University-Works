`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2021 04:30:40 PM
// Design Name: 
// Module Name: system
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module system(
    output [6:0] seg,
    output dp,
    output [3:0] an,
    input [15:0] sw,
    input clk
    );
    
    reg [3:0] num3,num2,num1,num0; // left to right
    
    wire an0,an1,an2,an3;
    assign an={an3,an2,an1,an0};
    
    ////////////////////////////////////////
    // Clock
    wire targetClk;
    wire [18:0] tclk;
    
    assign tclk[0]=clk;
    
    genvar c;
    generate for(c=0;c<18;c=c+1) begin
        clockDiv fDiv(tclk[c+1],tclk[c]);
    end endgenerate
    
    clockDiv fdivTarget(targetClk,tclk[18]);
    
    ////////////////////////////////////////
    // Synchronizer
    wire [15:0] d,notd,d2,notd2;
    genvar n;
    generate for(n=0;n<16;n=n+1) begin
        dFlipflop dFF2(d2[n],notd2[n],sw[n],targetClk);
        dFlipflop dFF(d[n],notd[n],d2[n],targetClk);
    end endgenerate
    
    ////////////////////////////////////////
    // Single Pulser
    wire [3:0] binaryNum0;
    wire [3:0] binaryNum1;
    wire [3:0] binaryNum2;
    wire [3:0] binaryNum3;
    
    singlePulser spNum0_3(binaryNum0[3],d[3],targetClk);
    singlePulser spNum0_2(binaryNum0[2],d[2],targetClk);
    singlePulser spNum0_1(binaryNum0[1],d[1],targetClk);
    singlePulser spNum0_0(binaryNum0[0],d[0],targetClk);
    
    singlePulser spNum1_3(binaryNum1[3],d[7],targetClk);
    singlePulser spNum1_2(binaryNum1[2],d[6],targetClk);
    singlePulser spNum1_1(binaryNum1[1],d[5],targetClk);
    singlePulser spNum1_0(binaryNum1[0],d[4],targetClk);
    
    singlePulser spNum2_3(binaryNum2[3],d[11],targetClk);
    singlePulser spNum2_2(binaryNum2[2],d[10],targetClk);
    singlePulser spNum2_1(binaryNum2[1],d[9],targetClk);
    singlePulser spNum2_0(binaryNum2[0],d[8],targetClk);
    
    singlePulser spNum3_3(binaryNum3[3],d[15],targetClk);
    singlePulser spNum3_2(binaryNum3[2],d[14],targetClk);
    singlePulser spNum3_1(binaryNum3[1],d[13],targetClk);
    singlePulser spNum3_0(binaryNum3[0],d[12],targetClk);
    
    ////////////////////////////////////////
    // Converter
    reg [15:0] sum;
    always @(posedge targetClk) begin
        sum = binaryNum3*1000 + binaryNum2*100 + binaryNum1*10 + binaryNum0;
        num3 = sum/(16*16*16);
        num2 = (sum - num3*(16*16*16))/(16*16);
        num1 = (sum - num3*(16*16*16) - num2*(16*16)) / 16;
        num0 = (sum - num3*(16*16*16) - num2*(16*16) - num1*16);
    end
    ////////////////////////////////////////
    // Display
    quadSevenSeg q7seg(seg,dp,an0,an1,an2,an3,num0,num1,num2,num3,targetClk);
    
endmodule