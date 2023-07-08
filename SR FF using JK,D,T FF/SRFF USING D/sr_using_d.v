module sr_using_d(input clk,s,r,output q,qbar);
   wire w1;
   assign w1 = (s)|(q&(~r));
   d_ff dut(clk, w1, q,qbar); 
endmodule

module d_ff(input clk,d,output reg q,output qbar);
always @(posedge clk) begin
q <= d;
end
assign qbar = ~q;
endmodule
