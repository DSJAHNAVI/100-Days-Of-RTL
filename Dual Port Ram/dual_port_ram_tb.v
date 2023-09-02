module dual_port_ram_tb();

reg [7:0] data_a,data_b;
reg [5:0] addr_a,addr_b;
reg we_a,we_b, clk;
wire [7:0] q_a,q_b;

dual_port_ram dut(data_a,data_b,addr_a,addr_b,we_a,we_b,clk,q_a,q_b);

initial begin
    clk=1'b1;
    forever #5 clk=~clk;
end

initial begin
    data_a = 8'h55;//write the hex 55 to address 01 through port A
    addr_a = 6'd01;      

    data_b= 8'hA1; //write the hex A1 to address 01 through port B
    addr_b= 6'd12;      

	we_a = 1'b1; //enable port A write
	we_b = 1'b1; //enable port B write
	#10

    addr_a = 6'h02; //read data from address 02 from port A  
    #10;
    
    addr_b= 6'h01;  //read data from address 02 from port A
    #10;
	
	we_a = 1'b0; //enable port A read
	we_b = 1'b0; //enable port B read
	#10;
end

initial begin
$monitor("we_a: %b we_b: %b  addr_a: %h addr_b: %h data_a: %h data_b: %h q_a: %h q_b: %h", data_a,data_b,addr_a,addr_b,we_a,we_b,clk,q_a,q_b);
#60;
end
endmodule


