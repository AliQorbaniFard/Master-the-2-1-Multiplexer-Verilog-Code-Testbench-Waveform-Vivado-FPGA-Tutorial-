`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2026 10:25:00 AM
// Design Name: 
// Module Name: Mux2_1
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


module Mux2_1(
    input [1:0] in,
    input s,
    output reg out
    );
    
    always @(*)                       //truth table:
    begin                            // s==0 --> out = in[0]           
                                    //  s==1 --> out = in[1]
    if(s)                            
    out = in[1];
    else
    out = in[0];
    
    end
    
endmodule
