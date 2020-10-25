module rom_us(
add ,
dato,
read_en,
chip
);
input [11:0] add;
output [7:0] dato;
input read_en;
input chip;

reg [7:0] memoria [0:255];

assign dato = (chip&&read_en)? memoria[add]: 8'b0;
initial begin
$readmemb("memoria.list", memoria);
end
endmodule
/*con este codigo podemos extraer valores especificos del
archivo de la memoria*/
module rom_us_case(
add,
dato,
read_en,
chip
);
input [3:0] add;
output [7:0] dato;
input read_en;
input chip;

reg [7:0] dato;
always @ (chip or read_en or add)
begin
case (add)
0: dato = 0;
1: dato = 1;
2: dato = 2;
3: dato = 3;
4: dato = 4;
5: dato = 5;
6: dato = 6;
7: dato = 7;
8: dato = 8;
9: dato = 9;
endcase
end
endmodule
/*con este codigo podemos escribir sobre
los valores de la memoria*/
//El readmemh es para leer exagesimales
// el readmemb es para leer binarios 
