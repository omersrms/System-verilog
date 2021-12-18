
module lab5_g2_p1(
input logic clk,reset,
// write
input logic we,
input logic [4:0]waddr,
input logic [31:0]wbdata,
// read
input logic [4:0]rs1,
input logic [4:0]rs2,
output logic [31:0]rs1_data,
output logic [31:0]rs2_data
);
// read
logic [31:0] mem[0:3];
initial begin
$readmemh("reg_image.mem.txt",mem);
end
assign rs1_data=mem[rs1];
assign rs2_data=mem[rs2];
// write
always_ff @(posedge clk)
if(we) mem[waddr]<=wbdata;
endmodule