module johnson_counter_tb();

parameter N=4;
reg clk, reset;
wire [N-1:0] Q;

johnson_counter JC(clk, reset, Q);

initial begin
clk= 1'b0;
forever #5 clk= ~clk;
end

initial begin 
reset= 1'b1;
#10;
reset= 1'b0;
end

endmodule
