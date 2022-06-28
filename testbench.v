`timescale 1ns / 1ns
module testbench();
  parameter half_clk_cycle = 5;
  reg clk, reset, start;
  wire ready;
  wire [31:0] ret;

  top UUT (clk, reset, start, ready, ret);
  always #half_clk_cycle clk = ~clk;
  initial begin
    $dumpfile("dff.vcd");
    $dumpvars;
  end

  integer cycles;
  integer cycles_start;
  initial cycles = 0;
  initial begin
    #0 clk = 0; start = 0; reset = 1;
    #(2*half_clk_cycle) reset = 0;
    #200 start = 1; cycles_start = cycles;
  end

  always @(posedge clk) begin
    cycles = cycles + 1;
  end

  integer f1;
  integer f2;
  always @(posedge ready) begin
    f1 = $fopen("result.txt", "w");
    f2 = $fopen("cycles.txt", "w");
    #1  $fwrite(f1, "%1d\n", ret);
        $fwrite(f2, "%d\n", cycles-cycles_start);
    #1  $fclose(f1);
        $fclose(f2);
    #200;
        $stop;
  end
endmodule
