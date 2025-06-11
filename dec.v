module dec( input set,input [1:0] row,input [1:0] col,output reg [8:0]out);
always @(*) begin
    
        out[0]=~row[1]&row[0]&~col[1]&col[0]&set;
        out[1]=~row[1]&row[0]&col[1]&~col[0]&set;
        out[2]=~row[1]&row[0]&col[1]&col[0]&set;
        out[3]=row[1]&~row[0]&~col[1]&col[0]&set;
        out[4]=row[1]&~row[0]&col[1]&~col[0]&set;
        out[5]=row[1]&~row[0]&col[1]&col[0]&set;
        out[6]=row[1]&row[0]&~col[1]&col[0]&set;
        out[7]=row[1]&row[0]&col[1]&~col[0]&set;
        out[8]=row[1]&row[0]&col[1]&col[0]&set;
    end
    

endmodule