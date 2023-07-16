module mod_counter_tb();
reg clk,ja,ka,jb,kb,jc,kc;
wire qa,qb,qc;

mod_counter dut(clk,ja,ka,jb,kb,jc,kc,qa,qb,qc);

initial begin
clk = 1'b1;
forever #10 clk = ~clk;
end

initial begin
ja = 1;ka = 1;
jb = 1;kb = 1;
jc = 1;kc = 1;
end
endmodule








