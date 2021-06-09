module prio_encoder4x2(
    input [3:0] y,
    output reg [1:0] a
);
always @(y) begin
    casex (y)
    4'b0001: begin a=2'b00;
    end
    4'b001x: begin a=2'b01;
    end
    4'b01xx: begin a=2'b10;
    end
    4'b1xxx: begin a=2'b11;
    end
    endcase
    end
endmodule
