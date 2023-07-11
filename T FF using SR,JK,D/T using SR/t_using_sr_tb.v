module t_using_sr_tb();
reg clk,reset,t;
wire q,q_bar;
t_using_sr TFF(clk,reset,t,q,q_bar);

initial begin
clk = 1'b0; 
forever #10 clk = ~clk;
end

initial begin
reset = 1'b1;#40;
reset = 1'b0;
end

initial begin
t = 1'b0;
 forever #20 t = ~t;
end
endmodule
