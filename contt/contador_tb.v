module testbench(input wire En, Lad, input wire [11:0]Pre, output reg [11:0]Out);

cont(En,Lad,Pre,Out);
always #1 Out == Out;
initial Out =0;
    begin
      $dumpfile("fsm_tb.vcd");
      $dumpvars(0, cont);
    end
