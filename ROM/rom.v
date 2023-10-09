// ROM module design
module rom (input clk,en,input [3:0] addr, output reg [3:0] data);
reg [3:0] mem [15:0];
always @(posedge clk)begin
if (en)data <= mem[addr];
else data <= 4'bxxxx;
end
initial begin
mem [0] = 4'b0010;
mem [1] = 4'b0010;
mem [2] = 4'b1110;
mem [3] = 4'b0010;
mem [4] = 4'b0100;
mem [5] = 4'b1010;
mem [6] = 4'b1100;
mem [7] = 4'b0000;
mem [8] = 4'b1010;
mem [9] = 4'b0010; 
mem [10] = 4'b1110; 
mem [11] = 4'b0010; 
mem [12] = 4'b0100;
mem [13] = 4'b1010; 
mem [14] = 4'b1100;
mem [15] = 4'b0000; 
end
endmodule