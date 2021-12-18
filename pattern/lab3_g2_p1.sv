
module lab3_g2_p1(
input logic clk,reset,en,
input logic yon,
input logic [7:0] psc,
output logic tick
);

logic [31:0]count; 
logic [31:0]A=32'b00000000000000000000000000000001;
logic son;
logic [7:0] count2;

always_ff @(posedge clk)
begin 
if(yon==0)
    begin
    if(reset==0)    // yukarı yönlü
    count<=8'b00000000;

    else if(en)
        if(psc==count)
    begin
        tick=1;
        count<=0;
    end
    else 
    begin
        count<=count+1'b1;
        tick=0;
    end
end
if(yon==1)      // aşağı yönlü
    begin
   
   if(reset==0)
   begin
       count<=8'b00000000;
       count2<=0;
   end
   else if(en)
   begin
       if(psc==count)
   begin
       count<=0;
       tick=1;
       if(tick==1)
       begin
           count2<=A-1;
           son<=0;
           if(count2==0)
           begin
               count2<=A;
               son<=1;
           end
       end
   end
   else 
   begin
       count<=count+1'b1;
       tick=0;
   end
end
end
end
endmodule