module bidirectional_sr(input clk,d,M,clr,output reg [3:0]Q);
always @(posedge clk)
begin
  if (clr)
   Q <= 0;
  else begin
    if(M)
   Q <= {Q[2:0], d};
  else
   Q <= {d, Q[3:1]};
   end
   end
endmodule