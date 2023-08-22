module elevator_tb();
reg clk, rst, ra, rb, rc, rd;
wire [1:0] floor;

elevator dut(clk, rst, ra, rb, rc, rd, floor);

initial begin
clk = 1'b0;
forever #5 clk = ~clk;
end

initial begin
#5; rst = 1;
#10; rst = 0; ra = 0; rb = 0; rc = 1; rd = 0;
#10; ra = 0; rb = 0; rc = 0; rd = 1;
#10; ra = 1; rb = 0; rc = 0; rd = 0;
#10; ra = 0; rb = 1; rc = 0; rd = 0;
#10; ra = 0; rb = 1; rc = 1; rd = 0;
#10; ra = 0; rb = 1; rc = 0; rd = 1;
#10; ra = 1; rb = 0; rc = 0; rd = 1;
#10; ra = 0; rb = 1; rc = 0; rd = 0;
#10; ra = 0; rb = 0; rc = 1; rd = 1;
#10;
end

endmodule
