module lab2_g2_p3(
    input reg clk,
    input  reg [31:0] a,b,
    input  reg [2:0] op,

    output reg [31:0] s,
    output reg n,z,v,c,
    output reg hata
);



always_ff @(posedge clk)
begin




    if(op==3'b000) // addition
    begin
    s=a+b;
    v=0;
    if(s[31]==1) c=1;    // carryout flag
    else c=0;            // 33. bit varsa taşmış demektir.
    end

    else if(op==3'b001) // substraction
    begin
    s=a-b;
    v=0;
    if(s[31]==1) c=1;    // carryout flag
    else c=0;            // 33. bit varsa taşmış demektir.
    end

    else if(op==3'b100) // shift left logical(A yı B kadar)
    begin
    s=a<<b[4:0];
    v=0;
    if(s[31]==1) c=1;    // carryout flag en sol bit
    else c=0;            // 33. bit varsa taşmış demektir.
    end

    else if(op==3'b010) // xor
    begin
    s=a^b;
    v=0;
    end

    else if(op==3'b101) // shift right logical(zaten kendi 0 padded)
    begin
    s=a>>b[4:0];
    v=0;
    if(s[0]==1) c=1;    // carryout flag en sağ bit
    else c=0;            // 33. bit varsa taşmış demektir.
    end

    else if(op==3'b110) // shift right arithmetic
    begin
    s=$signed(a)>>>b[4:0];

    if(s[0]==1) c=1;    // carryout flag en sağ bite bakılmalı
    else c=0;            // 33. bit varsa taşmış demektir.
    // overflow  sadece signed artimetic olanda
    if(a[31]==1'b0 & b[31]==1'b0 & s[31]==1'b1) v=1;
    else if(a[31]==1'b1 & b[31]==1'b1 & s[31]==1'b0) v=1;
    else v=0;
    end


    else if(op==3'b011) // or
    begin
    s=a|b;
    v=0;
    end

    else if(op==3'b111) // and
    begin
    s=a&b;
    v=0;
    end
    else hata=1; // ????????? kontrol et

    if(s[31]==1'b1) n=1;// negative flag
    else n=0;
    if(s==32'b00000000000000000000000000000000) z=1;
    else z=0;              // zero flag

end
endmodule