`include "macro.v"
`timescale 1ns / 1ns
module top
(input   clk,
 input   reset,
 input   start,
 output  ready,
 output [31:0] ret);
 
  wire mem_we_1, mem_we_2;
  wire [1 : 0] mem_dw_1, mem_dw_2;
  wire [`MEM_ADDR_WIDTH - 1 : 0] mem_addr_1, mem_addr_2;
  wire [`MEM_DATA_WIDTH - 1 : 0] mem_in_1, mem_in_2;
  wire [`MEM_DATA_WIDTH - 1 : 0] mem_out_1, mem_out_2;
 
  main main_function(
    .clk         (clk        ),
    .reset       (reset      ),
    .start       (start      ),
    .ready       (ready      ),
    .mem_dw_1    (mem_dw_1   ),
    .mem_dw_2    (mem_dw_2   ),
    .mem_addr_1  (mem_addr_1 ),
    .mem_addr_2  (mem_addr_2 ),
    .mem_we_1    (mem_we_1   ),
    .mem_we_2    (mem_we_2   ),
    .mem_in_1    (mem_in_1   ),
    .mem_in_2    (mem_in_2   ),
    .mem_out_1   (mem_out_1  ),
    .mem_out_2   (mem_out_2  ),
    .ret_val     (ret        )
  );
 
  mem_controller memory_controller (
    clk, mem_we_1, mem_we_2,
    mem_dw_1, mem_dw_2,
    mem_addr_1, mem_addr_2,
    mem_in_1, mem_in_2,
    mem_out_1, mem_out_2
  );
endmodule
