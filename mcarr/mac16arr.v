
module mac16arr(ac_val,cout,a,b,clk,rst,en);
	output reg[15:0]ac_val;
	output cout;
	input [7:0]a,b;
   input clk,rst,en;
	wire [15:0]p,s;
   reg [15:0] pipo;
   reg [15:0] product;	
	
	array8 v1(p,a,b);
	rca16bit s1(s,cout,pipo,product,1'b0);
	always@(posedge clk)
    	   if(rst)
      	   ac_val= 16'h0000;
    	   else if(en)
        	 begin
        	 ac_val =s; 
        	end
        
   	always@(negedge clk)
    	 if(rst)
      	 product = 16'h0000;
     	else if(en)
       	begin
          	  product = p;
      	 end
       
  	  always@(posedge clk)
    	 if(rst)
     	  pipo = 16'h0000;
    	 else if(en)
     	  pipo = s;

        
endmodule

module array8(t,a,b);
input [7:0]a,b;
output [15:0]t;
//output reg [15:0]p;
//input clk;
wire [7:0]w,w1,w2,w3,w4,w5,w6;
wire ca1,ca2,c,ca3;

array4 x1(w[7:0],a[3:0],b[3:0]);
array4 x2(w1[7:0],a[3:0],b[7:4]);
array4 x3(w2[7:0],a[7:4],b[3:0]);
array4 x4(w3[7:0],a[7:4],b[7:4]);

assign t[3:0]=w[3:0];
rca8bit n1(w4[7:0],ca1,w1[7:0],w2[7:0],1'b0);

rca8bit n2(w5[7:0],ca2,{4'b0,w[7:4]},w4[7:0],1'b0);
assign t[7:4]=w5[3:0];
//or qwe(c,ca1,ca2);

rca8bit n3(w6[7:0],ca3,w3[7:0],{3'b0,ca1,w5[7:4]},1'b0);

assign t[15:8]=w6[7:0];
//assign ca3;

endmodule

module array4(x,a,b);
input [3:0]a,b;
output [7:0]x;
wire [32:1]w;

and (x[0],a[0],b[0]);

and (w[1],a[1],b[0]);
and (w[2],a[0],b[1]);
hag h1(x[1],w[3],w[1],w[2]);

and (w[4],a[2],b[0]);
and (w[5],a[1],b[1]);
fag h2(w[6],w[9],w[5],w[4],w[3]);
and (w[7],a[0],b[2]);
hag h3(x[2],w[8],w[7],w[6]);

and (w[10],a[3],b[0]);
and (w[11],a[2],b[1]);
fag h4(w[12],w[15],w[11],w[10],w[9]);
and (w[18],a[1],b[2]);
fag h5(w[14],w[16],w[12],w[18],w[8]);
and (w[13],a[0],b[3]);
hag h6(x[3],w[17],w[14],w[13]);

and (w[23],a[3],b[1]);
hag h7(w[22],w[24],w[23],w[15]);
and (w[19],a[2],b[2]);
fag h8(w[21],w[26],w[22],w[19],w[16]);
and (w[20],a[1],b[3]);
fag h9(x[4],w[27],w[21],w[20],w[17]);

and (w[25],a[3],b[2]);
fag h10(w[29],w[32],w[24],w[25],w[26]);
and (w[28],a[2],b[3]);
fag h11(x[5],w[30],w[29],w[28],w[27]);

and (w[31],a[3],b[3]);
fag h12(x[6],x[7],w[32],w[31],w[30]);

endmodule

module hag(s,c,a,b);
input a,b;
output s,c;
xor a1(s,a,b);
and a2(c,a,b);
endmodule

module andg(output y,input a,b);

and a1(y,a,b);

endmodule

module fag(s,c,a,b,cin);
input a,b,cin;
output s,c;
wire [3:1]w;
xor x1(w[1],a,b);
and x2(w[2],a,b);
xor x3(s,w[1],cin);
and x4(w[3],cin,w[1]);
or x5(c,w[2],w[3]);
endmodule


module rca16bit(s,cout,a,b,cin);
input [15:0]a,b;
output [15:0]s;
input cin;
output cout;
wire cw;

rca8bit r0(s[7:0],cw,a[7:0],b[7:0],1'b0);
rca8bit r1(s[15:8],cout,a[15:8],b[15:8],cw);

endmodule

module rca8bit(s,cout,a,b,cin);
input [7:0]a,b;input cin;
output [7:0]s;
output cout;
wire [7:1]w;

//hag x1(s[0],w[1],a[0],b[0]);
fag x1(s[0],w[1],a[0],b[0],cin);
fag x2(s[1],w[2],a[1],b[1],w[1]);
fag x3(s[2],w[3],a[2],b[2],w[2]);
fag x4(s[3],w[4],a[3],b[3],w[3]);
fag x5(s[4],w[5],a[4],b[4],w[4]);
fag x6(s[5],w[6],a[5],b[5],w[5]);
fag x7(s[6],w[7],a[6],b[6],w[6]);
fag x8(s[7],cout,a[7],b[7],w[7]);
endmodule
