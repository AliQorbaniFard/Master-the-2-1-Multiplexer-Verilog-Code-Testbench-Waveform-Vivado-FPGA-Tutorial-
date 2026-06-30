`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2026 10:40:24 AM
// Design Name: 
// Module Name: TB_Mux2_1
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


module TB_Mux2_1();

    reg     [1:0]in;
    reg     s;
    wire    out;

//---instantiating the UUT (unit under test)
    Mux2_1 uut(
    .in(in),
    .s(s),
    .out(out)
    );
    
    initial 
    begin
        in = 2'b00; s = 0; #10;
        in = 2'b01; s = 0; #10;
        in = 2'b10; s = 0; #10;
        in = 2'b10; s = 1; #10;
        in = 2'b01; s = 1; #10;
        in = 2'b11; s = 0; #10;
        in = 2'b11; s = 1; #10;
        
        $finish;
    end

endmodule
