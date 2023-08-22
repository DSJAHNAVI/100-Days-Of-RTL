module elevator(input clk, rst, ra, rb, rc, rd, output [1:0] floor);
// ra, rb, rc, rd are request from related floors A, B, C, D
parameter A=0, B=1, C=2, D=3;
reg [1:0]state;
reg dir;
parameter UP=0, DO=1;
//STATE DECLARATION
always @(posedge clk or posedge rst) begin
 if (rst) state <=A;
 else begin
  case (state)
    A: case (1)
	  ra: state <= A;
	  rb: state <= B;
	  rc: state <= C;
	  rd: state <= D;
    endcase
	B: case (dir)
	  UP: case (1) 
	    rb: state <= B;
	    rc: state <= C;
	    rd: state <= D;
	    ra: state <= A;
	  endcase
	  DO: case (1)
        rb: state <= B;
        ra: state <= A;
        rc: state <= C;
        rd: state <= D;
      endcase
	endcase
	C: case (dir)
	  UP: case (1)
		rc: state <= C;
		rd: state <= D;
		rb: state <= B;
		ra: state <= A;
	  endcase
	  DO: case (1)
		rc: state <= C;
		rb: state <= B;
		ra: state <= A; 
		rd: state <= D;
	  endcase
	endcase
    D: case (1)
	  rd: state <= D;
	  rc: state <= C;
	  rb: state <= B;
	  ra: state <= A;
    endcase
  endcase
 end
end
//FUNCTION WORKED IN RELATED STATES always @(posedge clk or posedge ist)
always @(posedge clk or posedge rst) begin
 if (rst) dir <= A;
 else begin
  case (state)
	A: case (1)
	  ra: dir <= UP;
	  rb: dir <= UP;
	  rc: dir <= UP;
	  rd: dir <= DO;
	  endcase
	B: case (dir)
	  UP: case (1)
		rb: dir <= UP;
		rc: dir <= UP;
		rd: dir <= DO;
		ra: dir <= UP;
	  endcase
	  DO: case (1)
		rb: dir <= DO;
		ra: dir <= UP;
		rc: dir <= UP;
		rd: dir <= DO;
	  endcase
	endcase
	C: case (dir)
	  UP: case (1)
		rc: dir <= UP;
		rd: dir <= DO;
		rb: dir <= DO;
		ra: dir <= UP;
	  endcase
	  DO: case (1)
		rc: dir <= DO;
		rb: dir <= DO;
		ra: dir <= UP; 
		rd: dir <= DO;
	  endcase
	endcase
	D: case (1)
	  rd: dir <= DO;
	  rc: dir <= DO;
	  rb: dir <= DO;
	  ra: dir <= UP;
	endcase
  endcase
 end
end
assign floor = state;
endmodule