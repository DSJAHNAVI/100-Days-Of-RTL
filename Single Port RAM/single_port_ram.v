module single_port_ram(input [7:0] data, input [5:0] address, input en,write_enable,clk, output [7:0] q);

reg [7:0] ram [31:0];
reg [5:0] addr_reg;

always @(posedge clk)
    begin
	  if(en) begin
        if(write_enable)
           ram[address] <=data; 
        else
           addr_reg <=address;
		end
	  
	  else begin
	    ram[address] <= 32'bz; 
		addr_reg <= 32'bz;
	  end
	  end
    
assign q= ram[addr_reg];

endmodule 