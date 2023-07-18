module sync_up_counter_tb();
reg clk,reset,ta;
wire qa,qb,qc;
sync_up_counter dut(clk,reset,ta,qa,qb,qc);
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
endmodule