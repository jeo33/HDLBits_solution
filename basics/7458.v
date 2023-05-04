module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
	wire a1,a2,a3,a4;
    assign a1=p2a&p2b;
    assign  a2=p1c&p1b&p1a;
    assign 	p2y=a1|a4;
    assign a3=p1f&p1e&p1d;
    assign a4=p2c&p2d;
    assign p1y=a3|a2;

endmodule