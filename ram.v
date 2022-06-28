`timescale 1 ns / 1 ns
module ram_dual_port #(
  parameter data_width = 16,
  parameter addr_width = 10,
  parameter num_elements  = 16,
  parameter init_file  = "default.mem"
)(
  input [(data_width - 1) : 0] data_in_1, data_in_2,
  input [(addr_width - 1) : 0] addr_1, addr_2,
  input we_1, we_2, clk,
  output reg [(data_width - 1) : 0] data_out_1, data_out_2
);

  // Declare the RAM variable
  reg [(data_width - 1) : 0] ram[(num_elements - 1):0];

  integer i;
  initial begin
    if (init_file == "default.mem") begin
      for (i = 0; i < num_elements; i = i + 1)
        ram[i] = 0;
    end else begin
      $readmemh(init_file, ram);
    end
  end
  
  // Port A
  always @ ( posedge clk )
  begin
    if (we_1) begin
      ram[addr_1] <= data_in_1;
      data_out_1 <= data_in_1;
    end else begin
      data_out_1 <= ram[addr_1];
    end
  end

  // Port B
  always @ ( posedge clk )
  begin
    if (we_2) begin
      ram[addr_2] <= data_in_2;
      data_out_2 <= data_in_2;
    end else begin
      data_out_2 <= ram[addr_2];
    end
  end
endmodule

`timescale 1 ns / 1 ns
module ram_struct_dual_port #(
  parameter addr_width = 10,
  parameter num_elements  = 300,
  parameter init_file0  = "default.mem",
  parameter init_file1  = "default.mem",
  parameter init_file2  = "default.mem",
  parameter init_file3  = "default.mem",
  parameter init_file4  = "default.mem",
  parameter init_file5  = "default.mem",
  parameter init_file6  = "default.mem",
  parameter init_file7  = "default.mem"
)(
  input [63 : 0] data_in_1, data_in_2,
  input [(addr_width - 1) : 0] addr_1, addr_2,
  input [7 : 0] be_1, be_2,
  input we_1, we_2, clk,
  output [63 : 0] data_out_1, data_out_2
);

  wire RAM0_we_1, RAM0_we_2, RAM1_we_1, RAM1_we_2;
  wire RAM2_we_1, RAM2_we_2, RAM3_we_1, RAM3_we_2;
  wire RAM4_we_1, RAM4_we_2, RAM5_we_1, RAM5_we_2;
  wire RAM6_we_1, RAM6_we_2, RAM7_we_1, RAM7_we_2;

  assign RAM0_we_1 = we_1 && be_1[0];
  assign RAM0_we_2 = we_2 && be_2[0];
  ram_dual_port #(
    .data_width(8),
    .addr_width(addr_width),
    .num_elements(num_elements),
    .init_file(init_file0)
  ) RAM0 (
    .clk (clk),
    .we_1 (RAM0_we_1),
    .we_2 (RAM0_we_2),
    .addr_1 (addr_1),
    .addr_2 (addr_2),
    .data_in_1 (data_in_1[7 : 0]),
    .data_in_2 (data_in_2[7 : 0]),
    .data_out_1 (data_out_1[7 : 0]),
    .data_out_2 (data_out_2[7 : 0])
  );

  assign RAM1_we_1 = we_1 && be_1[1];
  assign RAM1_we_2 = we_2 && be_2[1];
  ram_dual_port #(
    .data_width(8),
    .addr_width(addr_width),
    .num_elements(num_elements),
    .init_file(init_file1)
  ) RAM1 (
    .clk (clk),
    .we_1 (RAM1_we_1),
    .we_2 (RAM1_we_2),
    .addr_1 (addr_1),
    .addr_2 (addr_2),
    .data_in_1 (data_in_1[15 : 8]),
    .data_in_2 (data_in_2[15 : 8]),
    .data_out_1 (data_out_1[15 : 8]),
    .data_out_2 (data_out_2[15 : 8])
  );

  assign RAM2_we_1 = we_1 && be_1[2];
  assign RAM2_we_2 = we_2 && be_2[2];
  ram_dual_port #(
    .data_width(8),
    .addr_width(addr_width),
    .num_elements(num_elements),
    .init_file(init_file2)
  ) RAM2 (
    .clk (clk),
    .we_1 (RAM2_we_1),
    .we_2 (RAM2_we_2),
    .addr_1 (addr_1),
    .addr_2 (addr_2),
    .data_in_1 (data_in_1[23 : 16]),
    .data_in_2 (data_in_2[23 : 16]),
    .data_out_1 (data_out_1[23 : 16]),
    .data_out_2 (data_out_2[23 : 16])
  );

  assign RAM3_we_1 = we_1 && be_1[3];
  assign RAM3_we_2 = we_2 && be_2[3];
  ram_dual_port #(
    .data_width(8),
    .addr_width(addr_width),
    .num_elements(num_elements),
    .init_file(init_file3)
  ) RAM3 (
    .clk (clk),
    .we_1 (RAM3_we_1),
    .we_2 (RAM3_we_2),
    .addr_1 (addr_1),
    .addr_2 (addr_2),
    .data_in_1 (data_in_1[31 : 24]),
    .data_in_2 (data_in_2[31 : 24]),
    .data_out_1 (data_out_1[31 : 24]),
    .data_out_2 (data_out_2[31 : 24])
  );

  assign RAM4_we_1 = we_1 && be_1[4];
  assign RAM4_we_2 = we_2 && be_2[4];
  ram_dual_port #(
    .data_width(8),
    .addr_width(addr_width),
    .num_elements(num_elements),
    .init_file(init_file4)
  ) RAM4 (
    .clk (clk),
    .we_1 (RAM4_we_1),
    .we_2 (RAM4_we_2),
    .addr_1 (addr_1),
    .addr_2 (addr_2),
    .data_in_1 (data_in_1[39 : 32]),
    .data_in_2 (data_in_2[39 : 32]),
    .data_out_1 (data_out_1[39 : 32]),
    .data_out_2 (data_out_2[39 : 32])
  );

  assign RAM5_we_1 = we_1 && be_1[5];
  assign RAM5_we_2 = we_2 && be_2[5];
  ram_dual_port #(
    .data_width(8),
    .addr_width(addr_width),
    .num_elements(num_elements),
    .init_file(init_file5)
  ) RAM5 (
    .clk (clk),
    .we_1 (RAM5_we_1),
    .we_2 (RAM5_we_2),
    .addr_1 (addr_1),
    .addr_2 (addr_2),
    .data_in_1 (data_in_1[47 : 40]),
    .data_in_2 (data_in_2[47 : 40]),
    .data_out_1 (data_out_1[47 : 40]),
    .data_out_2 (data_out_2[47 : 40])
  );

  assign RAM6_we_1 = we_1 && be_1[6];
  assign RAM6_we_2 = we_2 && be_2[6];
  ram_dual_port #(
    .data_width(8),
    .addr_width(addr_width),
    .num_elements(num_elements),
    .init_file(init_file6)
  ) RAM6 (
    .clk (clk),
    .we_1 (RAM6_we_1),
    .we_2 (RAM6_we_2),
    .addr_1 (addr_1),
    .addr_2 (addr_2),
    .data_in_1 (data_in_1[55 : 48]),
    .data_in_2 (data_in_2[55 : 48]),
    .data_out_1 (data_out_1[55 : 48]),
    .data_out_2 (data_out_2[55 : 48])
  );

  assign RAM7_we_1 = we_1 && be_1[7];
  assign RAM7_we_2 = we_2 && be_2[7];
  ram_dual_port #(
    .data_width(8),
    .addr_width(addr_width),
    .num_elements(num_elements),
    .init_file(init_file7)
  ) RAM7 (
    .clk (clk),
    .we_1 (RAM7_we_1),
    .we_2 (RAM7_we_2),
    .addr_1 (addr_1),
    .addr_2 (addr_2),
    .data_in_1 (data_in_1[63 : 56]),
    .data_in_2 (data_in_2[63 : 56]),
    .data_out_1 (data_out_1[63 : 56]),
    .data_out_2 (data_out_2[63 : 56])
  );

endmodule

`timescale 1 ns / 1 ns
module ram_dual_port_dist #(
  parameter data_width = 16,
  parameter addr_width = 10,
  parameter num_elements  = 16,
  parameter init_file  = "default.mem"
)(
  input [(data_width - 1) : 0] data_in_1, 
  input [(addr_width - 1) : 0] addr_1, addr_2,
  input we_1, clk,
  output wire [(data_width - 1) : 0] data_out_1, data_out_2
);

  // Declare the RAM variable
  reg [(data_width - 1) : 0] ram[(num_elements - 1):0];

  integer i;
  initial begin
    if (init_file == "default.mem") begin
      for (i = 0; i < num_elements; i = i + 1)
        ram[i] = 0;
    end else begin
      $readmemh(init_file, ram);
    end
  end
  
  // Port A
  always @ ( posedge clk )
  begin
    if (we_1) 
      ram[addr_1] <= data_in_1;
  end
  assign data_out_1 = ram[addr_1];
  assign data_out_2 = ram[addr_2];
endmodule

