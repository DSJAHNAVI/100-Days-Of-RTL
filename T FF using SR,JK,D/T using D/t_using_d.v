module t_using_d(input clk,reset,t,output q,qbar);
wire w1;
assign w1 = q^t;
d_ff dut(clk,reset,w1,q,qbar);
endmodule 

module d_ff(input clk,reset,d,output reg q,output qbar);
always @(posedge clk) begin
if(!reset) begin
  q <= d;
end
else 
  q <= 0;
end
assign qbar = ~q;
endmodule


