`include "barrel_shifter.v"
`timescale 1ns/1ns

module barrel_tb();
reg [7:0] a;
reg [2:0] amt;
wire [7:0] y;

barrel_shifter dut(.a(a), .amt(amt), .y(y));
initial begin 
    $dumpfile("barrel_tb.vcd");
    $dumpvars(0,barrel_tb);
    a=8'b11001100;
    amt=3'b000;
    #10;
    amt=3'b001;
    #10;
    amt=3'b010;
    #10;
    amt=3'b011;
    #10;
    amt=3'b100;
    #10;
    amt=3'b101;
    #10;
    amt=3'b110;
    #10;
    amt=3'b111;
    #10;
end
endmodule