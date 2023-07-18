module sync_up_down_counter_tb();
reg clk,reset,m,ta;
wire qa,qb,qc;
sync_up_down_counter dut(clk,reset,m,ta,qa,qb,qc);
initial begin
clk = 1'b0; 
forever #10 clk = ~clk;
end
initial begin
reset = 1'b1;#15;
reset = 1'b0;
end
initial begin
ta = 1'b1;
end
initial begin
m = 1'b1; 
forever #180 m = ~m;
end
endmodule
