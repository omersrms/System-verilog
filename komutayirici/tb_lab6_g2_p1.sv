
`timescale 1ns/1ps
module tb_lab6_g2_p1();
logic [31:0] komut;
logic [6:0] opcode;
logic [3:0] aluop;
logic [4:0] rs1,rs2,rd;
logic [31:0] imm;
logic hata;
lab6_g2_p1 dut0(.komut(komut),.opcode(opcode),.aluop(aluop),
.rs1(rs1),.rs2(rs2),.rd(rd),.imm(imm),.hata(hata));
initial begin
    komut=32'b00100000101011000101110110000001; #5;
    komut=32'b00100000101010000101110110000011; #5;
    komut=32'b00100000101010000101110110000111; #5;
    komut=32'b00100000101010001101110110001111; #5;
    komut=32'b00100000101010001101110110011111; #5;
    $stop;
end
endmodule