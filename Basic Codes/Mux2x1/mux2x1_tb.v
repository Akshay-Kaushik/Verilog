`timescale 1ns/1ns
`include "mux2x1.v"
module mux2x1_tb();
reg i0;
reg i1;
reg sel;
wire Y;
mux2x1 uut(.i0(i0),
.i1(i1),
.sel(sel),
.Y(Y)
);
initial begin
  $dumpfile("mux2x1_tb.vcd");
  $dumpvars(0,mux2x1_tb);
  i0=1'b0;
  i1=1'b0;
  sel=1'b1;
  #100 $finish;
end
always #20 i0=~i0;
always #10 i1=~i1;
always #5 sel=~sel;
endmodule
