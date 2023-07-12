module async_3bit_up_counter_tb();
reg clk,ja,ka,jb,kb,jc,kc;
wire qa,qb,qc;
async_3bit_up_counter dut(clk,ja,ka,jb,kb,jc,kc,qa,qb,qc);
initial begin 
  clk=1'b0;
     forever #10 clk = ~clk; 
end
initial begin 
ja = 1'b1;ka = 1'b1;
jb = 1'b1;kb = 1'b1;
jc = 1'b1;kc = 1'b1; 
end
endmodule
