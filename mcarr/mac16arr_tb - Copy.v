
`timescale 1 ns / 1 ns
`include "mac16arr.v"

module mac16arr_tb();

	reg [7:0] a;
	reg [7:0] b;
	reg clk;
	reg rst;
	reg en;


	wire [15:0] ac_val;
	wire cout;
	mac16arr m1(ac_val,cout,a,b,clk,rst,en);
	initial 
repeat(15)
begin

		a = $random;
		b = $random;
		clk = 0;
		rst = 1;
		en = 0;

#100;             
                rst = 0;
                en = 1;
#100;
	end
 always #20 clk = ~clk;

initial
begin
#3000 $finish;
end     
endmodule


