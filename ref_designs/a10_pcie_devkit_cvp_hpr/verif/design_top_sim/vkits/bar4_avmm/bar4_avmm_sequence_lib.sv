// Copyright (c) 2001-2018 Intel Corporation
//  
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the
// "Software"), to deal in the Software without restriction, including
// without limitation the rights to use, copy, modify, merge, publish,
// distribute, sublicense, and/or sell copies of the Software, and to
// permit persons to whom the Software is furnished to do so, subject to
// the following conditions:
//  
// The above copyright notice and this permission notice shall be included
// in all copies or substantial portions of the Software.
//  
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
// IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
// CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
// TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
// SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

`ifndef INC_BAR4_AVMM_SEQUENCE_LIB_SV
`define INC_BAR4_AVMM_SEQUENCE_LIB_SV

class bar4_avmm_base_seq_c extends avmm_pkg::avmm_base_seq_c #(bar4_avmm_pkg::bar4_avmm_command_seq_item_c);
   `uvm_object_utils(bar4_avmm_base_seq_c)

   localparam PR_REGION_0_BASE_ADDRESS = 32'h_0000_0000;
   localparam PR_REGION_0_REGFILE_BASE_ADDRESS = 32'h_0000_0000;
   localparam PR_REGION_0_REGFILE_SIZE = 32'h_0000_4000;

   localparam PR_REGION_0_REGION_CTRL_BASE_ADDRESS = 32'h_0001_0000;
   localparam PR_REGION_0_REGION_CTRL_SIZE = 32'h_0000_0010;

   localparam PR_REGION_0_REGION_CTRL_STATUS = PR_REGION_0_REGION_CTRL_BASE_ADDRESS + (0<<2);
   localparam PR_REGION_0_REGION_CTRL_CTRL = PR_REGION_0_REGION_CTRL_BASE_ADDRESS + (1<<2);
   localparam PR_REGION_0_REGION_CTRL_ILLEGAL_REQ = PR_REGION_0_REGION_CTRL_BASE_ADDRESS + (2<<2);
   localparam PR_REGION_0_REGION_CTRL_SWVERSION = PR_REGION_0_REGION_CTRL_BASE_ADDRESS + (3<<2);

   //////Register Address Map//////////////////
   //    reg_file_persona_id         = 0x0000
   //    reg_file_control_register   = 0x0010
   //    reg_file_pr_host_0          = 0x0020
   //    reg_file_pr_host_1          = 0x0030
   //    reg_file_pr_host_2          = 0x0040
   //    reg_file_pr_host_3          = 0x0050
   //    reg_file_pr_host_4          = 0x0060
   //    reg_file_pr_host_5          = 0x0070
   //    reg_file_pr_host_6          = 0x0080
   //    reg_file_pr_host_7          = 0x0090
   //    reg_file_host_pr_0          = 0x00a0
   //    reg_file_host_pr_1          = 0x00b0
   //    reg_file_host_pr_2          = 0x00c0
   //    reg_file_host_pr_3          = 0x00d0
   //    reg_file_host_pr_4          = 0x00e0
   //    reg_file_host_pr_5          = 0x00f0
   //    reg_file_host_pr_6          = 0x0100
   //    reg_file_host_pr_7          = 0x0110
   ////////////////////////////////////////////   

   localparam PR_REGION_0_PERSONA_ID_ADDRESS = PR_REGION_0_BASE_ADDRESS + (32'h_0000_0000);

   localparam PR_REGION_0_HOST_TO_PR_0_ADDRESS = PR_REGION_0_BASE_ADDRESS + (32'h_0000_00A0);
   localparam PR_REGION_0_HOST_TO_PR_1_ADDRESS = PR_REGION_0_BASE_ADDRESS + (32'h_0000_00B0);
   localparam PR_REGION_0_HOST_TO_PR_2_ADDRESS = PR_REGION_0_BASE_ADDRESS + (32'h_0000_00C0);
   localparam PR_REGION_0_HOST_TO_PR_3_ADDRESS = PR_REGION_0_BASE_ADDRESS + (32'h_0000_00D0);
   localparam PR_REGION_0_HOST_TO_PR_4_ADDRESS = PR_REGION_0_BASE_ADDRESS + (32'h_0000_00E0);
   localparam PR_REGION_0_HOST_TO_PR_5_ADDRESS = PR_REGION_0_BASE_ADDRESS + (32'h_0000_00F0);
   localparam PR_REGION_0_HOST_TO_PR_6_ADDRESS = PR_REGION_0_BASE_ADDRESS + (32'h_0000_0100);
   localparam PR_REGION_0_HOST_TO_PR_7_ADDRESS = PR_REGION_0_BASE_ADDRESS + (32'h_0000_0110);
   
   localparam PR_REGION_0_PR_TO_HOST_0_ADDRESS = PR_REGION_0_BASE_ADDRESS + (32'h_0000_0020);
   localparam PR_REGION_0_PR_TO_HOST_1_ADDRESS = PR_REGION_0_BASE_ADDRESS + (32'h_0000_0030);
   localparam PR_REGION_0_PR_TO_HOST_2_ADDRESS = PR_REGION_0_BASE_ADDRESS + (32'h_0000_0040);
   localparam PR_REGION_0_PR_TO_HOST_3_ADDRESS = PR_REGION_0_BASE_ADDRESS + (32'h_0000_0050);
   localparam PR_REGION_0_PR_TO_HOST_4_ADDRESS = PR_REGION_0_BASE_ADDRESS + (32'h_0000_0060);
   localparam PR_REGION_0_PR_TO_HOST_5_ADDRESS = PR_REGION_0_BASE_ADDRESS + (32'h_0000_0070);
   localparam PR_REGION_0_PR_TO_HOST_6_ADDRESS = PR_REGION_0_BASE_ADDRESS + (32'h_0000_0080);
   localparam PR_REGION_0_PR_TO_HOST_7_ADDRESS = PR_REGION_0_BASE_ADDRESS + (32'h_0000_0090);

   localparam DDR4_CALIB_INTERFACE_BASE_ADDRESS = 32'h_0000_8100;
   
   
   localparam PARENT_PERSONA_PERSONA_ID_ADDRESS = PR_REGION_0_BASE_ADDRESS + (32'h_0000_0000);

   localparam PARENT_PERSONA_PR_REGION_0_REGION_CTRL_BASE_ADDRESS = 32'h_0000_0010;
   localparam PARENT_PERSONA_PR_REGION_0_REGION_CTRL_SIZE = 32'h_0000_0010;

   localparam PARENT_PERSONA_PR_REGION_0_REGION_CTRL_STATUS = PARENT_PERSONA_PR_REGION_0_REGION_CTRL_BASE_ADDRESS + (0<<2);
   localparam PARENT_PERSONA_PR_REGION_0_REGION_CTRL_CTRL = PARENT_PERSONA_PR_REGION_0_REGION_CTRL_BASE_ADDRESS + (1<<2);
   localparam PARENT_PERSONA_PR_REGION_0_REGION_CTRL_ILLEGAL_REQ = PARENT_PERSONA_PR_REGION_0_REGION_CTRL_BASE_ADDRESS + (2<<2);
   localparam PARENT_PERSONA_PR_REGION_0_REGION_CTRL_SWVERSION = PARENT_PERSONA_PR_REGION_0_REGION_CTRL_BASE_ADDRESS + (3<<2);

   localparam PARENT_PERSONA_PR_REGION_1_REGION_CTRL_BASE_ADDRESS = 32'h_0000_0020;
   localparam PARENT_PERSONA_PR_REGION_1_REGION_CTRL_SIZE = 32'h_0000_0020;

   localparam PARENT_PERSONA_PR_REGION_1_REGION_CTRL_STATUS = PARENT_PERSONA_PR_REGION_1_REGION_CTRL_BASE_ADDRESS + (0<<2);
   localparam PARENT_PERSONA_PR_REGION_1_REGION_CTRL_CTRL = PARENT_PERSONA_PR_REGION_1_REGION_CTRL_BASE_ADDRESS + (1<<2);
   localparam PARENT_PERSONA_PR_REGION_1_REGION_CTRL_ILLEGAL_REQ = PARENT_PERSONA_PR_REGION_1_REGION_CTRL_BASE_ADDRESS + (2<<2);
   localparam PARENT_PERSONA_PR_REGION_1_REGION_CTRL_SWVERSION = PARENT_PERSONA_PR_REGION_1_REGION_CTRL_BASE_ADDRESS + (3<<2);

   
   localparam PARENT_PERSONA_PR_REGION_0_BASE_ADDRESS = 32'h_0000_4000;
   localparam PARENT_PERSONA_PR_REGION_0_REGFILE_SIZE = 32'h_0000_4000;
   localparam PARENT_PERSONA_PR_REGION_0_PERSONA_ID_ADDRESS = PARENT_PERSONA_PR_REGION_0_BASE_ADDRESS + (32'h_0000_0000);

   localparam PARENT_PERSONA_PR_REGION_0_HOST_TO_PR_0_ADDRESS = PARENT_PERSONA_PR_REGION_0_BASE_ADDRESS + (32'h_0000_00A0);
   localparam PARENT_PERSONA_PR_REGION_0_HOST_TO_PR_1_ADDRESS = PARENT_PERSONA_PR_REGION_0_BASE_ADDRESS + (32'h_0000_00B0);
   localparam PARENT_PERSONA_PR_REGION_0_HOST_TO_PR_2_ADDRESS = PARENT_PERSONA_PR_REGION_0_BASE_ADDRESS + (32'h_0000_00C0);
   localparam PARENT_PERSONA_PR_REGION_0_HOST_TO_PR_3_ADDRESS = PARENT_PERSONA_PR_REGION_0_BASE_ADDRESS + (32'h_0000_00D0);
   localparam PARENT_PERSONA_PR_REGION_0_HOST_TO_PR_4_ADDRESS = PARENT_PERSONA_PR_REGION_0_BASE_ADDRESS + (32'h_0000_00E0);
   localparam PARENT_PERSONA_PR_REGION_0_HOST_TO_PR_5_ADDRESS = PARENT_PERSONA_PR_REGION_0_BASE_ADDRESS + (32'h_0000_00F0);
   localparam PARENT_PERSONA_PR_REGION_0_HOST_TO_PR_6_ADDRESS = PARENT_PERSONA_PR_REGION_0_BASE_ADDRESS + (32'h_0000_0100);
   localparam PARENT_PERSONA_PR_REGION_0_HOST_TO_PR_7_ADDRESS = PARENT_PERSONA_PR_REGION_0_BASE_ADDRESS + (32'h_0000_0110);
   
   localparam PARENT_PERSONA_PR_REGION_0_PR_TO_HOST_0_ADDRESS = PARENT_PERSONA_PR_REGION_0_BASE_ADDRESS + (32'h_0000_0020);
   localparam PARENT_PERSONA_PR_REGION_0_PR_TO_HOST_1_ADDRESS = PARENT_PERSONA_PR_REGION_0_BASE_ADDRESS + (32'h_0000_0030);
   localparam PARENT_PERSONA_PR_REGION_0_PR_TO_HOST_2_ADDRESS = PARENT_PERSONA_PR_REGION_0_BASE_ADDRESS + (32'h_0000_0040);
   localparam PARENT_PERSONA_PR_REGION_0_PR_TO_HOST_3_ADDRESS = PARENT_PERSONA_PR_REGION_0_BASE_ADDRESS + (32'h_0000_0050);
   localparam PARENT_PERSONA_PR_REGION_0_PR_TO_HOST_4_ADDRESS = PARENT_PERSONA_PR_REGION_0_BASE_ADDRESS + (32'h_0000_0060);
   localparam PARENT_PERSONA_PR_REGION_0_PR_TO_HOST_5_ADDRESS = PARENT_PERSONA_PR_REGION_0_BASE_ADDRESS + (32'h_0000_0070);
   localparam PARENT_PERSONA_PR_REGION_0_PR_TO_HOST_6_ADDRESS = PARENT_PERSONA_PR_REGION_0_BASE_ADDRESS + (32'h_0000_0080);
   localparam PARENT_PERSONA_PR_REGION_0_PR_TO_HOST_7_ADDRESS = PARENT_PERSONA_PR_REGION_0_BASE_ADDRESS + (32'h_0000_0090);

   localparam PARENT_PERSONA_PR_REGION_1_BASE_ADDRESS = 32'h_0000_8000;
   localparam PARENT_PERSONA_PR_REGION_1_REGFILE_SIZE = 32'h_0000_4000;
   localparam PARENT_PERSONA_PR_REGION_1_PERSONA_ID_ADDRESS = PARENT_PERSONA_PR_REGION_1_BASE_ADDRESS + (32'h_0000_0000);

   localparam PARENT_PERSONA_PR_REGION_1_HOST_TO_PR_0_ADDRESS = PARENT_PERSONA_PR_REGION_1_BASE_ADDRESS + (32'h_0000_00A0);
   localparam PARENT_PERSONA_PR_REGION_1_HOST_TO_PR_1_ADDRESS = PARENT_PERSONA_PR_REGION_1_BASE_ADDRESS + (32'h_0000_00B0);
   localparam PARENT_PERSONA_PR_REGION_1_HOST_TO_PR_2_ADDRESS = PARENT_PERSONA_PR_REGION_1_BASE_ADDRESS + (32'h_0000_00C0);
   localparam PARENT_PERSONA_PR_REGION_1_HOST_TO_PR_3_ADDRESS = PARENT_PERSONA_PR_REGION_1_BASE_ADDRESS + (32'h_0000_00D0);
   localparam PARENT_PERSONA_PR_REGION_1_HOST_TO_PR_4_ADDRESS = PARENT_PERSONA_PR_REGION_1_BASE_ADDRESS + (32'h_0000_00E0);
   localparam PARENT_PERSONA_PR_REGION_1_HOST_TO_PR_5_ADDRESS = PARENT_PERSONA_PR_REGION_1_BASE_ADDRESS + (32'h_0000_00F0);
   localparam PARENT_PERSONA_PR_REGION_1_HOST_TO_PR_6_ADDRESS = PARENT_PERSONA_PR_REGION_1_BASE_ADDRESS + (32'h_0000_0100);
   localparam PARENT_PERSONA_PR_REGION_1_HOST_TO_PR_7_ADDRESS = PARENT_PERSONA_PR_REGION_1_BASE_ADDRESS + (32'h_0000_0110);
   
   localparam PARENT_PERSONA_PR_REGION_1_PR_TO_HOST_0_ADDRESS = PARENT_PERSONA_PR_REGION_1_BASE_ADDRESS + (32'h_0000_0020);
   localparam PARENT_PERSONA_PR_REGION_1_PR_TO_HOST_1_ADDRESS = PARENT_PERSONA_PR_REGION_1_BASE_ADDRESS + (32'h_0000_0030);
   localparam PARENT_PERSONA_PR_REGION_1_PR_TO_HOST_2_ADDRESS = PARENT_PERSONA_PR_REGION_1_BASE_ADDRESS + (32'h_0000_0040);
   localparam PARENT_PERSONA_PR_REGION_1_PR_TO_HOST_3_ADDRESS = PARENT_PERSONA_PR_REGION_1_BASE_ADDRESS + (32'h_0000_0050);
   localparam PARENT_PERSONA_PR_REGION_1_PR_TO_HOST_4_ADDRESS = PARENT_PERSONA_PR_REGION_1_BASE_ADDRESS + (32'h_0000_0060);
   localparam PARENT_PERSONA_PR_REGION_1_PR_TO_HOST_5_ADDRESS = PARENT_PERSONA_PR_REGION_1_BASE_ADDRESS + (32'h_0000_0070);
   localparam PARENT_PERSONA_PR_REGION_1_PR_TO_HOST_6_ADDRESS = PARENT_PERSONA_PR_REGION_1_BASE_ADDRESS + (32'h_0000_0080);
   localparam PARENT_PERSONA_PR_REGION_1_PR_TO_HOST_7_ADDRESS = PARENT_PERSONA_PR_REGION_1_BASE_ADDRESS + (32'h_0000_0090);

   function new(string name = "[name]]");
      super.new(name);
   endfunction

endclass

class bar4_idle_seq_c extends bar4_avmm_base_seq_c;
   `uvm_object_utils(bar4_idle_seq_c)

   // This parameter should be set after creation
   int num_idle_trans;

   function new(string name = "Idle transactions");
      super.new(name);

      num_idle_trans = -1;
   endfunction

   virtual task body();
      create_idle_transaction(description, num_idle_trans);
   endtask


endclass

`endif //INC_BAR4_AVMM_SEQUENCE_LIB_SV
