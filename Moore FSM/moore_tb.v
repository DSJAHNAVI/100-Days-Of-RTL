module moore_tb;
reg clk, rst, x;
wire z; 
moore dut(clk, rst, x, z);
initial begin
clk = 0;   
forever #5 clk = ~clk;
end
initial begin
 $monitor("%0t: x = %0b, z = %0b", $time, x, z);
 x = 1'b0;
 #1 rst = 0;
 #2 rst = 1;
 x = 1'b1;
repeat (5)
#3 x = ~x;
end
endmodule


