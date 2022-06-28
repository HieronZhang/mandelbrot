`include "macro.v"
`timescale 1 ns / 1 ns
/* dual port */
module mem_controller
(
  input clk, mem_we_1, mem_we_2, 
  input [1 : 0]                        mem_dw_1, mem_dw_2,
  input [`MEM_ADDR_WIDTH - 1 : 0]      mem_addr_1, mem_addr_2,
  input [`MEM_DATA_WIDTH - 1 : 0]      mem_in_1, mem_in_2,
  output reg [`MEM_DATA_WIDTH - 1 : 0] mem_out_1, mem_out_2
);
  reg [`MEM_ADDR_WIDTH - 1 : 0] mem_addr_1_reg, mem_addr_2_reg;
  wire [`MEM_TAG_WIDTH - 1 : 0] mem_tag_1;
  assign mem_tag_1 = mem_addr_1_reg[`MEM_ADDR_WIDTH - 1 : `MEM_OFFSET_WIDTH];
  wire [`MEM_TAG_WIDTH - 1 : 0] mem_we_tag_1;
  assign mem_we_tag_1 = mem_addr_1[`MEM_ADDR_WIDTH - 1 : `MEM_OFFSET_WIDTH];
  wire [`MEM_OFFSET_WIDTH - 1 : 0] mem_offset_1;
  assign mem_offset_1 = mem_addr_1[`MEM_OFFSET_WIDTH - 1 : 0];
  wire [`MEM_TAG_WIDTH - 1 : 0] mem_tag_2;
  assign mem_tag_2 = mem_addr_2_reg[`MEM_ADDR_WIDTH - 1 : `MEM_OFFSET_WIDTH];
  wire [`MEM_TAG_WIDTH - 1 : 0] mem_we_tag_2;
  assign mem_we_tag_2 = mem_addr_2[`MEM_ADDR_WIDTH - 1 : `MEM_OFFSET_WIDTH];
  wire [`MEM_OFFSET_WIDTH - 1 : 0] mem_offset_2;
  assign mem_offset_2 = mem_addr_2[`MEM_OFFSET_WIDTH - 1 : 0];
  wire [`MEM_STRUCT_OFFSET_WIDTH - 1 : 0] mem_struct_offset_1;
  assign mem_struct_offset_1 = mem_offset_1 >> 3;
  wire [`MEM_STRUCT_OFFSET_WIDTH - 1 : 0] mem_struct_offset_2;
  assign mem_struct_offset_2 = mem_offset_2 >> 3;

  always@( posedge clk ) begin
    mem_addr_1_reg <= mem_addr_1;
    mem_addr_2_reg <= mem_addr_2;
  end

  wire select_1_GLOBAL__str_2;
  assign select_1_GLOBAL__str_2 = (mem_tag_1 == `TAG_GLOBAL__str_2);
  wire select_2_GLOBAL__str_2;
  assign select_2_GLOBAL__str_2 = (mem_tag_2 == `TAG_GLOBAL__str_2);
  wire we_1_GLOBAL__str_2;
  assign we_1_GLOBAL__str_2 = (mem_we_tag_1 == `TAG_GLOBAL__str_2);
  wire we_2_GLOBAL__str_2;
  assign we_2_GLOBAL__str_2 = (mem_we_tag_2 == `TAG_GLOBAL__str_2);
  wire mem_we_1_GLOBAL__str_2;
  assign mem_we_1_GLOBAL__str_2 = we_1_GLOBAL__str_2 & mem_we_1;
  wire mem_we_2_GLOBAL__str_2;
  assign mem_we_2_GLOBAL__str_2 = we_2_GLOBAL__str_2 & mem_we_2;
  wire [`MEM_DATA_WIDTH - 1 : 0] mem_out_1_GLOBAL__str_2;
  wire [`MEM_DATA_WIDTH - 1 : 0] mem_out_2_GLOBAL__str_2;
  ram_dual_port #(
  .data_width(8),
  .addr_width(`MEM_OFFSET_WIDTH),
  .num_elements(2),
  .init_file("GLOBAL__str_2.mem")
  ) GLOBAL__str_2 (
    .clk (clk),
    .we_1 (mem_we_1_GLOBAL__str_2),
    .we_2 (mem_we_2_GLOBAL__str_2),
    .addr_1 (mem_offset_1),
    .addr_2 (mem_offset_2),
    .data_in_1 (mem_in_1 [7 : 0]),
    .data_in_2 (mem_in_2 [7 : 0]),
    .data_out_1 (mem_out_1_GLOBAL__str_2 [7 : 0]),
    .data_out_2 (mem_out_2_GLOBAL__str_2 [7 : 0])
  );

  wire select_1_GLOBAL__str_3;
  assign select_1_GLOBAL__str_3 = (mem_tag_1 == `TAG_GLOBAL__str_3);
  wire select_2_GLOBAL__str_3;
  assign select_2_GLOBAL__str_3 = (mem_tag_2 == `TAG_GLOBAL__str_3);
  wire we_1_GLOBAL__str_3;
  assign we_1_GLOBAL__str_3 = (mem_we_tag_1 == `TAG_GLOBAL__str_3);
  wire we_2_GLOBAL__str_3;
  assign we_2_GLOBAL__str_3 = (mem_we_tag_2 == `TAG_GLOBAL__str_3);
  wire mem_we_1_GLOBAL__str_3;
  assign mem_we_1_GLOBAL__str_3 = we_1_GLOBAL__str_3 & mem_we_1;
  wire mem_we_2_GLOBAL__str_3;
  assign mem_we_2_GLOBAL__str_3 = we_2_GLOBAL__str_3 & mem_we_2;
  wire [`MEM_DATA_WIDTH - 1 : 0] mem_out_1_GLOBAL__str_3;
  wire [`MEM_DATA_WIDTH - 1 : 0] mem_out_2_GLOBAL__str_3;
  ram_dual_port #(
  .data_width(8),
  .addr_width(`MEM_OFFSET_WIDTH),
  .num_elements(11),
  .init_file("GLOBAL__str_3.mem")
  ) GLOBAL__str_3 (
    .clk (clk),
    .we_1 (mem_we_1_GLOBAL__str_3),
    .we_2 (mem_we_2_GLOBAL__str_3),
    .addr_1 (mem_offset_1),
    .addr_2 (mem_offset_2),
    .data_in_1 (mem_in_1 [7 : 0]),
    .data_in_2 (mem_in_2 [7 : 0]),
    .data_out_1 (mem_out_1_GLOBAL__str_3 [7 : 0]),
    .data_out_2 (mem_out_2_GLOBAL__str_3 [7 : 0])
  );

  wire select_1_GLOBAL__str_1;
  assign select_1_GLOBAL__str_1 = (mem_tag_1 == `TAG_GLOBAL__str_1);
  wire select_2_GLOBAL__str_1;
  assign select_2_GLOBAL__str_1 = (mem_tag_2 == `TAG_GLOBAL__str_1);
  wire we_1_GLOBAL__str_1;
  assign we_1_GLOBAL__str_1 = (mem_we_tag_1 == `TAG_GLOBAL__str_1);
  wire we_2_GLOBAL__str_1;
  assign we_2_GLOBAL__str_1 = (mem_we_tag_2 == `TAG_GLOBAL__str_1);
  wire mem_we_1_GLOBAL__str_1;
  assign mem_we_1_GLOBAL__str_1 = we_1_GLOBAL__str_1 & mem_we_1;
  wire mem_we_2_GLOBAL__str_1;
  assign mem_we_2_GLOBAL__str_1 = we_2_GLOBAL__str_1 & mem_we_2;
  wire [`MEM_DATA_WIDTH - 1 : 0] mem_out_1_GLOBAL__str_1;
  wire [`MEM_DATA_WIDTH - 1 : 0] mem_out_2_GLOBAL__str_1;
  ram_dual_port #(
  .data_width(8),
  .addr_width(`MEM_OFFSET_WIDTH),
  .num_elements(5),
  .init_file("GLOBAL__str_1.mem")
  ) GLOBAL__str_1 (
    .clk (clk),
    .we_1 (mem_we_1_GLOBAL__str_1),
    .we_2 (mem_we_2_GLOBAL__str_1),
    .addr_1 (mem_offset_1),
    .addr_2 (mem_offset_2),
    .data_in_1 (mem_in_1 [7 : 0]),
    .data_in_2 (mem_in_2 [7 : 0]),
    .data_out_1 (mem_out_1_GLOBAL__str_1 [7 : 0]),
    .data_out_2 (mem_out_2_GLOBAL__str_1 [7 : 0])
  );

  wire select_1_GLOBAL__str;
  assign select_1_GLOBAL__str = (mem_tag_1 == `TAG_GLOBAL__str);
  wire select_2_GLOBAL__str;
  assign select_2_GLOBAL__str = (mem_tag_2 == `TAG_GLOBAL__str);
  wire we_1_GLOBAL__str;
  assign we_1_GLOBAL__str = (mem_we_tag_1 == `TAG_GLOBAL__str);
  wire we_2_GLOBAL__str;
  assign we_2_GLOBAL__str = (mem_we_tag_2 == `TAG_GLOBAL__str);
  wire mem_we_1_GLOBAL__str;
  assign mem_we_1_GLOBAL__str = we_1_GLOBAL__str & mem_we_1;
  wire mem_we_2_GLOBAL__str;
  assign mem_we_2_GLOBAL__str = we_2_GLOBAL__str & mem_we_2;
  wire [`MEM_DATA_WIDTH - 1 : 0] mem_out_1_GLOBAL__str;
  wire [`MEM_DATA_WIDTH - 1 : 0] mem_out_2_GLOBAL__str;
  ram_dual_port #(
  .data_width(8),
  .addr_width(`MEM_OFFSET_WIDTH),
  .num_elements(13),
  .init_file("GLOBAL__str.mem")
  ) GLOBAL__str (
    .clk (clk),
    .we_1 (mem_we_1_GLOBAL__str),
    .we_2 (mem_we_2_GLOBAL__str),
    .addr_1 (mem_offset_1),
    .addr_2 (mem_offset_2),
    .data_in_1 (mem_in_1 [7 : 0]),
    .data_in_2 (mem_in_2 [7 : 0]),
    .data_out_1 (mem_out_1_GLOBAL__str [7 : 0]),
    .data_out_2 (mem_out_2_GLOBAL__str [7 : 0])
  );

  wire select_1_main_img;
  assign select_1_main_img = (mem_tag_1 == `TAG_main_img);
  wire select_2_main_img;
  assign select_2_main_img = (mem_tag_2 == `TAG_main_img);
  wire we_1_main_img;
  assign we_1_main_img = (mem_we_tag_1 == `TAG_main_img);
  wire we_2_main_img;
  assign we_2_main_img = (mem_we_tag_2 == `TAG_main_img);
  wire mem_we_1_main_img;
  assign mem_we_1_main_img = we_1_main_img & mem_we_1;
  wire mem_we_2_main_img;
  assign mem_we_2_main_img = we_2_main_img & mem_we_2;
  wire [`MEM_DATA_WIDTH - 1 : 0] mem_out_1_main_img;
  wire [`MEM_DATA_WIDTH - 1 : 0] mem_out_2_main_img;
  ram_dual_port #(
  .data_width(8),
  .addr_width(`MEM_OFFSET_WIDTH),
  .num_elements(1024),
  .init_file("default.mem")
  ) main_img (
    .clk (clk),
    .we_1 (mem_we_1_main_img),
    .we_2 (mem_we_2_main_img),
    .addr_1 (mem_offset_1),
    .addr_2 (mem_offset_2),
    .data_in_1 (mem_in_1 [7 : 0]),
    .data_in_2 (mem_in_2 [7 : 0]),
    .data_out_1 (mem_out_1_main_img [7 : 0]),
    .data_out_2 (mem_out_2_main_img [7 : 0])
  );

  wire select_1_main_img1;
  assign select_1_main_img1 = (mem_tag_1 == `TAG_main_img1);
  wire select_2_main_img1;
  assign select_2_main_img1 = (mem_tag_2 == `TAG_main_img1);
  wire we_1_main_img1;
  assign we_1_main_img1 = (mem_we_tag_1 == `TAG_main_img1);
  wire we_2_main_img1;
  assign we_2_main_img1 = (mem_we_tag_2 == `TAG_main_img1);
  wire mem_we_1_main_img1;
  assign mem_we_1_main_img1 = we_1_main_img1 & mem_we_1;
  wire mem_we_2_main_img1;
  assign mem_we_2_main_img1 = we_2_main_img1 & mem_we_2;
  wire [`MEM_DATA_WIDTH - 1 : 0] mem_out_1_main_img1;
  wire [`MEM_DATA_WIDTH - 1 : 0] mem_out_2_main_img1;
  ram_dual_port #(
  .data_width(8),
  .addr_width(`MEM_OFFSET_WIDTH),
  .num_elements(1024),
  .init_file("default.mem")
  ) main_img1 (
    .clk (clk),
    .we_1 (mem_we_1_main_img1),
    .we_2 (mem_we_2_main_img1),
    .addr_1 (mem_offset_1),
    .addr_2 (mem_offset_2),
    .data_in_1 (mem_in_1 [7 : 0]),
    .data_in_2 (mem_in_2 [7 : 0]),
    .data_out_1 (mem_out_1_main_img1 [7 : 0]),
    .data_out_2 (mem_out_2_main_img1 [7 : 0])
  );

  wire select_1_main_img2;
  assign select_1_main_img2 = (mem_tag_1 == `TAG_main_img2);
  wire select_2_main_img2;
  assign select_2_main_img2 = (mem_tag_2 == `TAG_main_img2);
  wire we_1_main_img2;
  assign we_1_main_img2 = (mem_we_tag_1 == `TAG_main_img2);
  wire we_2_main_img2;
  assign we_2_main_img2 = (mem_we_tag_2 == `TAG_main_img2);
  wire mem_we_1_main_img2;
  assign mem_we_1_main_img2 = we_1_main_img2 & mem_we_1;
  wire mem_we_2_main_img2;
  assign mem_we_2_main_img2 = we_2_main_img2 & mem_we_2;
  wire [`MEM_DATA_WIDTH - 1 : 0] mem_out_1_main_img2;
  wire [`MEM_DATA_WIDTH - 1 : 0] mem_out_2_main_img2;
  ram_dual_port #(
  .data_width(8),
  .addr_width(`MEM_OFFSET_WIDTH),
  .num_elements(1024),
  .init_file("default.mem")
  ) main_img2 (
    .clk (clk),
    .we_1 (mem_we_1_main_img2),
    .we_2 (mem_we_2_main_img2),
    .addr_1 (mem_offset_1),
    .addr_2 (mem_offset_2),
    .data_in_1 (mem_in_1 [7 : 0]),
    .data_in_2 (mem_in_2 [7 : 0]),
    .data_out_1 (mem_out_1_main_img2 [7 : 0]),
    .data_out_2 (mem_out_2_main_img2 [7 : 0])
  );

  wire select_1_main_img3;
  assign select_1_main_img3 = (mem_tag_1 == `TAG_main_img3);
  wire select_2_main_img3;
  assign select_2_main_img3 = (mem_tag_2 == `TAG_main_img3);
  wire we_1_main_img3;
  assign we_1_main_img3 = (mem_we_tag_1 == `TAG_main_img3);
  wire we_2_main_img3;
  assign we_2_main_img3 = (mem_we_tag_2 == `TAG_main_img3);
  wire mem_we_1_main_img3;
  assign mem_we_1_main_img3 = we_1_main_img3 & mem_we_1;
  wire mem_we_2_main_img3;
  assign mem_we_2_main_img3 = we_2_main_img3 & mem_we_2;
  wire [`MEM_DATA_WIDTH - 1 : 0] mem_out_1_main_img3;
  wire [`MEM_DATA_WIDTH - 1 : 0] mem_out_2_main_img3;
  ram_dual_port #(
  .data_width(8),
  .addr_width(`MEM_OFFSET_WIDTH),
  .num_elements(1024),
  .init_file("default.mem")
  ) main_img3 (
    .clk (clk),
    .we_1 (mem_we_1_main_img3),
    .we_2 (mem_we_2_main_img3),
    .addr_1 (mem_offset_1),
    .addr_2 (mem_offset_2),
    .data_in_1 (mem_in_1 [7 : 0]),
    .data_in_2 (mem_in_2 [7 : 0]),
    .data_out_1 (mem_out_1_main_img3 [7 : 0]),
    .data_out_2 (mem_out_2_main_img3 [7 : 0])
  );

  wire select_1_main_final;
  assign select_1_main_final = (mem_tag_1 == `TAG_main_final);
  wire select_2_main_final;
  assign select_2_main_final = (mem_tag_2 == `TAG_main_final);
  wire we_1_main_final;
  assign we_1_main_final = (mem_we_tag_1 == `TAG_main_final);
  wire we_2_main_final;
  assign we_2_main_final = (mem_we_tag_2 == `TAG_main_final);
  wire mem_we_1_main_final;
  assign mem_we_1_main_final = we_1_main_final & mem_we_1;
  wire mem_we_2_main_final;
  assign mem_we_2_main_final = we_2_main_final & mem_we_2;
  wire [`MEM_DATA_WIDTH - 1 : 0] mem_out_1_main_final;
  wire [`MEM_DATA_WIDTH - 1 : 0] mem_out_2_main_final;
  ram_dual_port #(
  .data_width(8),
  .addr_width(`MEM_OFFSET_WIDTH),
  .num_elements(1024),
  .init_file("default.mem")
  ) main_final (
    .clk (clk),
    .we_1 (mem_we_1_main_final),
    .we_2 (mem_we_2_main_final),
    .addr_1 (mem_offset_1),
    .addr_2 (mem_offset_2),
    .data_in_1 (mem_in_1 [7 : 0]),
    .data_in_2 (mem_in_2 [7 : 0]),
    .data_out_1 (mem_out_1_main_final [7 : 0]),
    .data_out_2 (mem_out_2_main_final [7 : 0])
  );

  always @(*) begin
    mem_out_1 = 0;
    mem_out_2 = 0;
    if (select_1_GLOBAL__str_2 == 1'b1)
      mem_out_1 = mem_out_1_GLOBAL__str_2;
    if (select_2_GLOBAL__str_2 == 1'b1)
      mem_out_2 = mem_out_2_GLOBAL__str_2;
    if (select_1_GLOBAL__str_3 == 1'b1)
      mem_out_1 = mem_out_1_GLOBAL__str_3;
    if (select_2_GLOBAL__str_3 == 1'b1)
      mem_out_2 = mem_out_2_GLOBAL__str_3;
    if (select_1_GLOBAL__str_1 == 1'b1)
      mem_out_1 = mem_out_1_GLOBAL__str_1;
    if (select_2_GLOBAL__str_1 == 1'b1)
      mem_out_2 = mem_out_2_GLOBAL__str_1;
    if (select_1_GLOBAL__str == 1'b1)
      mem_out_1 = mem_out_1_GLOBAL__str;
    if (select_2_GLOBAL__str == 1'b1)
      mem_out_2 = mem_out_2_GLOBAL__str;
    if (select_1_main_img == 1'b1)
      mem_out_1 = mem_out_1_main_img;
    if (select_2_main_img == 1'b1)
      mem_out_2 = mem_out_2_main_img;
    if (select_1_main_img1 == 1'b1)
      mem_out_1 = mem_out_1_main_img1;
    if (select_2_main_img1 == 1'b1)
      mem_out_2 = mem_out_2_main_img1;
    if (select_1_main_img2 == 1'b1)
      mem_out_1 = mem_out_1_main_img2;
    if (select_2_main_img2 == 1'b1)
      mem_out_2 = mem_out_2_main_img2;
    if (select_1_main_img3 == 1'b1)
      mem_out_1 = mem_out_1_main_img3;
    if (select_2_main_img3 == 1'b1)
      mem_out_2 = mem_out_2_main_img3;
    if (select_1_main_final == 1'b1)
      mem_out_1 = mem_out_1_main_final;
    if (select_2_main_final == 1'b1)
      mem_out_2 = mem_out_2_main_final;
  end
endmodule 
