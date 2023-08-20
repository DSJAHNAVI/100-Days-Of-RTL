module alarm(input clk, rst, al, set_al_hr, set_al_min, input[7:0] hr, min, output buzzer, output reg [7:0] al_hr,al_min);
 reg[2:0] ps, ns;
 
 parameter SHOW_TIME  = 3'b000;
 parameter SHOW_ALARM = 3'b001;
 parameter INC_AL_HR  = 3'b010;
 parameter INC_AL_MIN = 3'b100;
 parameter ALARM_SET  = 3'b011;

always @(posedge clk or negedge rst) begin
   if (!rst)
     ps <= SHOW_TIME;
    else
     ps <= ns;
 end
 
 always@(*) begin
  case(ps)
	SHOW_TIME: begin
		if(al==1) ns= SHOW_ALARM;
		else ns = SHOW_TIME;
	end
	
	SHOW_ALARM: begin
		if(al==1 & set_al_hr==1) ns = INC_AL_HR;
		else if(al ==1 & set_al_min==1) ns = INC_AL_MIN;
		else if (al==0) ns = SHOW_TIME;
		else ns = SHOW_ALARM;
	end
	
	INC_AL_HR: begin
		al_hr = al_hr+1;
		if(set_al_hr==0 & set_al_min==0) ns = ALARM_SET;
		else if(set_al_hr==0 & set_al_min==1) ns = INC_AL_MIN;
		else ns = INC_AL_HR;
	end
	
	INC_AL_MIN: begin
		al_min = al_min+1;
		if(set_al_hr==0 & set_al_min==0) ns = ALARM_SET;
		else if(set_al_hr==1 & set_al_min==0) ns = INC_AL_HR;
		else ns = INC_AL_MIN;
	end
	
	ALARM_SET: begin
		ns = SHOW_ALARM;
	end
  endcase
 end
 
 initial begin
	al_hr = 0;
	al_min = 0;
	end
	
assign buzzer = (al_hr == hr & al_min == min)? 1:0;
endmodule
		
		
	