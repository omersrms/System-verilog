module LED(
input logic x,y,z,
output logic A
);

assign A=x^y^z;

endmodule