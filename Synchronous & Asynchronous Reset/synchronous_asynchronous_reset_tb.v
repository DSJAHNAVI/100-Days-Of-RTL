module synchronous_asynchronous_reset_tb;
reg clk, rst, in;
wire async_out,sync_out;

synchronous_asynchronous_reset dut(clk, rst, in, async_out, sync_out);

initial begin
clk= 0; rst= 0; in= 1;
end

initial forever #100 clk<= ~clk;

initial forever #200 rst<= ~rst;

initial forever #300 in<= ~in;

endmodule