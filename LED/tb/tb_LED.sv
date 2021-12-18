`timescale 1ns/1ps

module tb_LED();
logic x,y,z;
logic A;

LED dut0(x,y,z,A);

initial begin
    x=0;y=0;z=0; #10;
    x=1; #10;
    y=1; #10;
    y=0;z=1; #10;
    y=1; #10;
    x=0;z=0; #10;
    y=0;z=1; #10;
    y=1; #10;
    $stop;
end
endmodule