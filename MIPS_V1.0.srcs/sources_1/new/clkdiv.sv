`timescale 1ns / 1ps

module clkdiv(
    input   logic mclk,
    output  logic clk380,
    output  logic clk48,
    output  logic clk0_4hz
    );
    logic [27:0]q;
    always@(posedge mclk)
         q<=q+1;
    assign clk380=q[17];
    assign clk48=q[20];
    assign clk0_4hz=q[26];         
endmodule
