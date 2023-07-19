module sync_ring_counter_tb();
parameter N=4;

reg clk, reset;
wire [N-1:0] Q;

sync_ring_counter dut(clk, reset, Q);

initial begin
    clk= 1'b0;
    forever #5 clk= ~clk;
    end

initial begin 
    reset = 1;
    #10;
    reset = 0;
    end
endmodule