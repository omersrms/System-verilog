module tb_fsm_3 ();
logic clk,A;
logic B;
logic [31:0] p=32'b10101010101010101010101010101010;
logic [31:0] p2=32'b01010101010101010101010101010101;
fsm_3 dut0(clk,A,B);
always begin
        clk=1;#5;clk=0;#5;
    end
initial begin
    A=0;#20;
        for(int i=0;i<32;i++) 
        begin
            A=p[31];
            p=p<<1'b1;
            #10;
        end
        #20
    A=1;#20;
        for(int i=0;i<32;i++) 
        begin
            A=p2[31];
            p2=p2<<1'b1;
            #10;
        end
        #20
        $stop;
end
endmodule