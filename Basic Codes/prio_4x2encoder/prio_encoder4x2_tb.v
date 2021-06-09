`include "prio_encoder4x2.v"
`timescale 1ns/1ns

module prio_encoder4x2_tb();
wire [1:0] a;
reg [3:0] y;
encoder4x2 uut(.y(y), .a(a));

initial begin
  $dumpfile("prio_encoder4x2_tb.vcd")
  $dumpvars(0,encoder4x2_tb);
  y-0;
  #20;
  y=4'b0000;
  #10;
  y=4'b0001;
  #10;
  y=4'b0010;
  #10;
  y=4'b0100;
  #10;
  y=4'b0110;
  #10;
  y=4'b1000;
  #10;
  y=4'b1010;
  #10;
  y=4'b0011;
  #10;
  y=4'b1111;
  #10;

end


endmodule