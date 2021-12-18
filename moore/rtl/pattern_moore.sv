module pattern_moore(
    input logic clk,A,
    output logic B
);
typedef enum {s0,s1,s2,s3,s4,s5} statetype;
statetype state,nextstate;

always_ff @(posedge clk)
state<=nextstate;

always_comb
case(state)
s0:
begin
    if(A) nextstate=s0;
    else nextstate=s1;
end
s1:
begin
    if(A) nextstate=s2;
    else nextstate=s1;
end
s2:
begin
    if(A) nextstate=s0;
    else nextstate=s3;
end
s3:
begin
    if(A) nextstate=s2;
    else nextstate=s4;
end
s4:
begin
    if(A) nextstate=s5;
    else nextstate=s1;
end
s5:
begin
    if(A) nextstate=s0;
    else nextstate=s1;
end
default: nextstate=s0;
endcase

assign B=(state==s5);

endmodule