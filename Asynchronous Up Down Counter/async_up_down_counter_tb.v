module async_up_down_counter_tb();
reg clk,m,ja,ka,jb,kb,jc,kc;
wire qa,qb,qc,qabar,qbbar,qcbar;
async_up_down_counter dut(clk,m,ja,ka,jb,kb,jc,kc,qa,qb,qc,qabar,qbbar,qcbar);
initial begin 
  m = 1'b1;
end
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



