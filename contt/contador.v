module cont ();
reg En, Load;
reg [11:0]Pre;
wire [11:0]Out;

case (Load)
0: case (En) begin
  0: Out =  Out ;
  1: Out = Out + 1;
  endcase
1: case (En) begin
  0: Out = Pre;
  1: Out = Pre + 1;
  endcase
endcase
end
endmodule
/*los casos dependen de el En si esta en 0 no cuenta
y si enta encendido si, de igual forma para el Load si esta 0
la salida no se ve afectada y si se encendido se carga el valor Pre*/
