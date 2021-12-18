module tb_pattern_mealy();
logic clk,A;
logic B;
logic [31:0] p=32'b10100100100100100100100010011011;

pattern_mealy dut0(clk,A,B);
always begin
        clk=0;#5;clk=1;#5;
    end

initial begin
        A=0;#20;
        for(int i=0;i<32;i++) 
        begin
            A=p[31];
            p=p<<1'b1;
            #10;
        end
        #20;
        $stop;
    end

endmodule