`timescale 1ns/1ps

module tb_decoder();
logic A,B,C,D;
logic a,b,c,d,e,f,g;

decoder dut0(A,B,C,D,a,b,c,d,e,f,g);

initial begin
    A=1;B=1;C=0;D=0; #20;
    if (e==1 & f==1) $display("3 (0000110) OK");
    A=0;B=0;C=1; #20;
    if (a==1 & d==1 & e==1) $display("4 (1001100) OK");
    A=1; #20;
    if (b==1 & e==1) $display("5 (0100100) OK");
    A=0;B=1; #20;
    if (b==1) $display("6 (0100000) OK");
    A=1; #20;
    if (d==1 & e==1 & f==1 & g==1) $display("7 (0001111) OK");
    A=0;B=0;C=0;D=1; #20;
    if (a==0 & b==0 & c==0 & d==0 & e==0 & f==0 & g==0) $display("8 (0000000) OK");
    $stop;
end
endmodule