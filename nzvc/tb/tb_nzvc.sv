module tb_nzvc();
logic [15:0] a,[15:0] b;
logic HS,LS,HI,LO;

nzvc dut0([15:0] a,[15:0] b,HS,LS,HI,LO);

always begin
        a=0; b=0; #100;
        a=0; b=0; #100;
        a=0; b=0; #100;
        $stop;
end
endmodule