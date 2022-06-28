`timescale 1 ns / 1 ns
`include "macro.v"
module print_image
(
input   clk,
input   reset,
input   start,
output reg ready,
input  [63:0] mem_out_1,
output reg [1:0] mem_dw_1,
output reg [31:0] mem_addr_1,
output reg mem_we_1,
output reg [63:0] mem_in_1,
input  [63:0] mem_out_2,
output reg [1:0] mem_dw_2,
output reg [31:0] mem_addr_2,
output reg mem_we_2,
output reg [63:0] mem_in_2,
input  [31:0] print_image_width,
input  [31:0] print_image_height,
input  [31:0] print_image_max,
input  [31:0] print_image_img
);
parameter print_image_entry_0 = 0;
parameter print_image_entry_1 = 1;
parameter print_image_for_cond1_preheader_lr_ph_0 = 2;
parameter print_image_for_cond1_preheader_0 = 3;
parameter print_image_for_body3_lr_ph_0 = 4;
parameter print_image_for_body3_0 = 5;
parameter print_image_for_end_0 = 6;
parameter print_image_for_end_1 = 7;
parameter print_image_for_end10_0 = 8;

reg  [11:0] prev_bb;
reg   ready_next;
reg  [11:0] current_state;
reg  [11:0] next_state;
reg  [63:0] print_image_tmp;
wire [63:0] print_image_tmp_wire;
reg  [31:0] print_image_call;
wire [31:0] print_image_call_wire;
reg   print_image_cmp21;
wire  print_image_cmp21_wire;
reg   print_image_cmp219;
wire  print_image_cmp219_wire;
reg  [63:0] print_image_wide_trip_count26;
wire [63:0] print_image_wide_trip_count26_wire;
reg  [63:0] print_image_indvars_iv24;
wire [63:0] print_image_indvars_iv24_wire;
reg  [63:0] print_image_wide_trip_count;
wire [63:0] print_image_wide_trip_count_wire;
reg  [63:0] print_image_for_body3_pipeline_i_stage0;
wire [63:0] print_image_for_body3_pipeline_i_stage0_wire;
reg  [63:0] print_image_for_body3_pipeline_i_stage1;
wire [63:0] print_image_for_body3_pipeline_i_stage1_wire;
reg  [63:0] print_image_for_body3_pipeline_i_stage2;
wire [63:0] print_image_for_body3_pipeline_i_stage2_wire;
reg  [63:0] print_image_for_body3_pipeline_i_stage3;
wire [63:0] print_image_for_body3_pipeline_i_stage3_wire;
reg  [63:0] print_image_for_body3_pipeline_i_stage4;
wire [63:0] print_image_for_body3_pipeline_i_stage4_wire;
reg  [63:0] print_image_for_body3_pipeline_i_stage5;
wire [63:0] print_image_for_body3_pipeline_i_stage5_wire;
reg  [63:0] print_image_indvars_iv;
wire [63:0] print_image_indvars_iv_wire;
reg  [63:0] print_image_tmp1;
wire [63:0] print_image_tmp1_wire;
reg  [31:0] print_image_arrayidx;
wire [31:0] print_image_arrayidx_wire;
reg  [31:0] print_image_arrayidx5_stage3;
wire [31:0] print_image_arrayidx5_stage3_wire;
reg  [31:0] print_image_arrayidx5;
wire [31:0] print_image_arrayidx5_wire;
reg  [7:0] print_image_tmp2;
wire [7:0] print_image_tmp2_wire;
reg  [31:0] print_image_conv;
wire [31:0] print_image_conv_wire;
reg  [31:0] print_image_call6;
wire [31:0] print_image_call6_wire;
reg  [63:0] print_image_indvars_iv_next;
wire [63:0] print_image_indvars_iv_next_wire;
reg   print_image_exitcond;
wire  print_image_exitcond_wire;
reg  [31:0] print_image_call7;
wire [31:0] print_image_call7_wire;
reg  [63:0] print_image_indvars_iv_next25;
wire [63:0] print_image_indvars_iv_next25_wire;
reg   print_image_exitcond27;
wire  print_image_exitcond27_wire;
reg   print_image_for_body3_ppl_start;
reg   print_image_for_body3_ppl_started;
reg  [7:0] print_image_for_body3_ppl_ii_state;
reg   print_image_for_body3_ppl_epilogue;
reg   print_image_for_body3_ppl_finish;
reg  [11:0] print_image_for_body3_ppl_prev_bb_0;
reg   print_image_for_body3_ppl_valid_bit0;
reg  [11:0] print_image_for_body3_ppl_prev_bb_1;
reg   print_image_for_body3_ppl_valid_bit1;
reg  [11:0] print_image_for_body3_ppl_prev_bb_2;
reg   print_image_for_body3_ppl_valid_bit2;
reg  [11:0] print_image_for_body3_ppl_prev_bb_3;
reg   print_image_for_body3_ppl_valid_bit3;
reg  [11:0] print_image_for_body3_ppl_prev_bb_4;
reg   print_image_for_body3_ppl_valid_bit4;
reg  [11:0] print_image_for_body3_ppl_prev_bb_5;
reg   print_image_for_body3_ppl_valid_bit5;
reg  [63:0] print_image_indvars_iv24_tmp;
reg  [63:0] print_image_indvars_iv_tmp;
reg   print_image_exitcond_tmp;

