module d_ff(input d,clk,output reg q,output qbar);
always @(posedge clk) begin
q <= d;
end
assign qbar = ~q;
endmodule



