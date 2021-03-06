module fsm_3(
    input logic clk,A,
    output logic B
);
typedef enum {s0,s1,s2,s3,s4} statetype;
statetype state, nextstate;

always_ff @(posedge clk)
state<=nextstate;

always_comb
case(state)
s0:
// S0 gecislerinde glitch var cozulmedi
begin
    if(A) nextstate=s1;
    else nextstate=s3;
end
s1:     nextstate=s2;
s2:     nextstate=s0;
s3:     nextstate=s4;
s4:     nextstate=s0;
default: nextstate=s0;
endcase
assign B=(((state==s1))|((state==s2))|((state==s0)&(A==1)));
// S0 gecislerinde glitch var cozulmedi
endmodule
