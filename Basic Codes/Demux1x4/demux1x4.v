module demux1x4(
    output reg [3:0] y,
    input [1:0] s,
    input din
);
always @(y,s) begin
  case (s)
    2'b00: begin
      y[0]=din;
      y[3:1]=0;
    end
    2'b01: begin
      y[1]=din;
      y[0]=0;
      y[3:2]=0;
    end
    2'b10: begin
      y[2]=din;
      y[3]=0;
      y[1:0]=0;
    end
    2'b11: begin
      y[3]=din;
      y[2:0]=0;
    end
    endcase
end
endmodule