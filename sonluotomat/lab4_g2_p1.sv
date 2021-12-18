
module lab4_g2_p1(
input logic clk,reset,en,
input logic [4:0] D,
input logic baslat,
output logic Y,
output logic mesgul
);

typedef enum{s0,s1,s2,s3,s4,s5,s6,s7} statetype;
statetype state,nextstate;

always_ff @(posedge clk)
state<=nextstate;

//-------------------nextstate logic
always_comb
case(state)
s0:
begin
    if(en && baslat)
        nextstate=s1;
        else nextstate=s0;
    end
s1:
begin
    if(en)
    nextstate=s2;
    else nextstate=s1;
end
s2:
begin 
if(en)
    nextstate=s3;
else nextstate=s2;
end
s3:
begin 
if(en)
    nextstate=s4;
else nextstate=s3;
end
s4:
begin 
if(en)
    nextstate=s5;
    else nextstate=s4;
end
s5:
begin 
if(en)
    nextstate=s6;
    else nextstate=s5;
end
s6:
begin 
if(en)
    nextstate=s7;
    else nextstate=s6;
end
s7:
begin 
if(en)
    nextstate=s0;
    else nextstate=s7;
end
default: 
nextstate=s0;
endcase
//-------------------OUTPUT logic
always_comb
begin
    if(state==s0)
    begin
        Y=1'b1;
        mesgul=1'b0;
    end
    else if(state==s1)
    begin
        Y=1'b0;
        mesgul=1'b1;
    end
    else if(state==s2)
    begin
        Y=D[0];
        mesgul=1'b1;
    end
    else if(state==s3)
    begin
        Y=D[1];
        mesgul=1'b1;
    end
    else if(state==s4)
    begin
        Y=D[2];
        mesgul=1'b1;
    end
    else if(state==s5)
    begin
        Y=D[3];
        mesgul=1'b1;
    end
    else if(state==s6)
    begin
        Y=D[4];
        mesgul=1'b1;
    end
    else if(state==s7)
    begin
        Y=1'b1;
        mesgul=1'b1;
    end
    else
    begin
        Y=1'b0;
        mesgul=1'b0;
    end
end
endmodule
