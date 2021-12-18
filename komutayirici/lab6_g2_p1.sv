
module lab6_g2_p1(
input logic [31:0] komut,
output logic [6:0] opcode,
output logic [3:0] aluop,
output logic [4:0] rs1,
output logic [4:0] rs2,
output logic [31:0] rs1_data,
output logic [31:0] rs2_data,
output logic [4:0] rd,
output logic [31:0] imm,
output logic hata
);
always_comb begin
    aluop=0;
    rs1=0;
    rs2=0;
    rd=0;
    imm=0;
    if(opcode==7'b0000001)
    begin
        aluop=komut[30]+komut[14:12];
        rs1=komut[19:15];
        rs2=komut[24:20];
        rd=komut[11:7];
        imm=0;
        hata=0;
    end
    else if(opcode==7'b0000011)
    begin
        aluop=komut[14:12];
        rs1=komut[19:15];
        rs2=0;
        rd=komut[11:7];
        imm=komut[31:20];
        hata=0;
    end
    else if(opcode==7'b0000111)
    begin
        aluop=0;
        rs1=0;
        rs2=0;
        rd=komut[11:7];
        imm=komut[31:12];
        hata=0;
    end
    else if(opcode==7'b0001111)
    begin
        aluop=komut[14:12];
        rs1=komut[19:15];
        rs2=komut[24:20];
        rd=0;
        imm[5:1]=komut[11:7];
        imm[12:6]=komut[31:25];
        hata=0;
    end
    else hata=1;
    end
assign opcode=komut[6:0];
assign rs1_data=0; // her zaman 0
assign rs2_data=0; // her zaman 0
endmodule