module prio_encoder4x2(
    input y[3:0],
    output a[1:0]
);
always @(y)
    begin
    casex(y)
    4'b0001: A=2'b00;
    4'b001x: A=2'b01;
    4'b01xx: A=2'b10;
    4'b1xxx: A=2'b11;
    end
endmodule