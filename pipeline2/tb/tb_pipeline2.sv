
module tb_pipeline2();
logic clk,A,B,C,D,X,Y;

pipeline2 dut0(clk,A,B,C,D,X,Y);

always begin
    clk=1; #10;
    A=1; B=1; C=1; D=1; #100;
    clk=0; #200
    clk=1; #200;    
    A=0; B=1; C=0; D=1; #100;
    clk=0; #200
    clk=1; #200;
    A=1; B=1; C=0; D=0; #100;
    clk=0; #200
    clk=1; #200;
    A=1; B=0; C=1; D=1; #100;
    clk=0; #200
    clk=1; #200;
    #500; $stop;
end
endmodule
