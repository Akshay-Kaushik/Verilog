module mux2x1(input i0,
input i1,
input sel,
output Y
);
assign Y = sel ? i1 : i0;
endmodule