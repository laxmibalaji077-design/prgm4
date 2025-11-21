`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:06:33 10/28/2024 
// Design Name: 
// Module Name:    binary_add_sub 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module binary_add_sub(
    input cin,
    output cout,
    output [3:0] sum,
    input [3:0] a,
    input [3:0] b
    );
wire c0,c1,c2,w1,w2,w3,w4;
xor n1(w1,b[0],cin);
xor n2(w2,b[1],cin);
xor n3(w3,b[2],cin);
xor n4(w4,b[3],cin);
fulladder FA0 (sum[0],c0,a[0],w1,cin);
fulladder FA1 (sum[1],c1,a[1],w2,c0);
fulladder FA2(sum[2],c2,a[2],w3,c1);
fulladder FA3 (sum[3],cout,a[3],w4,c2);




endmodule