always @( posedge clk ) begin
  if ( reset == 1'b1 ) begin
    current_state <= print_image_entry_0;
  end else if ( start == 1'b1 ) begin
    current_state <= next_state;
  end
end

always @( * ) begin
  case ( current_state )
    print_image_entry_0 : begin
      next_state = print_image_entry_1;
    end
    print_image_entry_1 : begin
      if ( print_image_cmp21 == 1 ) begin
        next_state = print_image_for_cond1_preheader_lr_ph_0;
      end else begin
        next_state = print_image_for_end10_0;
      end
    end
    print_image_for_cond1_preheader_lr_ph_0 : begin
      next_state = print_image_for_cond1_preheader_0;
    end
    print_image_for_cond1_preheader_0 : begin
      if ( print_image_cmp219 == 1 ) begin
        next_state = print_image_for_body3_lr_ph_0;
      end else begin
        next_state = print_image_for_end_0;
      end
    end
    print_image_for_body3_lr_ph_0 : begin
      next_state = print_image_for_body3_0;
    end
    print_image_for_body3_0 : begin
      if ( print_image_for_body3_ppl_finish == 1 ) begin
        next_state = print_image_for_end_0;
      end else begin
        next_state = print_image_for_body3_0;
      end
    end
    print_image_for_end_0 : begin
      next_state = print_image_for_end_1;
    end
    print_image_for_end_1 : begin
      if ( print_image_exitcond27_wire == 1 ) begin
        next_state = print_image_for_end10_0;
      end else begin
        next_state = print_image_for_cond1_preheader_0;
      end
    end
    print_image_for_end10_0 : begin
      next_state = print_image_for_end10_0;
    end
    default : begin
      next_state = 0;
    end
  endcase
end

always @( posedge clk ) begin
  if ( current_state == print_image_entry_0 ) begin
    print_image_cmp21 <= print_image_cmp21_wire;
    print_image_tmp <= print_image_tmp_wire;
  end
end

always @( posedge clk ) begin
  if ( current_state == print_image_for_cond1_preheader_lr_ph_0 ) begin
    print_image_cmp219 <= print_image_cmp219_wire;
    print_image_wide_trip_count26 <= print_image_wide_trip_count26_wire;
  end
end

always @( * ) begin
  print_image_indvars_iv24_tmp = print_image_indvars_iv24;
  if ( prev_bb == print_image_for_cond1_preheader_lr_ph_0 ) begin
    print_image_indvars_iv24_tmp = 64'd0;
  end else if ( prev_bb == print_image_for_end_1 ) begin
    print_image_indvars_iv24_tmp = print_image_indvars_iv_next25;
  end
end

always @( posedge clk ) begin
  if ( current_state == print_image_for_cond1_preheader_0 ) begin
    print_image_indvars_iv24 <= print_image_indvars_iv24_wire;
  end
end

always @( posedge clk ) begin
  if ( current_state == print_image_for_body3_lr_ph_0 ) begin
    print_image_wide_trip_count <= print_image_wide_trip_count_wire;
  end
end

always @( posedge clk ) begin
  if ( print_image_for_body3_ppl_valid_bit0 ) begin
    print_image_tmp1 <= print_image_tmp1_wire;
    print_image_arrayidx <= print_image_arrayidx_wire;
    print_image_indvars_iv_next <= print_image_indvars_iv_next_wire;
  end
end

always @( posedge clk ) begin
  if ( print_image_for_body3_ppl_valid_bit1 ) begin
    print_image_arrayidx5 <= print_image_arrayidx5_wire;
  end
end

always @( posedge clk ) begin
  if ( print_image_for_body3_ppl_valid_bit4 ) begin
    print_image_conv <= print_image_conv_wire;
  end
end

always @( posedge clk ) begin
  if ( current_state == print_image_for_end_0 ) begin
    print_image_indvars_iv_next25 <= print_image_indvars_iv_next25_wire;
  end
end

always @( posedge clk ) begin
  if ( current_state == print_image_for_end_1 ) begin
    print_image_exitcond27 <= print_image_exitcond27_wire;
  end
end

assign print_image_cmp21_wire = $signed(print_image_height) > $signed(32'd0);

assign print_image_tmp_wire = print_image_height;

assign print_image_cmp219_wire = $signed(print_image_width) > $signed(32'd0);

assign print_image_wide_trip_count26_wire = print_image_height;

assign print_image_indvars_iv24_wire = print_image_indvars_iv24_tmp;

assign print_image_wide_trip_count_wire = print_image_width;

assign print_image_tmp1_wire = print_image_for_body3_pipeline_i_stage0 * print_image_tmp;

assign print_image_arrayidx_wire = print_image_img + print_image_indvars_iv24;

assign print_image_indvars_iv_next_wire = print_image_for_body3_pipeline_i_stage0 + 64'd1;

assign print_image_arrayidx5_wire = print_image_arrayidx + print_image_tmp1;

assign print_image_conv_wire = print_image_tmp2;

assign print_image_indvars_iv_next25_wire = print_image_indvars_iv24 + 64'd1;

assign print_image_exitcond27_wire = print_image_indvars_iv_next25 == print_image_wide_trip_count26;

always @( * ) begin
  if ( current_state == print_image_for_end10_0 ) begin
    ready_next = 1'b1;
  end else begin
    ready_next = 1'b0;
  end
end

always @( posedge clk ) begin
  if ( current_state == print_image_entry_1 ) begin
    prev_bb <= current_state;
  end else if ( current_state == print_image_for_cond1_preheader_lr_ph_0 ) begin
    prev_bb <= current_state;
  end else if ( current_state == print_image_for_cond1_preheader_0 ) begin
    prev_bb <= current_state;
  end else if ( current_state == print_image_for_body3_lr_ph_0 ) begin
    prev_bb <= current_state;
  end else if ( print_image_for_body3_ppl_valid_bit5 ) begin
    prev_bb <= current_state;
  end else if ( current_state == print_image_for_end_1 ) begin
    prev_bb <= current_state;
  end
end

assign print_image_tmp2_wire = mem_out_1;

always @( posedge clk ) begin
  if ( print_image_for_body3_ppl_valid_bit3 ) begin
    print_image_tmp2 <= print_image_tmp2_wire;
  end
  if ( reset == 1'b1 ) begin
  end else if ( start == 1'b1 ) begin
  end
end

always @( * ) begin
  if ( print_image_for_body3_ppl_valid_bit3 ) begin
  end
end

always @( * ) begin
  mem_dw_1 = 0;
  mem_addr_1 = 0;
  mem_we_1 = 0;
  mem_in_1 = 0;
  mem_dw_2 = 0;
  mem_addr_2 = 0;
  mem_we_2 = 0;
  mem_in_2 = 0;
  if ( print_image_for_body3_ppl_valid_bit2 ) begin
    mem_dw_1 = 0;
    mem_addr_1 = print_image_arrayidx5;
    mem_we_1 = 0;
    mem_in_1 = 0;
  end
end

always @( posedge clk ) begin
  if ( reset == 1'b1 ) begin
    ready <= 1'b0;
  end else begin
    ready <= ready_next;
  end
end

always @( * ) begin
  print_image_for_body3_ppl_start = 0;
  if ( current_state == print_image_for_body3_0 ) begin
    print_image_for_body3_ppl_start = 1;
  end
end

always @( posedge clk ) begin
  if ( reset == 1 ) begin
    print_image_for_body3_ppl_started <= 0;
  end else if ( print_image_for_body3_ppl_epilogue & ~(print_image_for_body3_ppl_valid_bit4) & print_image_for_body3_ppl_valid_bit5 ) begin
    print_image_for_body3_ppl_started <= 0;
  end else begin
    print_image_for_body3_ppl_started <= print_image_for_body3_ppl_start || print_image_for_body3_ppl_started;
  end
end

always @( posedge clk ) begin
  if ( reset == 1 ) begin
    print_image_for_body3_ppl_valid_bit0 <= 0;
    print_image_for_body3_ppl_valid_bit1 <= 0;
    print_image_for_body3_ppl_valid_bit2 <= 0;
    print_image_for_body3_ppl_valid_bit3 <= 0;
    print_image_for_body3_ppl_valid_bit4 <= 0;
    print_image_for_body3_ppl_valid_bit5 <= 0;
  end else begin
    print_image_for_body3_ppl_valid_bit0 <= (print_image_for_body3_ppl_start & ~(print_image_for_body3_ppl_started)) | (print_image_for_body3_ppl_started & ~(print_image_for_body3_ppl_epilogue) & ~(print_image_exitcond));
    print_image_for_body3_ppl_valid_bit1 <= print_image_for_body3_ppl_valid_bit0;
    print_image_for_body3_ppl_valid_bit2 <= print_image_for_body3_ppl_valid_bit1;
    print_image_for_body3_ppl_valid_bit3 <= print_image_for_body3_ppl_valid_bit2;
    print_image_for_body3_ppl_valid_bit4 <= print_image_for_body3_ppl_valid_bit3;
    print_image_for_body3_ppl_valid_bit5 <= print_image_for_body3_ppl_valid_bit4;
  end
end

always @( * ) begin
  print_image_indvars_iv_tmp = print_image_indvars_iv;
  if ( prev_bb == print_image_for_body3_lr_ph_0 ) begin
    print_image_indvars_iv_tmp = 64'd0;
  end else if ( prev_bb == print_image_for_body3_0 ) begin
    print_image_indvars_iv_tmp = print_image_indvars_iv_next;
  end
end

assign print_image_indvars_iv_wire = print_image_indvars_iv_tmp;

always @( posedge clk ) begin
  print_image_indvars_iv <= print_image_indvars_iv_wire;
end

always @( posedge clk ) begin
  if ( reset == 1 ) begin
    print_image_for_body3_pipeline_i_stage0 <= 0;
    print_image_for_body3_pipeline_i_stage1 <= 0;
    print_image_for_body3_pipeline_i_stage2 <= 0;
    print_image_for_body3_pipeline_i_stage3 <= 0;
    print_image_for_body3_pipeline_i_stage4 <= 0;
    print_image_for_body3_pipeline_i_stage5 <= 0;
  end else if ( print_image_for_body3_ppl_start & ~(print_image_for_body3_ppl_started) ) begin
    print_image_for_body3_pipeline_i_stage0 <= print_image_indvars_iv_wire;
    print_image_for_body3_pipeline_i_stage1 <= print_image_indvars_iv_wire;
    print_image_for_body3_pipeline_i_stage2 <= print_image_indvars_iv_wire;
    print_image_for_body3_pipeline_i_stage3 <= print_image_indvars_iv_wire;
    print_image_for_body3_pipeline_i_stage4 <= print_image_indvars_iv_wire;
    print_image_for_body3_pipeline_i_stage5 <= print_image_indvars_iv_wire;
  end else begin
    if ( print_image_for_body3_ppl_valid_bit0 == 1 ) begin
      print_image_for_body3_pipeline_i_stage0 <= print_image_indvars_iv_next_wire;
    end
    print_image_for_body3_pipeline_i_stage1 <= print_image_for_body3_pipeline_i_stage0;
    print_image_for_body3_pipeline_i_stage2 <= print_image_for_body3_pipeline_i_stage1;
    print_image_for_body3_pipeline_i_stage3 <= print_image_for_body3_pipeline_i_stage2;
    print_image_for_body3_pipeline_i_stage4 <= print_image_for_body3_pipeline_i_stage3;
    print_image_for_body3_pipeline_i_stage5 <= print_image_for_body3_pipeline_i_stage4;
  end
end

always @( * ) begin
  print_image_exitcond = print_image_exitcond_tmp;
  if ( print_image_for_body3_ppl_valid_bit0 ) begin
    print_image_exitcond = print_image_indvars_iv_next_wire == print_image_wide_trip_count;
  end
end

always @( posedge clk ) begin
  print_image_exitcond_tmp <= print_image_exitcond;
end

always @( posedge clk ) begin
  if ( reset == 1 ) begin
    print_image_for_body3_ppl_epilogue <= 0;
  end else if ( ~print_image_for_body3_ppl_epilogue & print_image_for_body3_ppl_started & print_image_exitcond ) begin
    print_image_for_body3_ppl_epilogue <= 1;
  end else if ( print_image_for_body3_ppl_epilogue & ~( print_image_for_body3_ppl_valid_bit4 ) & print_image_for_body3_ppl_valid_bit5 ) begin
    print_image_for_body3_ppl_epilogue <= 0;
  end
end

always @( * ) begin
  print_image_for_body3_ppl_finish = print_image_for_body3_ppl_epilogue & ~(print_image_for_body3_ppl_valid_bit4) & print_image_for_body3_ppl_valid_bit5;
end

always @( posedge clk ) begin
  if ( print_image_for_body3_ppl_valid_bit2 ) begin
    print_image_arrayidx5_stage3 <= print_image_arrayidx5;
  end
end

always @( posedge clk ) begin
  if ( print_image_for_body3_ppl_valid_bit0 ) begin
    print_image_for_body3_ppl_prev_bb_0 <= prev_bb;
  end
  if ( print_image_for_body3_ppl_valid_bit1 ) begin
    print_image_for_body3_ppl_prev_bb_1 <= print_image_for_body3_ppl_prev_bb_0;
  end
  if ( print_image_for_body3_ppl_valid_bit2 ) begin
    print_image_for_body3_ppl_prev_bb_2 <= print_image_for_body3_ppl_prev_bb_1;
  end
  if ( print_image_for_body3_ppl_valid_bit3 ) begin
    print_image_for_body3_ppl_prev_bb_3 <= print_image_for_body3_ppl_prev_bb_2;
  end
  if ( print_image_for_body3_ppl_valid_bit4 ) begin
    print_image_for_body3_ppl_prev_bb_4 <= print_image_for_body3_ppl_prev_bb_3;
  end
  if ( print_image_for_body3_ppl_valid_bit5 ) begin
    print_image_for_body3_ppl_prev_bb_5 <= print_image_for_body3_ppl_prev_bb_4;
  end
end

endmodule

`timescale 1 ns / 1 ns
`include "macro.v"
module main
(
input   clk,
input   reset,
input   start,
output reg ready,
input  [63:0] mem_out_1,
output reg [1:0] mem_dw_1,
output reg [31:0] mem_addr_1,
output reg  mem_we_1,
output reg [63:0] mem_in_1,
input  [63:0] mem_out_2,
output reg [1:0] mem_dw_2,
output reg [31:0] mem_addr_2,
output reg mem_we_2,
output reg [63:0] mem_in_2,
output reg [31:0] ret_val
);
parameter main_entry_0 = 0;
parameter main_for_cond1_preheader_0 = 1;
parameter main_for_cond1_preheader_1 = 2;
parameter main_for_body3_0 = 3;
parameter main_for_body3_1 = 4;
parameter main_for_body3_2 = 5;
parameter main_for_body26_0 = 6;
parameter main_for_end_0 = 7;
parameter main_for_end_1 = 8;
parameter main_for_end_2 = 9;
parameter main_for_end_3 = 10;
parameter main_for_end_4 = 11;
parameter main_for_end_5 = 12;
parameter main_for_inc213_0 = 13;
parameter main_for_inc213_1 = 14;
parameter main_for_cond220_preheader_0 = 15;
parameter main_for_body223_0 = 16;
parameter main_for_inc265_0 = 17;
parameter main_for_inc265_1 = 18;
parameter main_for_end267_0 = 19;
parameter main_for_end267_1 = 20;
parameter main_for_end267_2 = 21;

reg  [11:0] prev_bb;
reg   ready_next;
reg  [11:0] current_state;
reg  [11:0] next_state;
reg  [63:0] main_indvars_iv405;
wire [63:0] main_indvars_iv405_wire;
reg  [31:0] main_count_0384;
wire [31:0] main_count_0384_wire;
reg  [63:0] main_tmp;
wire [63:0] main_tmp_wire;
reg  [63:0] main_tmp1;
wire [63:0] main_tmp1_wire;
reg  [63:0] main_indvars_iv392;
wire [63:0] main_indvars_iv392_wire;
reg  [31:0] main_count_1382;
wire [31:0] main_count_1382_wire;
reg  [63:0] main_tmp2;
wire [63:0] main_tmp2_wire;
reg  [63:0] main_tmp3;
wire [63:0] main_tmp3_wire;
reg  [63:0] main_tmp4;
wire [63:0] main_tmp4_wire;
reg  [63:0] main_tmp5;
wire [63:0] main_tmp5_wire;
reg  [63:0] main_tmp6;
wire [63:0] main_tmp6_wire;
reg  [63:0] main_tmp7;
wire [63:0] main_tmp7_wire;
reg  [63:0] main_tmp8;
wire [63:0] main_tmp8_wire;
reg  [63:0] main_tmp9;
wire [63:0] main_tmp9_wire;
reg  [63:0] main_tmp10;
wire [63:0] main_tmp10_wire;
reg  [63:0] main_tmp11;
wire [63:0] main_tmp11_wire;
reg  [63:0] main_tmp12;
wire [63:0] main_tmp12_wire;
reg  [63:0] main_x_0381;
wire [63:0] main_x_0381_wire;
reg  [7:0] main_fiter4_0380;
wire [7:0] main_fiter4_0380_wire;
reg  [63:0] main_y_0379;
wire [63:0] main_y_0379_wire;
reg  [63:0] main_y4_0378;
wire [63:0] main_y4_0378_wire;
reg  [63:0] main_x4_0377;
wire [63:0] main_x4_0377_wire;
reg  [7:0] main_fiter3_0376;
wire [7:0] main_fiter3_0376_wire;
reg  [7:0] main_for_body26_pipeline_i_stage0;
wire [7:0] main_for_body26_pipeline_i_stage0_wire;
reg  [7:0] main_for_body26_pipeline_i_stage1;
wire [7:0] main_for_body26_pipeline_i_stage1_wire;
reg  [7:0] main_iter_0375;
wire [7:0] main_iter_0375_wire;
reg  [63:0] main_y3_0374;
wire [63:0] main_y3_0374_wire;
reg  [63:0] main_x3_0373;
wire [63:0] main_x3_0373_wire;
reg  [7:0] main_fiter2_0372;
wire [7:0] main_fiter2_0372_wire;
reg  [7:0] main_fiter_0371;
wire [7:0] main_fiter_0371_wire;
reg  [63:0] main_y2_0370;
wire [63:0] main_y2_0370_wire;
reg  [63:0] main_x2_0369;
wire [63:0] main_x2_0369_wire;
reg  [63:0] main_sext;
wire [63:0] main_sext_wire;
reg  [63:0] main_conv27;
wire [63:0] main_conv27_wire;
reg  [63:0] main_mul29;
wire [63:0] main_mul29_wire;
reg  [63:0] main_tmp13;
wire [63:0] main_tmp13_wire;
reg  [63:0] main_sext357;
wire [63:0] main_sext357_wire;
reg  [63:0] main_conv31;
wire [63:0] main_conv31_wire;
reg  [63:0] main_mul33;
wire [63:0] main_mul33_wire;
reg  [63:0] main_tmp14;
wire [63:0] main_tmp14_wire;
reg  [63:0] main_add35;
wire [63:0] main_add35_wire;
reg  [63:0] main_sext358;
wire [63:0] main_sext358_wire;
reg  [63:0] main_conv36;
wire [63:0] main_conv36_wire;
reg  [63:0] main_mul38;
wire [63:0] main_mul38_wire;
reg  [63:0] main_tmp15;
wire [63:0] main_tmp15_wire;
reg  [63:0] main_sext359;
wire [63:0] main_sext359_wire;
reg  [63:0] main_conv40;
wire [63:0] main_conv40_wire;
reg  [63:0] main_mul42;
wire [63:0] main_mul42_wire;
reg  [63:0] main_tmp16;
wire [63:0] main_tmp16_wire;
reg  [63:0] main_add44;
wire [63:0] main_add44_wire;
reg  [63:0] main_sext360;
wire [63:0] main_sext360_wire;
reg  [63:0] main_conv45;
wire [63:0] main_conv45_wire;
reg  [63:0] main_mul47;
wire [63:0] main_mul47_wire;
reg  [63:0] main_tmp17;
wire [63:0] main_tmp17_wire;
reg  [63:0] main_sext361;
wire [63:0] main_sext361_wire;
reg  [63:0] main_conv49;
wire [63:0] main_conv49_wire;
reg  [63:0] main_mul51;
wire [63:0] main_mul51_wire;
reg  [63:0] main_tmp18;
wire [63:0] main_tmp18_wire;
reg  [63:0] main_add53;
wire [63:0] main_add53_wire;
reg  [63:0] main_sext362;
wire [63:0] main_sext362_wire;
reg  [63:0] main_conv54;
wire [63:0] main_conv54_wire;
reg  [63:0] main_mul56;
wire [63:0] main_mul56_wire;
reg  [63:0] main_tmp19;
wire [63:0] main_tmp19_wire;
reg  [63:0] main_sext363;
wire [63:0] main_sext363_wire;
reg  [63:0] main_conv58;
wire [63:0] main_conv58_wire;
reg  [63:0] main_mul60;
wire [63:0] main_mul60_wire;
reg  [63:0] main_tmp20;
wire [63:0] main_tmp20_wire;
reg  [63:0] main_add62;
wire [63:0] main_add62_wire;
reg  [63:0] main_sub;
wire [63:0] main_sub_wire;
reg  [63:0] main_add72;
wire [63:0] main_add72_wire;
reg  [63:0] main_mul76;
wire [63:0] main_mul76_wire;
reg  [63:0] main_shr77;
wire [63:0] main_shr77_wire;
reg  [63:0] main_shr79;
wire [63:0] main_shr79_wire;
reg  [63:0] main_add81;
wire [63:0] main_add81_wire;
reg  [63:0] main_sub91;
wire [63:0] main_sub91_wire;
reg  [63:0] main_add93;
wire [63:0] main_add93_wire;
reg  [63:0] main_mul97;
wire [63:0] main_mul97_wire;
reg  [63:0] main_shr98;
wire [63:0] main_shr98_wire;
reg  [63:0] main_shr100;
wire [63:0] main_shr100_wire;
reg  [63:0] main_add102;
wire [63:0] main_add102_wire;
reg  [63:0] main_sub112;
wire [63:0] main_sub112_wire;
reg  [63:0] main_add114;
wire [63:0] main_add114_wire;
reg  [63:0] main_mul118;
wire [63:0] main_mul118_wire;
reg  [63:0] main_shr119;
wire [63:0] main_shr119_wire;
reg  [63:0] main_shr121;
wire [63:0] main_shr121_wire;
reg  [63:0] main_add123;
wire [63:0] main_add123_wire;
reg  [63:0] main_sub133;
wire [63:0] main_sub133_wire;
reg  [63:0] main_add135;
wire [63:0] main_add135_wire;
reg  [63:0] main_mul139;
wire [63:0] main_mul139_wire;
reg  [63:0] main_shr140;
wire [63:0] main_shr140_wire;
reg  [63:0] main_shr142;
wire [63:0] main_shr142_wire;
reg  [63:0] main_add144;
wire [63:0] main_add144_wire;
reg   main_cmp146;
wire  main_cmp146_wire;
reg  [7:0] main_conv147;
wire [7:0] main_conv147_wire;
reg  [7:0] main_add149;
wire [7:0] main_add149_wire;
reg   main_cmp151;
wire  main_cmp151_wire;
reg  [7:0] main_conv152;
wire [7:0] main_conv152_wire;
reg  [7:0] main_add154;
wire [7:0] main_add154_wire;
reg   main_cmp156;
wire  main_cmp156_wire;
reg  [7:0] main_conv157;
wire [7:0] main_conv157_wire;
reg  [7:0] main_add159;
wire [7:0] main_add159_wire;
reg   main_cmp161;
wire  main_cmp161_wire;
reg  [7:0] main_conv162;
wire [7:0] main_conv162_wire;
reg  [7:0] main_add164;
wire [7:0] main_add164_wire;
reg  [7:0] main_inc;
wire [7:0] main_inc_wire;
reg   main_exitcond391;
wire  main_exitcond391_wire;
reg   main_cmp167;
wire  main_cmp167_wire;
reg  [7:0] main_conv169;
wire [7:0] main_conv169_wire;
reg  [31:0] main_conv170;
wire [31:0] main_conv170_wire;
reg  [31:0] main_arrayidx173;
wire [31:0] main_arrayidx173_wire;
reg   main_cmp175;
wire  main_cmp175_wire;
reg  [7:0] main_conv178;
wire [7:0] main_conv178_wire;
reg  [31:0] main_arrayidx185;
wire [31:0] main_arrayidx185_wire;
reg   main_cmp189;
wire  main_cmp189_wire;
reg  [7:0] main_conv192;
wire [7:0] main_conv192_wire;
reg  [31:0] main_arrayidx197;
wire [31:0] main_arrayidx197_wire;
reg  [31:0] main_conv198;
wire [31:0] main_conv198_wire;
reg  [31:0] main_factor;
wire [31:0] main_factor_wire;
reg  [31:0] main_add180;
wire [31:0] main_add180_wire;
reg  [31:0] main_add187;
wire [31:0] main_add187_wire;
reg  [31:0] main_add199;
wire [31:0] main_add199_wire;
reg   main_cmp201;
wire  main_cmp201_wire;
reg  [7:0] main_conv204;
wire [7:0] main_conv204_wire;
reg  [31:0] main_arrayidx209;
wire [31:0] main_arrayidx209_wire;
reg  [63:0] main_indvars_iv_next393;
wire [63:0] main_indvars_iv_next393_wire;
reg   main_cmp2;
wire  main_cmp2_wire;
reg  [63:0] main_indvars_iv_next406;
wire [63:0] main_indvars_iv_next406_wire;
reg   main_exitcond409;
wire  main_exitcond409_wire;
reg  [63:0] main_indvars_iv389;
wire [63:0] main_indvars_iv389_wire;
reg  [63:0] main_for_body223_pipeline_i_stage0;
wire [63:0] main_for_body223_pipeline_i_stage0_wire;
reg  [63:0] main_for_body223_pipeline_i_stage1;
wire [63:0] main_for_body223_pipeline_i_stage1_wire;
reg  [63:0] main_for_body223_pipeline_i_stage2;
wire [63:0] main_for_body223_pipeline_i_stage2_wire;
reg  [63:0] main_indvars_iv;
wire [63:0] main_indvars_iv_wire;
reg  [31:0] main_arrayidx227;
wire [31:0] main_arrayidx227_wire;
reg  [7:0] main_tmp21_stage1;
wire [7:0] main_tmp21_stage1_wire;
reg  [7:0] main_tmp21;
wire [7:0] main_tmp21_wire;
reg  [31:0] main_arrayidx231_stage1;
wire [31:0] main_arrayidx231_stage1_wire;
reg  [31:0] main_arrayidx231;
wire [31:0] main_arrayidx231_wire;
reg  [63:0] main_tmp22;
wire [63:0] main_tmp22_wire;
reg  [31:0] main_arrayidx236;
wire [31:0] main_arrayidx236_wire;
reg  [7:0] main_tmp23;
wire [7:0] main_tmp23_wire;
reg  [31:0] main_arrayidx241_stage1;
wire [31:0] main_arrayidx241_stage1_wire;
reg  [31:0] main_arrayidx241;
wire [31:0] main_arrayidx241_wire;
reg  [63:0] main_tmp24;
wire [63:0] main_tmp24_wire;
reg  [31:0] main_arrayidx246_stage1;
wire [31:0] main_arrayidx246_stage1_wire;
reg  [31:0] main_arrayidx246;
wire [31:0] main_arrayidx246_wire;
reg  [7:0] main_tmp25_stage2;
wire [7:0] main_tmp25_stage2_wire;
reg  [7:0] main_tmp25;
wire [7:0] main_tmp25_wire;
reg  [31:0] main_arrayidx251_stage1;
wire [31:0] main_arrayidx251_stage1_wire;
reg  [31:0] main_arrayidx251_stage2;
wire [31:0] main_arrayidx251_stage2_wire;
reg  [31:0] main_arrayidx251;
wire [31:0] main_arrayidx251_wire;
reg  [63:0] main_tmp26;
wire [63:0] main_tmp26_wire;
reg  [31:0] main_arrayidx256_stage1;
wire [31:0] main_arrayidx256_stage1_wire;
reg  [31:0] main_arrayidx256;
wire [31:0] main_arrayidx256_wire;
reg  [7:0] main_tmp27_stage2;
wire [7:0] main_tmp27_stage2_wire;
reg  [7:0] main_tmp27;
wire [7:0] main_tmp27_wire;
reg  [31:0] main_arrayidx261_stage1;
wire [31:0] main_arrayidx261_stage1_wire;
reg  [31:0] main_arrayidx261_stage2;
wire [31:0] main_arrayidx261_stage2_wire;
reg  [31:0] main_arrayidx261;
wire [31:0] main_arrayidx261_wire;
reg  [63:0] main_indvars_iv_next;
wire [63:0] main_indvars_iv_next_wire;
reg   main_cmp221;
wire  main_cmp221_wire;
reg  [63:0] main_indvars_iv_next390;
wire [63:0] main_indvars_iv_next390_wire;
reg   main_exitcond;
wire  main_exitcond_wire;
reg  [31:0] main_tmp28;
wire [31:0] main_tmp28_wire;
reg  [31:0] main_call;
wire [31:0] main_call_wire;
reg   main_cmp268;
wire  main_cmp268_wire;
reg  [31:0] main__;
wire [31:0] main___wire;
reg   main_for_body26_ppl_start;
reg   main_for_body26_ppl_started;
reg  [7:0] main_for_body26_ppl_ii_state;
reg   main_for_body26_ppl_epilogue;
reg   main_for_body26_ppl_finish;
reg  [11:0] main_for_body26_ppl_prev_bb_0;
reg   main_for_body26_ppl_valid_bit0;
reg  [11:0] main_for_body26_ppl_prev_bb_1;
reg   main_for_body26_ppl_valid_bit1;
reg  [11:0] main_for_body26_ppl_prev_bb_2;
reg   main_for_body26_ppl_valid_bit2;
reg  [11:0] main_for_body26_ppl_prev_bb_3;
reg   main_for_body26_ppl_valid_bit3;
reg  [11:0] main_for_body26_ppl_prev_bb_4;
reg   main_for_body26_ppl_valid_bit4;
reg  [11:0] main_for_body26_ppl_prev_bb_5;
reg   main_for_body26_ppl_valid_bit5;
reg  [11:0] main_for_body26_ppl_prev_bb_6;
reg   main_for_body26_ppl_valid_bit6;
reg  [11:0] main_for_body26_ppl_prev_bb_7;
reg   main_for_body26_ppl_valid_bit7;
reg   main_for_body223_ppl_start;
reg   main_for_body223_ppl_started;
reg  [7:0] main_for_body223_ppl_ii_state;
reg   main_for_body223_ppl_epilogue;
reg   main_for_body223_ppl_finish;
reg  [11:0] main_for_body223_ppl_prev_bb_0;
reg   main_for_body223_ppl_valid_bit0;
reg  [11:0] main_for_body223_ppl_prev_bb_1;
reg   main_for_body223_ppl_valid_bit1;
reg  [11:0] main_for_body223_ppl_prev_bb_2;
reg   main_for_body223_ppl_valid_bit2;
reg  [11:0] main_for_body223_ppl_prev_bb_3;
reg   main_for_body223_ppl_valid_bit3;
reg  [11:0] main_for_body223_ppl_prev_bb_4;
reg   main_for_body223_ppl_valid_bit4;
reg  [11:0] main_for_body223_ppl_prev_bb_5;
reg   main_for_body223_ppl_valid_bit5;
reg  [11:0] main_for_body223_ppl_prev_bb_6;
reg   main_for_body223_ppl_valid_bit6;
reg  [11:0] main_for_body223_ppl_prev_bb_7;
reg   main_for_body223_ppl_valid_bit7;
reg  [11:0] main_for_body223_ppl_prev_bb_8;
reg   main_for_body223_ppl_valid_bit8;
reg  [11:0] main_for_body223_ppl_prev_bb_9;
reg   main_for_body223_ppl_valid_bit9;
reg   print_image_reset;
reg   print_image_start;
wire  print_image_ready;
reg   print_image_reset_next;
reg   print_image_start_next;
wire [1:0] print_image_mem_dw_1;
wire [31:0] print_image_mem_addr_1;
wire  print_image_mem_we_1;
wire [63:0] print_image_mem_in_1;
wire [1:0] print_image_mem_dw_2;
wire [31:0] print_image_mem_addr_2;
wire  print_image_mem_we_2;
wire [63:0] print_image_mem_in_2;
reg  [31:0] print_image_width;
reg  [31:0] print_image_height;
reg  [31:0] print_image_max;
reg  [31:0] print_image_img;
reg  [63:0] main_indvars_iv405_tmp;
reg  [31:0] main_count_0384_tmp;
reg  [63:0] main_indvars_iv392_tmp;
reg  [31:0] main_count_1382_tmp;
reg  [63:0] main_x_0381_tmp;
reg  [63:0] main_y_0379_tmp;
reg  [63:0] main_y4_0378_tmp;
reg  [63:0] main_x4_0377_tmp;
reg  [63:0] main_y3_0374_tmp;
reg  [63:0] main_x3_0373_tmp;
reg  [63:0] main_y2_0370_tmp;
reg  [63:0] main_x2_0369_tmp;
reg  [7:0] main_fiter4_0380_tmp;
reg  [7:0] main_fiter3_0376_tmp;
reg  [7:0] main_fiter2_0372_tmp;
reg  [7:0] main_fiter_0371_tmp;
reg  [63:0] main_indvars_iv389_tmp;
reg  [31:0] ret_wire;
reg  [7:0] main_iter_0375_tmp;
reg   main_exitcond391_tmp;
reg  [63:0] main_indvars_iv_tmp;
reg   main_cmp221_tmp;

always @( posedge clk ) begin
  if ( reset == 1'b1 ) begin
    current_state <= main_entry_0;
  end else if ( start == 1'b1 ) begin
    current_state <= next_state;
  end
end

always @( * ) begin
  case ( current_state )
    main_entry_0 : begin
      next_state = main_for_cond1_preheader_0;
    end
    main_for_cond1_preheader_0 : begin
      next_state = main_for_cond1_preheader_1;
    end
    main_for_cond1_preheader_1 : begin
      next_state = main_for_body3_0;
    end
    main_for_body3_0 : begin
      next_state = main_for_body3_1;
    end
    main_for_body3_1 : begin
      next_state = main_for_body3_2;
    end
    main_for_body3_2 : begin
      next_state = main_for_body26_0;
    end
    main_for_body26_0 : begin
      if ( main_for_body26_ppl_finish == 1 ) begin
        next_state = main_for_end_0;
      end else begin
        next_state = main_for_body26_0;
      end
    end
    main_for_end_0 : begin
      next_state = main_for_end_1;
    end
    main_for_end_1 : begin
      next_state = main_for_end_2;
    end
    main_for_end_2 : begin
      next_state = main_for_end_3;
    end
    main_for_end_3 : begin
      next_state = main_for_end_4;
    end
    main_for_end_4 : begin
      next_state = main_for_end_5;
    end
    main_for_end_5 : begin
      if ( main_cmp2 == 1 ) begin
        next_state = main_for_body3_0;
      end else begin
        next_state = main_for_inc213_0;
      end
    end
    main_for_inc213_0 : begin
      next_state = main_for_inc213_1;
    end
    main_for_inc213_1 : begin
      if ( main_exitcond409_wire == 1 ) begin
        next_state = main_for_cond220_preheader_0;
      end else begin
        next_state = main_for_cond1_preheader_0;
      end
    end
    main_for_cond220_preheader_0 : begin
      next_state = main_for_body223_0;
    end
    main_for_body223_0 : begin
      if ( main_for_body223_ppl_finish == 1 ) begin
        next_state = main_for_inc265_0;
      end else begin
        next_state = main_for_body223_0;
      end
    end
    main_for_inc265_0 : begin
      next_state = main_for_inc265_1;
    end
    main_for_inc265_1 : begin
      if ( main_exitcond_wire == 1 ) begin
        next_state = main_for_end267_0;
      end else begin
        next_state = main_for_cond220_preheader_0;
      end
    end
    main_for_end267_0 : begin
      next_state = main_for_end267_1;
    end
    main_for_end267_1 : begin
      if ( print_image_ready == 1 ) begin
        next_state = main_for_end267_2;
      end else begin
        next_state = main_for_end267_1;
      end
    end
    main_for_end267_2 : begin
      next_state = main_for_end267_2;
    end
    default : begin
      next_state = 0;
    end
  endcase
end

print_image print_image (
  .clk (clk),
  .reset (print_image_reset),
  .start (print_image_start),
  .ready (print_image_ready),
  .mem_out_1 (mem_out_1),
  .mem_out_2 (mem_out_2),
  .mem_dw_1 (print_image_mem_dw_1),
  .mem_dw_2 (print_image_mem_dw_2),
  .mem_addr_1 (print_image_mem_addr_1),
  .mem_addr_2 (print_image_mem_addr_2),
  .mem_we_1 (print_image_mem_we_1),
  .mem_we_2 (print_image_mem_we_2),
  .mem_in_1 (print_image_mem_in_1),
  .mem_in_2 (print_image_mem_in_2),
  .print_image_width (print_image_width),
  .print_image_height (print_image_height),
  .print_image_max (print_image_max),
  .print_image_img (print_image_img)
);

always @( * ) begin
  main_indvars_iv405_tmp = main_indvars_iv405;
  if ( prev_bb == main_entry_0 ) begin
    main_indvars_iv405_tmp = 64'd0;
  end else if ( prev_bb == main_for_inc213_1 ) begin
    main_indvars_iv405_tmp = main_indvars_iv_next406;
  end
end

always @( * ) begin
  main_count_0384_tmp = main_count_0384;
  if ( prev_bb == main_entry_0 ) begin
    main_count_0384_tmp = 32'd0;
  end else if ( prev_bb == main_for_inc213_1 ) begin
    main_count_0384_tmp = main_add199;
  end
end

always @( posedge clk ) begin
  if ( current_state == main_for_cond1_preheader_0 ) begin
    main_indvars_iv405 <= main_indvars_iv405_wire;
    main_count_0384 <= main_count_0384_wire;
    main_tmp <= main_tmp_wire;
  end
end

always @( posedge clk ) begin
  if ( current_state == main_for_cond1_preheader_1 ) begin
    main_tmp1 <= main_tmp1_wire;
  end
end

always @( * ) begin
  main_indvars_iv392_tmp = main_indvars_iv392;
  if ( prev_bb == main_for_cond1_preheader_1 ) begin
    main_indvars_iv392_tmp = 64'd0;
  end else if ( prev_bb == main_for_end_5 ) begin
    main_indvars_iv392_tmp = main_indvars_iv_next393;
  end
end

always @( * ) begin
  main_count_1382_tmp = main_count_1382;
  if ( prev_bb == main_for_cond1_preheader_1 ) begin
    main_count_1382_tmp = main_count_0384;
  end else if ( prev_bb == main_for_end_5 ) begin
    main_count_1382_tmp = main_add199;
  end
end

always @( posedge clk ) begin
  if ( current_state == main_for_body3_0 ) begin
    main_indvars_iv392 <= main_indvars_iv392_wire;
    main_count_1382 <= main_count_1382_wire;
    main_tmp4 <= main_tmp4_wire;
    main_tmp7 <= main_tmp7_wire;
    main_tmp10 <= main_tmp10_wire;
    main_tmp2 <= main_tmp2_wire;
  end
end

always @( posedge clk ) begin
  if ( current_state == main_for_body3_1 ) begin
    main_tmp5 <= main_tmp5_wire;
    main_tmp8 <= main_tmp8_wire;
    main_tmp11 <= main_tmp11_wire;
    main_tmp3 <= main_tmp3_wire;
  end
end

always @( posedge clk ) begin
  if ( current_state == main_for_body3_2 ) begin
    main_tmp6 <= main_tmp6_wire;
    main_tmp9 <= main_tmp9_wire;
    main_tmp12 <= main_tmp12_wire;
  end
end

always @( * ) begin
  main_x_0381_tmp = main_x_0381;
  if ( prev_bb == main_for_body3_2 ) begin
    main_x_0381_tmp = 64'd0;
  end else if ( prev_bb == main_for_body26_0 ) begin
    main_x_0381_tmp = main_add72;
  end
end

always @( * ) begin
  main_y_0379_tmp = main_y_0379;
  if ( prev_bb == main_for_body3_2 ) begin
    main_y_0379_tmp = 64'd0;
  end else if ( prev_bb == main_for_body26_0 ) begin
    main_y_0379_tmp = main_add81;
  end
end

always @( * ) begin
  main_y4_0378_tmp = main_y4_0378;
  if ( prev_bb == main_for_body3_2 ) begin
    main_y4_0378_tmp = 64'd0;
  end else if ( prev_bb == main_for_body26_0 ) begin
    main_y4_0378_tmp = main_add144;
  end
end

always @( * ) begin
  main_x4_0377_tmp = main_x4_0377;
  if ( prev_bb == main_for_body3_2 ) begin
    main_x4_0377_tmp = 64'd0;
  end else if ( prev_bb == main_for_body26_0 ) begin
    main_x4_0377_tmp = main_add135;
  end
end

always @( * ) begin
  main_y3_0374_tmp = main_y3_0374;
  if ( prev_bb == main_for_body3_2 ) begin
    main_y3_0374_tmp = 64'd0;
  end else if ( prev_bb == main_for_body26_0 ) begin
    main_y3_0374_tmp = main_add123;
  end
end

always @( * ) begin
  main_x3_0373_tmp = main_x3_0373;
  if ( prev_bb == main_for_body3_2 ) begin
    main_x3_0373_tmp = 64'd0;
  end else if ( prev_bb == main_for_body26_0 ) begin
    main_x3_0373_tmp = main_add114;
  end
end

always @( * ) begin
  main_y2_0370_tmp = main_y2_0370;
  if ( prev_bb == main_for_body3_2 ) begin
    main_y2_0370_tmp = 64'd0;
  end else if ( prev_bb == main_for_body26_0 ) begin
    main_y2_0370_tmp = main_add102;
  end
end

always @( * ) begin
  main_x2_0369_tmp = main_x2_0369;
  if ( prev_bb == main_for_body3_2 ) begin
    main_x2_0369_tmp = 64'd0;
  end else if ( prev_bb == main_for_body26_0 ) begin
    main_x2_0369_tmp = main_add93;
  end
end

always @( posedge clk ) begin
  if ( ( main_for_body26_ppl_ii_state == 0 ) & main_for_body26_ppl_valid_bit0 ) begin
    main_x_0381 <= main_x_0381_wire;
    main_y_0379 <= main_y_0379_wire;
    main_y4_0378 <= main_y4_0378_wire;
    main_x4_0377 <= main_x4_0377_wire;
    main_y3_0374 <= main_y3_0374_wire;
    main_x3_0373 <= main_x3_0373_wire;
    main_y2_0370 <= main_y2_0370_wire;
    main_x2_0369 <= main_x2_0369_wire;
    main_sext <= main_sext_wire;
    main_sext357 <= main_sext357_wire;
    main_sext358 <= main_sext358_wire;
    main_sext359 <= main_sext359_wire;
    main_sext360 <= main_sext360_wire;
    main_sext361 <= main_sext361_wire;
    main_sext362 <= main_sext362_wire;
    main_sext363 <= main_sext363_wire;
    main_inc <= main_inc_wire;
  end
end

always @( posedge clk ) begin
  if ( ( main_for_body26_ppl_ii_state == 1 ) & main_for_body26_ppl_valid_bit1 ) begin
    main_conv27 <= main_conv27_wire;
    main_conv31 <= main_conv31_wire;
    main_conv36 <= main_conv36_wire;
    main_conv40 <= main_conv40_wire;
    main_conv45 <= main_conv45_wire;
    main_conv49 <= main_conv49_wire;
    main_conv54 <= main_conv54_wire;
    main_conv58 <= main_conv58_wire;
  end
end

always @( posedge clk ) begin
  if ( ( main_for_body26_ppl_ii_state == 2 ) & main_for_body26_ppl_valid_bit2 ) begin
    main_mul29 <= main_mul29_wire;
    main_mul33 <= main_mul33_wire;
    main_mul38 <= main_mul38_wire;
    main_mul42 <= main_mul42_wire;
    main_mul47 <= main_mul47_wire;
    main_mul51 <= main_mul51_wire;
    main_mul56 <= main_mul56_wire;
    main_mul60 <= main_mul60_wire;
    main_mul76 <= main_mul76_wire;
    main_mul97 <= main_mul97_wire;
    main_mul118 <= main_mul118_wire;
    main_mul139 <= main_mul139_wire;
  end
end

always @( posedge clk ) begin
  if ( ( main_for_body26_ppl_ii_state == 3 ) & main_for_body26_ppl_valid_bit3 ) begin
    main_tmp13 <= main_tmp13_wire;
    main_tmp14 <= main_tmp14_wire;
    main_tmp15 <= main_tmp15_wire;
    main_tmp16 <= main_tmp16_wire;
    main_tmp17 <= main_tmp17_wire;
    main_tmp18 <= main_tmp18_wire;
    main_tmp19 <= main_tmp19_wire;
    main_tmp20 <= main_tmp20_wire;
    main_shr77 <= main_shr77_wire;
    main_shr98 <= main_shr98_wire;
    main_shr119 <= main_shr119_wire;
    main_shr140 <= main_shr140_wire;
  end
end

always @( posedge clk ) begin
  if ( ( main_for_body26_ppl_ii_state == 4 ) & main_for_body26_ppl_valid_bit4 ) begin
    main_add35 <= main_add35_wire;
    main_add44 <= main_add44_wire;
    main_add53 <= main_add53_wire;
    main_add62 <= main_add62_wire;
    main_sub <= main_sub_wire;
    main_shr79 <= main_shr79_wire;
    main_sub91 <= main_sub91_wire;
    main_shr100 <= main_shr100_wire;
    main_sub112 <= main_sub112_wire;
    main_shr121 <= main_shr121_wire;
    main_sub133 <= main_sub133_wire;
    main_shr142 <= main_shr142_wire;
  end
end

always @( posedge clk ) begin
  if ( ( main_for_body26_ppl_ii_state == 5 ) & main_for_body26_ppl_valid_bit5 ) begin
    main_cmp146 <= main_cmp146_wire;
    main_cmp151 <= main_cmp151_wire;
    main_cmp156 <= main_cmp156_wire;
    main_cmp161 <= main_cmp161_wire;
    main_add72 <= main_add72_wire;
    main_add81 <= main_add81_wire;
    main_add93 <= main_add93_wire;
    main_add102 <= main_add102_wire;
    main_add114 <= main_add114_wire;
    main_add123 <= main_add123_wire;
    main_add135 <= main_add135_wire;
    main_add144 <= main_add144_wire;
  end
end

always @( posedge clk ) begin
  if ( ( main_for_body26_ppl_ii_state == 0 ) & main_for_body26_ppl_valid_bit6 ) begin
    main_conv147 <= main_conv147_wire;
    main_conv152 <= main_conv152_wire;
    main_conv157 <= main_conv157_wire;
    main_conv162 <= main_conv162_wire;
  end
end

always @( * ) begin
  main_fiter4_0380_tmp = main_fiter4_0380;
  if ( main_for_body26_ppl_prev_bb_6 == main_for_body3_2 ) begin
    main_fiter4_0380_tmp = 8'd0;
  end else if ( main_for_body26_ppl_prev_bb_6 == main_for_body26_0 ) begin
    main_fiter4_0380_tmp = main_add164;
  end
end

always @( * ) begin
  main_fiter3_0376_tmp = main_fiter3_0376;
  if ( main_for_body26_ppl_prev_bb_6 == main_for_body3_2 ) begin
    main_fiter3_0376_tmp = 8'd0;
  end else if ( main_for_body26_ppl_prev_bb_6 == main_for_body26_0 ) begin
    main_fiter3_0376_tmp = main_add159;
  end
end

always @( * ) begin
  main_fiter2_0372_tmp = main_fiter2_0372;
  if ( main_for_body26_ppl_prev_bb_6 == main_for_body3_2 ) begin
    main_fiter2_0372_tmp = 8'd0;
  end else if ( main_for_body26_ppl_prev_bb_6 == main_for_body26_0 ) begin
    main_fiter2_0372_tmp = main_add154;
  end
end

always @( * ) begin
  main_fiter_0371_tmp = main_fiter_0371;
  if ( main_for_body26_ppl_prev_bb_6 == main_for_body3_2 ) begin
    main_fiter_0371_tmp = 8'd0;
  end else if ( main_for_body26_ppl_prev_bb_6 == main_for_body26_0 ) begin
    main_fiter_0371_tmp = main_add149;
  end
end

always @( posedge clk ) begin
  if ( ( main_for_body26_ppl_ii_state == 1 ) & main_for_body26_ppl_valid_bit7 ) begin
    main_fiter4_0380 <= main_fiter4_0380_wire;
    main_fiter3_0376 <= main_fiter3_0376_wire;
    main_fiter2_0372 <= main_fiter2_0372_wire;
    main_fiter_0371 <= main_fiter_0371_wire;
    main_add149 <= main_add149_wire;
    main_add154 <= main_add154_wire;
    main_add159 <= main_add159_wire;
    main_add164 <= main_add164_wire;
  end
end

always @( posedge clk ) begin
  if ( current_state == main_for_end_0 ) begin
    main_cmp167 <= main_cmp167_wire;
    main_cmp175 <= main_cmp175_wire;
    main_cmp189 <= main_cmp189_wire;
    main_cmp201 <= main_cmp201_wire;
    main_arrayidx173 <= main_arrayidx173_wire;
    main_arrayidx185 <= main_arrayidx185_wire;
    main_arrayidx197 <= main_arrayidx197_wire;
    main_arrayidx209 <= main_arrayidx209_wire;
    main_cmp2 <= main_cmp2_wire;
    main_indvars_iv_next393 <= main_indvars_iv_next393_wire;
  end
end

always @( posedge clk ) begin
  if ( current_state == main_for_end_1 ) begin
    main_conv170 <= main_conv170_wire;
    main_conv169 <= main_conv169_wire;
    main_conv178 <= main_conv178_wire;
    main_conv192 <= main_conv192_wire;
    main_factor <= main_factor_wire;
    main_conv204 <= main_conv204_wire;
    main_conv198 <= main_conv198_wire;
  end
end

always @( posedge clk ) begin
  if ( current_state == main_for_end_2 ) begin
    main_add180 <= main_add180_wire;
  end
end

always @( posedge clk ) begin
  if ( current_state == main_for_end_3 ) begin
    main_add187 <= main_add187_wire;
  end
end

always @( posedge clk ) begin
  if ( current_state == main_for_end_4 ) begin
    main_add199 <= main_add199_wire;
  end
end

always @( posedge clk ) begin
  if ( current_state == main_for_inc213_0 ) begin
    main_indvars_iv_next406 <= main_indvars_iv_next406_wire;
  end
end

always @( posedge clk ) begin
  if ( current_state == main_for_inc213_1 ) begin
    main_exitcond409 <= main_exitcond409_wire;
  end
end

always @( * ) begin
  main_indvars_iv389_tmp = main_indvars_iv389;
  if ( prev_bb == main_for_inc265_1 ) begin
    main_indvars_iv389_tmp = main_indvars_iv_next390;
  end else if ( prev_bb == main_for_inc213_1 ) begin
    main_indvars_iv389_tmp = 64'd0;
  end
end

always @( posedge clk ) begin
  if ( current_state == main_for_cond220_preheader_0 ) begin
    main_indvars_iv389 <= main_indvars_iv389_wire;
  end
end

always @( posedge clk ) begin
  if ( ( main_for_body223_ppl_ii_state == 0 ) & main_for_body223_ppl_valid_bit0 ) begin
    main_tmp22 <= main_tmp22_wire;
    main_tmp24 <= main_tmp24_wire;
    main_tmp26 <= main_tmp26_wire;
    main_arrayidx227 <= main_arrayidx227_wire;
    main_arrayidx231 <= main_arrayidx231_wire;
    main_indvars_iv_next <= main_indvars_iv_next_wire;
  end
end

always @( posedge clk ) begin
  if ( ( main_for_body223_ppl_ii_state == 1 ) & main_for_body223_ppl_valid_bit1 ) begin
    main_arrayidx236 <= main_arrayidx236_wire;
    main_arrayidx246 <= main_arrayidx246_wire;
    main_arrayidx256 <= main_arrayidx256_wire;
    main_arrayidx241 <= main_arrayidx241_wire;
    main_arrayidx251 <= main_arrayidx251_wire;
    main_arrayidx261 <= main_arrayidx261_wire;
  end
end

always @( posedge clk ) begin
  if ( current_state == main_for_inc265_0 ) begin
    main_indvars_iv_next390 <= main_indvars_iv_next390_wire;
  end
end

always @( posedge clk ) begin
  if ( current_state == main_for_inc265_1 ) begin
    main_exitcond <= main_exitcond_wire;
  end
end

always @( posedge clk ) begin
  if ( current_state == main_for_end267_0 ) begin
    main_cmp268 <= main_cmp268_wire;
    main_tmp28 <= main_tmp28_wire;
  end
end

always @( posedge clk ) begin
  if ( current_state == main_for_end267_1 ) begin
    main__ <= main___wire;
  end
end

assign main_indvars_iv405_wire = main_indvars_iv405_tmp;

assign main_tmp_wire = main_indvars_iv405_wire << (64'd24 % 64);

assign main_count_0384_wire = main_count_0384_tmp;

assign main_tmp1_wire = main_tmp + -64'd 268435456;

assign main_indvars_iv392_wire = main_indvars_iv392_tmp;

assign main_tmp4_wire = main_indvars_iv392_wire | 64'd1;

assign main_tmp7_wire = main_indvars_iv392_wire | 64'd2;

assign main_tmp10_wire = main_indvars_iv392_wire | 64'd3;

assign main_tmp2_wire = main_indvars_iv392_wire * 64'd25165824;

assign main_count_1382_wire = main_count_1382_tmp;

assign main_tmp5_wire = main_tmp4 * 64'd25165824;

assign main_tmp8_wire = main_tmp7 * 64'd25165824;

assign main_tmp11_wire = main_tmp10 * 64'd25165824;

assign main_tmp3_wire = main_tmp2 + -64'd 536870912;

assign main_tmp6_wire = main_tmp5 + -64'd 536870912;

assign main_tmp9_wire = main_tmp8 + -64'd 536870912;

assign main_tmp12_wire = main_tmp11 + -64'd 536870912;

assign main_x_0381_wire = main_x_0381_tmp;

assign main_y_0379_wire = main_y_0379_tmp;

assign main_y4_0378_wire = main_y4_0378_tmp;

assign main_x4_0377_wire = main_x4_0377_tmp;

assign main_y3_0374_wire = main_y3_0374_tmp;

assign main_x3_0373_wire = main_x3_0373_tmp;

assign main_y2_0370_wire = main_y2_0370_tmp;

assign main_x2_0369_wire = main_x2_0369_tmp;

assign main_sext_wire = main_x_0381_wire << (64'd32 % 64);

assign main_sext357_wire = main_y_0379_wire << (64'd32 % 64);

assign main_sext358_wire = main_x2_0369_wire << (64'd32 % 64);

assign main_sext359_wire = main_y2_0370_wire << (64'd32 % 64);

assign main_sext360_wire = main_x3_0373_wire << (64'd32 % 64);

assign main_sext361_wire = main_y3_0374_wire << (64'd32 % 64);

assign main_sext362_wire = main_x4_0377_wire << (64'd32 % 64);

assign main_sext363_wire = main_y4_0378_wire << (64'd32 % 64);

assign main_inc_wire = main_for_body26_pipeline_i_stage0 + 8'd1;

assign main_conv27_wire = $signed(main_sext) >>> $signed(64'd32 % 64);

assign main_conv31_wire = $signed(main_sext357) >>> $signed(64'd32 % 64);

assign main_conv36_wire = $signed(main_sext358) >>> $signed(64'd32 % 64);

assign main_conv40_wire = $signed(main_sext359) >>> $signed(64'd32 % 64);

assign main_conv45_wire = $signed(main_sext360) >>> $signed(64'd32 % 64);

assign main_conv49_wire = $signed(main_sext361) >>> $signed(64'd32 % 64);

assign main_conv54_wire = $signed(main_sext362) >>> $signed(64'd32 % 64);

assign main_conv58_wire = $signed(main_sext363) >>> $signed(64'd32 % 64);

assign main_mul29_wire = main_conv27 * main_conv27;

assign main_mul33_wire = main_conv31 * main_conv31;

assign main_mul38_wire = main_conv36 * main_conv36;

assign main_mul42_wire = main_conv40 * main_conv40;

assign main_mul47_wire = main_conv45 * main_conv45;

assign main_mul51_wire = main_conv49 * main_conv49;

assign main_mul56_wire = main_conv54 * main_conv54;

assign main_mul60_wire = main_conv58 * main_conv58;

assign main_mul76_wire = main_conv27 * main_conv31;

assign main_mul97_wire = main_conv40 * main_conv36;

assign main_mul118_wire = main_conv49 * main_conv45;

assign main_mul139_wire = main_conv58 * main_conv54;

assign main_tmp13_wire = main_mul29 >> (64'd28 % 64);

assign main_tmp14_wire = main_mul33 >> (64'd28 % 64);

assign main_tmp15_wire = main_mul38 >> (64'd28 % 64);

assign main_tmp16_wire = main_mul42 >> (64'd28 % 64);

assign main_tmp17_wire = main_mul47 >> (64'd28 % 64);

assign main_tmp18_wire = main_mul51 >> (64'd28 % 64);

assign main_tmp19_wire = main_mul56 >> (64'd28 % 64);

assign main_tmp20_wire = main_mul60 >> (64'd28 % 64);

assign main_shr77_wire = $signed(main_mul76) >>> $signed(64'd28 % 64);

assign main_shr98_wire = $signed(main_mul97) >>> $signed(64'd28 % 64);

assign main_shr119_wire = $signed(main_mul118) >>> $signed(64'd28 % 64);

assign main_shr140_wire = $signed(main_mul139) >>> $signed(64'd28 % 64);

assign main_add35_wire = main_tmp13 + main_tmp14;

assign main_add44_wire = main_tmp16 + main_tmp15;

assign main_add53_wire = main_tmp18 + main_tmp17;

assign main_add62_wire = main_tmp20 + main_tmp19;

assign main_sub_wire = main_tmp3 - main_tmp14;

assign main_shr79_wire = main_shr77 << (64'd1 % 64);

assign main_sub91_wire = main_tmp15 + main_tmp6;

assign main_shr100_wire = main_shr98 << (64'd1 % 64);

assign main_sub112_wire = main_tmp17 + main_tmp9;

assign main_shr121_wire = main_shr119 << (64'd1 % 64);

assign main_sub133_wire = main_tmp19 + main_tmp12;

assign main_shr142_wire = main_shr140 << (64'd1 % 64);

assign main_cmp146_wire = main_add35 < 64'd1073741825;

assign main_cmp151_wire = main_add44 < 64'd1073741825;

assign main_cmp156_wire = main_add53 < 64'd1073741825;

assign main_cmp161_wire = main_add62 < 64'd1073741825;

assign main_add72_wire = main_sub + main_tmp13;

assign main_add81_wire = main_shr79 + main_tmp1;

assign main_add93_wire = main_sub91 - main_tmp16;

assign main_add102_wire = main_shr100 + main_tmp1;

assign main_add114_wire = main_sub112 - main_tmp18;

assign main_add123_wire = main_shr121 + main_tmp1;

assign main_add135_wire = main_sub133 - main_tmp20;

assign main_add144_wire = main_shr142 + main_tmp1;

assign main_conv147_wire = main_cmp146;

assign main_conv152_wire = main_cmp151;

assign main_conv157_wire = main_cmp156;

assign main_conv162_wire = main_cmp161;

assign main_fiter4_0380_wire = main_fiter4_0380_tmp;

assign main_fiter3_0376_wire = main_fiter3_0376_tmp;

assign main_fiter2_0372_wire = main_fiter2_0372_tmp;

assign main_fiter_0371_wire = main_fiter_0371_tmp;

assign main_add149_wire = main_fiter_0371_wire + main_conv147;

assign main_add154_wire = main_fiter2_0372_wire + main_conv152;

assign main_add159_wire = main_fiter3_0376_wire + main_conv157;

assign main_add164_wire = main_fiter4_0380_wire + main_conv162;

assign main_cmp167_wire = main_add149 < 8'd10;

assign main_cmp175_wire = main_add154 < 8'd10;

assign main_cmp189_wire = main_add159 < 8'd10;

assign main_cmp201_wire = main_add164 < 8'd10;

assign main_arrayidx173_wire = `ADDR_main_img + main_indvars_iv405 * 1 + main_indvars_iv392 * 32 + 64'd0 * 1024;

assign main_arrayidx185_wire = `ADDR_main_img1 + main_indvars_iv405 * 1 + main_tmp4 * 32 + 64'd0 * 1024;

assign main_arrayidx197_wire = `ADDR_main_img2 + main_indvars_iv405 * 1 + main_tmp7 * 32 + 64'd0 * 1024;

assign main_arrayidx209_wire = `ADDR_main_img3 + main_indvars_iv405 * 1 + main_tmp10 * 32 + 64'd0 * 1024;

assign main_cmp2_wire = main_indvars_iv392 < 64'd28;

assign main_indvars_iv_next393_wire = main_indvars_iv392 + 64'd4;

assign main_conv170_wire = main_cmp167;

assign main_conv169_wire = main_cmp167;

assign main_conv178_wire = main_cmp175;

assign main_conv192_wire = main_cmp189;

assign main_factor_wire = (main_cmp175 == 1) ? 32'd2 : 32'd0;

assign main_conv204_wire = main_cmp201;

assign main_conv198_wire = main_cmp189;

assign main_add180_wire = main_count_1382 + main_conv170;

assign main_add187_wire = main_add180 + main_factor;

assign main_add199_wire = main_add187 + main_conv198;

assign main_indvars_iv_next406_wire = main_indvars_iv405 + 64'd1;

assign main_exitcond409_wire = main_indvars_iv_next406 == 64'd32;

assign main_indvars_iv389_wire = main_indvars_iv389_tmp;

assign main_tmp22_wire = main_for_body223_pipeline_i_stage0 | 64'd1;

assign main_tmp24_wire = main_for_body223_pipeline_i_stage0 | 64'd2;

assign main_tmp26_wire = main_for_body223_pipeline_i_stage0 | 64'd3;

assign main_arrayidx227_wire = `ADDR_main_img + main_indvars_iv389 * 1 + main_for_body223_pipeline_i_stage0 * 32 + 64'd0 * 1024;

assign main_arrayidx231_wire = `ADDR_main_final + main_indvars_iv389 * 1 + main_for_body223_pipeline_i_stage0 * 32 + 64'd0 * 1024;

assign main_indvars_iv_next_wire = main_for_body223_pipeline_i_stage0 + 64'd4;

assign main_arrayidx236_wire = `ADDR_main_img1 + main_indvars_iv389 * 1 + main_tmp22 * 32 + 64'd0 * 1024;

assign main_arrayidx246_wire = `ADDR_main_img2 + main_indvars_iv389 * 1 + main_tmp24 * 32 + 64'd0 * 1024;

assign main_arrayidx256_wire = `ADDR_main_img3 + main_indvars_iv389 * 1 + main_tmp26 * 32 + 64'd0 * 1024;

assign main_arrayidx241_wire = `ADDR_main_final + main_indvars_iv389 * 1 + main_tmp22 * 32 + 64'd0 * 1024;

assign main_arrayidx251_wire = `ADDR_main_final + main_indvars_iv389 * 1 + main_tmp24 * 32 + 64'd0 * 1024;

assign main_arrayidx261_wire = `ADDR_main_final + main_indvars_iv389 * 1 + main_tmp26 * 32 + 64'd0 * 1024;

assign main_indvars_iv_next390_wire = main_indvars_iv389 + 64'd1;

assign main_exitcond_wire = main_indvars_iv_next390 == 64'd32;

assign main_cmp268_wire = main_add199 != 32'd656;

assign main_tmp28_wire = `ADDR_main_final + 64'd0 * 1 + 64'd0 * 32 + 64'd0 * 1024;

assign main___wire = main_cmp268;

always @( * ) begin
  if ( current_state == main_for_end267_2 ) begin
    ready_next = 1'b1;
  end else begin
    ready_next = 1'b0;
  end
end

always @( * ) begin
  if ( current_state == main_for_end267_2 ) begin
    ret_wire = main__;
  end else begin
    ret_wire = ret_val;
  end
end

always @( posedge clk ) begin
  if ( reset == 1 ) begin
    ret_val <= 32'd9;
  end else begin
    ret_val <= ret_wire;
  end
end

always @( posedge clk ) begin
  if ( current_state == main_entry_0 ) begin
    prev_bb <= current_state;
  end else if ( current_state == main_for_cond1_preheader_0 ) begin
    prev_bb <= current_state;
  end else if ( current_state == main_for_cond1_preheader_1 ) begin
    prev_bb <= current_state;
  end else if ( current_state == main_for_body3_0 ) begin
    prev_bb <= current_state;
  end else if ( current_state == main_for_body3_2 ) begin
    prev_bb <= current_state;
  end else if ( main_for_body26_ppl_valid_bit0 ) begin
    prev_bb <= current_state;
  end else if ( main_for_body26_ppl_valid_bit0 ) begin
    prev_bb <= current_state;
  end else if ( current_state == main_for_end_5 ) begin
    prev_bb <= current_state;
  end else if ( current_state == main_for_inc213_1 ) begin
    prev_bb <= current_state;
  end else if ( current_state == main_for_cond220_preheader_0 ) begin
    prev_bb <= current_state;
  end else if ( ( main_for_body223_ppl_ii_state == 1 ) & main_for_body223_ppl_valid_bit9 ) begin
    prev_bb <= current_state;
  end else if ( current_state == main_for_inc265_1 ) begin
    prev_bb <= current_state;
  end
end

assign main_tmp21_wire = mem_out_1;

assign main_tmp23_wire = mem_out_1;

assign main_tmp25_wire = mem_out_1;

assign main_tmp27_wire = mem_out_1;

always @( posedge clk ) begin
  if ( ( main_for_body223_ppl_ii_state == 2 ) & main_for_body223_ppl_valid_bit2 ) begin
    main_tmp21 <= main_tmp21_wire;
  end
  if ( ( main_for_body223_ppl_ii_state == 3 ) & main_for_body223_ppl_valid_bit3 ) begin
    main_tmp23 <= main_tmp23_wire;
  end
  if ( ( main_for_body223_ppl_ii_state == 0 ) & main_for_body223_ppl_valid_bit4 ) begin
    main_tmp25 <= main_tmp25_wire;
  end
  if ( ( main_for_body223_ppl_ii_state == 1 ) & main_for_body223_ppl_valid_bit5 ) begin
    main_tmp27 <= main_tmp27_wire;
  end
  if ( reset == 1'b1 ) begin
  end else if ( start == 1'b1 ) begin
  end
end

always @( * ) begin
  if ( ( main_for_body223_ppl_ii_state == 2 ) & main_for_body223_ppl_valid_bit2 ) begin
  end
  if ( ( main_for_body223_ppl_ii_state == 3 ) & main_for_body223_ppl_valid_bit3 ) begin
  end
  if ( ( main_for_body223_ppl_ii_state == 0 ) & main_for_body223_ppl_valid_bit4 ) begin
  end
  if ( ( main_for_body223_ppl_ii_state == 1 ) & main_for_body223_ppl_valid_bit5 ) begin
  end
end

always @( * ) begin
  mem_dw_1 = 0;
  mem_addr_1 = 0;
  mem_we_1 = 0;
  mem_in_1 = 0;
  mem_dw_2 = 0;
  mem_addr_2 = 0;
  mem_we_2 = 0;
  mem_in_2 = 0;
  if ( current_state == main_for_end_2 ) begin
    mem_dw_1 = 0;
    mem_addr_1 = main_arrayidx173;
    mem_we_1 = 1;
    mem_in_1 = $signed(main_conv169);
    mem_dw_2 = 0;
    mem_addr_2 = main_arrayidx185;
    mem_we_2 = 1;
    mem_in_2 = $signed(main_conv178);
  end
  if ( current_state == main_for_end_4 ) begin
    mem_dw_1 = 0;
    mem_addr_1 = main_arrayidx197;
    mem_we_1 = 1;
    mem_in_1 = $signed(main_conv192);
    mem_dw_2 = 0;
    mem_addr_2 = main_arrayidx209;
    mem_we_2 = 1;
    mem_in_2 = $signed(main_conv204);
  end
  if ( ( main_for_body223_ppl_ii_state == 1 ) & main_for_body223_ppl_valid_bit1 ) begin
    mem_dw_1 = 0;
    mem_addr_1 = main_arrayidx227;
    mem_we_1 = 0;
    mem_in_1 = 0;
  end
  if ( ( main_for_body223_ppl_ii_state == 2 ) & main_for_body223_ppl_valid_bit2 ) begin
    mem_dw_1 = 0;
    mem_addr_1 = main_arrayidx236;
    mem_we_1 = 0;
    mem_in_1 = 0;
  end
  if ( ( main_for_body223_ppl_ii_state == 3 ) & main_for_body223_ppl_valid_bit3 ) begin
    mem_dw_1 = 0;
    mem_addr_1 = main_arrayidx246;
    mem_we_1 = 0;
    mem_in_1 = 0;
  end
  if ( ( main_for_body223_ppl_ii_state == 0 ) & main_for_body223_ppl_valid_bit4 ) begin
    mem_dw_1 = 0;
    mem_addr_1 = main_arrayidx256_stage1;
    mem_we_1 = 0;
    mem_in_1 = 0;
  end
  if ( ( main_for_body223_ppl_ii_state == 1 ) & main_for_body223_ppl_valid_bit5 ) begin
    mem_dw_2 = 0;
    mem_addr_2 = main_arrayidx231_stage1;
    mem_we_2 = 1;
    mem_in_2 = $signed(main_tmp21_stage1);
  end
  if ( ( main_for_body223_ppl_ii_state == 2 ) & main_for_body223_ppl_valid_bit6 ) begin
    mem_dw_2 = 0;
    mem_addr_2 = main_arrayidx241_stage1;
    mem_we_2 = 1;
    mem_in_2 = $signed(main_tmp23);
  end
  if ( ( main_for_body223_ppl_ii_state == 3 ) & main_for_body223_ppl_valid_bit7 ) begin
    mem_dw_2 = 0;
    mem_addr_2 = main_arrayidx251_stage1;
    mem_we_2 = 1;
    mem_in_2 = $signed(main_tmp25);
  end
  if ( ( main_for_body223_ppl_ii_state == 0 ) & main_for_body223_ppl_valid_bit8 ) begin
    mem_dw_2 = 0;
    mem_addr_2 = main_arrayidx261_stage2;
    mem_we_2 = 1;
    mem_in_2 = $signed(main_tmp27_stage2);
  end
  if ( current_state == main_for_end267_1 ) begin
    mem_dw_1 = print_image_mem_dw_1;
    mem_addr_1 = print_image_mem_addr_1;
    mem_we_1 = print_image_mem_we_1;
    mem_in_1 = print_image_mem_in_1;
    mem_dw_2 = print_image_mem_dw_2;
    mem_addr_2 = print_image_mem_addr_2;
    mem_we_2 = print_image_mem_we_2;
    mem_in_2 = print_image_mem_in_2;
  end
end

always @( * ) begin
  print_image_reset_next = 1;
  print_image_start_next = 0;
  print_image_width = 0;
  print_image_height = 0;
  print_image_max = 0;
  print_image_img = 0;
  if ( current_state == main_for_end267_1 ) begin
    if ( print_image_ready != 1 ) begin
      print_image_reset_next = 0;
    end
    print_image_start_next = 1;
    print_image_width = 32'd32;
    print_image_height = 32'd32;
    print_image_max = 32'd1;
    print_image_img = main_tmp28;
  end
end

always @( posedge clk ) begin
  if ( reset == 1'b1 ) begin
    print_image_reset <= 1'b1;
    print_image_start <= 1'b0;
  end else if ( start == 1'b1 ) begin
    print_image_reset <= print_image_reset_next;
    print_image_start <= print_image_start_next;
  end
end

always @( posedge clk ) begin
  if ( reset == 1'b1 ) begin
    ready <= 1'b0;
  end else begin
    ready <= ready_next;
  end
end

always @( * ) begin
  main_for_body26_ppl_start = 0;
  if ( current_state == main_for_body26_0 ) begin
    main_for_body26_ppl_start = 1;
  end
end

always @( posedge clk ) begin
  if ( reset == 1 ) begin
    main_for_body26_ppl_started <= 0;
  end else if ( main_for_body26_ppl_epilogue & ~(main_for_body26_ppl_valid_bit6) & main_for_body26_ppl_valid_bit7 ) begin
    main_for_body26_ppl_started <= 0;
  end else begin
    main_for_body26_ppl_started <= main_for_body26_ppl_start || main_for_body26_ppl_started;
  end
end

always @( posedge clk ) begin
  if ( reset == 1 ) begin
    main_for_body26_ppl_valid_bit0 <= 0;
    main_for_body26_ppl_valid_bit1 <= 0;
    main_for_body26_ppl_valid_bit2 <= 0;
    main_for_body26_ppl_valid_bit3 <= 0;
    main_for_body26_ppl_valid_bit4 <= 0;
    main_for_body26_ppl_valid_bit5 <= 0;
    main_for_body26_ppl_valid_bit6 <= 0;
    main_for_body26_ppl_valid_bit7 <= 0;
  end else begin
    main_for_body26_ppl_valid_bit0 <= (main_for_body26_ppl_start & ~(main_for_body26_ppl_started)) | (main_for_body26_ppl_started & ~(main_for_body26_ppl_epilogue) & ~(main_exitcond391));
    main_for_body26_ppl_valid_bit1 <= main_for_body26_ppl_valid_bit0;
    main_for_body26_ppl_valid_bit2 <= main_for_body26_ppl_valid_bit1;
    main_for_body26_ppl_valid_bit3 <= main_for_body26_ppl_valid_bit2;
    main_for_body26_ppl_valid_bit4 <= main_for_body26_ppl_valid_bit3;
    main_for_body26_ppl_valid_bit5 <= main_for_body26_ppl_valid_bit4;
    main_for_body26_ppl_valid_bit6 <= main_for_body26_ppl_valid_bit5;
    main_for_body26_ppl_valid_bit7 <= main_for_body26_ppl_valid_bit6;
  end
end

always @( posedge clk ) begin
  if ( reset == 1 ) begin
    main_for_body26_ppl_ii_state <= 0;
  end else if ( main_for_body26_ppl_start & ~(main_for_body26_ppl_started) ) begin
    main_for_body26_ppl_ii_state <= 0;
  end else if ( (main_for_body26_ppl_ii_state == 0) & main_for_body26_ppl_started ) begin
    main_for_body26_ppl_ii_state <= 1;
  end else if ( (main_for_body26_ppl_ii_state == 1) & main_for_body26_ppl_started ) begin
    main_for_body26_ppl_ii_state <= 2;
  end else if ( (main_for_body26_ppl_ii_state == 2) & main_for_body26_ppl_started ) begin
    main_for_body26_ppl_ii_state <= 3;
  end else if ( (main_for_body26_ppl_ii_state == 3) & main_for_body26_ppl_started ) begin
    main_for_body26_ppl_ii_state <= 4;
  end else if ( (main_for_body26_ppl_ii_state == 4) & main_for_body26_ppl_started ) begin
    main_for_body26_ppl_ii_state <= 5;
  end else if ( (main_for_body26_ppl_ii_state == 5) & main_for_body26_ppl_started ) begin
    main_for_body26_ppl_ii_state <= 0;
  end else begin
    main_for_body26_ppl_ii_state <= 0;
  end
end

always @( * ) begin
  main_iter_0375_tmp = main_iter_0375;
  if ( prev_bb == main_for_body3_2 ) begin
    main_iter_0375_tmp = 8'd0;
  end else if ( prev_bb == main_for_body26_0 ) begin
    main_iter_0375_tmp = main_inc;
  end
end

assign main_iter_0375_wire = main_iter_0375_tmp;

always @( posedge clk ) begin
  main_iter_0375 <= main_iter_0375_wire;
end

always @( posedge clk ) begin
  if ( reset == 1 ) begin
    main_for_body26_pipeline_i_stage0 <= 0;
    main_for_body26_pipeline_i_stage1 <= 0;
  end else if ( main_for_body26_ppl_start & ~(main_for_body26_ppl_started) ) begin
    main_for_body26_pipeline_i_stage0 <= main_iter_0375_wire;
    main_for_body26_pipeline_i_stage1 <= main_iter_0375_wire;
  end else if ( main_for_body26_ppl_ii_state == 5 ) begin
    if ( main_for_body26_ppl_valid_bit0 == 1 ) begin
      main_for_body26_pipeline_i_stage0 <= main_inc_wire;
    end
    main_for_body26_pipeline_i_stage1 <= main_for_body26_pipeline_i_stage0;
  end
end

always @( * ) begin
  main_exitcond391 = main_exitcond391_tmp;
  if ( main_for_body26_ppl_ii_state == 0 & main_for_body26_ppl_valid_bit0 ) begin
    main_exitcond391 = main_inc_wire == 8'd10;
  end
end

always @( posedge clk ) begin
  main_exitcond391_tmp <= main_exitcond391;
end

always @( posedge clk ) begin
  if ( reset == 1 ) begin
    main_for_body26_ppl_epilogue <= 0;
  end else if ( ~main_for_body26_ppl_epilogue & main_for_body26_ppl_started & main_exitcond391 ) begin
    main_for_body26_ppl_epilogue <= 1;
  end else if ( main_for_body26_ppl_epilogue & ~( main_for_body26_ppl_valid_bit6 ) & main_for_body26_ppl_valid_bit7 ) begin
    main_for_body26_ppl_epilogue <= 0;
  end
end

always @( * ) begin
  main_for_body26_ppl_finish = main_for_body26_ppl_epilogue & ~(main_for_body26_ppl_valid_bit6) & main_for_body26_ppl_valid_bit7;
end

always @( posedge clk ) begin
  if ( main_for_body26_ppl_valid_bit0 ) begin
    main_for_body26_ppl_prev_bb_0 <= prev_bb;
  end
  if ( main_for_body26_ppl_valid_bit1 ) begin
    main_for_body26_ppl_prev_bb_1 <= main_for_body26_ppl_prev_bb_0;
  end
  if ( main_for_body26_ppl_valid_bit2 ) begin
    main_for_body26_ppl_prev_bb_2 <= main_for_body26_ppl_prev_bb_1;
  end
  if ( main_for_body26_ppl_valid_bit3 ) begin
    main_for_body26_ppl_prev_bb_3 <= main_for_body26_ppl_prev_bb_2;
  end
  if ( main_for_body26_ppl_valid_bit4 ) begin
    main_for_body26_ppl_prev_bb_4 <= main_for_body26_ppl_prev_bb_3;
  end
  if ( main_for_body26_ppl_valid_bit5 ) begin
    main_for_body26_ppl_prev_bb_5 <= main_for_body26_ppl_prev_bb_4;
  end
  if ( main_for_body26_ppl_valid_bit6 ) begin
    main_for_body26_ppl_prev_bb_6 <= main_for_body26_ppl_prev_bb_5;
  end
  if ( main_for_body26_ppl_valid_bit7 ) begin
    main_for_body26_ppl_prev_bb_7 <= main_for_body26_ppl_prev_bb_6;
  end
end

always @( * ) begin
  main_for_body223_ppl_start = 0;
  if ( current_state == main_for_body223_0 ) begin
    main_for_body223_ppl_start = 1;
  end
end

always @( posedge clk ) begin
  if ( reset == 1 ) begin
    main_for_body223_ppl_started <= 0;
  end else if ( main_for_body223_ppl_epilogue & ~(main_for_body223_ppl_valid_bit8) & main_for_body223_ppl_valid_bit9 ) begin
    main_for_body223_ppl_started <= 0;
  end else begin
    main_for_body223_ppl_started <= main_for_body223_ppl_start || main_for_body223_ppl_started;
  end
end

always @( posedge clk ) begin
  if ( reset == 1 ) begin
    main_for_body223_ppl_valid_bit0 <= 0;
    main_for_body223_ppl_valid_bit1 <= 0;
    main_for_body223_ppl_valid_bit2 <= 0;
    main_for_body223_ppl_valid_bit3 <= 0;
    main_for_body223_ppl_valid_bit4 <= 0;
    main_for_body223_ppl_valid_bit5 <= 0;
    main_for_body223_ppl_valid_bit6 <= 0;
    main_for_body223_ppl_valid_bit7 <= 0;
    main_for_body223_ppl_valid_bit8 <= 0;
    main_for_body223_ppl_valid_bit9 <= 0;
  end else begin
    main_for_body223_ppl_valid_bit0 <= (main_for_body223_ppl_start & ~(main_for_body223_ppl_started)) | (main_for_body223_ppl_started & ~(main_for_body223_ppl_epilogue) & ~(~main_cmp221));
    main_for_body223_ppl_valid_bit1 <= main_for_body223_ppl_valid_bit0;
    main_for_body223_ppl_valid_bit2 <= main_for_body223_ppl_valid_bit1;
    main_for_body223_ppl_valid_bit3 <= main_for_body223_ppl_valid_bit2;
    main_for_body223_ppl_valid_bit4 <= main_for_body223_ppl_valid_bit3;
    main_for_body223_ppl_valid_bit5 <= main_for_body223_ppl_valid_bit4;
    main_for_body223_ppl_valid_bit6 <= main_for_body223_ppl_valid_bit5;
    main_for_body223_ppl_valid_bit7 <= main_for_body223_ppl_valid_bit6;
    main_for_body223_ppl_valid_bit8 <= main_for_body223_ppl_valid_bit7;
    main_for_body223_ppl_valid_bit9 <= main_for_body223_ppl_valid_bit8;
  end
end

always @( posedge clk ) begin
  if ( reset == 1 ) begin
    main_for_body223_ppl_ii_state <= 0;
  end else if ( main_for_body223_ppl_start & ~(main_for_body223_ppl_started) ) begin
    main_for_body223_ppl_ii_state <= 0;
  end else if ( (main_for_body223_ppl_ii_state == 0) & main_for_body223_ppl_started ) begin
    main_for_body223_ppl_ii_state <= 1;
  end else if ( (main_for_body223_ppl_ii_state == 1) & main_for_body223_ppl_started ) begin
    main_for_body223_ppl_ii_state <= 2;
  end else if ( (main_for_body223_ppl_ii_state == 2) & main_for_body223_ppl_started ) begin
    main_for_body223_ppl_ii_state <= 3;
  end else if ( (main_for_body223_ppl_ii_state == 3) & main_for_body223_ppl_started ) begin
    main_for_body223_ppl_ii_state <= 0;
  end else begin
    main_for_body223_ppl_ii_state <= 0;
  end
end

always @( * ) begin
  main_indvars_iv_tmp = main_indvars_iv;
  if ( prev_bb == main_for_cond220_preheader_0 ) begin
    main_indvars_iv_tmp = 64'd0;
  end else if ( prev_bb == main_for_body223_0 ) begin
    main_indvars_iv_tmp = main_indvars_iv_next;
  end
end

assign main_indvars_iv_wire = main_indvars_iv_tmp;

always @( posedge clk ) begin
  main_indvars_iv <= main_indvars_iv_wire;
end

always @( posedge clk ) begin
  if ( reset == 1 ) begin
    main_for_body223_pipeline_i_stage0 <= 0;
    main_for_body223_pipeline_i_stage1 <= 0;
    main_for_body223_pipeline_i_stage2 <= 0;
  end else if ( main_for_body223_ppl_start & ~(main_for_body223_ppl_started) ) begin
    main_for_body223_pipeline_i_stage0 <= main_indvars_iv_wire;
    main_for_body223_pipeline_i_stage1 <= main_indvars_iv_wire;
    main_for_body223_pipeline_i_stage2 <= main_indvars_iv_wire;
  end else if ( main_for_body223_ppl_ii_state == 3 ) begin
    if ( main_for_body223_ppl_valid_bit0 == 1 ) begin
      main_for_body223_pipeline_i_stage0 <= main_indvars_iv_next_wire;
    end
    main_for_body223_pipeline_i_stage1 <= main_for_body223_pipeline_i_stage0;
    main_for_body223_pipeline_i_stage2 <= main_for_body223_pipeline_i_stage1;
  end
end

always @( * ) begin
  main_cmp221 = main_cmp221_tmp;
  if ( main_for_body223_ppl_ii_state == 0 & main_for_body223_ppl_valid_bit0 ) begin
    main_cmp221 = main_for_body223_pipeline_i_stage0 < 64'd28;
  end
end

always @( posedge clk ) begin
  main_cmp221_tmp <= main_cmp221;
end

always @( posedge clk ) begin
  if ( reset == 1 ) begin
    main_for_body223_ppl_epilogue <= 0;
  end else if ( ~main_for_body223_ppl_epilogue & main_for_body223_ppl_started & ~main_cmp221 ) begin
    main_for_body223_ppl_epilogue <= 1;
  end else if ( main_for_body223_ppl_epilogue & ~( main_for_body223_ppl_valid_bit8 ) & main_for_body223_ppl_valid_bit9 ) begin
    main_for_body223_ppl_epilogue <= 0;
  end
end

always @( * ) begin
  main_for_body223_ppl_finish = main_for_body223_ppl_epilogue & ~(main_for_body223_ppl_valid_bit8) & main_for_body223_ppl_valid_bit9;
end

always @( posedge clk ) begin
  if ( ( main_for_body223_ppl_ii_state == 3 ) & main_for_body223_ppl_valid_bit3 ) begin
    main_arrayidx241_stage1 <= main_arrayidx241;
  end
end

always @( posedge clk ) begin
  if ( ( main_for_body223_ppl_ii_state == 3 ) & main_for_body223_ppl_valid_bit3 ) begin
    main_arrayidx246_stage1 <= main_arrayidx246;
  end
end

always @( posedge clk ) begin
  if ( ( main_for_body223_ppl_ii_state == 3 ) & main_for_body223_ppl_valid_bit7 ) begin
    main_tmp25_stage2 <= main_tmp25;
  end
end

always @( posedge clk ) begin
  if ( ( main_for_body223_ppl_ii_state == 3 ) & main_for_body223_ppl_valid_bit3 ) begin
    main_arrayidx251_stage1 <= main_arrayidx251;
  end
  if ( ( main_for_body223_ppl_ii_state == 3 ) & main_for_body223_ppl_valid_bit7 ) begin
    main_arrayidx251_stage2 <= main_arrayidx251_stage1;
  end
end

always @( posedge clk ) begin
  if ( ( main_for_body223_ppl_ii_state == 3 ) & main_for_body223_ppl_valid_bit3 ) begin
    main_arrayidx256_stage1 <= main_arrayidx256;
  end
end

always @( posedge clk ) begin
  if ( ( main_for_body223_ppl_ii_state == 3 ) & main_for_body223_ppl_valid_bit3 ) begin
    main_tmp21_stage1 <= main_tmp21;
  end
end

always @( posedge clk ) begin
  if ( ( main_for_body223_ppl_ii_state == 3 ) & main_for_body223_ppl_valid_bit3 ) begin
    main_arrayidx231_stage1 <= main_arrayidx231;
  end
end

always @( posedge clk ) begin
  if ( ( main_for_body223_ppl_ii_state == 3 ) & main_for_body223_ppl_valid_bit7 ) begin
    main_tmp27_stage2 <= main_tmp27;
  end
end

always @( posedge clk ) begin
  if ( ( main_for_body223_ppl_ii_state == 3 ) & main_for_body223_ppl_valid_bit3 ) begin
    main_arrayidx261_stage1 <= main_arrayidx261;
  end
  if ( ( main_for_body223_ppl_ii_state == 3 ) & main_for_body223_ppl_valid_bit7 ) begin
    main_arrayidx261_stage2 <= main_arrayidx261_stage1;
  end
end

always @( posedge clk ) begin
  if ( main_for_body223_ppl_valid_bit0 ) begin
    main_for_body223_ppl_prev_bb_0 <= prev_bb;
  end
  if ( main_for_body223_ppl_valid_bit1 ) begin
    main_for_body223_ppl_prev_bb_1 <= main_for_body223_ppl_prev_bb_0;
  end
  if ( main_for_body223_ppl_valid_bit2 ) begin
    main_for_body223_ppl_prev_bb_2 <= main_for_body223_ppl_prev_bb_1;
  end
  if ( main_for_body223_ppl_valid_bit3 ) begin
    main_for_body223_ppl_prev_bb_3 <= main_for_body223_ppl_prev_bb_2;
  end
  if ( main_for_body223_ppl_valid_bit4 ) begin
    main_for_body223_ppl_prev_bb_4 <= main_for_body223_ppl_prev_bb_3;
  end
  if ( main_for_body223_ppl_valid_bit5 ) begin
    main_for_body223_ppl_prev_bb_5 <= main_for_body223_ppl_prev_bb_4;
  end
  if ( main_for_body223_ppl_valid_bit6 ) begin
    main_for_body223_ppl_prev_bb_6 <= main_for_body223_ppl_prev_bb_5;
  end
  if ( main_for_body223_ppl_valid_bit7 ) begin
    main_for_body223_ppl_prev_bb_7 <= main_for_body223_ppl_prev_bb_6;
  end
  if ( main_for_body223_ppl_valid_bit8 ) begin
    main_for_body223_ppl_prev_bb_8 <= main_for_body223_ppl_prev_bb_7;
  end
  if ( main_for_body223_ppl_valid_bit9 ) begin
    main_for_body223_ppl_prev_bb_9 <= main_for_body223_ppl_prev_bb_8;
  end
end

endmodule

