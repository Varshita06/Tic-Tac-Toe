`include "Tcell.v"
`include "intial.v"
`include "reset.v"
`include "symb.v"
`include "dec.v"
`include "checkwin.v"
module TBox(input clk,input set,input reset,input [1:0]row,input [1:0]col,output [8:0]valid,output  [8:0]symbol,output  [1:0]game_state);

wire set_symbol;

/////decoder
wire [8:0] out;
dec d1(set,row,col,out);

////instantiate  
//inst i1(clk,reset,game_state,set_symbol); 

/////symbol generator
symb sb(clk,reset,valid,set_symbol);

//////tcells
 TCell t1(clk,out[0],reset,set_symbol,valid[0],symbol[0]);
 TCell t2(clk,out[1],reset,set_symbol,valid[1],symbol[1]);
 TCell t3(clk,out[2],reset,set_symbol,valid[2],symbol[2]);
 TCell t4(clk,out[3],reset,set_symbol,valid[3],symbol[3]);
 TCell t5(clk,out[4],reset,set_symbol,valid[4],symbol[4]);
 TCell t6(clk,out[5],reset,set_symbol,valid[5],symbol[5]);
 TCell t7(clk,out[6],reset,set_symbol,valid[6],symbol[6]);
 TCell t8(clk,out[7],reset,set_symbol,valid[7],symbol[7]);
 TCell t9(clk,out[8],reset,set_symbol,valid[8],symbol[8]);


/////check win
wire [1:0]prev_gs;
assign prev_gs=game_state;
win w1(valid,reset,symbol,prev_gs,game_state);



endmodule














