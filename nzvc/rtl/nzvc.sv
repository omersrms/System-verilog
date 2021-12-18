
module nzvc(
    input logic [15:0] a,
    input logic [15:0] b,
    output logic HS,LS,HI,LO
);
logic n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12;
logic [3:0] pa,pb,pa2,pb2,pa3,pb3,pa4,pb4;

assign pa=a[15:12];
assign pb=b[15:12];

// A>B (4 bit)
n1=(pa[3]|(~pb[3])) & ((pa[3]^~pb[3])|pa[2]|(~pb[2])) & ((pa[3]^~pb[3])|(pa[2]^~pb[2])|pa[1]|(~pb[1])) & ((pa[3]^~pb[3])|(pa[2]^~pb[2])|(pa[1]^~pb[1])|pa[0]|(~pb[0]));
// A<B (4 bit)
n2=((~pa[3])|pb[3]) & ((pa[3]^~pb[3])|(~pa[2])|pb[2]) & ((pa[3]^~pb[3])|(pa[2]^~pb[2])|(~pa[1])|pb[1]) & ((pa[3]^~pb[3])|(pa[2]^~pb[2])|(pa[1]^~pb[1])|(~pa[0])|pb[0]);
// A=B (4 bit)
n3=(pa[3]^~pb[3])|(pa[2]^~pb[2])|(pa[1]^~pb[1])|(pa[0]^~pb[0]);
assign n4=n1;
assign n5=n2;
assign n6=n3;

    assign pa2=a[11:8];
    assign pb2=b[11:8];
// A>B (4 bit)
n4=(pa2[3]|(~pb2[3])) & ((pa2[3]^~pb2[3])|pa2[2]|(~pb2[2])) & ((pa2[3]^~pb2[3])|(pa2[2]^~pb2[2])|pa2[1]|(~pb2[1])) & ((pa2[3]^~pb2[3])|(pa2[2]^~pb2[2])|(pa2[1]^~pb2[1])|pa2[0]|(~pb2[0]));
// A<B (4 bit)
n5=((~pa2[3])|pb2[3]) & ((pa2[3]^~pb2[3])|(~pa2[2])|pb2[2]) & ((pa2[3]^~pb2[3])|(pa2[2]^~pb2[2])|(~pa2[1])|pb2[1]) & ((pa2[3]^~pb2[3])|(pa2[2]^~pb2[2])|(pa2[1]^~pb2[1])|(~pa2[0])|pb2[0]);
// A=B (4 bit)
n6=(pa2[3]^~pb2[3])|(pa2[2]^~pb2[2])|(pa2[1]^~pb2[1])|(pa2[0]^~pb2[0]);    

assign n7=n4;
assign n8=n5;
assign n9=n6;

    assign pa3[3:0]=a[7:4];
    assign pb3[3:0]=b[7:4];
// A>B (4 bit)
n7=(pa3[3]|(~pb3[3])) & ((pa3[3]^~pb3[3])|pa3[2]|(~pb3[2])) & ((pa3[3]^~pb3[3])|(pa3[2]^~pb3[2])|pa3[1]|(~pb3[1])) & ((pa3[3]^~pb3[3])|(pa3[2]^~pb3[2])|(pa3[1]^~pb3[1])|pa3[0]|(~pb3[0]));
// A<B (4 bit)
n8=((~pa3[3])|pb3[3]) & ((pa3[3]^~pb3[3])|(~pa3[2])|pb3[2]) & ((pa3[3]^~pb3[3])|(pa3[2]^~pb3[2])|(~pa3[1])|pb3[1]) & ((pa3[3]^~pb3[3])|(pa3[2]^~pb3[2])|(pa3[1]^~pb3[1])|(~pa3[0])|pb3[0]);
// A=B (4 bit)
n9=(pa3[3]^~pb3[3])|(pa3[2]^~pb3[2])|(pa3[1]^~pb3[1])|(pa3[0]^~pb3[0]);    

assign n10=n7;
assign n11=n8;
assign n12=n9;

    assign pa4[3:0]=a[4:0];
    assign pb4[3:0]=b[4:0];
// A>B (4 bit)
n10=(pa4[3]|(~pb4[3])) & ((pa4[3]^~pb4[3])|pa4[2]|(~pb4[2])) & ((pa4[3]^~pb4[3])|(pa4[2]^~pb4[2])|pa4[1]|(~pb4[1])) & ((pa4[3]^~pb4[3])|(pa4[2]^~pb4[2])|(pa4[1]^~pb4[1])|pa4[0]|(~pb4[0]));
// A<B (4 bit)
n11=((~pa4[3])|pb4[3]) & ((pa4[3]^~pb4[3])|(~pa4[2])|pb4[2]) & ((pa4[3]^~pb4[3])|(pa4[2]^~pb4[2])|(~pa4[1])|pb4[1]) & ((pa4[3]^~pb4[3])|(pa4[2]^~pb4[2])|(pa4[1]^~pb4[1])|(~pa4[0])|pb4[0]);
// A=B (4 bit)
n12=(pa4[3]^~pb4[3])|(pa4[2]^~pb4[2])|(pa4[1]^~pb4[1])|(pa4[0]^~pb4[0]);    


assign HS=n10|n12;
assign LS=n11|n12;
assign HI=n10;
assign LO=n11;

endmodule