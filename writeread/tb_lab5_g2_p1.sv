
module tb_lab5_g2_p1();
logic clk,reset,we;
logic [4:0] waddr,rs1,rs2;
logic [31:0] wbdata,rs1_data,rs2_data;
lab5_g2_p1 dut0(.clk(clk),.reset(reset),.we(we),
.waddr(waddr),.rs1(rs1),.rs2(rs2),.wbdata(wbdata),
.rs1_data(rs1_data),.rs2_data(rs2_data));
always begin
    clk=0; #5; clk=1; #5;
end
/*  READ 
initial begin
    rs1=5'b00001; #5; rs1=5'b00011; #5;
    rs1=5'b00011; #5; rs1=5'b00001; #5;
end
initial begin 
    rs2=5'b00011; #5; rs2=5'b00000; #5;
    rs2=5'b00001; #5; rs2=5'b00010; #5;
    $stop;
end */
// WRITE
initial begin 
  we=0; #10; we=1;
  waddr=5'b00010; wbdata=32'b00101010101011010101010101010001; #10;
  waddr=5'b00001; wbdata=32'b00000000000101010001000010100011; #10;
// yazilanlari oku
    rs1=5'b00010; rs2=5'b00001; #5;
    $stop;
end
endmodule