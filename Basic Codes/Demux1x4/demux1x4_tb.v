`include "demux1x4.v"
`timescale 1ns/1ns

module demux1x4_tb();
wire [3:0] y;
reg [1:0] s;
reg din;

demux1x4 uut(.y(y), .s(s), .din(din));
initial begin
  $dumpfile("demux1x4_tb.vcd");
  $dumpvars(0,demux1x4_tb);
  din=1;
  s[1]=0;
  s[0]=0;
  #10;
  s[1]=0;
  s[0]=1;
  #10;
  s[1]=1;
  s[0]=0;
  #10;
  s[1]=1;
  s[0]=1;
  #10;
end
endmodule