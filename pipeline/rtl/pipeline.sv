module pipeline(
    input logic A,B,C,D,clk,
    output logic X,Y
    );
logic f0,f1,f2,f3,f4,f5,n9,n11,n10,n6;

assign #0.055 n9=f0|f1;
assign #0.0115 n11=~(f2^f3);
assign #0.05 n10=n9&n11;
assign #0.05 n6=f3&n10;
assign X=f4;
assign Y=f5;

always_ff @(posedge clk)
begin
    f0<=A;
    f1<=B;
    f2<=C;
    f3<=D;
    f4<=n10;
    f5<=n6;
end 
endmodule