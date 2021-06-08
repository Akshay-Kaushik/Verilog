`include "fulladder.v"
`timescale 1ns/1ns
module fulladder_tb();
reg a;
reg b;
reg cin;
wire sum;
wire cout;
fulladder uut(.a(a),
.b(b),
.cin(cin),
.sum(sum),
.cout(cout));
initial begin
  $dumpfile("fulladder_tb.vcd");
  $dumpvars(0,fulladder_tb);
  a=1'b0;
  b=1'b0;
  cin=1'b0;
  #10
  a=1'b0;
  b=1'b0;
  cin=1'b1;
  #10;
  a=1'b0;
  b=1'b1;
  cin=1'b0;
  #10;
  a=1'b0;
  b=1'b1;
  cin=1'b1;
  #10;
  a=1'b1;
  b=1'b0;
  cin=1'b0;
  #10;
  a=1'b1;
  b=1'b0;
  cin=1'b1;
  #10;
  a=1'b1;
  b=1'b1;
  cin=1'b0;
  #10;
  a=1'b1;
  b=1'b1;
  cin=1'b1;
  #10;
end
endmodule