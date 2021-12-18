`timescale 1ps/1ps
module glitch(
input logic a,b,c,
output logic x
);
wire w1,w2,w4,w5;

assign #2 w4=(~a);
assign #2 w5=(~c);
assign #5 w1=(w4 & b);
assign #5 w2=(a & w5);

assign #6 x=w1|w2;

endmodule