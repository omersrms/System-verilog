
module decoder(
input logic A,B,C,D,
output logic a,b,c,d,e,f,g
);

assign a=(~A & ~B & C) ;
assign b=(~A & B)|(A & ~B);
assign c=0;
assign d=(~A & ~B & C)|(A & B & C);
assign e=(A)|(~B & C & ~D);
assign f=(A & B);
assign g=(A & B & C);

endmodule