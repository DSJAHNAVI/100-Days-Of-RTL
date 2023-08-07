module traffic__light_controller( input [1:0]sensor, input clk, rst_n, output reg[2:0]light_highway, light_farm);
  parameter S0 = 3'b000, // Highway green and farm red
    		S1 = 3'b001, // Highway yellow and farm red
		    S2 = 3'b010, // Highway red and farm green
		    S3 = 3'b011, // Highway red and farm yellow
			S4 = 3'b100, // Additional State for delay of farm green
			S5 = 3'b101; // Additional State for delay of Highway green
		  
  reg[2:0] ps, ns;

  always @(posedge clk or negedge rst_n) begin 
    if(~rst_n)ps <= 3'b000;
    else ps <= ns; 
  end

  always @(*) begin
    case(ps)
	 S0: begin
	    light_highway = 3'b001;
        light_farm = 3'b100;
		ns = S5;
	end
	
	S1: begin 
	   light_highway = 3'b010;
	   light_farm = 3'b100;
	   if(sensor == 01) ns = S2;
	   else ns = S0;
	end
	
	S2: begin
	   light_highway = 3'b100;
	   light_farm = 3'b001;
	   ns = S4;
    end
	
	S3: begin
	   light_highway = 3'b100;
	   light_farm = 3'b010;
	   if(sensor == 01) ns = S2;
	   else ns = S0;
	end
	
	S4: begin
	   light_highway = 3'b100;
	   light_farm = 3'b001;
	   if(sensor == 01) ns = S2;
	   else ns = S3;
	end
	
	S5: begin
	   light_highway = 3'b010;
	   light_farm = 3'b100;
	   if(sensor == 01) ns = S1;
	   else ns = S0;
	end
	
	default: begin
	   light_highway = 3'b001;
       light_farm = 3'b100;
	   ns = S0;
	end
	endcase
  end
endmodule
	 
