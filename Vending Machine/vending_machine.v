module vending_machine(input [1:0]coin,input clk,rst,output out,output change5,change10);
   reg [1:0]   ps;
   reg [1:0]   ns;
   parameter s0=2'd0;// 0 rupee
   parameter s1=2'd5;// 5 rupee
   parameter s2=2'd10;// 10 rupee
   always @(posedge clk or negedge rst) begin
       if (!rst) ps=s0;
       else
         ps=ns;
     end
	 
   always @(ps or coin) begin
    case (ps)
     s0: begin
           if (coin==2'd00) ns=s0;
           else if (coin==2'd05) ns=s1;
           else if (coin==2'd10) ns=s2;
		   else ns=s0;
        end	
     s1: begin
           if (coin==2'd00) ns=s0;
           else if (coin==2'd05) ns=s2;
           else if (coin==2'd10) ns=s0;
		   else ns=s0;
        end
	 s2: begin
           if (coin==2'd00) ns=s0;
           else if (coin==2'd05) ns=s0;
           else if (coin==2'd10) ns=s0;
		   else ns = s0;
        end
	 default: ns = s0;
    endcase
	end
assign change5 = ((coin == 2'd00 && ps == s1 && ns == s0)|(coin == 2'd10 && ps == s2 && ns == s0))?1:0;
assign change10 = (coin == 2'd00 && ps == s2 && ns == s0) ? 1:0;
assign out = ((coin == 2'd10 && ps == s1 && ns == s0)|(coin == 2'd10 && ps == s2 && ns == s0)|(coin == 2'd05 && ps == s2 && ns == s0));
endmodule