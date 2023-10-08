

module numero_display(

	//////////// KEY //////////
	input 		     [3:0]		KEY,

	//////////// SW //////////
	input 		    [17:0]		SW,
	
	//////////// SEG7 //////////
	output		     [6:0]		HEX7

);
	
wire [4:0]saida;

	numero numero_Synt(
							 .A(SW[3]),
							 .B(SW[2]),
							 .C(SW[1]),
							 .D(SW[0]),
							 .ready(~KEY[0]),
							 .reset(KEY[1]),
							 .saida(saida)
							 );
							 
	display display_Synt(.entradas(saida),
								.hex(HEX7)
								);


endmodule