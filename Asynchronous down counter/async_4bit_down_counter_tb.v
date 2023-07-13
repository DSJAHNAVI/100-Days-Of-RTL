module async_4bit_down_counter_tb();
reg clk,ja,ka,jb,kb,jc,kc,jd,kd;
wire qa,qb,qc,qd,qabar,qbbar,qcbar,qdbar;
async_4bit_down_counter dut(clk,ja,ka,jb,kb,jc,kc,jd,kd,qa,qb,qc,qd,qabar,qbbar,qcbar,qdbar);
initial begin 
  clk=1'b0;
     forever #10 clk = ~clk;
end
initial begin 
ja = 1'b1;ka = 1'b1;
jb = 1'b1;kb = 1'b1;
jc = 1'b1;kc = 1'b1; 
jd = 1'b1;kd = 1'b1; 
end
endmodule



