module tb_multiplier();
logic [4:0] a,b;
logic [9:0] p;

multiplier dut0(a,b,p);

initial begin
    a[0]=1; a[1]=0; a[2]=1; a[3]=1; a[4]=1; #50;
    b[0]=1; b[1]=1; b[2]=0; b[3]=0; b[4]=1; #50;

    if (p==a*b) $display("Results are same.");

    #1000; $stop;

end
endmodule
