module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    integer i;
    always@(*)begin
        
        
    reg [99:0] c,d;
        c=100'b0;
        d=100'b0;
        for(i=0;i<100;i=i+1)begin
            if(a[i]&b[i])begin
                c[i]=1;
                if(i==0)begin
                    d[i]=(cin==1'b1)?1'b1:1'b0;
                    end
                else d[i]=(c[i-1]==1'b1)?1'b1:1'b0;
        	end
            else if(a[i]|b[i])begin
                 if(i==0)begin
                     c[i]=(cin==1'b1)?1'b1:1'b0;
                	d[i]=(cin==1'b1)?1'b0:1'b1;
                    end
                else begin
                c[i]=(c[i-1]==1'b1)?1'b1:1'b0;
                d[i]=(c[i-1]==1'b1)?1'b0:1'b1;
                end
        	end
            else begin
                if(i==0)begin
                     c[i]=0;
                    d[i]=(cin==1'b1)?1'b1:1'b0;
                    end
                else begin
                 c[i]=0;
                d[i]=(c[i-1]==1'b1)?1'b1:1'b0;
                end
               
        	end      
            end
            cout=c;
        	sum=d;
        end 


endmodule
