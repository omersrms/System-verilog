
module multiplier(
    input logic [4:0] a,b,
    output logic [9:0] p
);
logic n1,n2,n3,n4,n5;
logic n6,n7,n8,n9,n10; // 1.5BIT FULL ADDER
logic n11,n12,n13,n14,n15; // 2.5BIT FULL ADDER
logic n16,n17,n18,n19,n20; // 3.5BIT FULL ADDER
logic n21,n22,n23,n24,n25; // 4.5BIT FULL ADDER
logic s1,s2,s3,s4,s5,c1,c2,c3,c4,c5; // 1.5BIT FULLADDER
logic s6,s7,s8,s9,s10,c6,c7,c8,c9,c10; // 2.5BIT FULLADDER
logic s11,s12,s13,s14,s15,c11,c12,c13,c14,c15; // 3.5BIT FULLADDER
logic s16,s17,s18,s19,s20,c16,c17,c18,c19,c20; // 4.5BIT FULLADDER
//-----------------------------------
assign n1=a[0]&b[0];
assign p[0]=n1;
assign n2=a[1]&b[0];
assign n3=a[2]&b[0];
assign n4=a[3]&b[0];
assign n5=a[4]&b[0];
assign n6=a[0]&b[1];
assign n7=a[1]&b[1];
assign n8=a[2]&b[1];
assign n9=a[3]&b[1];
assign n10=a[4]&b[1];

assign {s1,c1}=n2+n6+0;
assign {s2,c2}=n3+n7+s1;
assign {s3,c3}=n4+n8+s2;
assign {s4,c4}=n5+n9+s3;
assign {s5,c5}=n10+s4+0;
assign p[1]=c1;
//-----------------------------------
assign n11=a[0]&b[2];
assign n12=a[1]&b[2];
assign n13=a[2]&b[2];
assign n14=a[3]&b[2];
assign n15=a[4]&b[2];

assign {s6,c6}=c2+n11+0;
assign {s7,c7}=c3+n12+s6;
assign {s8,c8}=c4+n13+s7;
assign {s9,c9}=c5+n14+s8;
assign {s10,c10}=s5+n15+s9;
assign p[2]=c6;
//-----------------------------------
assign n16=a[0]&b[3];
assign n17=a[1]&b[3];
assign n18=a[2]&b[3];
assign n19=a[3]&b[3];
assign n20=a[4]&b[3];

assign {s11,c11}=c7+n16+0;
assign {s12,c12}=c8+n17+s11;
assign {s13,c13}=c9+n18+s12;
assign {s14,c14}=c10+n19+s13;
assign {s15,c15}=s10+n20+s14;
assign p[3]=c11;
//-----------------------------------
assign n21=a[0]&b[4];
assign n22=a[1]&b[4];
assign n23=a[2]&b[4];
assign n24=a[3]&b[4];
assign n25=a[4]&b[4];

assign {s16,c16}=c12+n21+0;
assign {s17,c17}=c13+n22+s16;
assign {s18,c18}=c14+n23+s17;
assign {s19,c19}=c15+n24+s18;
assign {s20,c20}=s15+n25+s19;
assign p[4]=c16;
assign p[5]=c17;
assign p[6]=c18;
assign p[7]=c19;
assign p[8]=c20;
assign p[9]=s20;
//-----------------------------------
endmodule

