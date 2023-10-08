module numero(A,B,C,D,ready,reset, saida);
    //Entradas e Saidas do circuito


    //input [3:0] entrada
    input A,B,C,D,ready,reset;
   
    output reg [4:0]saida;

    //Conexoes intermediarias
    reg q;
    reg s4,s3,s2,s1,s0;


    //funcionamento do circuito
     initial begin
        //so modifica registrador
        q = 1'b0;
        saida = 5'b01010;
        

    end

    //procedimento ready
    always @(posedge ready) begin
        if(q == 1'b1 ) begin
            //verificar se reset foi apertado pelo menos 1 vez
            //so modifica registrador
            
            s4= A&(~B)&(~C) | (~A)&B&D | (~A)&B&C;
            s3= (~A)&B&C | (~B)&(~C)&(~D) | A&(~B)&(~C);
            s2 = (~B)&(~C) | (~A)&B&C&D;
            s1 = (~B)&(~C) | (~A)&(~B)&(~D);
            s0 = (~A)&(~B) | (~B)&(~C)&D;

				saida = {s4,s3,s2,s1,s0};
            //Saida do modulo
			end 
			
			if(reset == 1'b1) begin 
			saida = 5'b01010;
			end 		
			
        end 
	        
		always @(posedge reset) begin
			  if(q == 1'b0) begin
					q= 1'b1;
			  end
			  
		  end
		  
endmodule

module display(entradas,hex);
    input wire[4:0] entradas;
    output reg[6:0] hex;

    always @(*) begin
        case(entradas)
            5'b00000:   hex = 7'b1000000;
				5'b00101:   hex = 7'b1000000;
            5'b10000:   hex = 7'b1111001;
            5'b11000:   hex = 7'b0100100;
            5'b11100:   hex = 7'b0110000;
            5'b11110:   hex = 7'b0011001;
            5'b11111:   hex = 7'b0010010;
            5'b01111:   hex = 7'b0000010;
            5'b00111:   hex = 7'b1111000;
            5'b00011:   hex = 7'b0000000;
            5'b00001:   hex = 7'b0010000;
            default:    hex = 7'b0000110;
        endcase
    end

endmodule