module masterslave_jkff(input clk,reset,j,k, output q,qbar); 
   wire   qm,qbarm;  // The master's q & qbar output.
   wire   clks;  // The clock input to the slave 
   wire   j1,k1,j2,k2; 
   assign j2 = reset ? 0 : j1;
   assign k2 = reset ? 1 : k1;   
   assign j1 =  j&qbar;
   assign k1 =  k&q;  
   assign clks = ~clk;  
   jk_ff master(clk,j2,k2,qm,qbarm);
   jk_ff slave(clks, qm, qbarm,q, qbar);
endmodule

module jk_ff(input w,j,k,output Q,Qbar);
   wire   j1,k1;
   assign j1 = w&j;
   assign k1 = w&k;   
   assign Qbar = ~(k1|Q);
   assign Q = ~(j1|Qbar);
endmodule
  