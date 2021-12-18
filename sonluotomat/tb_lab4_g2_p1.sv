
module tb_lab4_g2_p1();
logic clk,reset,en;
logic [4:0] D;
logic baslat;
logic Y;
logic mesgul;
lab4_g2_p1 dut0(.clk(clk),.reset(reset),.en(en),.D(D),.baslat(baslat),.Y(Y),.mesgul(mesgul));
always begin
    clk=0; #5; clk=1; #5;
end
initial begin
   en=1; #200; en=0; #200; en=1; #200;
end
initial begin
   baslat=0; #40; baslat=1;#10;    
end
initial begin
    D=5'b01101; #600;
$stop;
end
endmodule

