`timescale 1ps/1ps

module tb_glitch();
logic a,b,c;
logic x;

glitch dut0(a,b,c,x);

initial begin
    a=0;b=0;c=0; #25;
    a=1;b=0;c=0; #25;
    a=0;b=1;c=0; #25;
    a=0;b=0;c=1; #25;
    a=1;b=1;c=0; #25;
    a=0;b=1;c=1; #25;
    a=1;b=0;c=1; #25;
    a=1;b=1;c=1; #25;
    $stop;
end
endmodule