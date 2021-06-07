`timescale 1ns/1ns
`include "halfadder.v"
module halfadder_tb();
reg a;
reg b;
wire sum;
wire carry;

halfadder uut (a,b,sum,carry);
initial begin
    $dumpfile("halfadder_tb.vcd");
    $dumpvars(0,halfadder_tb);
    a=1'b0;
    b=1'b0;
    #10;
    a=1'b0;
    b=1'b1;
    #10;
    a=1'b1;
    b=1'b0;
    #10;
    a=1'b1;
    b=1'b1;
    #20;
    $display("All test cases completed");
end
endmodule