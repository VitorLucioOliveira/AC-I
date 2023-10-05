/*
 Guia_0402d.v
 810862 - Vitor Lucio de Oliveira
*/

module fxyz (output s1, output s2, input x, y, z);
assign s1 = (x & ~y ) | ( x | ~y );
assign s2 = (x | ~y)^2;
endmodule // fxyz

module Guia04;
	reg x, y, z;
	wire s1, s2, s3;

	fxyz FXY1 (s1, s2, x, y,z);


	initial begin: start
		x=1'bx; y=1'bx; z=1'bx; // indefinidos
	end

	initial begin: main
		// identificacao
		$display("Exemplo - Vitor Lucio de Oliveira - 810862");
        $display("Expressao: x' . y )' + ( x' + y )'");
        $display(" x  y  z | (x' . y )' + ( x' + y )'");
		
		// sinalizacao
		#1 x=0; y=0;z=0;
		$monitor("%2b %2b %2b = %2b  %2b", x, y, z, s1, s2);
		#1 x=0; y=0;z=1;
		#1 x=0; y=1;z=0;
		#1 x=0; y=1;z=1;
		#1 x=1; y=0;z=0;
		#1 x=1; y=0;z=1;
		#1 x=1; y=1;z=0;
		#1 x=1; y=1;z=1;
	end