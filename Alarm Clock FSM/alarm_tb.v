module alarm_tb();
	reg clk, rst, al, set_al_hr, set_al_min; 
	reg [7:0] hr, min;
	wire buzzer;
	wire [7:0] al_hr,al_min;


    // Instantiate the module to be tested
    alarm DUT (clk, rst, al, set_al_hr, set_al_min, hr, min, buzzer, al_hr,al_min);

    // Clock generation
    always #1 clk = ~clk;

    // Initialize signals
    initial begin
        clk = 0; rst = 1; al = 0;
        #1 rst = 0;
		#2 rst = 1;
		//set alarm at 05:05
		#2; al = 1; set_al_hr=0; set_al_min=0;
		#2; al = 1; set_al_hr=1; set_al_min=0;
		#10; al = 1; set_al_hr=0; set_al_min=1;
		#10; al = 1; set_al_hr=0; set_al_min=0;
		#2; al = 0;
	end
		
	initial begin
		
		for(hr = 00; hr<24; hr = hr+1) begin
			for(min = 00;min<60;min = min+1) begin
				$display( "%d : %d",hr,min);
				#1;
			end
		end
    end
    
	
	
endmodule
