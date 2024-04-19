

`timescale 1 ns / 1 ps 

module execute (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_buf_dram_manage_AWVALID,
        m_axi_buf_dram_manage_AWREADY,
        m_axi_buf_dram_manage_AWADDR,
        m_axi_buf_dram_manage_AWID,
        m_axi_buf_dram_manage_AWLEN,
        m_axi_buf_dram_manage_AWSIZE,
        m_axi_buf_dram_manage_AWBURST,
        m_axi_buf_dram_manage_AWLOCK,
        m_axi_buf_dram_manage_AWCACHE,
        m_axi_buf_dram_manage_AWPROT,
        m_axi_buf_dram_manage_AWQOS,
        m_axi_buf_dram_manage_AWREGION,
        m_axi_buf_dram_manage_AWUSER,
        m_axi_buf_dram_manage_WVALID,
        m_axi_buf_dram_manage_WREADY,
        m_axi_buf_dram_manage_WDATA,
        m_axi_buf_dram_manage_WSTRB,
        m_axi_buf_dram_manage_WLAST,
        m_axi_buf_dram_manage_WID,
        m_axi_buf_dram_manage_WUSER,
        m_axi_buf_dram_manage_ARVALID,
        m_axi_buf_dram_manage_ARREADY,
        m_axi_buf_dram_manage_ARADDR,
        m_axi_buf_dram_manage_ARID,
        m_axi_buf_dram_manage_ARLEN,
        m_axi_buf_dram_manage_ARSIZE,
        m_axi_buf_dram_manage_ARBURST,
        m_axi_buf_dram_manage_ARLOCK,
        m_axi_buf_dram_manage_ARCACHE,
        m_axi_buf_dram_manage_ARPROT,
        m_axi_buf_dram_manage_ARQOS,
        m_axi_buf_dram_manage_ARREGION,
        m_axi_buf_dram_manage_ARUSER,
        m_axi_buf_dram_manage_RVALID,
        m_axi_buf_dram_manage_RREADY,
        m_axi_buf_dram_manage_RDATA,
        m_axi_buf_dram_manage_RLAST,
        m_axi_buf_dram_manage_RID,
        m_axi_buf_dram_manage_RUSER,
        m_axi_buf_dram_manage_RRESP,
        m_axi_buf_dram_manage_BVALID,
        m_axi_buf_dram_manage_BREADY,
        m_axi_buf_dram_manage_BRESP,
        m_axi_buf_dram_manage_BID,
        m_axi_buf_dram_manage_BUSER,
        op_in,
        freeaddress_in,
        malloc_free_length_in,
        op_out,
        op_out_ap_vld,
        freeaddress_out,
        freeaddress_out_ap_vld
);

parameter    ap_ST_fsm_state1 = 16'd1;
parameter    ap_ST_fsm_state2 = 16'd2;
parameter    ap_ST_fsm_state3 = 16'd4;
parameter    ap_ST_fsm_state4 = 16'd8;
parameter    ap_ST_fsm_state5 = 16'd16;
parameter    ap_ST_fsm_state6 = 16'd32;
parameter    ap_ST_fsm_state7 = 16'd64;
parameter    ap_ST_fsm_state8 = 16'd128;
parameter    ap_ST_fsm_state9 = 16'd256;
parameter    ap_ST_fsm_state10 = 16'd512;
parameter    ap_ST_fsm_state11 = 16'd1024;
parameter    ap_ST_fsm_state12 = 16'd2048;
parameter    ap_ST_fsm_state13 = 16'd4096;
parameter    ap_ST_fsm_state14 = 16'd8192;
parameter    ap_ST_fsm_state15 = 16'd16384;
parameter    ap_ST_fsm_state16 = 16'd32768;
parameter    C_M_AXI_BUF_DRAM_MANAGE_ID_WIDTH = 1;
parameter    C_M_AXI_BUF_DRAM_MANAGE_ADDR_WIDTH = 64;
parameter    C_M_AXI_BUF_DRAM_MANAGE_DATA_WIDTH = 256;
parameter    C_M_AXI_BUF_DRAM_MANAGE_AWUSER_WIDTH = 1;
parameter    C_M_AXI_BUF_DRAM_MANAGE_ARUSER_WIDTH = 1;
parameter    C_M_AXI_BUF_DRAM_MANAGE_WUSER_WIDTH = 1;
parameter    C_M_AXI_BUF_DRAM_MANAGE_RUSER_WIDTH = 1;
parameter    C_M_AXI_BUF_DRAM_MANAGE_BUSER_WIDTH = 1;
parameter    C_M_AXI_BUF_DRAM_MANAGE_TARGET_ADDR = 0;
parameter    C_M_AXI_BUF_DRAM_MANAGE_USER_VALUE = 0;
parameter    C_M_AXI_BUF_DRAM_MANAGE_PROT_VALUE = 0;
parameter    C_M_AXI_BUF_DRAM_MANAGE_CACHE_VALUE = 3;
parameter    C_M_AXI_DATA_WIDTH = 32;

parameter C_M_AXI_BUF_DRAM_MANAGE_WSTRB_WIDTH = (256 / 8);
parameter C_M_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_buf_dram_manage_AWVALID;
input   m_axi_buf_dram_manage_AWREADY;
output  [C_M_AXI_BUF_DRAM_MANAGE_ADDR_WIDTH - 1:0] m_axi_buf_dram_manage_AWADDR;
output  [C_M_AXI_BUF_DRAM_MANAGE_ID_WIDTH - 1:0] m_axi_buf_dram_manage_AWID;
output  [7:0] m_axi_buf_dram_manage_AWLEN;
output  [2:0] m_axi_buf_dram_manage_AWSIZE;
output  [1:0] m_axi_buf_dram_manage_AWBURST;
output  [1:0] m_axi_buf_dram_manage_AWLOCK;
output  [3:0] m_axi_buf_dram_manage_AWCACHE;
output  [2:0] m_axi_buf_dram_manage_AWPROT;
output  [3:0] m_axi_buf_dram_manage_AWQOS;
output  [3:0] m_axi_buf_dram_manage_AWREGION;
output  [C_M_AXI_BUF_DRAM_MANAGE_AWUSER_WIDTH - 1:0] m_axi_buf_dram_manage_AWUSER;
output   m_axi_buf_dram_manage_WVALID;
input   m_axi_buf_dram_manage_WREADY;
output  [C_M_AXI_BUF_DRAM_MANAGE_DATA_WIDTH - 1:0] m_axi_buf_dram_manage_WDATA;
output  [C_M_AXI_BUF_DRAM_MANAGE_WSTRB_WIDTH - 1:0] m_axi_buf_dram_manage_WSTRB;
output   m_axi_buf_dram_manage_WLAST;
output  [C_M_AXI_BUF_DRAM_MANAGE_ID_WIDTH - 1:0] m_axi_buf_dram_manage_WID;
output  [C_M_AXI_BUF_DRAM_MANAGE_WUSER_WIDTH - 1:0] m_axi_buf_dram_manage_WUSER;
output   m_axi_buf_dram_manage_ARVALID;
input   m_axi_buf_dram_manage_ARREADY;
output  [C_M_AXI_BUF_DRAM_MANAGE_ADDR_WIDTH - 1:0] m_axi_buf_dram_manage_ARADDR;
output  [C_M_AXI_BUF_DRAM_MANAGE_ID_WIDTH - 1:0] m_axi_buf_dram_manage_ARID;
output  [7:0] m_axi_buf_dram_manage_ARLEN;
output  [2:0] m_axi_buf_dram_manage_ARSIZE;
output  [1:0] m_axi_buf_dram_manage_ARBURST;
output  [1:0] m_axi_buf_dram_manage_ARLOCK;
output  [3:0] m_axi_buf_dram_manage_ARCACHE;
output  [2:0] m_axi_buf_dram_manage_ARPROT;
output  [3:0] m_axi_buf_dram_manage_ARQOS;
output  [3:0] m_axi_buf_dram_manage_ARREGION;
output  [C_M_AXI_BUF_DRAM_MANAGE_ARUSER_WIDTH - 1:0] m_axi_buf_dram_manage_ARUSER;
input   m_axi_buf_dram_manage_RVALID;
output   m_axi_buf_dram_manage_RREADY;
input  [C_M_AXI_BUF_DRAM_MANAGE_DATA_WIDTH - 1:0] m_axi_buf_dram_manage_RDATA;
input   m_axi_buf_dram_manage_RLAST;
input  [C_M_AXI_BUF_DRAM_MANAGE_ID_WIDTH - 1:0] m_axi_buf_dram_manage_RID;
input  [C_M_AXI_BUF_DRAM_MANAGE_RUSER_WIDTH - 1:0] m_axi_buf_dram_manage_RUSER;
input  [1:0] m_axi_buf_dram_manage_RRESP;
input   m_axi_buf_dram_manage_BVALID;
output   m_axi_buf_dram_manage_BREADY;
input  [1:0] m_axi_buf_dram_manage_BRESP;
input  [C_M_AXI_BUF_DRAM_MANAGE_ID_WIDTH - 1:0] m_axi_buf_dram_manage_BID;
input  [C_M_AXI_BUF_DRAM_MANAGE_BUSER_WIDTH - 1:0] m_axi_buf_dram_manage_BUSER;
input  [31:0] op_in;
input  [31:0] freeaddress_in;
input  [31:0] malloc_free_length_in;
output  [31:0] op_out;
output   op_out_ap_vld;
output  [31:0] freeaddress_out;
output   freeaddress_out_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg op_out_ap_vld;
reg freeaddress_out_ap_vld;

 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] root_node;
reg   [31:0] down3_fb_index;
reg   [31:0] down3_fb_length;
reg   [31:0] cross4_node_num;
reg   [31:0] cross4_node_next_free_offset;
reg   [31:0] cross4_node_max_fb_index;
reg   [31:0] cross4_node_max_fb_length;
reg   [31:0] cross4_node_max_subgraph_index;
reg   [31:0] cross4_node_max_subgraph_length;
reg   [7:0] graphlevel;
reg   [5:0] cross4_node_mix_array_0_address0;
reg    cross4_node_mix_array_0_ce0;
reg    cross4_node_mix_array_0_we0;
reg   [31:0] cross4_node_mix_array_0_d0;
wire   [31:0] cross4_node_mix_array_0_q0;
reg    cross4_node_mix_array_0_ce1;
wire   [31:0] cross4_node_mix_array_0_q1;
reg   [5:0] cross4_node_mix_array_1_address0;
reg    cross4_node_mix_array_1_ce0;
reg    cross4_node_mix_array_1_we0;
reg   [31:0] cross4_node_mix_array_1_d0;
wire   [31:0] cross4_node_mix_array_1_q0;
reg    cross4_node_mix_array_1_ce1;
wire   [31:0] cross4_node_mix_array_1_q1;
reg   [4:0] cross4_node_mix_array_2_address0;
reg    cross4_node_mix_array_2_ce0;
reg    cross4_node_mix_array_2_we0;
reg   [31:0] cross4_node_mix_array_2_d0;
wire   [31:0] cross4_node_mix_array_2_q0;
reg    cross4_node_mix_array_2_ce1;
wire   [31:0] cross4_node_mix_array_2_q1;
reg   [4:0] cross4_node_mix_array_3_address0;
reg    cross4_node_mix_array_3_ce0;
reg    cross4_node_mix_array_3_we0;
reg   [31:0] cross4_node_mix_array_3_d0;
wire   [31:0] cross4_node_mix_array_3_q0;
reg    cross4_node_mix_array_3_ce1;
wire   [31:0] cross4_node_mix_array_3_q1;
reg   [4:0] cross4_node_mix_array_4_address0;
reg    cross4_node_mix_array_4_ce0;
reg    cross4_node_mix_array_4_we0;
reg   [31:0] cross4_node_mix_array_4_d0;
wire   [31:0] cross4_node_mix_array_4_q0;
reg    cross4_node_mix_array_4_ce1;
wire   [31:0] cross4_node_mix_array_4_q1;
reg   [4:0] cross4_node_mix_array_5_address0;
reg    cross4_node_mix_array_5_ce0;
reg    cross4_node_mix_array_5_we0;
reg   [31:0] cross4_node_mix_array_5_d0;
wire   [31:0] cross4_node_mix_array_5_q0;
reg    cross4_node_mix_array_5_ce1;
wire   [31:0] cross4_node_mix_array_5_q1;
reg   [4:0] cross4_node_mix_array_6_address0;
reg    cross4_node_mix_array_6_ce0;
reg    cross4_node_mix_array_6_we0;
reg   [31:0] cross4_node_mix_array_6_d0;
wire   [31:0] cross4_node_mix_array_6_q0;
reg    cross4_node_mix_array_6_ce1;
wire   [31:0] cross4_node_mix_array_6_q1;
reg   [4:0] cross4_node_mix_array_7_address0;
reg    cross4_node_mix_array_7_ce0;
reg    cross4_node_mix_array_7_we0;
reg   [31:0] cross4_node_mix_array_7_d0;
wire   [31:0] cross4_node_mix_array_7_q0;
reg   [4:0] cross4_node_mix_array_7_address1;
reg    cross4_node_mix_array_7_ce1;
reg    cross4_node_mix_array_7_we1;
wire   [31:0] cross4_node_mix_array_7_q1;
reg   [31:0] cross4_nodeindex;
reg   [31:0] cross4_broindex;
reg   [31:0] cross4_pos;
reg   [31:0] cross4_fb_index;
reg   [31:0] cross4_fb_length;
reg   [0:0] cross4_dir_V;
reg   [31:0] down2_fb_index;
reg   [31:0] down2_fb_length;
reg   [31:0] cross3_node_num;
reg   [31:0] cross3_node_next_free_offset;
reg   [31:0] cross3_node_max_fb_index;
reg   [31:0] cross3_node_max_fb_length;
reg   [31:0] cross3_node_max_subgraph_index;
reg   [31:0] cross3_node_max_subgraph_length;
reg   [5:0] cross3_node_mix_array_0_address0;
reg    cross3_node_mix_array_0_ce0;
reg    cross3_node_mix_array_0_we0;
reg   [31:0] cross3_node_mix_array_0_d0;
wire   [31:0] cross3_node_mix_array_0_q0;
reg    cross3_node_mix_array_0_ce1;
wire   [31:0] cross3_node_mix_array_0_q1;
reg   [5:0] cross3_node_mix_array_1_address0;
reg    cross3_node_mix_array_1_ce0;
reg    cross3_node_mix_array_1_we0;
reg   [31:0] cross3_node_mix_array_1_d0;
wire   [31:0] cross3_node_mix_array_1_q0;
reg    cross3_node_mix_array_1_ce1;
wire   [31:0] cross3_node_mix_array_1_q1;
reg   [4:0] cross3_node_mix_array_2_address0;
reg    cross3_node_mix_array_2_ce0;
reg    cross3_node_mix_array_2_we0;
reg   [31:0] cross3_node_mix_array_2_d0;
wire   [31:0] cross3_node_mix_array_2_q0;
reg    cross3_node_mix_array_2_ce1;
wire   [31:0] cross3_node_mix_array_2_q1;
reg   [4:0] cross3_node_mix_array_3_address0;
reg    cross3_node_mix_array_3_ce0;
reg    cross3_node_mix_array_3_we0;
reg   [31:0] cross3_node_mix_array_3_d0;
wire   [31:0] cross3_node_mix_array_3_q0;
reg    cross3_node_mix_array_3_ce1;
wire   [31:0] cross3_node_mix_array_3_q1;
reg   [4:0] cross3_node_mix_array_4_address0;
reg    cross3_node_mix_array_4_ce0;
reg    cross3_node_mix_array_4_we0;
reg   [31:0] cross3_node_mix_array_4_d0;
wire   [31:0] cross3_node_mix_array_4_q0;
reg    cross3_node_mix_array_4_ce1;
wire   [31:0] cross3_node_mix_array_4_q1;
reg   [4:0] cross3_node_mix_array_5_address0;
reg    cross3_node_mix_array_5_ce0;
reg    cross3_node_mix_array_5_we0;
reg   [31:0] cross3_node_mix_array_5_d0;
wire   [31:0] cross3_node_mix_array_5_q0;
reg    cross3_node_mix_array_5_ce1;
wire   [31:0] cross3_node_mix_array_5_q1;
reg   [4:0] cross3_node_mix_array_6_address0;
reg    cross3_node_mix_array_6_ce0;
reg    cross3_node_mix_array_6_we0;
reg   [31:0] cross3_node_mix_array_6_d0;
wire   [31:0] cross3_node_mix_array_6_q0;
reg    cross3_node_mix_array_6_ce1;
wire   [31:0] cross3_node_mix_array_6_q1;
reg   [4:0] cross3_node_mix_array_7_address0;
reg    cross3_node_mix_array_7_ce0;
reg    cross3_node_mix_array_7_we0;
reg   [31:0] cross3_node_mix_array_7_d0;
wire   [31:0] cross3_node_mix_array_7_q0;
reg   [4:0] cross3_node_mix_array_7_address1;
reg    cross3_node_mix_array_7_ce1;
reg    cross3_node_mix_array_7_we1;
wire   [31:0] cross3_node_mix_array_7_q1;
reg   [31:0] cross3_nodeindex;
reg   [31:0] cross3_broindex;
reg   [31:0] cross3_pos;
reg   [31:0] cross3_fb_index;
reg   [31:0] cross3_fb_length;
reg   [0:0] cross3_dir_V;
reg   [31:0] down1_fb_index;
reg   [31:0] down1_fb_length;
reg   [31:0] cross2_node_num;
reg   [31:0] cross2_node_next_free_offset;
reg   [31:0] cross2_node_max_fb_index;
reg   [31:0] cross2_node_max_fb_length;
reg   [31:0] cross2_node_max_subgraph_index;
reg   [31:0] cross2_node_max_subgraph_length;
reg   [5:0] cross2_node_mix_array_0_address0;
reg    cross2_node_mix_array_0_ce0;
reg    cross2_node_mix_array_0_we0;
reg   [31:0] cross2_node_mix_array_0_d0;
wire   [31:0] cross2_node_mix_array_0_q0;
reg    cross2_node_mix_array_0_ce1;
wire   [31:0] cross2_node_mix_array_0_q1;
reg   [5:0] cross2_node_mix_array_1_address0;
reg    cross2_node_mix_array_1_ce0;
reg    cross2_node_mix_array_1_we0;
reg   [31:0] cross2_node_mix_array_1_d0;
wire   [31:0] cross2_node_mix_array_1_q0;
reg    cross2_node_mix_array_1_ce1;
wire   [31:0] cross2_node_mix_array_1_q1;
reg   [4:0] cross2_node_mix_array_2_address0;
reg    cross2_node_mix_array_2_ce0;
reg    cross2_node_mix_array_2_we0;
reg   [31:0] cross2_node_mix_array_2_d0;
wire   [31:0] cross2_node_mix_array_2_q0;
reg    cross2_node_mix_array_2_ce1;
wire   [31:0] cross2_node_mix_array_2_q1;
reg   [4:0] cross2_node_mix_array_3_address0;
reg    cross2_node_mix_array_3_ce0;
reg    cross2_node_mix_array_3_we0;
reg   [31:0] cross2_node_mix_array_3_d0;
wire   [31:0] cross2_node_mix_array_3_q0;
reg    cross2_node_mix_array_3_ce1;
wire   [31:0] cross2_node_mix_array_3_q1;
reg   [4:0] cross2_node_mix_array_4_address0;
reg    cross2_node_mix_array_4_ce0;
reg    cross2_node_mix_array_4_we0;
reg   [31:0] cross2_node_mix_array_4_d0;
wire   [31:0] cross2_node_mix_array_4_q0;
reg    cross2_node_mix_array_4_ce1;
wire   [31:0] cross2_node_mix_array_4_q1;
reg   [4:0] cross2_node_mix_array_5_address0;
reg    cross2_node_mix_array_5_ce0;
reg    cross2_node_mix_array_5_we0;
reg   [31:0] cross2_node_mix_array_5_d0;
wire   [31:0] cross2_node_mix_array_5_q0;
reg    cross2_node_mix_array_5_ce1;
wire   [31:0] cross2_node_mix_array_5_q1;
reg   [4:0] cross2_node_mix_array_6_address0;
reg    cross2_node_mix_array_6_ce0;
reg    cross2_node_mix_array_6_we0;
reg   [31:0] cross2_node_mix_array_6_d0;
wire   [31:0] cross2_node_mix_array_6_q0;
reg    cross2_node_mix_array_6_ce1;
wire   [31:0] cross2_node_mix_array_6_q1;
reg   [4:0] cross2_node_mix_array_7_address0;
reg    cross2_node_mix_array_7_ce0;
reg    cross2_node_mix_array_7_we0;
reg   [31:0] cross2_node_mix_array_7_d0;
wire   [31:0] cross2_node_mix_array_7_q0;
reg   [4:0] cross2_node_mix_array_7_address1;
reg    cross2_node_mix_array_7_ce1;
reg    cross2_node_mix_array_7_we1;
wire   [31:0] cross2_node_mix_array_7_q1;
reg   [31:0] cross2_nodeindex;
reg   [31:0] cross2_broindex;
reg   [31:0] cross2_pos;
reg   [31:0] cross2_fb_index;
reg   [31:0] cross2_fb_length;
reg   [0:0] cross2_dir_V;
reg   [31:0] down0_fb_index;
reg   [31:0] down0_fb_length;
reg   [31:0] cross1_node_num;
reg   [31:0] cross1_node_next_free_offset;
reg   [31:0] cross1_node_max_fb_index;
reg   [31:0] cross1_node_max_fb_length;
reg   [31:0] cross1_node_max_subgraph_index;
reg   [31:0] cross1_node_max_subgraph_length;
reg   [5:0] cross1_node_mix_array_0_address0;
reg    cross1_node_mix_array_0_ce0;
reg    cross1_node_mix_array_0_we0;
reg   [31:0] cross1_node_mix_array_0_d0;
wire   [31:0] cross1_node_mix_array_0_q0;
reg    cross1_node_mix_array_0_ce1;
wire   [31:0] cross1_node_mix_array_0_q1;
reg   [5:0] cross1_node_mix_array_1_address0;
reg    cross1_node_mix_array_1_ce0;
reg    cross1_node_mix_array_1_we0;
reg   [31:0] cross1_node_mix_array_1_d0;
wire   [31:0] cross1_node_mix_array_1_q0;
reg    cross1_node_mix_array_1_ce1;
wire   [31:0] cross1_node_mix_array_1_q1;
reg   [4:0] cross1_node_mix_array_2_address0;
reg    cross1_node_mix_array_2_ce0;
reg    cross1_node_mix_array_2_we0;
reg   [31:0] cross1_node_mix_array_2_d0;
wire   [31:0] cross1_node_mix_array_2_q0;
reg    cross1_node_mix_array_2_ce1;
wire   [31:0] cross1_node_mix_array_2_q1;
reg   [4:0] cross1_node_mix_array_3_address0;
reg    cross1_node_mix_array_3_ce0;
reg    cross1_node_mix_array_3_we0;
reg   [31:0] cross1_node_mix_array_3_d0;
wire   [31:0] cross1_node_mix_array_3_q0;
reg    cross1_node_mix_array_3_ce1;
wire   [31:0] cross1_node_mix_array_3_q1;
reg   [4:0] cross1_node_mix_array_4_address0;
reg    cross1_node_mix_array_4_ce0;
reg    cross1_node_mix_array_4_we0;
reg   [31:0] cross1_node_mix_array_4_d0;
wire   [31:0] cross1_node_mix_array_4_q0;
reg    cross1_node_mix_array_4_ce1;
wire   [31:0] cross1_node_mix_array_4_q1;
reg   [4:0] cross1_node_mix_array_5_address0;
reg    cross1_node_mix_array_5_ce0;
reg    cross1_node_mix_array_5_we0;
reg   [31:0] cross1_node_mix_array_5_d0;
wire   [31:0] cross1_node_mix_array_5_q0;
reg    cross1_node_mix_array_5_ce1;
wire   [31:0] cross1_node_mix_array_5_q1;
reg   [4:0] cross1_node_mix_array_6_address0;
reg    cross1_node_mix_array_6_ce0;
reg    cross1_node_mix_array_6_we0;
reg   [31:0] cross1_node_mix_array_6_d0;
wire   [31:0] cross1_node_mix_array_6_q0;
reg    cross1_node_mix_array_6_ce1;
wire   [31:0] cross1_node_mix_array_6_q1;
reg   [4:0] cross1_node_mix_array_7_address0;
reg    cross1_node_mix_array_7_ce0;
reg    cross1_node_mix_array_7_we0;
reg   [31:0] cross1_node_mix_array_7_d0;
wire   [31:0] cross1_node_mix_array_7_q0;
reg   [4:0] cross1_node_mix_array_7_address1;
reg    cross1_node_mix_array_7_ce1;
reg    cross1_node_mix_array_7_we1;
wire   [31:0] cross1_node_mix_array_7_q1;
reg    buf_dram_manage_AWVALID;
wire    buf_dram_manage_AWREADY;
reg    buf_dram_manage_WVALID;
wire    buf_dram_manage_WREADY;
reg    buf_dram_manage_ARVALID;
wire    buf_dram_manage_ARREADY;
reg   [63:0] buf_dram_manage_ARADDR;
reg   [0:0] buf_dram_manage_ARID;
reg   [31:0] buf_dram_manage_ARLEN;
reg   [2:0] buf_dram_manage_ARSIZE;
reg   [1:0] buf_dram_manage_ARBURST;
reg   [1:0] buf_dram_manage_ARLOCK;
reg   [3:0] buf_dram_manage_ARCACHE;
reg   [2:0] buf_dram_manage_ARPROT;
reg   [3:0] buf_dram_manage_ARQOS;
reg   [3:0] buf_dram_manage_ARREGION;
reg   [0:0] buf_dram_manage_ARUSER;
wire    buf_dram_manage_RVALID;
reg    buf_dram_manage_RREADY;
wire   [255:0] buf_dram_manage_RDATA;
wire    buf_dram_manage_RLAST;
wire   [0:0] buf_dram_manage_RID;
wire   [0:0] buf_dram_manage_RUSER;
wire   [1:0] buf_dram_manage_RRESP;
wire    buf_dram_manage_BVALID;
reg    buf_dram_manage_BREADY;
wire   [1:0] buf_dram_manage_BRESP;
wire   [0:0] buf_dram_manage_BID;
wire   [0:0] buf_dram_manage_BUSER;
reg   [31:0] reg_675;
wire    ap_CS_fsm_state15;
reg   [31:0] reg_681;
reg   [31:0] reg_687;
reg   [31:0] reg_693;
reg   [31:0] reg_699;
reg   [31:0] reg_705;
reg   [31:0] reg_711;
wire    ap_CS_fsm_state2;
wire    grp_downwards_fu_351_ap_ready;
wire    grp_downwards_fu_351_ap_done;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state8;
reg   [31:0] reg_717;
reg   [31:0] reg_722;
reg   [31:0] reg_727;
reg   [31:0] reg_732;
reg   [31:0] reg_737;
reg   [7:0] reg_742;
reg   [31:0] reg_747;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state13;
reg   [31:0] reg_753;
reg   [31:0] reg_759;
reg   [31:0] reg_765;
reg   [31:0] reg_771;
reg   [31:0] reg_777;
reg   [31:0] reg_783;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state11;
reg   [31:0] reg_789;
reg   [31:0] reg_795;
reg   [31:0] reg_801;
reg   [31:0] reg_807;
reg   [31:0] reg_813;
reg   [31:0] reg_819;
wire    ap_CS_fsm_state10;
wire    grp_upwards_fu_276_ap_ready;
wire    grp_upwards_fu_276_ap_done;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state14;
reg   [31:0] reg_824;
reg   [31:0] reg_829;
reg   [31:0] reg_834;
reg   [31:0] reg_839;
reg   [31:0] reg_844;
reg   [31:0] reg_849;
reg   [31:0] reg_854;
reg   [7:0] reg_859;
wire   [4:0] empty_fu_864_p1;
reg   [4:0] empty_reg_1798;
wire   [4:0] trunc_ln1718_fu_884_p1;
reg   [4:0] trunc_ln1718_reg_1812;
wire   [4:0] trunc_ln1719_fu_982_p1;
reg   [4:0] trunc_ln1719_reg_1823;
wire   [4:0] trunc_ln1720_fu_1080_p1;
reg   [4:0] trunc_ln1720_reg_1834;
reg   [31:0] cross1_nodeindex_reg_1863;
reg   [31:0] cross1_broindex_reg_1868;
reg   [31:0] cross1_node_num_ret_reg_1873;
reg   [31:0] cross1_node_next_free_offset_ret_reg_1878;
reg   [31:0] cross1_node_max_fb_index_ret4_reg_1883;
reg   [31:0] cross1_node_max_fb_length_ret5_reg_1888;
reg   [31:0] cross1_node_max_subgraph_index_ret6_reg_1893;
reg   [31:0] cross1_node_max_subgraph_length_ret7_reg_1898;
reg   [31:0] cross1_pos_reg_1903;
reg   [31:0] cross1_fb_index_reg_1908;
reg   [31:0] cross1_fb_length_reg_1913;
reg   [0:0] cross1_dir_V_reg_1918;
wire   [7:0] level_next_fu_1264_p2;
reg   [7:0] level_next_reg_1923;
wire   [0:0] icmp_ln1616_3_fu_1414_p2;
reg   [0:0] icmp_ln1616_3_reg_1928;
wire   [0:0] icmp_ln1616_4_fu_1428_p2;
reg   [0:0] icmp_ln1616_4_reg_1934;
wire   [4:0] opcode_next_5_fu_1434_p3;
reg   [4:0] opcode_next_5_reg_1940;
wire   [31:0] merge_index_next_3_fu_1466_p3;
reg   [31:0] merge_index_next_3_reg_1945;
wire   [31:0] merge_length_next_3_fu_1498_p3;
reg   [31:0] merge_length_next_3_reg_1950;
wire   [31:0] parent_fb_index_next_8_fu_1513_p3;
reg   [31:0] parent_fb_index_next_8_reg_1955;
wire    ap_CS_fsm_state9;
wire   [31:0] parent_fb_length_next_8_fu_1528_p3;
reg   [31:0] parent_fb_length_next_8_reg_1960;
wire   [4:0] empty_55_fu_1536_p1;
reg   [4:0] empty_55_reg_1965;
wire   [4:0] empty_56_fu_1606_p1;
reg   [4:0] empty_56_reg_1988;
wire   [4:0] empty_57_fu_1676_p1;
reg   [4:0] empty_57_reg_2011;
wire    grp_upwards_fu_276_ap_start;
wire    grp_upwards_fu_276_ap_idle;
wire    grp_upwards_fu_276_m_axi_buf_dram_manage_AWVALID;
wire   [63:0] grp_upwards_fu_276_m_axi_buf_dram_manage_AWADDR;
wire   [0:0] grp_upwards_fu_276_m_axi_buf_dram_manage_AWID;
wire   [31:0] grp_upwards_fu_276_m_axi_buf_dram_manage_AWLEN;
wire   [2:0] grp_upwards_fu_276_m_axi_buf_dram_manage_AWSIZE;
wire   [1:0] grp_upwards_fu_276_m_axi_buf_dram_manage_AWBURST;
wire   [1:0] grp_upwards_fu_276_m_axi_buf_dram_manage_AWLOCK;
wire   [3:0] grp_upwards_fu_276_m_axi_buf_dram_manage_AWCACHE;
wire   [2:0] grp_upwards_fu_276_m_axi_buf_dram_manage_AWPROT;
wire   [3:0] grp_upwards_fu_276_m_axi_buf_dram_manage_AWQOS;
wire   [3:0] grp_upwards_fu_276_m_axi_buf_dram_manage_AWREGION;
wire   [0:0] grp_upwards_fu_276_m_axi_buf_dram_manage_AWUSER;
wire    grp_upwards_fu_276_m_axi_buf_dram_manage_WVALID;
wire   [255:0] grp_upwards_fu_276_m_axi_buf_dram_manage_WDATA;
wire   [31:0] grp_upwards_fu_276_m_axi_buf_dram_manage_WSTRB;
wire    grp_upwards_fu_276_m_axi_buf_dram_manage_WLAST;
wire   [0:0] grp_upwards_fu_276_m_axi_buf_dram_manage_WID;
wire   [0:0] grp_upwards_fu_276_m_axi_buf_dram_manage_WUSER;
wire    grp_upwards_fu_276_m_axi_buf_dram_manage_ARVALID;
wire   [63:0] grp_upwards_fu_276_m_axi_buf_dram_manage_ARADDR;
wire   [0:0] grp_upwards_fu_276_m_axi_buf_dram_manage_ARID;
wire   [31:0] grp_upwards_fu_276_m_axi_buf_dram_manage_ARLEN;
wire   [2:0] grp_upwards_fu_276_m_axi_buf_dram_manage_ARSIZE;
wire   [1:0] grp_upwards_fu_276_m_axi_buf_dram_manage_ARBURST;
wire   [1:0] grp_upwards_fu_276_m_axi_buf_dram_manage_ARLOCK;
wire   [3:0] grp_upwards_fu_276_m_axi_buf_dram_manage_ARCACHE;
wire   [2:0] grp_upwards_fu_276_m_axi_buf_dram_manage_ARPROT;
wire   [3:0] grp_upwards_fu_276_m_axi_buf_dram_manage_ARQOS;
wire   [3:0] grp_upwards_fu_276_m_axi_buf_dram_manage_ARREGION;
wire   [0:0] grp_upwards_fu_276_m_axi_buf_dram_manage_ARUSER;
wire    grp_upwards_fu_276_m_axi_buf_dram_manage_RREADY;
wire    grp_upwards_fu_276_m_axi_buf_dram_manage_BREADY;
reg   [4:0] grp_upwards_fu_276_port_in_op_read;
reg   [31:0] grp_upwards_fu_276_port_in_address_read;
reg   [31:0] grp_upwards_fu_276_port_in_nodeindex_read;
reg   [31:0] grp_upwards_fu_276_port_in_broindex_read;
reg   [31:0] grp_upwards_fu_276_port_in_merge_index_read;
reg   [31:0] grp_upwards_fu_276_port_in_merge_length_read;
reg   [31:0] grp_upwards_fu_276_port_in_fb_index_read;
reg   [31:0] grp_upwards_fu_276_port_in_fb_length_read;
reg   [31:0] grp_upwards_fu_276_port_in_node_max_fb_length_read;
reg   [7:0] grp_upwards_fu_276_port_in_level_read;
reg   [31:0] grp_upwards_fu_276_port_cross_in_nodeindex_read;
reg   [31:0] grp_upwards_fu_276_port_cross_in_broindex_read;
reg   [31:0] grp_upwards_fu_276_port_cross_in_node_num_read;
reg   [31:0] grp_upwards_fu_276_port_cross_in_node_next_free_offset_read;
wire   [5:0] grp_upwards_fu_276_port_cross_in_node_mix_array_address0;
wire    grp_upwards_fu_276_port_cross_in_node_mix_array_ce0;
wire    grp_upwards_fu_276_port_cross_in_node_mix_array_we0;
wire   [31:0] grp_upwards_fu_276_port_cross_in_node_mix_array_d0;
reg   [31:0] grp_upwards_fu_276_port_cross_in_node_mix_array_q0;
wire   [5:0] grp_upwards_fu_276_port_cross_in_node_mix_array_address1;
wire    grp_upwards_fu_276_port_cross_in_node_mix_array_ce1;
reg   [31:0] grp_upwards_fu_276_port_cross_in_node_mix_array_q1;
wire   [5:0] grp_upwards_fu_276_port_cross_in_node_mix_array1_address0;
wire    grp_upwards_fu_276_port_cross_in_node_mix_array1_ce0;
wire    grp_upwards_fu_276_port_cross_in_node_mix_array1_we0;
wire   [31:0] grp_upwards_fu_276_port_cross_in_node_mix_array1_d0;
reg   [31:0] grp_upwards_fu_276_port_cross_in_node_mix_array1_q0;
wire   [5:0] grp_upwards_fu_276_port_cross_in_node_mix_array1_address1;
wire    grp_upwards_fu_276_port_cross_in_node_mix_array1_ce1;
reg   [31:0] grp_upwards_fu_276_port_cross_in_node_mix_array1_q1;
wire   [4:0] grp_upwards_fu_276_port_cross_in_node_mix_array2_address0;
wire    grp_upwards_fu_276_port_cross_in_node_mix_array2_ce0;
wire    grp_upwards_fu_276_port_cross_in_node_mix_array2_we0;
wire   [31:0] grp_upwards_fu_276_port_cross_in_node_mix_array2_d0;
reg   [31:0] grp_upwards_fu_276_port_cross_in_node_mix_array2_q0;
wire   [4:0] grp_upwards_fu_276_port_cross_in_node_mix_array2_address1;
wire    grp_upwards_fu_276_port_cross_in_node_mix_array2_ce1;
reg   [31:0] grp_upwards_fu_276_port_cross_in_node_mix_array2_q1;
wire   [4:0] grp_upwards_fu_276_port_cross_in_node_mix_array3_address0;
wire    grp_upwards_fu_276_port_cross_in_node_mix_array3_ce0;
wire    grp_upwards_fu_276_port_cross_in_node_mix_array3_we0;
wire   [31:0] grp_upwards_fu_276_port_cross_in_node_mix_array3_d0;
reg   [31:0] grp_upwards_fu_276_port_cross_in_node_mix_array3_q0;
wire   [4:0] grp_upwards_fu_276_port_cross_in_node_mix_array3_address1;
wire    grp_upwards_fu_276_port_cross_in_node_mix_array3_ce1;
reg   [31:0] grp_upwards_fu_276_port_cross_in_node_mix_array3_q1;
wire   [4:0] grp_upwards_fu_276_port_cross_in_node_mix_array4_address0;
wire    grp_upwards_fu_276_port_cross_in_node_mix_array4_ce0;
wire    grp_upwards_fu_276_port_cross_in_node_mix_array4_we0;
wire   [31:0] grp_upwards_fu_276_port_cross_in_node_mix_array4_d0;
reg   [31:0] grp_upwards_fu_276_port_cross_in_node_mix_array4_q0;
wire   [4:0] grp_upwards_fu_276_port_cross_in_node_mix_array4_address1;
wire    grp_upwards_fu_276_port_cross_in_node_mix_array4_ce1;
reg   [31:0] grp_upwards_fu_276_port_cross_in_node_mix_array4_q1;
wire   [4:0] grp_upwards_fu_276_port_cross_in_node_mix_array5_address0;
wire    grp_upwards_fu_276_port_cross_in_node_mix_array5_ce0;
wire    grp_upwards_fu_276_port_cross_in_node_mix_array5_we0;
wire   [31:0] grp_upwards_fu_276_port_cross_in_node_mix_array5_d0;
reg   [31:0] grp_upwards_fu_276_port_cross_in_node_mix_array5_q0;
wire   [4:0] grp_upwards_fu_276_port_cross_in_node_mix_array5_address1;
wire    grp_upwards_fu_276_port_cross_in_node_mix_array5_ce1;
reg   [31:0] grp_upwards_fu_276_port_cross_in_node_mix_array5_q1;
wire   [4:0] grp_upwards_fu_276_port_cross_in_node_mix_array6_address0;
wire    grp_upwards_fu_276_port_cross_in_node_mix_array6_ce0;
wire    grp_upwards_fu_276_port_cross_in_node_mix_array6_we0;
wire   [31:0] grp_upwards_fu_276_port_cross_in_node_mix_array6_d0;
reg   [31:0] grp_upwards_fu_276_port_cross_in_node_mix_array6_q0;
wire   [4:0] grp_upwards_fu_276_port_cross_in_node_mix_array6_address1;
wire    grp_upwards_fu_276_port_cross_in_node_mix_array6_ce1;
reg   [31:0] grp_upwards_fu_276_port_cross_in_node_mix_array6_q1;
wire   [4:0] grp_upwards_fu_276_port_cross_in_node_mix_array7_address0;
wire    grp_upwards_fu_276_port_cross_in_node_mix_array7_ce0;
wire    grp_upwards_fu_276_port_cross_in_node_mix_array7_we0;
wire   [31:0] grp_upwards_fu_276_port_cross_in_node_mix_array7_d0;
reg   [31:0] grp_upwards_fu_276_port_cross_in_node_mix_array7_q0;
wire   [4:0] grp_upwards_fu_276_port_cross_in_node_mix_array7_address1;
wire    grp_upwards_fu_276_port_cross_in_node_mix_array7_ce1;
reg   [31:0] grp_upwards_fu_276_port_cross_in_node_mix_array7_q1;
reg   [31:0] grp_upwards_fu_276_port_cross_in_node_max_fb_index_read;
reg   [31:0] grp_upwards_fu_276_port_cross_in_node_max_fb_length_read;
reg   [31:0] grp_upwards_fu_276_port_cross_in_node_max_subgraph_index_read;
reg   [31:0] grp_upwards_fu_276_port_cross_in_node_max_subgraph_length_read;
reg   [31:0] grp_upwards_fu_276_port_cross_in_pos_read;
reg   [31:0] grp_upwards_fu_276_port_cross_in_fb_index_read;
reg   [31:0] grp_upwards_fu_276_port_cross_in_fb_length_read;
reg   [0:0] grp_upwards_fu_276_p_read55;
wire   [7:0] grp_upwards_fu_276_graphlevel_o;
wire    grp_upwards_fu_276_graphlevel_o_ap_vld;
wire   [31:0] grp_upwards_fu_276_ap_return_0;
wire   [31:0] grp_upwards_fu_276_ap_return_1;
wire   [31:0] grp_upwards_fu_276_ap_return_2;
wire   [31:0] grp_upwards_fu_276_ap_return_3;
wire   [31:0] grp_upwards_fu_276_ap_return_4;
wire   [31:0] grp_upwards_fu_276_ap_return_5;
wire   [31:0] grp_upwards_fu_276_ap_return_6;
wire   [31:0] grp_upwards_fu_276_ap_return_7;
wire   [31:0] grp_upwards_fu_276_ap_return_8;
wire   [7:0] grp_upwards_fu_276_ap_return_9;
wire   [31:0] grp_upwards_fu_276_ap_return_10;
wire   [31:0] grp_upwards_fu_276_ap_return_11;
wire   [31:0] grp_upwards_fu_276_ap_return_12;
wire   [31:0] grp_upwards_fu_276_ap_return_13;
wire   [31:0] grp_upwards_fu_276_ap_return_14;
wire   [31:0] grp_upwards_fu_276_ap_return_15;
wire    grp_downwards_fu_351_ap_start;
wire    grp_downwards_fu_351_ap_idle;
wire    grp_downwards_fu_351_m_axi_buf_dram_manage_AWVALID;
wire   [63:0] grp_downwards_fu_351_m_axi_buf_dram_manage_AWADDR;
wire   [0:0] grp_downwards_fu_351_m_axi_buf_dram_manage_AWID;
wire   [31:0] grp_downwards_fu_351_m_axi_buf_dram_manage_AWLEN;
wire   [2:0] grp_downwards_fu_351_m_axi_buf_dram_manage_AWSIZE;
wire   [1:0] grp_downwards_fu_351_m_axi_buf_dram_manage_AWBURST;
wire   [1:0] grp_downwards_fu_351_m_axi_buf_dram_manage_AWLOCK;
wire   [3:0] grp_downwards_fu_351_m_axi_buf_dram_manage_AWCACHE;
wire   [2:0] grp_downwards_fu_351_m_axi_buf_dram_manage_AWPROT;
wire   [3:0] grp_downwards_fu_351_m_axi_buf_dram_manage_AWQOS;
wire   [3:0] grp_downwards_fu_351_m_axi_buf_dram_manage_AWREGION;
wire   [0:0] grp_downwards_fu_351_m_axi_buf_dram_manage_AWUSER;
wire    grp_downwards_fu_351_m_axi_buf_dram_manage_WVALID;
wire   [255:0] grp_downwards_fu_351_m_axi_buf_dram_manage_WDATA;
wire   [31:0] grp_downwards_fu_351_m_axi_buf_dram_manage_WSTRB;
wire    grp_downwards_fu_351_m_axi_buf_dram_manage_WLAST;
wire   [0:0] grp_downwards_fu_351_m_axi_buf_dram_manage_WID;
wire   [0:0] grp_downwards_fu_351_m_axi_buf_dram_manage_WUSER;
wire    grp_downwards_fu_351_m_axi_buf_dram_manage_ARVALID;
wire   [63:0] grp_downwards_fu_351_m_axi_buf_dram_manage_ARADDR;
wire   [0:0] grp_downwards_fu_351_m_axi_buf_dram_manage_ARID;
wire   [31:0] grp_downwards_fu_351_m_axi_buf_dram_manage_ARLEN;
wire   [2:0] grp_downwards_fu_351_m_axi_buf_dram_manage_ARSIZE;
wire   [1:0] grp_downwards_fu_351_m_axi_buf_dram_manage_ARBURST;
wire   [1:0] grp_downwards_fu_351_m_axi_buf_dram_manage_ARLOCK;
wire   [3:0] grp_downwards_fu_351_m_axi_buf_dram_manage_ARCACHE;
wire   [2:0] grp_downwards_fu_351_m_axi_buf_dram_manage_ARPROT;
wire   [3:0] grp_downwards_fu_351_m_axi_buf_dram_manage_ARQOS;
wire   [3:0] grp_downwards_fu_351_m_axi_buf_dram_manage_ARREGION;
wire   [0:0] grp_downwards_fu_351_m_axi_buf_dram_manage_ARUSER;
wire    grp_downwards_fu_351_m_axi_buf_dram_manage_RREADY;
wire    grp_downwards_fu_351_m_axi_buf_dram_manage_BREADY;
reg   [4:0] grp_downwards_fu_351_port_in_op_read;
reg   [31:0] grp_downwards_fu_351_port_in_address_read;
reg   [31:0] grp_downwards_fu_351_port_in_length_read;
reg   [31:0] grp_downwards_fu_351_port_in_nodeindex_read;
reg   [31:0] grp_downwards_fu_351_port_in_broindex_read;
reg   [31:0] grp_downwards_fu_351_port_in_fb_index_read;
reg   [31:0] grp_downwards_fu_351_port_in_fb_length_read;
reg   [7:0] grp_downwards_fu_351_port_in_level_read;
reg   [31:0] grp_downwards_fu_351_port_out_fb_index_read;
reg   [31:0] grp_downwards_fu_351_port_out_fb_length_read;
reg   [31:0] grp_downwards_fu_351_port_cross_out_node_num_read;
reg   [31:0] grp_downwards_fu_351_port_cross_out_node_next_free_offset_read;
wire   [5:0] grp_downwards_fu_351_port_cross_out_mix_array_mix_array_address0;
wire    grp_downwards_fu_351_port_cross_out_mix_array_mix_array_ce0;
wire    grp_downwards_fu_351_port_cross_out_mix_array_mix_array_we0;
wire   [31:0] grp_downwards_fu_351_port_cross_out_mix_array_mix_array_d0;
reg   [31:0] grp_downwards_fu_351_port_cross_out_mix_array_mix_array_q0;
wire   [5:0] grp_downwards_fu_351_port_cross_out_mix_array_mix_array1_address0;
wire    grp_downwards_fu_351_port_cross_out_mix_array_mix_array1_ce0;
wire    grp_downwards_fu_351_port_cross_out_mix_array_mix_array1_we0;
wire   [31:0] grp_downwards_fu_351_port_cross_out_mix_array_mix_array1_d0;
wire   [4:0] grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_address0;
wire    grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_ce0;
wire    grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_we0;
wire   [31:0] grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_d0;
reg   [31:0] grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_q0;
wire   [4:0] grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_address0;
wire    grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_ce0;
wire    grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_we0;
wire   [31:0] grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_d0;
reg   [31:0] grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_q0;
wire   [4:0] grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_address0;
wire    grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_ce0;
wire    grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_we0;
wire   [31:0] grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_d0;
reg   [31:0] grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_q0;
wire   [4:0] grp_downwards_fu_351_port_cross_out_mix_array_mix_array5_address0;
wire    grp_downwards_fu_351_port_cross_out_mix_array_mix_array5_ce0;
wire    grp_downwards_fu_351_port_cross_out_mix_array_mix_array5_we0;
wire   [31:0] grp_downwards_fu_351_port_cross_out_mix_array_mix_array5_d0;
wire   [4:0] grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_address0;
wire    grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_ce0;
wire    grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_we0;
wire   [31:0] grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_d0;
reg   [31:0] grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_q0;
wire   [4:0] grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_address0;
wire    grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_ce0;
wire    grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_we0;
wire   [31:0] grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_d0;
reg   [31:0] grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_q0;
wire   [4:0] grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_address1;
wire    grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_ce1;
wire    grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_we1;
wire   [31:0] grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_d1;
reg   [31:0] grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_q1;
reg   [31:0] grp_downwards_fu_351_port_cross_out_node_max_fb_index_read;
reg   [31:0] grp_downwards_fu_351_port_cross_out_node_max_fb_length_read;
reg   [31:0] grp_downwards_fu_351_port_cross_out_node_max_subgraph_index_read;
reg   [31:0] grp_downwards_fu_351_port_cross_out_node_max_subgraph_length_read;
wire   [31:0] grp_downwards_fu_351_ap_return_0;
wire   [31:0] grp_downwards_fu_351_ap_return_1;
wire   [31:0] grp_downwards_fu_351_ap_return_2;
wire   [31:0] grp_downwards_fu_351_ap_return_3;
wire   [31:0] grp_downwards_fu_351_ap_return_4;
wire   [31:0] grp_downwards_fu_351_ap_return_5;
wire   [31:0] grp_downwards_fu_351_ap_return_6;
wire   [7:0] grp_downwards_fu_351_ap_return_7;
wire   [31:0] grp_downwards_fu_351_ap_return_8;
wire   [31:0] grp_downwards_fu_351_ap_return_9;
wire   [31:0] grp_downwards_fu_351_ap_return_10;
wire   [31:0] grp_downwards_fu_351_ap_return_11;
wire   [31:0] grp_downwards_fu_351_ap_return_12;
wire   [31:0] grp_downwards_fu_351_ap_return_13;
wire   [31:0] grp_downwards_fu_351_ap_return_14;
wire   [31:0] grp_downwards_fu_351_ap_return_15;
wire   [31:0] grp_downwards_fu_351_ap_return_16;
wire   [31:0] grp_downwards_fu_351_ap_return_17;
wire   [31:0] grp_downwards_fu_351_ap_return_18;
wire   [0:0] grp_downwards_fu_351_ap_return_19;
reg    grp_upwards_fu_276_ap_start_reg;
wire    ap_CS_fsm_state16;
reg    grp_downwards_fu_351_ap_start_reg;
wire    ap_CS_fsm_state7;
wire   [31:0] add_ln1623_fu_1270_p2;
wire   [0:0] icmp_ln1623_fu_1276_p2;
wire   [0:0] icmp_ln1632_fu_1306_p2;
wire   [0:0] icmp_ln1647_fu_1336_p2;
wire   [0:0] and_ln1647_fu_1342_p2;
wire   [0:0] icmp_ln1616_fu_1372_p2;
wire   [4:0] trunc_ln1721_fu_1208_p1;
wire   [0:0] icmp_ln1616_1_fu_1386_p2;
wire   [4:0] select_ln1636_fu_1312_p3;
wire   [4:0] select_ln1616_fu_1378_p3;
wire   [0:0] icmp_ln1616_2_fu_1400_p2;
wire   [4:0] select_ln1627_fu_1282_p3;
wire   [4:0] select_ln1616_1_fu_1392_p3;
wire   [4:0] select_ln1616_2_fu_1406_p3;
wire   [4:0] select_ln1647_fu_1348_p3;
wire   [4:0] select_ln1616_3_fu_1420_p3;
wire   [31:0] merge_index_next_1_fu_1320_p3;
wire   [31:0] merge_index_next_fu_1290_p3;
wire   [31:0] select_ln1616_9_fu_1442_p3;
wire   [31:0] select_ln1616_10_fu_1450_p3;
wire   [31:0] select_ln1647_1_fu_1356_p3;
wire   [31:0] select_ln1616_11_fu_1458_p3;
wire   [31:0] merge_length_next_1_fu_1328_p3;
wire   [31:0] merge_length_next_fu_1298_p3;
wire   [31:0] select_ln1616_13_fu_1474_p3;
wire   [31:0] select_ln1616_14_fu_1482_p3;
wire   [31:0] select_ln1647_2_fu_1364_p3;
wire   [31:0] select_ln1616_15_fu_1490_p3;
wire   [31:0] select_ln1616_5_fu_1506_p3;
wire   [31:0] select_ln1616_7_fu_1521_p3;
reg   [15:0] ap_NS_fsm;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 16'd1;
#0 root_node = 32'd1;
#0 down3_fb_index = 32'd0;
#0 down3_fb_length = 32'd0;
#0 cross4_node_num = 32'd0;
#0 cross4_node_next_free_offset = 32'd0;
#0 cross4_node_max_fb_index = 32'd0;
#0 cross4_node_max_fb_length = 32'd0;
#0 cross4_node_max_subgraph_index = 32'd0;
#0 cross4_node_max_subgraph_length = 32'd0;
#0 graphlevel = 8'd1;
#0 cross4_nodeindex = 32'd0;
#0 cross4_broindex = 32'd0;
#0 cross4_pos = 32'd0;
#0 cross4_fb_index = 32'd0;
#0 cross4_fb_length = 32'd0;
#0 cross4_dir_V = 1'd0;
#0 down2_fb_index = 32'd0;
#0 down2_fb_length = 32'd0;
#0 cross3_node_num = 32'd0;
#0 cross3_node_next_free_offset = 32'd0;
#0 cross3_node_max_fb_index = 32'd0;
#0 cross3_node_max_fb_length = 32'd0;
#0 cross3_node_max_subgraph_index = 32'd0;
#0 cross3_node_max_subgraph_length = 32'd0;
#0 cross3_nodeindex = 32'd0;
#0 cross3_broindex = 32'd0;
#0 cross3_pos = 32'd0;
#0 cross3_fb_index = 32'd0;
#0 cross3_fb_length = 32'd0;
#0 cross3_dir_V = 1'd0;
#0 down1_fb_index = 32'd0;
#0 down1_fb_length = 32'd0;
#0 cross2_node_num = 32'd0;
#0 cross2_node_next_free_offset = 32'd0;
#0 cross2_node_max_fb_index = 32'd0;
#0 cross2_node_max_fb_length = 32'd0;
#0 cross2_node_max_subgraph_index = 32'd0;
#0 cross2_node_max_subgraph_length = 32'd0;
#0 cross2_nodeindex = 32'd0;
#0 cross2_broindex = 32'd0;
#0 cross2_pos = 32'd0;
#0 cross2_fb_index = 32'd0;
#0 cross2_fb_length = 32'd0;
#0 cross2_dir_V = 1'd0;
#0 down0_fb_index = 32'd0;
#0 down0_fb_length = 32'd0;
#0 cross1_node_num = 32'd0;
#0 cross1_node_next_free_offset = 32'd0;
#0 cross1_node_max_fb_index = 32'd0;
#0 cross1_node_max_fb_length = 32'd0;
#0 cross1_node_max_subgraph_index = 32'd0;
#0 cross1_node_max_subgraph_length = 32'd0;
#0 grp_upwards_fu_276_ap_start_reg = 1'b0;
#0 grp_downwards_fu_351_ap_start_reg = 1'b0;
end

execute_cross4_node_mix_array_0 #(
    .DataWidth( 32 ),
    .AddressRange( 33 ),
    .AddressWidth( 6 ))
cross4_node_mix_array_0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross4_node_mix_array_0_address0),
    .ce0(cross4_node_mix_array_0_ce0),
    .we0(cross4_node_mix_array_0_we0),
    .d0(cross4_node_mix_array_0_d0),
    .q0(cross4_node_mix_array_0_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array_address1),
    .ce1(cross4_node_mix_array_0_ce1),
    .q1(cross4_node_mix_array_0_q1)
);

execute_cross4_node_mix_array_0 #(
    .DataWidth( 32 ),
    .AddressRange( 33 ),
    .AddressWidth( 6 ))
cross4_node_mix_array_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross4_node_mix_array_1_address0),
    .ce0(cross4_node_mix_array_1_ce0),
    .we0(cross4_node_mix_array_1_we0),
    .d0(cross4_node_mix_array_1_d0),
    .q0(cross4_node_mix_array_1_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array1_address1),
    .ce1(cross4_node_mix_array_1_ce1),
    .q1(cross4_node_mix_array_1_q1)
);

execute_cross4_node_mix_array_2 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
cross4_node_mix_array_2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross4_node_mix_array_2_address0),
    .ce0(cross4_node_mix_array_2_ce0),
    .we0(cross4_node_mix_array_2_we0),
    .d0(cross4_node_mix_array_2_d0),
    .q0(cross4_node_mix_array_2_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array2_address1),
    .ce1(cross4_node_mix_array_2_ce1),
    .q1(cross4_node_mix_array_2_q1)
);

execute_cross4_node_mix_array_2 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
cross4_node_mix_array_3_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross4_node_mix_array_3_address0),
    .ce0(cross4_node_mix_array_3_ce0),
    .we0(cross4_node_mix_array_3_we0),
    .d0(cross4_node_mix_array_3_d0),
    .q0(cross4_node_mix_array_3_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array3_address1),
    .ce1(cross4_node_mix_array_3_ce1),
    .q1(cross4_node_mix_array_3_q1)
);

execute_cross4_node_mix_array_2 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
cross4_node_mix_array_4_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross4_node_mix_array_4_address0),
    .ce0(cross4_node_mix_array_4_ce0),
    .we0(cross4_node_mix_array_4_we0),
    .d0(cross4_node_mix_array_4_d0),
    .q0(cross4_node_mix_array_4_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array4_address1),
    .ce1(cross4_node_mix_array_4_ce1),
    .q1(cross4_node_mix_array_4_q1)
);

execute_cross4_node_mix_array_2 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
cross4_node_mix_array_5_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross4_node_mix_array_5_address0),
    .ce0(cross4_node_mix_array_5_ce0),
    .we0(cross4_node_mix_array_5_we0),
    .d0(cross4_node_mix_array_5_d0),
    .q0(cross4_node_mix_array_5_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array5_address1),
    .ce1(cross4_node_mix_array_5_ce1),
    .q1(cross4_node_mix_array_5_q1)
);

execute_cross4_node_mix_array_2 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
cross4_node_mix_array_6_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross4_node_mix_array_6_address0),
    .ce0(cross4_node_mix_array_6_ce0),
    .we0(cross4_node_mix_array_6_we0),
    .d0(cross4_node_mix_array_6_d0),
    .q0(cross4_node_mix_array_6_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array6_address1),
    .ce1(cross4_node_mix_array_6_ce1),
    .q1(cross4_node_mix_array_6_q1)
);

execute_cross4_node_mix_array_7 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
cross4_node_mix_array_7_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross4_node_mix_array_7_address0),
    .ce0(cross4_node_mix_array_7_ce0),
    .we0(cross4_node_mix_array_7_we0),
    .d0(cross4_node_mix_array_7_d0),
    .q0(cross4_node_mix_array_7_q0),
    .address1(cross4_node_mix_array_7_address1),
    .ce1(cross4_node_mix_array_7_ce1),
    .we1(cross4_node_mix_array_7_we1),
    .d1(grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_d1),
    .q1(cross4_node_mix_array_7_q1)
);

execute_cross4_node_mix_array_0 #(
    .DataWidth( 32 ),
    .AddressRange( 33 ),
    .AddressWidth( 6 ))
cross3_node_mix_array_0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross3_node_mix_array_0_address0),
    .ce0(cross3_node_mix_array_0_ce0),
    .we0(cross3_node_mix_array_0_we0),
    .d0(cross3_node_mix_array_0_d0),
    .q0(cross3_node_mix_array_0_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array_address1),
    .ce1(cross3_node_mix_array_0_ce1),
    .q1(cross3_node_mix_array_0_q1)
);

execute_cross4_node_mix_array_0 #(
    .DataWidth( 32 ),
    .AddressRange( 33 ),
    .AddressWidth( 6 ))
cross3_node_mix_array_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross3_node_mix_array_1_address0),
    .ce0(cross3_node_mix_array_1_ce0),
    .we0(cross3_node_mix_array_1_we0),
    .d0(cross3_node_mix_array_1_d0),
    .q0(cross3_node_mix_array_1_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array1_address1),
    .ce1(cross3_node_mix_array_1_ce1),
    .q1(cross3_node_mix_array_1_q1)
);

execute_cross4_node_mix_array_2 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
cross3_node_mix_array_2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross3_node_mix_array_2_address0),
    .ce0(cross3_node_mix_array_2_ce0),
    .we0(cross3_node_mix_array_2_we0),
    .d0(cross3_node_mix_array_2_d0),
    .q0(cross3_node_mix_array_2_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array2_address1),
    .ce1(cross3_node_mix_array_2_ce1),
    .q1(cross3_node_mix_array_2_q1)
);

execute_cross4_node_mix_array_2 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
cross3_node_mix_array_3_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross3_node_mix_array_3_address0),
    .ce0(cross3_node_mix_array_3_ce0),
    .we0(cross3_node_mix_array_3_we0),
    .d0(cross3_node_mix_array_3_d0),
    .q0(cross3_node_mix_array_3_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array3_address1),
    .ce1(cross3_node_mix_array_3_ce1),
    .q1(cross3_node_mix_array_3_q1)
);

execute_cross4_node_mix_array_2 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
cross3_node_mix_array_4_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross3_node_mix_array_4_address0),
    .ce0(cross3_node_mix_array_4_ce0),
    .we0(cross3_node_mix_array_4_we0),
    .d0(cross3_node_mix_array_4_d0),
    .q0(cross3_node_mix_array_4_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array4_address1),
    .ce1(cross3_node_mix_array_4_ce1),
    .q1(cross3_node_mix_array_4_q1)
);

execute_cross4_node_mix_array_2 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
cross3_node_mix_array_5_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross3_node_mix_array_5_address0),
    .ce0(cross3_node_mix_array_5_ce0),
    .we0(cross3_node_mix_array_5_we0),
    .d0(cross3_node_mix_array_5_d0),
    .q0(cross3_node_mix_array_5_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array5_address1),
    .ce1(cross3_node_mix_array_5_ce1),
    .q1(cross3_node_mix_array_5_q1)
);

execute_cross4_node_mix_array_2 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
cross3_node_mix_array_6_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross3_node_mix_array_6_address0),
    .ce0(cross3_node_mix_array_6_ce0),
    .we0(cross3_node_mix_array_6_we0),
    .d0(cross3_node_mix_array_6_d0),
    .q0(cross3_node_mix_array_6_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array6_address1),
    .ce1(cross3_node_mix_array_6_ce1),
    .q1(cross3_node_mix_array_6_q1)
);

execute_cross4_node_mix_array_7 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
cross3_node_mix_array_7_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross3_node_mix_array_7_address0),
    .ce0(cross3_node_mix_array_7_ce0),
    .we0(cross3_node_mix_array_7_we0),
    .d0(cross3_node_mix_array_7_d0),
    .q0(cross3_node_mix_array_7_q0),
    .address1(cross3_node_mix_array_7_address1),
    .ce1(cross3_node_mix_array_7_ce1),
    .we1(cross3_node_mix_array_7_we1),
    .d1(grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_d1),
    .q1(cross3_node_mix_array_7_q1)
);

execute_cross4_node_mix_array_0 #(
    .DataWidth( 32 ),
    .AddressRange( 33 ),
    .AddressWidth( 6 ))
cross2_node_mix_array_0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross2_node_mix_array_0_address0),
    .ce0(cross2_node_mix_array_0_ce0),
    .we0(cross2_node_mix_array_0_we0),
    .d0(cross2_node_mix_array_0_d0),
    .q0(cross2_node_mix_array_0_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array_address1),
    .ce1(cross2_node_mix_array_0_ce1),
    .q1(cross2_node_mix_array_0_q1)
);

execute_cross4_node_mix_array_0 #(
    .DataWidth( 32 ),
    .AddressRange( 33 ),
    .AddressWidth( 6 ))
cross2_node_mix_array_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross2_node_mix_array_1_address0),
    .ce0(cross2_node_mix_array_1_ce0),
    .we0(cross2_node_mix_array_1_we0),
    .d0(cross2_node_mix_array_1_d0),
    .q0(cross2_node_mix_array_1_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array1_address1),
    .ce1(cross2_node_mix_array_1_ce1),
    .q1(cross2_node_mix_array_1_q1)
);

execute_cross4_node_mix_array_2 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
cross2_node_mix_array_2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross2_node_mix_array_2_address0),
    .ce0(cross2_node_mix_array_2_ce0),
    .we0(cross2_node_mix_array_2_we0),
    .d0(cross2_node_mix_array_2_d0),
    .q0(cross2_node_mix_array_2_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array2_address1),
    .ce1(cross2_node_mix_array_2_ce1),
    .q1(cross2_node_mix_array_2_q1)
);

execute_cross4_node_mix_array_2 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
cross2_node_mix_array_3_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross2_node_mix_array_3_address0),
    .ce0(cross2_node_mix_array_3_ce0),
    .we0(cross2_node_mix_array_3_we0),
    .d0(cross2_node_mix_array_3_d0),
    .q0(cross2_node_mix_array_3_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array3_address1),
    .ce1(cross2_node_mix_array_3_ce1),
    .q1(cross2_node_mix_array_3_q1)
);

execute_cross4_node_mix_array_2 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
cross2_node_mix_array_4_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross2_node_mix_array_4_address0),
    .ce0(cross2_node_mix_array_4_ce0),
    .we0(cross2_node_mix_array_4_we0),
    .d0(cross2_node_mix_array_4_d0),
    .q0(cross2_node_mix_array_4_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array4_address1),
    .ce1(cross2_node_mix_array_4_ce1),
    .q1(cross2_node_mix_array_4_q1)
);

execute_cross4_node_mix_array_2 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
cross2_node_mix_array_5_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross2_node_mix_array_5_address0),
    .ce0(cross2_node_mix_array_5_ce0),
    .we0(cross2_node_mix_array_5_we0),
    .d0(cross2_node_mix_array_5_d0),
    .q0(cross2_node_mix_array_5_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array5_address1),
    .ce1(cross2_node_mix_array_5_ce1),
    .q1(cross2_node_mix_array_5_q1)
);

execute_cross4_node_mix_array_2 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
cross2_node_mix_array_6_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross2_node_mix_array_6_address0),
    .ce0(cross2_node_mix_array_6_ce0),
    .we0(cross2_node_mix_array_6_we0),
    .d0(cross2_node_mix_array_6_d0),
    .q0(cross2_node_mix_array_6_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array6_address1),
    .ce1(cross2_node_mix_array_6_ce1),
    .q1(cross2_node_mix_array_6_q1)
);

execute_cross4_node_mix_array_7 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
cross2_node_mix_array_7_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross2_node_mix_array_7_address0),
    .ce0(cross2_node_mix_array_7_ce0),
    .we0(cross2_node_mix_array_7_we0),
    .d0(cross2_node_mix_array_7_d0),
    .q0(cross2_node_mix_array_7_q0),
    .address1(cross2_node_mix_array_7_address1),
    .ce1(cross2_node_mix_array_7_ce1),
    .we1(cross2_node_mix_array_7_we1),
    .d1(grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_d1),
    .q1(cross2_node_mix_array_7_q1)
);

execute_cross4_node_mix_array_0 #(
    .DataWidth( 32 ),
    .AddressRange( 33 ),
    .AddressWidth( 6 ))
cross1_node_mix_array_0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross1_node_mix_array_0_address0),
    .ce0(cross1_node_mix_array_0_ce0),
    .we0(cross1_node_mix_array_0_we0),
    .d0(cross1_node_mix_array_0_d0),
    .q0(cross1_node_mix_array_0_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array_address1),
    .ce1(cross1_node_mix_array_0_ce1),
    .q1(cross1_node_mix_array_0_q1)
);

execute_cross4_node_mix_array_0 #(
    .DataWidth( 32 ),
    .AddressRange( 33 ),
    .AddressWidth( 6 ))
cross1_node_mix_array_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross1_node_mix_array_1_address0),
    .ce0(cross1_node_mix_array_1_ce0),
    .we0(cross1_node_mix_array_1_we0),
    .d0(cross1_node_mix_array_1_d0),
    .q0(cross1_node_mix_array_1_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array1_address1),
    .ce1(cross1_node_mix_array_1_ce1),
    .q1(cross1_node_mix_array_1_q1)
);

execute_cross4_node_mix_array_2 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
cross1_node_mix_array_2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross1_node_mix_array_2_address0),
    .ce0(cross1_node_mix_array_2_ce0),
    .we0(cross1_node_mix_array_2_we0),
    .d0(cross1_node_mix_array_2_d0),
    .q0(cross1_node_mix_array_2_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array2_address1),
    .ce1(cross1_node_mix_array_2_ce1),
    .q1(cross1_node_mix_array_2_q1)
);

execute_cross4_node_mix_array_2 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
cross1_node_mix_array_3_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross1_node_mix_array_3_address0),
    .ce0(cross1_node_mix_array_3_ce0),
    .we0(cross1_node_mix_array_3_we0),
    .d0(cross1_node_mix_array_3_d0),
    .q0(cross1_node_mix_array_3_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array3_address1),
    .ce1(cross1_node_mix_array_3_ce1),
    .q1(cross1_node_mix_array_3_q1)
);

execute_cross4_node_mix_array_2 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
cross1_node_mix_array_4_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross1_node_mix_array_4_address0),
    .ce0(cross1_node_mix_array_4_ce0),
    .we0(cross1_node_mix_array_4_we0),
    .d0(cross1_node_mix_array_4_d0),
    .q0(cross1_node_mix_array_4_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array4_address1),
    .ce1(cross1_node_mix_array_4_ce1),
    .q1(cross1_node_mix_array_4_q1)
);

execute_cross4_node_mix_array_2 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
cross1_node_mix_array_5_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross1_node_mix_array_5_address0),
    .ce0(cross1_node_mix_array_5_ce0),
    .we0(cross1_node_mix_array_5_we0),
    .d0(cross1_node_mix_array_5_d0),
    .q0(cross1_node_mix_array_5_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array5_address1),
    .ce1(cross1_node_mix_array_5_ce1),
    .q1(cross1_node_mix_array_5_q1)
);

execute_cross4_node_mix_array_2 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
cross1_node_mix_array_6_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross1_node_mix_array_6_address0),
    .ce0(cross1_node_mix_array_6_ce0),
    .we0(cross1_node_mix_array_6_we0),
    .d0(cross1_node_mix_array_6_d0),
    .q0(cross1_node_mix_array_6_q0),
    .address1(grp_upwards_fu_276_port_cross_in_node_mix_array6_address1),
    .ce1(cross1_node_mix_array_6_ce1),
    .q1(cross1_node_mix_array_6_q1)
);

execute_cross4_node_mix_array_7 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
cross1_node_mix_array_7_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(cross1_node_mix_array_7_address0),
    .ce0(cross1_node_mix_array_7_ce0),
    .we0(cross1_node_mix_array_7_we0),
    .d0(cross1_node_mix_array_7_d0),
    .q0(cross1_node_mix_array_7_q0),
    .address1(cross1_node_mix_array_7_address1),
    .ce1(cross1_node_mix_array_7_ce1),
    .we1(cross1_node_mix_array_7_we1),
    .d1(grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_d1),
    .q1(cross1_node_mix_array_7_q1)
);

execute_buf_dram_manage_m_axi #(
    .CONSERVATIVE( 0 ),
    .USER_DW( 256 ),
    .USER_AW( 64 ),
    .USER_MAXREQS( 5 ),
    .NUM_READ_OUTSTANDING( 16 ),
    .NUM_WRITE_OUTSTANDING( 16 ),
    .MAX_READ_BURST_LENGTH( 16 ),
    .MAX_WRITE_BURST_LENGTH( 16 ),
    .C_M_AXI_ID_WIDTH( C_M_AXI_BUF_DRAM_MANAGE_ID_WIDTH ),
    .C_M_AXI_ADDR_WIDTH( C_M_AXI_BUF_DRAM_MANAGE_ADDR_WIDTH ),
    .C_M_AXI_DATA_WIDTH( C_M_AXI_BUF_DRAM_MANAGE_DATA_WIDTH ),
    .C_M_AXI_AWUSER_WIDTH( C_M_AXI_BUF_DRAM_MANAGE_AWUSER_WIDTH ),
    .C_M_AXI_ARUSER_WIDTH( C_M_AXI_BUF_DRAM_MANAGE_ARUSER_WIDTH ),
    .C_M_AXI_WUSER_WIDTH( C_M_AXI_BUF_DRAM_MANAGE_WUSER_WIDTH ),
    .C_M_AXI_RUSER_WIDTH( C_M_AXI_BUF_DRAM_MANAGE_RUSER_WIDTH ),
    .C_M_AXI_BUSER_WIDTH( C_M_AXI_BUF_DRAM_MANAGE_BUSER_WIDTH ),
    .C_TARGET_ADDR( C_M_AXI_BUF_DRAM_MANAGE_TARGET_ADDR ),
    .C_USER_VALUE( C_M_AXI_BUF_DRAM_MANAGE_USER_VALUE ),
    .C_PROT_VALUE( C_M_AXI_BUF_DRAM_MANAGE_PROT_VALUE ),
    .C_CACHE_VALUE( C_M_AXI_BUF_DRAM_MANAGE_CACHE_VALUE ))
buf_dram_manage_m_axi_U(
    .AWVALID(m_axi_buf_dram_manage_AWVALID),
    .AWREADY(m_axi_buf_dram_manage_AWREADY),
    .AWADDR(m_axi_buf_dram_manage_AWADDR),
    .AWID(m_axi_buf_dram_manage_AWID),
    .AWLEN(m_axi_buf_dram_manage_AWLEN),
    .AWSIZE(m_axi_buf_dram_manage_AWSIZE),
    .AWBURST(m_axi_buf_dram_manage_AWBURST),
    .AWLOCK(m_axi_buf_dram_manage_AWLOCK),
    .AWCACHE(m_axi_buf_dram_manage_AWCACHE),
    .AWPROT(m_axi_buf_dram_manage_AWPROT),
    .AWQOS(m_axi_buf_dram_manage_AWQOS),
    .AWREGION(m_axi_buf_dram_manage_AWREGION),
    .AWUSER(m_axi_buf_dram_manage_AWUSER),
    .WVALID(m_axi_buf_dram_manage_WVALID),
    .WREADY(m_axi_buf_dram_manage_WREADY),
    .WDATA(m_axi_buf_dram_manage_WDATA),
    .WSTRB(m_axi_buf_dram_manage_WSTRB),
    .WLAST(m_axi_buf_dram_manage_WLAST),
    .WID(m_axi_buf_dram_manage_WID),
    .WUSER(m_axi_buf_dram_manage_WUSER),
    .ARVALID(m_axi_buf_dram_manage_ARVALID),
    .ARREADY(m_axi_buf_dram_manage_ARREADY),
    .ARADDR(m_axi_buf_dram_manage_ARADDR),
    .ARID(m_axi_buf_dram_manage_ARID),
    .ARLEN(m_axi_buf_dram_manage_ARLEN),
    .ARSIZE(m_axi_buf_dram_manage_ARSIZE),
    .ARBURST(m_axi_buf_dram_manage_ARBURST),
    .ARLOCK(m_axi_buf_dram_manage_ARLOCK),
    .ARCACHE(m_axi_buf_dram_manage_ARCACHE),
    .ARPROT(m_axi_buf_dram_manage_ARPROT),
    .ARQOS(m_axi_buf_dram_manage_ARQOS),
    .ARREGION(m_axi_buf_dram_manage_ARREGION),
    .ARUSER(m_axi_buf_dram_manage_ARUSER),
    .RVALID(m_axi_buf_dram_manage_RVALID),
    .RREADY(m_axi_buf_dram_manage_RREADY),
    .RDATA(m_axi_buf_dram_manage_RDATA),
    .RLAST(m_axi_buf_dram_manage_RLAST),
    .RID(m_axi_buf_dram_manage_RID),
    .RUSER(m_axi_buf_dram_manage_RUSER),
    .RRESP(m_axi_buf_dram_manage_RRESP),
    .BVALID(m_axi_buf_dram_manage_BVALID),
    .BREADY(m_axi_buf_dram_manage_BREADY),
    .BRESP(m_axi_buf_dram_manage_BRESP),
    .BID(m_axi_buf_dram_manage_BID),
    .BUSER(m_axi_buf_dram_manage_BUSER),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .I_ARVALID(buf_dram_manage_ARVALID),
    .I_ARREADY(buf_dram_manage_ARREADY),
    .I_ARADDR(buf_dram_manage_ARADDR),
    .I_ARID(buf_dram_manage_ARID),
    .I_ARLEN(buf_dram_manage_ARLEN),
    .I_ARSIZE(buf_dram_manage_ARSIZE),
    .I_ARLOCK(buf_dram_manage_ARLOCK),
    .I_ARCACHE(buf_dram_manage_ARCACHE),
    .I_ARQOS(buf_dram_manage_ARQOS),
    .I_ARPROT(buf_dram_manage_ARPROT),
    .I_ARUSER(buf_dram_manage_ARUSER),
    .I_ARBURST(buf_dram_manage_ARBURST),
    .I_ARREGION(buf_dram_manage_ARREGION),
    .I_RVALID(buf_dram_manage_RVALID),
    .I_RREADY(buf_dram_manage_RREADY),
    .I_RDATA(buf_dram_manage_RDATA),
    .I_RID(buf_dram_manage_RID),
    .I_RUSER(buf_dram_manage_RUSER),
    .I_RRESP(buf_dram_manage_RRESP),
    .I_RLAST(buf_dram_manage_RLAST),
    .I_AWVALID(buf_dram_manage_AWVALID),
    .I_AWREADY(buf_dram_manage_AWREADY),
    .I_AWADDR(grp_upwards_fu_276_m_axi_buf_dram_manage_AWADDR),
    .I_AWID(grp_upwards_fu_276_m_axi_buf_dram_manage_AWID),
    .I_AWLEN(grp_upwards_fu_276_m_axi_buf_dram_manage_AWLEN),
    .I_AWSIZE(grp_upwards_fu_276_m_axi_buf_dram_manage_AWSIZE),
    .I_AWLOCK(grp_upwards_fu_276_m_axi_buf_dram_manage_AWLOCK),
    .I_AWCACHE(grp_upwards_fu_276_m_axi_buf_dram_manage_AWCACHE),
    .I_AWQOS(grp_upwards_fu_276_m_axi_buf_dram_manage_AWQOS),
    .I_AWPROT(grp_upwards_fu_276_m_axi_buf_dram_manage_AWPROT),
    .I_AWUSER(grp_upwards_fu_276_m_axi_buf_dram_manage_AWUSER),
    .I_AWBURST(grp_upwards_fu_276_m_axi_buf_dram_manage_AWBURST),
    .I_AWREGION(grp_upwards_fu_276_m_axi_buf_dram_manage_AWREGION),
    .I_WVALID(buf_dram_manage_WVALID),
    .I_WREADY(buf_dram_manage_WREADY),
    .I_WDATA(grp_upwards_fu_276_m_axi_buf_dram_manage_WDATA),
    .I_WID(grp_upwards_fu_276_m_axi_buf_dram_manage_WID),
    .I_WUSER(grp_upwards_fu_276_m_axi_buf_dram_manage_WUSER),
    .I_WLAST(grp_upwards_fu_276_m_axi_buf_dram_manage_WLAST),
    .I_WSTRB(grp_upwards_fu_276_m_axi_buf_dram_manage_WSTRB),
    .I_BVALID(buf_dram_manage_BVALID),
    .I_BREADY(buf_dram_manage_BREADY),
    .I_BRESP(buf_dram_manage_BRESP),
    .I_BID(buf_dram_manage_BID),
    .I_BUSER(buf_dram_manage_BUSER)
);

execute_upwards grp_upwards_fu_276(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_upwards_fu_276_ap_start),
    .ap_done(grp_upwards_fu_276_ap_done),
    .ap_idle(grp_upwards_fu_276_ap_idle),
    .ap_ready(grp_upwards_fu_276_ap_ready),
    .m_axi_buf_dram_manage_AWVALID(grp_upwards_fu_276_m_axi_buf_dram_manage_AWVALID),
    .m_axi_buf_dram_manage_AWREADY(buf_dram_manage_AWREADY),
    .m_axi_buf_dram_manage_AWADDR(grp_upwards_fu_276_m_axi_buf_dram_manage_AWADDR),
    .m_axi_buf_dram_manage_AWID(grp_upwards_fu_276_m_axi_buf_dram_manage_AWID),
    .m_axi_buf_dram_manage_AWLEN(grp_upwards_fu_276_m_axi_buf_dram_manage_AWLEN),
    .m_axi_buf_dram_manage_AWSIZE(grp_upwards_fu_276_m_axi_buf_dram_manage_AWSIZE),
    .m_axi_buf_dram_manage_AWBURST(grp_upwards_fu_276_m_axi_buf_dram_manage_AWBURST),
    .m_axi_buf_dram_manage_AWLOCK(grp_upwards_fu_276_m_axi_buf_dram_manage_AWLOCK),
    .m_axi_buf_dram_manage_AWCACHE(grp_upwards_fu_276_m_axi_buf_dram_manage_AWCACHE),
    .m_axi_buf_dram_manage_AWPROT(grp_upwards_fu_276_m_axi_buf_dram_manage_AWPROT),
    .m_axi_buf_dram_manage_AWQOS(grp_upwards_fu_276_m_axi_buf_dram_manage_AWQOS),
    .m_axi_buf_dram_manage_AWREGION(grp_upwards_fu_276_m_axi_buf_dram_manage_AWREGION),
    .m_axi_buf_dram_manage_AWUSER(grp_upwards_fu_276_m_axi_buf_dram_manage_AWUSER),
    .m_axi_buf_dram_manage_WVALID(grp_upwards_fu_276_m_axi_buf_dram_manage_WVALID),
    .m_axi_buf_dram_manage_WREADY(buf_dram_manage_WREADY),
    .m_axi_buf_dram_manage_WDATA(grp_upwards_fu_276_m_axi_buf_dram_manage_WDATA),
    .m_axi_buf_dram_manage_WSTRB(grp_upwards_fu_276_m_axi_buf_dram_manage_WSTRB),
    .m_axi_buf_dram_manage_WLAST(grp_upwards_fu_276_m_axi_buf_dram_manage_WLAST),
    .m_axi_buf_dram_manage_WID(grp_upwards_fu_276_m_axi_buf_dram_manage_WID),
    .m_axi_buf_dram_manage_WUSER(grp_upwards_fu_276_m_axi_buf_dram_manage_WUSER),
    .m_axi_buf_dram_manage_ARVALID(grp_upwards_fu_276_m_axi_buf_dram_manage_ARVALID),
    .m_axi_buf_dram_manage_ARREADY(buf_dram_manage_ARREADY),
    .m_axi_buf_dram_manage_ARADDR(grp_upwards_fu_276_m_axi_buf_dram_manage_ARADDR),
    .m_axi_buf_dram_manage_ARID(grp_upwards_fu_276_m_axi_buf_dram_manage_ARID),
    .m_axi_buf_dram_manage_ARLEN(grp_upwards_fu_276_m_axi_buf_dram_manage_ARLEN),
    .m_axi_buf_dram_manage_ARSIZE(grp_upwards_fu_276_m_axi_buf_dram_manage_ARSIZE),
    .m_axi_buf_dram_manage_ARBURST(grp_upwards_fu_276_m_axi_buf_dram_manage_ARBURST),
    .m_axi_buf_dram_manage_ARLOCK(grp_upwards_fu_276_m_axi_buf_dram_manage_ARLOCK),
    .m_axi_buf_dram_manage_ARCACHE(grp_upwards_fu_276_m_axi_buf_dram_manage_ARCACHE),
    .m_axi_buf_dram_manage_ARPROT(grp_upwards_fu_276_m_axi_buf_dram_manage_ARPROT),
    .m_axi_buf_dram_manage_ARQOS(grp_upwards_fu_276_m_axi_buf_dram_manage_ARQOS),
    .m_axi_buf_dram_manage_ARREGION(grp_upwards_fu_276_m_axi_buf_dram_manage_ARREGION),
    .m_axi_buf_dram_manage_ARUSER(grp_upwards_fu_276_m_axi_buf_dram_manage_ARUSER),
    .m_axi_buf_dram_manage_RVALID(buf_dram_manage_RVALID),
    .m_axi_buf_dram_manage_RREADY(grp_upwards_fu_276_m_axi_buf_dram_manage_RREADY),
    .m_axi_buf_dram_manage_RDATA(buf_dram_manage_RDATA),
    .m_axi_buf_dram_manage_RLAST(buf_dram_manage_RLAST),
    .m_axi_buf_dram_manage_RID(buf_dram_manage_RID),
    .m_axi_buf_dram_manage_RUSER(buf_dram_manage_RUSER),
    .m_axi_buf_dram_manage_RRESP(buf_dram_manage_RRESP),
    .m_axi_buf_dram_manage_BVALID(buf_dram_manage_BVALID),
    .m_axi_buf_dram_manage_BREADY(grp_upwards_fu_276_m_axi_buf_dram_manage_BREADY),
    .m_axi_buf_dram_manage_BRESP(buf_dram_manage_BRESP),
    .m_axi_buf_dram_manage_BID(buf_dram_manage_BID),
    .m_axi_buf_dram_manage_BUSER(buf_dram_manage_BUSER),
    .port_in_op_read(grp_upwards_fu_276_port_in_op_read),
    .port_in_address_read(grp_upwards_fu_276_port_in_address_read),
    .port_in_nodeindex_read(grp_upwards_fu_276_port_in_nodeindex_read),
    .port_in_broindex_read(grp_upwards_fu_276_port_in_broindex_read),
    .port_in_merge_index_read(grp_upwards_fu_276_port_in_merge_index_read),
    .port_in_merge_length_read(grp_upwards_fu_276_port_in_merge_length_read),
    .port_in_fb_index_read(grp_upwards_fu_276_port_in_fb_index_read),
    .port_in_fb_length_read(grp_upwards_fu_276_port_in_fb_length_read),
    .port_in_node_max_fb_length_read(grp_upwards_fu_276_port_in_node_max_fb_length_read),
    .port_in_level_read(grp_upwards_fu_276_port_in_level_read),
    .port_cross_in_nodeindex_read(grp_upwards_fu_276_port_cross_in_nodeindex_read),
    .port_cross_in_broindex_read(grp_upwards_fu_276_port_cross_in_broindex_read),
    .port_cross_in_node_num_read(grp_upwards_fu_276_port_cross_in_node_num_read),
    .port_cross_in_node_next_free_offset_read(grp_upwards_fu_276_port_cross_in_node_next_free_offset_read),
    .port_cross_in_node_mix_array_address0(grp_upwards_fu_276_port_cross_in_node_mix_array_address0),
    .port_cross_in_node_mix_array_ce0(grp_upwards_fu_276_port_cross_in_node_mix_array_ce0),
    .port_cross_in_node_mix_array_we0(grp_upwards_fu_276_port_cross_in_node_mix_array_we0),
    .port_cross_in_node_mix_array_d0(grp_upwards_fu_276_port_cross_in_node_mix_array_d0),
    .port_cross_in_node_mix_array_q0(grp_upwards_fu_276_port_cross_in_node_mix_array_q0),
    .port_cross_in_node_mix_array_address1(grp_upwards_fu_276_port_cross_in_node_mix_array_address1),
    .port_cross_in_node_mix_array_ce1(grp_upwards_fu_276_port_cross_in_node_mix_array_ce1),
    .port_cross_in_node_mix_array_q1(grp_upwards_fu_276_port_cross_in_node_mix_array_q1),
    .port_cross_in_node_mix_array1_address0(grp_upwards_fu_276_port_cross_in_node_mix_array1_address0),
    .port_cross_in_node_mix_array1_ce0(grp_upwards_fu_276_port_cross_in_node_mix_array1_ce0),
    .port_cross_in_node_mix_array1_we0(grp_upwards_fu_276_port_cross_in_node_mix_array1_we0),
    .port_cross_in_node_mix_array1_d0(grp_upwards_fu_276_port_cross_in_node_mix_array1_d0),
    .port_cross_in_node_mix_array1_q0(grp_upwards_fu_276_port_cross_in_node_mix_array1_q0),
    .port_cross_in_node_mix_array1_address1(grp_upwards_fu_276_port_cross_in_node_mix_array1_address1),
    .port_cross_in_node_mix_array1_ce1(grp_upwards_fu_276_port_cross_in_node_mix_array1_ce1),
    .port_cross_in_node_mix_array1_q1(grp_upwards_fu_276_port_cross_in_node_mix_array1_q1),
    .port_cross_in_node_mix_array2_address0(grp_upwards_fu_276_port_cross_in_node_mix_array2_address0),
    .port_cross_in_node_mix_array2_ce0(grp_upwards_fu_276_port_cross_in_node_mix_array2_ce0),
    .port_cross_in_node_mix_array2_we0(grp_upwards_fu_276_port_cross_in_node_mix_array2_we0),
    .port_cross_in_node_mix_array2_d0(grp_upwards_fu_276_port_cross_in_node_mix_array2_d0),
    .port_cross_in_node_mix_array2_q0(grp_upwards_fu_276_port_cross_in_node_mix_array2_q0),
    .port_cross_in_node_mix_array2_address1(grp_upwards_fu_276_port_cross_in_node_mix_array2_address1),
    .port_cross_in_node_mix_array2_ce1(grp_upwards_fu_276_port_cross_in_node_mix_array2_ce1),
    .port_cross_in_node_mix_array2_q1(grp_upwards_fu_276_port_cross_in_node_mix_array2_q1),
    .port_cross_in_node_mix_array3_address0(grp_upwards_fu_276_port_cross_in_node_mix_array3_address0),
    .port_cross_in_node_mix_array3_ce0(grp_upwards_fu_276_port_cross_in_node_mix_array3_ce0),
    .port_cross_in_node_mix_array3_we0(grp_upwards_fu_276_port_cross_in_node_mix_array3_we0),
    .port_cross_in_node_mix_array3_d0(grp_upwards_fu_276_port_cross_in_node_mix_array3_d0),
    .port_cross_in_node_mix_array3_q0(grp_upwards_fu_276_port_cross_in_node_mix_array3_q0),
    .port_cross_in_node_mix_array3_address1(grp_upwards_fu_276_port_cross_in_node_mix_array3_address1),
    .port_cross_in_node_mix_array3_ce1(grp_upwards_fu_276_port_cross_in_node_mix_array3_ce1),
    .port_cross_in_node_mix_array3_q1(grp_upwards_fu_276_port_cross_in_node_mix_array3_q1),
    .port_cross_in_node_mix_array4_address0(grp_upwards_fu_276_port_cross_in_node_mix_array4_address0),
    .port_cross_in_node_mix_array4_ce0(grp_upwards_fu_276_port_cross_in_node_mix_array4_ce0),
    .port_cross_in_node_mix_array4_we0(grp_upwards_fu_276_port_cross_in_node_mix_array4_we0),
    .port_cross_in_node_mix_array4_d0(grp_upwards_fu_276_port_cross_in_node_mix_array4_d0),
    .port_cross_in_node_mix_array4_q0(grp_upwards_fu_276_port_cross_in_node_mix_array4_q0),
    .port_cross_in_node_mix_array4_address1(grp_upwards_fu_276_port_cross_in_node_mix_array4_address1),
    .port_cross_in_node_mix_array4_ce1(grp_upwards_fu_276_port_cross_in_node_mix_array4_ce1),
    .port_cross_in_node_mix_array4_q1(grp_upwards_fu_276_port_cross_in_node_mix_array4_q1),
    .port_cross_in_node_mix_array5_address0(grp_upwards_fu_276_port_cross_in_node_mix_array5_address0),
    .port_cross_in_node_mix_array5_ce0(grp_upwards_fu_276_port_cross_in_node_mix_array5_ce0),
    .port_cross_in_node_mix_array5_we0(grp_upwards_fu_276_port_cross_in_node_mix_array5_we0),
    .port_cross_in_node_mix_array5_d0(grp_upwards_fu_276_port_cross_in_node_mix_array5_d0),
    .port_cross_in_node_mix_array5_q0(grp_upwards_fu_276_port_cross_in_node_mix_array5_q0),
    .port_cross_in_node_mix_array5_address1(grp_upwards_fu_276_port_cross_in_node_mix_array5_address1),
    .port_cross_in_node_mix_array5_ce1(grp_upwards_fu_276_port_cross_in_node_mix_array5_ce1),
    .port_cross_in_node_mix_array5_q1(grp_upwards_fu_276_port_cross_in_node_mix_array5_q1),
    .port_cross_in_node_mix_array6_address0(grp_upwards_fu_276_port_cross_in_node_mix_array6_address0),
    .port_cross_in_node_mix_array6_ce0(grp_upwards_fu_276_port_cross_in_node_mix_array6_ce0),
    .port_cross_in_node_mix_array6_we0(grp_upwards_fu_276_port_cross_in_node_mix_array6_we0),
    .port_cross_in_node_mix_array6_d0(grp_upwards_fu_276_port_cross_in_node_mix_array6_d0),
    .port_cross_in_node_mix_array6_q0(grp_upwards_fu_276_port_cross_in_node_mix_array6_q0),
    .port_cross_in_node_mix_array6_address1(grp_upwards_fu_276_port_cross_in_node_mix_array6_address1),
    .port_cross_in_node_mix_array6_ce1(grp_upwards_fu_276_port_cross_in_node_mix_array6_ce1),
    .port_cross_in_node_mix_array6_q1(grp_upwards_fu_276_port_cross_in_node_mix_array6_q1),
    .port_cross_in_node_mix_array7_address0(grp_upwards_fu_276_port_cross_in_node_mix_array7_address0),
    .port_cross_in_node_mix_array7_ce0(grp_upwards_fu_276_port_cross_in_node_mix_array7_ce0),
    .port_cross_in_node_mix_array7_we0(grp_upwards_fu_276_port_cross_in_node_mix_array7_we0),
    .port_cross_in_node_mix_array7_d0(grp_upwards_fu_276_port_cross_in_node_mix_array7_d0),
    .port_cross_in_node_mix_array7_q0(grp_upwards_fu_276_port_cross_in_node_mix_array7_q0),
    .port_cross_in_node_mix_array7_address1(grp_upwards_fu_276_port_cross_in_node_mix_array7_address1),
    .port_cross_in_node_mix_array7_ce1(grp_upwards_fu_276_port_cross_in_node_mix_array7_ce1),
    .port_cross_in_node_mix_array7_q1(grp_upwards_fu_276_port_cross_in_node_mix_array7_q1),
    .port_cross_in_node_max_fb_index_read(grp_upwards_fu_276_port_cross_in_node_max_fb_index_read),
    .port_cross_in_node_max_fb_length_read(grp_upwards_fu_276_port_cross_in_node_max_fb_length_read),
    .port_cross_in_node_max_subgraph_index_read(grp_upwards_fu_276_port_cross_in_node_max_subgraph_index_read),
    .port_cross_in_node_max_subgraph_length_read(grp_upwards_fu_276_port_cross_in_node_max_subgraph_length_read),
    .port_cross_in_pos_read(grp_upwards_fu_276_port_cross_in_pos_read),
    .port_cross_in_fb_index_read(grp_upwards_fu_276_port_cross_in_fb_index_read),
    .port_cross_in_fb_length_read(grp_upwards_fu_276_port_cross_in_fb_length_read),
    .p_read55(grp_upwards_fu_276_p_read55),
    .graphlevel_i(graphlevel),
    .graphlevel_o(grp_upwards_fu_276_graphlevel_o),
    .graphlevel_o_ap_vld(grp_upwards_fu_276_graphlevel_o_ap_vld),
    .ap_return_0(grp_upwards_fu_276_ap_return_0),
    .ap_return_1(grp_upwards_fu_276_ap_return_1),
    .ap_return_2(grp_upwards_fu_276_ap_return_2),
    .ap_return_3(grp_upwards_fu_276_ap_return_3),
    .ap_return_4(grp_upwards_fu_276_ap_return_4),
    .ap_return_5(grp_upwards_fu_276_ap_return_5),
    .ap_return_6(grp_upwards_fu_276_ap_return_6),
    .ap_return_7(grp_upwards_fu_276_ap_return_7),
    .ap_return_8(grp_upwards_fu_276_ap_return_8),
    .ap_return_9(grp_upwards_fu_276_ap_return_9),
    .ap_return_10(grp_upwards_fu_276_ap_return_10),
    .ap_return_11(grp_upwards_fu_276_ap_return_11),
    .ap_return_12(grp_upwards_fu_276_ap_return_12),
    .ap_return_13(grp_upwards_fu_276_ap_return_13),
    .ap_return_14(grp_upwards_fu_276_ap_return_14),
    .ap_return_15(grp_upwards_fu_276_ap_return_15)
);

execute_downwards grp_downwards_fu_351(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_downwards_fu_351_ap_start),
    .ap_done(grp_downwards_fu_351_ap_done),
    .ap_idle(grp_downwards_fu_351_ap_idle),
    .ap_ready(grp_downwards_fu_351_ap_ready),
    .m_axi_buf_dram_manage_AWVALID(grp_downwards_fu_351_m_axi_buf_dram_manage_AWVALID),
    .m_axi_buf_dram_manage_AWREADY(1'b0),
    .m_axi_buf_dram_manage_AWADDR(grp_downwards_fu_351_m_axi_buf_dram_manage_AWADDR),
    .m_axi_buf_dram_manage_AWID(grp_downwards_fu_351_m_axi_buf_dram_manage_AWID),
    .m_axi_buf_dram_manage_AWLEN(grp_downwards_fu_351_m_axi_buf_dram_manage_AWLEN),
    .m_axi_buf_dram_manage_AWSIZE(grp_downwards_fu_351_m_axi_buf_dram_manage_AWSIZE),
    .m_axi_buf_dram_manage_AWBURST(grp_downwards_fu_351_m_axi_buf_dram_manage_AWBURST),
    .m_axi_buf_dram_manage_AWLOCK(grp_downwards_fu_351_m_axi_buf_dram_manage_AWLOCK),
    .m_axi_buf_dram_manage_AWCACHE(grp_downwards_fu_351_m_axi_buf_dram_manage_AWCACHE),
    .m_axi_buf_dram_manage_AWPROT(grp_downwards_fu_351_m_axi_buf_dram_manage_AWPROT),
    .m_axi_buf_dram_manage_AWQOS(grp_downwards_fu_351_m_axi_buf_dram_manage_AWQOS),
    .m_axi_buf_dram_manage_AWREGION(grp_downwards_fu_351_m_axi_buf_dram_manage_AWREGION),
    .m_axi_buf_dram_manage_AWUSER(grp_downwards_fu_351_m_axi_buf_dram_manage_AWUSER),
    .m_axi_buf_dram_manage_WVALID(grp_downwards_fu_351_m_axi_buf_dram_manage_WVALID),
    .m_axi_buf_dram_manage_WREADY(1'b0),
    .m_axi_buf_dram_manage_WDATA(grp_downwards_fu_351_m_axi_buf_dram_manage_WDATA),
    .m_axi_buf_dram_manage_WSTRB(grp_downwards_fu_351_m_axi_buf_dram_manage_WSTRB),
    .m_axi_buf_dram_manage_WLAST(grp_downwards_fu_351_m_axi_buf_dram_manage_WLAST),
    .m_axi_buf_dram_manage_WID(grp_downwards_fu_351_m_axi_buf_dram_manage_WID),
    .m_axi_buf_dram_manage_WUSER(grp_downwards_fu_351_m_axi_buf_dram_manage_WUSER),
    .m_axi_buf_dram_manage_ARVALID(grp_downwards_fu_351_m_axi_buf_dram_manage_ARVALID),
    .m_axi_buf_dram_manage_ARREADY(buf_dram_manage_ARREADY),
    .m_axi_buf_dram_manage_ARADDR(grp_downwards_fu_351_m_axi_buf_dram_manage_ARADDR),
    .m_axi_buf_dram_manage_ARID(grp_downwards_fu_351_m_axi_buf_dram_manage_ARID),
    .m_axi_buf_dram_manage_ARLEN(grp_downwards_fu_351_m_axi_buf_dram_manage_ARLEN),
    .m_axi_buf_dram_manage_ARSIZE(grp_downwards_fu_351_m_axi_buf_dram_manage_ARSIZE),
    .m_axi_buf_dram_manage_ARBURST(grp_downwards_fu_351_m_axi_buf_dram_manage_ARBURST),
    .m_axi_buf_dram_manage_ARLOCK(grp_downwards_fu_351_m_axi_buf_dram_manage_ARLOCK),
    .m_axi_buf_dram_manage_ARCACHE(grp_downwards_fu_351_m_axi_buf_dram_manage_ARCACHE),
    .m_axi_buf_dram_manage_ARPROT(grp_downwards_fu_351_m_axi_buf_dram_manage_ARPROT),
    .m_axi_buf_dram_manage_ARQOS(grp_downwards_fu_351_m_axi_buf_dram_manage_ARQOS),
    .m_axi_buf_dram_manage_ARREGION(grp_downwards_fu_351_m_axi_buf_dram_manage_ARREGION),
    .m_axi_buf_dram_manage_ARUSER(grp_downwards_fu_351_m_axi_buf_dram_manage_ARUSER),
    .m_axi_buf_dram_manage_RVALID(buf_dram_manage_RVALID),
    .m_axi_buf_dram_manage_RREADY(grp_downwards_fu_351_m_axi_buf_dram_manage_RREADY),
    .m_axi_buf_dram_manage_RDATA(buf_dram_manage_RDATA),
    .m_axi_buf_dram_manage_RLAST(buf_dram_manage_RLAST),
    .m_axi_buf_dram_manage_RID(buf_dram_manage_RID),
    .m_axi_buf_dram_manage_RUSER(buf_dram_manage_RUSER),
    .m_axi_buf_dram_manage_RRESP(buf_dram_manage_RRESP),
    .m_axi_buf_dram_manage_BVALID(1'b0),
    .m_axi_buf_dram_manage_BREADY(grp_downwards_fu_351_m_axi_buf_dram_manage_BREADY),
    .m_axi_buf_dram_manage_BRESP(2'd0),
    .m_axi_buf_dram_manage_BID(1'd0),
    .m_axi_buf_dram_manage_BUSER(1'd0),
    .port_in_op_read(grp_downwards_fu_351_port_in_op_read),
    .port_in_address_read(grp_downwards_fu_351_port_in_address_read),
    .port_in_length_read(grp_downwards_fu_351_port_in_length_read),
    .port_in_nodeindex_read(grp_downwards_fu_351_port_in_nodeindex_read),
    .port_in_broindex_read(grp_downwards_fu_351_port_in_broindex_read),
    .port_in_fb_index_read(grp_downwards_fu_351_port_in_fb_index_read),
    .port_in_fb_length_read(grp_downwards_fu_351_port_in_fb_length_read),
    .port_in_level_read(grp_downwards_fu_351_port_in_level_read),
    .port_out_fb_index_read(grp_downwards_fu_351_port_out_fb_index_read),
    .port_out_fb_length_read(grp_downwards_fu_351_port_out_fb_length_read),
    .port_cross_out_node_num_read(grp_downwards_fu_351_port_cross_out_node_num_read),
    .port_cross_out_node_next_free_offset_read(grp_downwards_fu_351_port_cross_out_node_next_free_offset_read),
    .port_cross_out_mix_array_mix_array_address0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array_address0),
    .port_cross_out_mix_array_mix_array_ce0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array_ce0),
    .port_cross_out_mix_array_mix_array_we0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array_we0),
    .port_cross_out_mix_array_mix_array_d0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array_d0),
    .port_cross_out_mix_array_mix_array_q0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array_q0),
    .port_cross_out_mix_array_mix_array1_address0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array1_address0),
    .port_cross_out_mix_array_mix_array1_ce0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array1_ce0),
    .port_cross_out_mix_array_mix_array1_we0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array1_we0),
    .port_cross_out_mix_array_mix_array1_d0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array1_d0),
    .port_cross_out_mix_array_mix_array2_address0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_address0),
    .port_cross_out_mix_array_mix_array2_ce0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_ce0),
    .port_cross_out_mix_array_mix_array2_we0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_we0),
    .port_cross_out_mix_array_mix_array2_d0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_d0),
    .port_cross_out_mix_array_mix_array2_q0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_q0),
    .port_cross_out_mix_array_mix_array3_address0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_address0),
    .port_cross_out_mix_array_mix_array3_ce0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_ce0),
    .port_cross_out_mix_array_mix_array3_we0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_we0),
    .port_cross_out_mix_array_mix_array3_d0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_d0),
    .port_cross_out_mix_array_mix_array3_q0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_q0),
    .port_cross_out_mix_array_mix_array4_address0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_address0),
    .port_cross_out_mix_array_mix_array4_ce0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_ce0),
    .port_cross_out_mix_array_mix_array4_we0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_we0),
    .port_cross_out_mix_array_mix_array4_d0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_d0),
    .port_cross_out_mix_array_mix_array4_q0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_q0),
    .port_cross_out_mix_array_mix_array5_address0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array5_address0),
    .port_cross_out_mix_array_mix_array5_ce0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array5_ce0),
    .port_cross_out_mix_array_mix_array5_we0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array5_we0),
    .port_cross_out_mix_array_mix_array5_d0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array5_d0),
    .port_cross_out_mix_array_mix_array6_address0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_address0),
    .port_cross_out_mix_array_mix_array6_ce0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_ce0),
    .port_cross_out_mix_array_mix_array6_we0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_we0),
    .port_cross_out_mix_array_mix_array6_d0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_d0),
    .port_cross_out_mix_array_mix_array6_q0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_q0),
    .port_cross_out_mix_array_mix_array7_address0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_address0),
    .port_cross_out_mix_array_mix_array7_ce0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_ce0),
    .port_cross_out_mix_array_mix_array7_we0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_we0),
    .port_cross_out_mix_array_mix_array7_d0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_d0),
    .port_cross_out_mix_array_mix_array7_q0(grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_q0),
    .port_cross_out_mix_array_mix_array7_address1(grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_address1),
    .port_cross_out_mix_array_mix_array7_ce1(grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_ce1),
    .port_cross_out_mix_array_mix_array7_we1(grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_we1),
    .port_cross_out_mix_array_mix_array7_d1(grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_d1),
    .port_cross_out_mix_array_mix_array7_q1(grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_q1),
    .port_cross_out_node_max_fb_index_read(grp_downwards_fu_351_port_cross_out_node_max_fb_index_read),
    .port_cross_out_node_max_fb_length_read(grp_downwards_fu_351_port_cross_out_node_max_fb_length_read),
    .port_cross_out_node_max_subgraph_index_read(grp_downwards_fu_351_port_cross_out_node_max_subgraph_index_read),
    .port_cross_out_node_max_subgraph_length_read(grp_downwards_fu_351_port_cross_out_node_max_subgraph_length_read),
    .graphlevel(graphlevel),
    .ap_return_0(grp_downwards_fu_351_ap_return_0),
    .ap_return_1(grp_downwards_fu_351_ap_return_1),
    .ap_return_2(grp_downwards_fu_351_ap_return_2),
    .ap_return_3(grp_downwards_fu_351_ap_return_3),
    .ap_return_4(grp_downwards_fu_351_ap_return_4),
    .ap_return_5(grp_downwards_fu_351_ap_return_5),
    .ap_return_6(grp_downwards_fu_351_ap_return_6),
    .ap_return_7(grp_downwards_fu_351_ap_return_7),
    .ap_return_8(grp_downwards_fu_351_ap_return_8),
    .ap_return_9(grp_downwards_fu_351_ap_return_9),
    .ap_return_10(grp_downwards_fu_351_ap_return_10),
    .ap_return_11(grp_downwards_fu_351_ap_return_11),
    .ap_return_12(grp_downwards_fu_351_ap_return_12),
    .ap_return_13(grp_downwards_fu_351_ap_return_13),
    .ap_return_14(grp_downwards_fu_351_ap_return_14),
    .ap_return_15(grp_downwards_fu_351_ap_return_15),
    .ap_return_16(grp_downwards_fu_351_ap_return_16),
    .ap_return_17(grp_downwards_fu_351_ap_return_17),
    .ap_return_18(grp_downwards_fu_351_ap_return_18),
    .ap_return_19(grp_downwards_fu_351_ap_return_19)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_downwards_fu_351_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state7) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
            grp_downwards_fu_351_ap_start_reg <= 1'b1;
        end else if ((grp_downwards_fu_351_ap_ready == 1'b1)) begin
            grp_downwards_fu_351_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_upwards_fu_276_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state15))) begin
            grp_upwards_fu_276_ap_start_reg <= 1'b1;
        end else if ((grp_upwards_fu_276_ap_ready == 1'b1)) begin
            grp_upwards_fu_276_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        cross1_node_max_fb_index <= grp_downwards_fu_351_ap_return_12;
    end else if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        cross1_node_max_fb_index <= grp_upwards_fu_276_ap_return_10;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        cross1_node_max_fb_length <= grp_downwards_fu_351_ap_return_13;
    end else if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        cross1_node_max_fb_length <= grp_upwards_fu_276_ap_return_11;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        cross1_node_max_subgraph_index <= grp_downwards_fu_351_ap_return_14;
    end else if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        cross1_node_max_subgraph_index <= grp_upwards_fu_276_ap_return_12;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        cross1_node_max_subgraph_length <= grp_downwards_fu_351_ap_return_15;
    end else if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        cross1_node_max_subgraph_length <= grp_upwards_fu_276_ap_return_13;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        cross1_node_next_free_offset <= grp_downwards_fu_351_ap_return_11;
    end else if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        cross1_node_next_free_offset <= grp_upwards_fu_276_ap_return_15;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        cross1_node_num <= grp_downwards_fu_351_ap_return_10;
    end else if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        cross1_node_num <= grp_upwards_fu_276_ap_return_14;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        cross2_node_max_fb_index <= grp_downwards_fu_351_ap_return_12;
    end else if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
        cross2_node_max_fb_index <= grp_upwards_fu_276_ap_return_10;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        cross2_node_max_fb_length <= grp_downwards_fu_351_ap_return_13;
    end else if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
        cross2_node_max_fb_length <= grp_upwards_fu_276_ap_return_11;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        cross2_node_max_subgraph_index <= grp_downwards_fu_351_ap_return_14;
    end else if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
        cross2_node_max_subgraph_index <= grp_upwards_fu_276_ap_return_12;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        cross2_node_max_subgraph_length <= grp_downwards_fu_351_ap_return_15;
    end else if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
        cross2_node_max_subgraph_length <= grp_upwards_fu_276_ap_return_13;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        cross2_node_next_free_offset <= grp_downwards_fu_351_ap_return_11;
    end else if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
        cross2_node_next_free_offset <= grp_upwards_fu_276_ap_return_15;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        cross2_node_num <= grp_downwards_fu_351_ap_return_10;
    end else if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
        cross2_node_num <= grp_upwards_fu_276_ap_return_14;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        cross3_node_max_fb_index <= grp_downwards_fu_351_ap_return_12;
    end else if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
        cross3_node_max_fb_index <= grp_upwards_fu_276_ap_return_10;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        cross3_node_max_fb_length <= grp_downwards_fu_351_ap_return_13;
    end else if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
        cross3_node_max_fb_length <= grp_upwards_fu_276_ap_return_11;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        cross3_node_max_subgraph_index <= grp_downwards_fu_351_ap_return_14;
    end else if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
        cross3_node_max_subgraph_index <= grp_upwards_fu_276_ap_return_12;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        cross3_node_max_subgraph_length <= grp_downwards_fu_351_ap_return_15;
    end else if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
        cross3_node_max_subgraph_length <= grp_upwards_fu_276_ap_return_13;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        cross3_node_next_free_offset <= grp_downwards_fu_351_ap_return_11;
    end else if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
        cross3_node_next_free_offset <= grp_upwards_fu_276_ap_return_15;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        cross3_node_num <= grp_downwards_fu_351_ap_return_10;
    end else if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
        cross3_node_num <= grp_upwards_fu_276_ap_return_14;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        cross4_node_max_fb_index <= grp_downwards_fu_351_ap_return_12;
    end else if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
        cross4_node_max_fb_index <= grp_upwards_fu_276_ap_return_10;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        cross4_node_max_fb_length <= grp_downwards_fu_351_ap_return_13;
    end else if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
        cross4_node_max_fb_length <= grp_upwards_fu_276_ap_return_11;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        cross4_node_max_subgraph_index <= grp_downwards_fu_351_ap_return_14;
    end else if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
        cross4_node_max_subgraph_index <= grp_upwards_fu_276_ap_return_12;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        cross4_node_max_subgraph_length <= grp_downwards_fu_351_ap_return_15;
    end else if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
        cross4_node_max_subgraph_length <= grp_upwards_fu_276_ap_return_13;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        cross4_node_next_free_offset <= grp_downwards_fu_351_ap_return_11;
    end else if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
        cross4_node_next_free_offset <= grp_upwards_fu_276_ap_return_15;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        cross4_node_num <= grp_downwards_fu_351_ap_return_10;
    end else if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
        cross4_node_num <= grp_upwards_fu_276_ap_return_14;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_broindex_reg_1868 <= grp_downwards_fu_351_ap_return_9;
        cross1_dir_V_reg_1918 <= grp_downwards_fu_351_ap_return_19;
        cross1_fb_index_reg_1908 <= grp_downwards_fu_351_ap_return_17;
        cross1_fb_length_reg_1913 <= grp_downwards_fu_351_ap_return_18;
        cross1_node_max_fb_index_ret4_reg_1883 <= grp_downwards_fu_351_ap_return_12;
        cross1_node_max_fb_length_ret5_reg_1888 <= grp_downwards_fu_351_ap_return_13;
        cross1_node_max_subgraph_index_ret6_reg_1893 <= grp_downwards_fu_351_ap_return_14;
        cross1_node_max_subgraph_length_ret7_reg_1898 <= grp_downwards_fu_351_ap_return_15;
        cross1_node_next_free_offset_ret_reg_1878 <= grp_downwards_fu_351_ap_return_11;
        cross1_node_num_ret_reg_1873 <= grp_downwards_fu_351_ap_return_10;
        cross1_nodeindex_reg_1863 <= grp_downwards_fu_351_ap_return_8;
        cross1_pos_reg_1903 <= grp_downwards_fu_351_ap_return_16;
        icmp_ln1616_3_reg_1928 <= icmp_ln1616_3_fu_1414_p2;
        icmp_ln1616_4_reg_1934 <= icmp_ln1616_4_fu_1428_p2;
        level_next_reg_1923 <= level_next_fu_1264_p2;
        merge_index_next_3_reg_1945 <= merge_index_next_3_fu_1466_p3;
        merge_length_next_3_reg_1950 <= merge_length_next_3_fu_1498_p3;
        opcode_next_5_reg_1940 <= opcode_next_5_fu_1434_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        cross2_broindex <= grp_downwards_fu_351_ap_return_9;
        cross2_dir_V <= grp_downwards_fu_351_ap_return_19;
        cross2_fb_index <= grp_downwards_fu_351_ap_return_17;
        cross2_fb_length <= grp_downwards_fu_351_ap_return_18;
        cross2_nodeindex <= grp_downwards_fu_351_ap_return_8;
        cross2_pos <= grp_downwards_fu_351_ap_return_16;
        down1_fb_index <= grp_downwards_fu_351_ap_return_5;
        down1_fb_length <= grp_downwards_fu_351_ap_return_6;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        cross3_broindex <= grp_downwards_fu_351_ap_return_9;
        cross3_dir_V <= grp_downwards_fu_351_ap_return_19;
        cross3_fb_index <= grp_downwards_fu_351_ap_return_17;
        cross3_fb_length <= grp_downwards_fu_351_ap_return_18;
        cross3_nodeindex <= grp_downwards_fu_351_ap_return_8;
        cross3_pos <= grp_downwards_fu_351_ap_return_16;
        down2_fb_index <= grp_downwards_fu_351_ap_return_5;
        down2_fb_length <= grp_downwards_fu_351_ap_return_6;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        cross4_broindex <= grp_downwards_fu_351_ap_return_9;
        cross4_dir_V <= grp_downwards_fu_351_ap_return_19;
        cross4_fb_index <= grp_downwards_fu_351_ap_return_17;
        cross4_fb_length <= grp_downwards_fu_351_ap_return_18;
        cross4_nodeindex <= grp_downwards_fu_351_ap_return_8;
        cross4_pos <= grp_downwards_fu_351_ap_return_16;
        down3_fb_index <= grp_downwards_fu_351_ap_return_5;
        down3_fb_length <= grp_downwards_fu_351_ap_return_6;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        down0_fb_index <= grp_downwards_fu_351_ap_return_5;
        down0_fb_length <= grp_downwards_fu_351_ap_return_6;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        empty_55_reg_1965 <= empty_55_fu_1536_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        empty_56_reg_1988 <= empty_56_fu_1606_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        empty_57_reg_2011 <= empty_57_fu_1676_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        empty_reg_1798 <= empty_fu_864_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        parent_fb_index_next_8_reg_1955 <= parent_fb_index_next_8_fu_1513_p3;
        parent_fb_length_next_8_reg_1960 <= parent_fb_length_next_8_fu_1528_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state1))) begin
        reg_675 <= cross4_node_num;
        reg_681 <= cross4_node_next_free_offset;
        reg_687 <= cross4_node_max_fb_index;
        reg_693 <= cross4_node_max_fb_length;
        reg_699 <= cross4_node_max_subgraph_index;
        reg_705 <= cross4_node_max_subgraph_length;
    end
end

always @ (posedge ap_clk) begin
    if ((((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8)) | ((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)) | ((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4)) | ((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2)))) begin
        reg_711 <= grp_downwards_fu_351_ap_return_1;
        reg_717 <= grp_downwards_fu_351_ap_return_2;
    end
end

always @ (posedge ap_clk) begin
    if ((((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)) | ((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4)) | ((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2)))) begin
        reg_722 <= grp_downwards_fu_351_ap_return_3;
        reg_727 <= grp_downwards_fu_351_ap_return_4;
        reg_732 <= grp_downwards_fu_351_ap_return_5;
        reg_737 <= grp_downwards_fu_351_ap_return_6;
        reg_742 <= grp_downwards_fu_351_ap_return_7;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state3))) begin
        reg_747 <= cross3_node_num;
        reg_753 <= cross3_node_next_free_offset;
        reg_759 <= cross3_node_max_fb_index;
        reg_765 <= cross3_node_max_fb_length;
        reg_771 <= cross3_node_max_subgraph_index;
        reg_777 <= cross3_node_max_subgraph_length;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state5))) begin
        reg_783 <= cross2_node_num;
        reg_789 <= cross2_node_next_free_offset;
        reg_795 <= cross2_node_max_fb_index;
        reg_801 <= cross2_node_max_fb_length;
        reg_807 <= cross2_node_max_subgraph_index;
        reg_813 <= cross2_node_max_subgraph_length;
    end
end

always @ (posedge ap_clk) begin
    if ((((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14)) | ((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12)) | ((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        reg_819 <= grp_upwards_fu_276_ap_return_1;
        reg_824 <= grp_upwards_fu_276_ap_return_2;
        reg_829 <= grp_upwards_fu_276_ap_return_3;
        reg_834 <= grp_upwards_fu_276_ap_return_4;
        reg_839 <= grp_upwards_fu_276_ap_return_5;
        reg_844 <= grp_upwards_fu_276_ap_return_6;
        reg_849 <= grp_upwards_fu_276_ap_return_7;
        reg_854 <= grp_upwards_fu_276_ap_return_8;
        reg_859 <= grp_upwards_fu_276_ap_return_9;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
        root_node <= grp_upwards_fu_276_ap_return_2;
    end
end

always @ (posedge ap_clk) begin
    if ((((grp_upwards_fu_276_graphlevel_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state14)) | ((grp_upwards_fu_276_graphlevel_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state12)) | ((grp_upwards_fu_276_graphlevel_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state10)) | ((grp_upwards_fu_276_graphlevel_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state16)))) begin
        graphlevel <= grp_upwards_fu_276_graphlevel_o;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        trunc_ln1718_reg_1812 <= trunc_ln1718_fu_884_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        trunc_ln1719_reg_1823 <= trunc_ln1719_fu_982_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        trunc_ln1720_reg_1834 <= trunc_ln1720_fu_1080_p1;
    end
end

always @ (*) begin
    if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state1) | (1'b1 == ap_CS_fsm_state7))) begin
        buf_dram_manage_ARADDR = grp_downwards_fu_351_m_axi_buf_dram_manage_ARADDR;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_dram_manage_ARADDR = grp_upwards_fu_276_m_axi_buf_dram_manage_ARADDR;
    end else begin
        buf_dram_manage_ARADDR = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state1) | (1'b1 == ap_CS_fsm_state7))) begin
        buf_dram_manage_ARBURST = grp_downwards_fu_351_m_axi_buf_dram_manage_ARBURST;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_dram_manage_ARBURST = grp_upwards_fu_276_m_axi_buf_dram_manage_ARBURST;
    end else begin
        buf_dram_manage_ARBURST = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state1) | (1'b1 == ap_CS_fsm_state7))) begin
        buf_dram_manage_ARCACHE = grp_downwards_fu_351_m_axi_buf_dram_manage_ARCACHE;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_dram_manage_ARCACHE = grp_upwards_fu_276_m_axi_buf_dram_manage_ARCACHE;
    end else begin
        buf_dram_manage_ARCACHE = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state1) | (1'b1 == ap_CS_fsm_state7))) begin
        buf_dram_manage_ARID = grp_downwards_fu_351_m_axi_buf_dram_manage_ARID;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_dram_manage_ARID = grp_upwards_fu_276_m_axi_buf_dram_manage_ARID;
    end else begin
        buf_dram_manage_ARID = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state1) | (1'b1 == ap_CS_fsm_state7))) begin
        buf_dram_manage_ARLEN = grp_downwards_fu_351_m_axi_buf_dram_manage_ARLEN;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_dram_manage_ARLEN = grp_upwards_fu_276_m_axi_buf_dram_manage_ARLEN;
    end else begin
        buf_dram_manage_ARLEN = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state1) | (1'b1 == ap_CS_fsm_state7))) begin
        buf_dram_manage_ARLOCK = grp_downwards_fu_351_m_axi_buf_dram_manage_ARLOCK;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_dram_manage_ARLOCK = grp_upwards_fu_276_m_axi_buf_dram_manage_ARLOCK;
    end else begin
        buf_dram_manage_ARLOCK = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state1) | (1'b1 == ap_CS_fsm_state7))) begin
        buf_dram_manage_ARPROT = grp_downwards_fu_351_m_axi_buf_dram_manage_ARPROT;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_dram_manage_ARPROT = grp_upwards_fu_276_m_axi_buf_dram_manage_ARPROT;
    end else begin
        buf_dram_manage_ARPROT = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state1) | (1'b1 == ap_CS_fsm_state7))) begin
        buf_dram_manage_ARQOS = grp_downwards_fu_351_m_axi_buf_dram_manage_ARQOS;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_dram_manage_ARQOS = grp_upwards_fu_276_m_axi_buf_dram_manage_ARQOS;
    end else begin
        buf_dram_manage_ARQOS = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state1) | (1'b1 == ap_CS_fsm_state7))) begin
        buf_dram_manage_ARREGION = grp_downwards_fu_351_m_axi_buf_dram_manage_ARREGION;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_dram_manage_ARREGION = grp_upwards_fu_276_m_axi_buf_dram_manage_ARREGION;
    end else begin
        buf_dram_manage_ARREGION = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state1) | (1'b1 == ap_CS_fsm_state7))) begin
        buf_dram_manage_ARSIZE = grp_downwards_fu_351_m_axi_buf_dram_manage_ARSIZE;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_dram_manage_ARSIZE = grp_upwards_fu_276_m_axi_buf_dram_manage_ARSIZE;
    end else begin
        buf_dram_manage_ARSIZE = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state1) | (1'b1 == ap_CS_fsm_state7))) begin
        buf_dram_manage_ARUSER = grp_downwards_fu_351_m_axi_buf_dram_manage_ARUSER;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_dram_manage_ARUSER = grp_upwards_fu_276_m_axi_buf_dram_manage_ARUSER;
    end else begin
        buf_dram_manage_ARUSER = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state1) | (1'b1 == ap_CS_fsm_state7))) begin
        buf_dram_manage_ARVALID = grp_downwards_fu_351_m_axi_buf_dram_manage_ARVALID;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_dram_manage_ARVALID = grp_upwards_fu_276_m_axi_buf_dram_manage_ARVALID;
    end else begin
        buf_dram_manage_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_dram_manage_AWVALID = grp_upwards_fu_276_m_axi_buf_dram_manage_AWVALID;
    end else begin
        buf_dram_manage_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_dram_manage_BREADY = grp_upwards_fu_276_m_axi_buf_dram_manage_BREADY;
    end else begin
        buf_dram_manage_BREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state1) | (1'b1 == ap_CS_fsm_state7))) begin
        buf_dram_manage_RREADY = grp_downwards_fu_351_m_axi_buf_dram_manage_RREADY;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_dram_manage_RREADY = grp_upwards_fu_276_m_axi_buf_dram_manage_RREADY;
    end else begin
        buf_dram_manage_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16))) begin
        buf_dram_manage_WVALID = grp_upwards_fu_276_m_axi_buf_dram_manage_WVALID;
    end else begin
        buf_dram_manage_WVALID = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_0_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_0_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array_address0;
    end else begin
        cross1_node_mix_array_0_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_0_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_0_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array_ce0;
    end else begin
        cross1_node_mix_array_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_0_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array_ce1;
    end else begin
        cross1_node_mix_array_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_0_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_0_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array_d0;
    end else begin
        cross1_node_mix_array_0_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_0_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_0_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array_we0;
    end else begin
        cross1_node_mix_array_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_1_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_1_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array1_address0;
    end else begin
        cross1_node_mix_array_1_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_1_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_1_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array1_ce0;
    end else begin
        cross1_node_mix_array_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_1_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array1_ce1;
    end else begin
        cross1_node_mix_array_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_1_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array1_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_1_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array1_d0;
    end else begin
        cross1_node_mix_array_1_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_1_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array1_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_1_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array1_we0;
    end else begin
        cross1_node_mix_array_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_2_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_2_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array2_address0;
    end else begin
        cross1_node_mix_array_2_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_2_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_2_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array2_ce0;
    end else begin
        cross1_node_mix_array_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_2_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array2_ce1;
    end else begin
        cross1_node_mix_array_2_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_2_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_2_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array2_d0;
    end else begin
        cross1_node_mix_array_2_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_2_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_2_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array2_we0;
    end else begin
        cross1_node_mix_array_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_3_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_3_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array3_address0;
    end else begin
        cross1_node_mix_array_3_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_3_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_3_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array3_ce0;
    end else begin
        cross1_node_mix_array_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_3_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array3_ce1;
    end else begin
        cross1_node_mix_array_3_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_3_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_3_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array3_d0;
    end else begin
        cross1_node_mix_array_3_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_3_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_3_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array3_we0;
    end else begin
        cross1_node_mix_array_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_4_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_4_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array4_address0;
    end else begin
        cross1_node_mix_array_4_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_4_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_4_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array4_ce0;
    end else begin
        cross1_node_mix_array_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_4_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array4_ce1;
    end else begin
        cross1_node_mix_array_4_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_4_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_4_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array4_d0;
    end else begin
        cross1_node_mix_array_4_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_4_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_4_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array4_we0;
    end else begin
        cross1_node_mix_array_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_5_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array5_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_5_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array5_address0;
    end else begin
        cross1_node_mix_array_5_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_5_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_5_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array5_ce0;
    end else begin
        cross1_node_mix_array_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_5_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array5_ce1;
    end else begin
        cross1_node_mix_array_5_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_5_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array5_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_5_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array5_d0;
    end else begin
        cross1_node_mix_array_5_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_5_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array5_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_5_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array5_we0;
    end else begin
        cross1_node_mix_array_5_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_6_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_6_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array6_address0;
    end else begin
        cross1_node_mix_array_6_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_6_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_6_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array6_ce0;
    end else begin
        cross1_node_mix_array_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_6_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array6_ce1;
    end else begin
        cross1_node_mix_array_6_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_6_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_6_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array6_d0;
    end else begin
        cross1_node_mix_array_6_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_6_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_6_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array6_we0;
    end else begin
        cross1_node_mix_array_6_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_7_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_7_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array7_address0;
    end else begin
        cross1_node_mix_array_7_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_7_address1 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_7_address1 = grp_upwards_fu_276_port_cross_in_node_mix_array7_address1;
    end else begin
        cross1_node_mix_array_7_address1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_7_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_7_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array7_ce0;
    end else begin
        cross1_node_mix_array_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_7_ce1 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_7_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array7_ce1;
    end else begin
        cross1_node_mix_array_7_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_7_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_7_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array7_d0;
    end else begin
        cross1_node_mix_array_7_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_7_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        cross1_node_mix_array_7_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array7_we0;
    end else begin
        cross1_node_mix_array_7_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cross1_node_mix_array_7_we1 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_we1;
    end else begin
        cross1_node_mix_array_7_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_0_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_0_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array_address0;
    end else begin
        cross2_node_mix_array_0_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_0_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_0_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array_ce0;
    end else begin
        cross2_node_mix_array_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_0_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array_ce1;
    end else begin
        cross2_node_mix_array_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_0_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_0_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array_d0;
    end else begin
        cross2_node_mix_array_0_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_0_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_0_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array_we0;
    end else begin
        cross2_node_mix_array_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_1_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array1_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_1_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array1_address0;
    end else begin
        cross2_node_mix_array_1_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_1_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_1_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array1_ce0;
    end else begin
        cross2_node_mix_array_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_1_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array1_ce1;
    end else begin
        cross2_node_mix_array_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_1_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array1_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_1_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array1_d0;
    end else begin
        cross2_node_mix_array_1_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_1_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array1_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_1_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array1_we0;
    end else begin
        cross2_node_mix_array_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_2_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_2_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array2_address0;
    end else begin
        cross2_node_mix_array_2_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_2_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_2_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array2_ce0;
    end else begin
        cross2_node_mix_array_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_2_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array2_ce1;
    end else begin
        cross2_node_mix_array_2_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_2_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_2_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array2_d0;
    end else begin
        cross2_node_mix_array_2_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_2_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_2_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array2_we0;
    end else begin
        cross2_node_mix_array_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_3_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_3_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array3_address0;
    end else begin
        cross2_node_mix_array_3_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_3_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_3_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array3_ce0;
    end else begin
        cross2_node_mix_array_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_3_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array3_ce1;
    end else begin
        cross2_node_mix_array_3_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_3_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_3_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array3_d0;
    end else begin
        cross2_node_mix_array_3_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_3_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_3_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array3_we0;
    end else begin
        cross2_node_mix_array_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_4_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_4_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array4_address0;
    end else begin
        cross2_node_mix_array_4_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_4_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_4_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array4_ce0;
    end else begin
        cross2_node_mix_array_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_4_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array4_ce1;
    end else begin
        cross2_node_mix_array_4_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_4_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_4_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array4_d0;
    end else begin
        cross2_node_mix_array_4_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_4_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_4_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array4_we0;
    end else begin
        cross2_node_mix_array_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_5_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array5_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_5_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array5_address0;
    end else begin
        cross2_node_mix_array_5_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_5_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_5_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array5_ce0;
    end else begin
        cross2_node_mix_array_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_5_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array5_ce1;
    end else begin
        cross2_node_mix_array_5_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_5_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array5_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_5_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array5_d0;
    end else begin
        cross2_node_mix_array_5_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_5_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array5_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_5_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array5_we0;
    end else begin
        cross2_node_mix_array_5_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_6_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_6_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array6_address0;
    end else begin
        cross2_node_mix_array_6_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_6_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_6_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array6_ce0;
    end else begin
        cross2_node_mix_array_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_6_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array6_ce1;
    end else begin
        cross2_node_mix_array_6_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_6_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_6_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array6_d0;
    end else begin
        cross2_node_mix_array_6_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_6_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_6_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array6_we0;
    end else begin
        cross2_node_mix_array_6_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_7_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_7_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array7_address0;
    end else begin
        cross2_node_mix_array_7_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_7_address1 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_address1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_7_address1 = grp_upwards_fu_276_port_cross_in_node_mix_array7_address1;
    end else begin
        cross2_node_mix_array_7_address1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_7_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_7_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array7_ce0;
    end else begin
        cross2_node_mix_array_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_7_ce1 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_7_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array7_ce1;
    end else begin
        cross2_node_mix_array_7_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_7_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_7_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array7_d0;
    end else begin
        cross2_node_mix_array_7_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_7_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        cross2_node_mix_array_7_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array7_we0;
    end else begin
        cross2_node_mix_array_7_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        cross2_node_mix_array_7_we1 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_we1;
    end else begin
        cross2_node_mix_array_7_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_0_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_0_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array_address0;
    end else begin
        cross3_node_mix_array_0_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_0_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_0_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array_ce0;
    end else begin
        cross3_node_mix_array_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_0_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array_ce1;
    end else begin
        cross3_node_mix_array_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_0_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array_d0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_0_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array_d0;
    end else begin
        cross3_node_mix_array_0_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_0_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array_we0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_0_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array_we0;
    end else begin
        cross3_node_mix_array_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_1_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array1_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_1_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array1_address0;
    end else begin
        cross3_node_mix_array_1_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_1_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_1_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array1_ce0;
    end else begin
        cross3_node_mix_array_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_1_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array1_ce1;
    end else begin
        cross3_node_mix_array_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_1_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array1_d0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_1_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array1_d0;
    end else begin
        cross3_node_mix_array_1_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_1_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array1_we0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_1_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array1_we0;
    end else begin
        cross3_node_mix_array_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_2_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_2_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array2_address0;
    end else begin
        cross3_node_mix_array_2_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_2_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_2_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array2_ce0;
    end else begin
        cross3_node_mix_array_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_2_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array2_ce1;
    end else begin
        cross3_node_mix_array_2_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_2_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_d0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_2_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array2_d0;
    end else begin
        cross3_node_mix_array_2_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_2_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_we0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_2_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array2_we0;
    end else begin
        cross3_node_mix_array_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_3_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_3_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array3_address0;
    end else begin
        cross3_node_mix_array_3_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_3_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_3_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array3_ce0;
    end else begin
        cross3_node_mix_array_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_3_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array3_ce1;
    end else begin
        cross3_node_mix_array_3_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_3_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_d0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_3_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array3_d0;
    end else begin
        cross3_node_mix_array_3_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_3_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_we0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_3_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array3_we0;
    end else begin
        cross3_node_mix_array_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_4_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_4_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array4_address0;
    end else begin
        cross3_node_mix_array_4_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_4_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_4_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array4_ce0;
    end else begin
        cross3_node_mix_array_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_4_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array4_ce1;
    end else begin
        cross3_node_mix_array_4_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_4_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_d0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_4_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array4_d0;
    end else begin
        cross3_node_mix_array_4_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_4_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_we0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_4_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array4_we0;
    end else begin
        cross3_node_mix_array_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_5_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array5_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_5_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array5_address0;
    end else begin
        cross3_node_mix_array_5_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_5_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_5_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array5_ce0;
    end else begin
        cross3_node_mix_array_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_5_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array5_ce1;
    end else begin
        cross3_node_mix_array_5_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_5_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array5_d0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_5_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array5_d0;
    end else begin
        cross3_node_mix_array_5_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_5_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array5_we0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_5_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array5_we0;
    end else begin
        cross3_node_mix_array_5_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_6_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_6_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array6_address0;
    end else begin
        cross3_node_mix_array_6_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_6_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_6_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array6_ce0;
    end else begin
        cross3_node_mix_array_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_6_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array6_ce1;
    end else begin
        cross3_node_mix_array_6_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_6_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_d0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_6_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array6_d0;
    end else begin
        cross3_node_mix_array_6_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_6_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_we0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_6_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array6_we0;
    end else begin
        cross3_node_mix_array_6_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_7_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_7_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array7_address0;
    end else begin
        cross3_node_mix_array_7_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_7_address1 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_address1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_7_address1 = grp_upwards_fu_276_port_cross_in_node_mix_array7_address1;
    end else begin
        cross3_node_mix_array_7_address1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_7_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_7_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array7_ce0;
    end else begin
        cross3_node_mix_array_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_7_ce1 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_7_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array7_ce1;
    end else begin
        cross3_node_mix_array_7_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_7_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_d0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_7_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array7_d0;
    end else begin
        cross3_node_mix_array_7_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_7_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_we0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        cross3_node_mix_array_7_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array7_we0;
    end else begin
        cross3_node_mix_array_7_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cross3_node_mix_array_7_we1 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_we1;
    end else begin
        cross3_node_mix_array_7_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_0_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array_address0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_0_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array_address0;
    end else begin
        cross4_node_mix_array_0_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_0_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array_ce0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_0_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array_ce0;
    end else begin
        cross4_node_mix_array_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_0_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array_ce1;
    end else begin
        cross4_node_mix_array_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_0_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array_d0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_0_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array_d0;
    end else begin
        cross4_node_mix_array_0_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_0_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array_we0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_0_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array_we0;
    end else begin
        cross4_node_mix_array_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_1_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array1_address0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_1_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array1_address0;
    end else begin
        cross4_node_mix_array_1_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_1_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_1_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array1_ce0;
    end else begin
        cross4_node_mix_array_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_1_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array1_ce1;
    end else begin
        cross4_node_mix_array_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_1_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array1_d0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_1_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array1_d0;
    end else begin
        cross4_node_mix_array_1_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_1_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array1_we0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_1_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array1_we0;
    end else begin
        cross4_node_mix_array_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_2_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_address0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_2_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array2_address0;
    end else begin
        cross4_node_mix_array_2_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_2_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_2_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array2_ce0;
    end else begin
        cross4_node_mix_array_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_2_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array2_ce1;
    end else begin
        cross4_node_mix_array_2_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_2_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_d0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_2_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array2_d0;
    end else begin
        cross4_node_mix_array_2_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_2_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_we0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_2_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array2_we0;
    end else begin
        cross4_node_mix_array_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_3_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_address0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_3_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array3_address0;
    end else begin
        cross4_node_mix_array_3_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_3_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_3_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array3_ce0;
    end else begin
        cross4_node_mix_array_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_3_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array3_ce1;
    end else begin
        cross4_node_mix_array_3_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_3_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_d0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_3_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array3_d0;
    end else begin
        cross4_node_mix_array_3_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_3_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_we0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_3_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array3_we0;
    end else begin
        cross4_node_mix_array_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_4_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_address0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_4_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array4_address0;
    end else begin
        cross4_node_mix_array_4_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_4_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_4_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array4_ce0;
    end else begin
        cross4_node_mix_array_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_4_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array4_ce1;
    end else begin
        cross4_node_mix_array_4_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_4_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_d0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_4_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array4_d0;
    end else begin
        cross4_node_mix_array_4_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_4_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_we0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_4_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array4_we0;
    end else begin
        cross4_node_mix_array_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_5_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array5_address0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_5_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array5_address0;
    end else begin
        cross4_node_mix_array_5_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_5_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_5_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array5_ce0;
    end else begin
        cross4_node_mix_array_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_5_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array5_ce1;
    end else begin
        cross4_node_mix_array_5_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_5_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array5_d0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_5_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array5_d0;
    end else begin
        cross4_node_mix_array_5_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_5_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array5_we0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_5_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array5_we0;
    end else begin
        cross4_node_mix_array_5_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_6_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_address0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_6_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array6_address0;
    end else begin
        cross4_node_mix_array_6_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_6_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_6_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array6_ce0;
    end else begin
        cross4_node_mix_array_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_6_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array6_ce1;
    end else begin
        cross4_node_mix_array_6_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_6_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_d0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_6_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array6_d0;
    end else begin
        cross4_node_mix_array_6_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_6_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_we0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_6_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array6_we0;
    end else begin
        cross4_node_mix_array_6_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_7_address0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_address0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_7_address0 = grp_upwards_fu_276_port_cross_in_node_mix_array7_address0;
    end else begin
        cross4_node_mix_array_7_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_7_address1 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_address1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_7_address1 = grp_upwards_fu_276_port_cross_in_node_mix_array7_address1;
    end else begin
        cross4_node_mix_array_7_address1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_7_ce0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_7_ce0 = grp_upwards_fu_276_port_cross_in_node_mix_array7_ce0;
    end else begin
        cross4_node_mix_array_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_7_ce1 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_7_ce1 = grp_upwards_fu_276_port_cross_in_node_mix_array7_ce1;
    end else begin
        cross4_node_mix_array_7_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_7_d0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_d0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_7_d0 = grp_upwards_fu_276_port_cross_in_node_mix_array7_d0;
    end else begin
        cross4_node_mix_array_7_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_7_we0 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_we0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        cross4_node_mix_array_7_we0 = grp_upwards_fu_276_port_cross_in_node_mix_array7_we0;
    end else begin
        cross4_node_mix_array_7_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cross4_node_mix_array_7_we1 = grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_we1;
    end else begin
        cross4_node_mix_array_7_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
        freeaddress_out_ap_vld = 1'b1;
    end else begin
        freeaddress_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_q0 = cross1_node_mix_array_2_q0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_q0 = cross2_node_mix_array_2_q0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_q0 = cross3_node_mix_array_2_q0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_q0 = cross4_node_mix_array_2_q0;
    end else begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array2_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_q0 = cross1_node_mix_array_3_q0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_q0 = cross2_node_mix_array_3_q0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_q0 = cross3_node_mix_array_3_q0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_q0 = cross4_node_mix_array_3_q0;
    end else begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array3_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_q0 = cross1_node_mix_array_4_q0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_q0 = cross2_node_mix_array_4_q0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_q0 = cross3_node_mix_array_4_q0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_q0 = cross4_node_mix_array_4_q0;
    end else begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array4_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_q0 = cross1_node_mix_array_6_q0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_q0 = cross2_node_mix_array_6_q0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_q0 = cross3_node_mix_array_6_q0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_q0 = cross4_node_mix_array_6_q0;
    end else begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array6_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_q0 = cross1_node_mix_array_7_q0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_q0 = cross2_node_mix_array_7_q0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_q0 = cross3_node_mix_array_7_q0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_q0 = cross4_node_mix_array_7_q0;
    end else begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_q1 = cross1_node_mix_array_7_q1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_q1 = cross2_node_mix_array_7_q1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_q1 = cross3_node_mix_array_7_q1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_q1 = cross4_node_mix_array_7_q1;
    end else begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array7_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array_q0 = cross1_node_mix_array_0_q0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array_q0 = cross2_node_mix_array_0_q0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array_q0 = cross3_node_mix_array_0_q0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array_q0 = cross4_node_mix_array_0_q0;
    end else begin
        grp_downwards_fu_351_port_cross_out_mix_array_mix_array_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_downwards_fu_351_port_cross_out_node_max_fb_index_read = cross1_node_max_fb_index;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_downwards_fu_351_port_cross_out_node_max_fb_index_read = reg_795;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_downwards_fu_351_port_cross_out_node_max_fb_index_read = reg_759;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_downwards_fu_351_port_cross_out_node_max_fb_index_read = reg_687;
    end else begin
        grp_downwards_fu_351_port_cross_out_node_max_fb_index_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_downwards_fu_351_port_cross_out_node_max_fb_length_read = cross1_node_max_fb_length;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_downwards_fu_351_port_cross_out_node_max_fb_length_read = reg_801;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_downwards_fu_351_port_cross_out_node_max_fb_length_read = reg_765;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_downwards_fu_351_port_cross_out_node_max_fb_length_read = reg_693;
    end else begin
        grp_downwards_fu_351_port_cross_out_node_max_fb_length_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_downwards_fu_351_port_cross_out_node_max_subgraph_index_read = cross1_node_max_subgraph_index;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_downwards_fu_351_port_cross_out_node_max_subgraph_index_read = reg_807;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_downwards_fu_351_port_cross_out_node_max_subgraph_index_read = reg_771;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_downwards_fu_351_port_cross_out_node_max_subgraph_index_read = reg_699;
    end else begin
        grp_downwards_fu_351_port_cross_out_node_max_subgraph_index_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_downwards_fu_351_port_cross_out_node_max_subgraph_length_read = cross1_node_max_subgraph_length;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_downwards_fu_351_port_cross_out_node_max_subgraph_length_read = reg_813;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_downwards_fu_351_port_cross_out_node_max_subgraph_length_read = reg_777;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_downwards_fu_351_port_cross_out_node_max_subgraph_length_read = reg_705;
    end else begin
        grp_downwards_fu_351_port_cross_out_node_max_subgraph_length_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_downwards_fu_351_port_cross_out_node_next_free_offset_read = cross1_node_next_free_offset;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_downwards_fu_351_port_cross_out_node_next_free_offset_read = reg_789;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_downwards_fu_351_port_cross_out_node_next_free_offset_read = reg_753;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_downwards_fu_351_port_cross_out_node_next_free_offset_read = reg_681;
    end else begin
        grp_downwards_fu_351_port_cross_out_node_next_free_offset_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_downwards_fu_351_port_cross_out_node_num_read = cross1_node_num;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_downwards_fu_351_port_cross_out_node_num_read = reg_783;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_downwards_fu_351_port_cross_out_node_num_read = reg_747;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_downwards_fu_351_port_cross_out_node_num_read = reg_675;
    end else begin
        grp_downwards_fu_351_port_cross_out_node_num_read = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_downwards_fu_351_port_in_address_read = reg_711;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_downwards_fu_351_port_in_address_read = freeaddress_in;
    end else begin
        grp_downwards_fu_351_port_in_address_read = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_downwards_fu_351_port_in_broindex_read = reg_727;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_downwards_fu_351_port_in_broindex_read = 32'd0;
    end else begin
        grp_downwards_fu_351_port_in_broindex_read = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_downwards_fu_351_port_in_fb_index_read = reg_732;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_downwards_fu_351_port_in_fb_index_read = 32'd0;
    end else begin
        grp_downwards_fu_351_port_in_fb_index_read = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_downwards_fu_351_port_in_fb_length_read = reg_737;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_downwards_fu_351_port_in_fb_length_read = 32'd0;
    end else begin
        grp_downwards_fu_351_port_in_fb_length_read = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_downwards_fu_351_port_in_length_read = reg_717;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_downwards_fu_351_port_in_length_read = malloc_free_length_in;
    end else begin
        grp_downwards_fu_351_port_in_length_read = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_downwards_fu_351_port_in_level_read = reg_742;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_downwards_fu_351_port_in_level_read = 8'd4;
    end else begin
        grp_downwards_fu_351_port_in_level_read = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_downwards_fu_351_port_in_nodeindex_read = reg_722;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_downwards_fu_351_port_in_nodeindex_read = root_node;
    end else begin
        grp_downwards_fu_351_port_in_nodeindex_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_downwards_fu_351_port_in_op_read = trunc_ln1720_reg_1834;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_downwards_fu_351_port_in_op_read = trunc_ln1719_reg_1823;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_downwards_fu_351_port_in_op_read = trunc_ln1718_reg_1812;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_downwards_fu_351_port_in_op_read = empty_reg_1798;
    end else begin
        grp_downwards_fu_351_port_in_op_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_downwards_fu_351_port_out_fb_index_read = down0_fb_index;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_downwards_fu_351_port_out_fb_index_read = down1_fb_index;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_downwards_fu_351_port_out_fb_index_read = down2_fb_index;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_downwards_fu_351_port_out_fb_index_read = down3_fb_index;
    end else begin
        grp_downwards_fu_351_port_out_fb_index_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_downwards_fu_351_port_out_fb_length_read = down0_fb_length;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_downwards_fu_351_port_out_fb_length_read = down1_fb_length;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_downwards_fu_351_port_out_fb_length_read = down2_fb_length;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_downwards_fu_351_port_out_fb_length_read = down3_fb_length;
    end else begin
        grp_downwards_fu_351_port_out_fb_length_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_p_read55 = cross4_dir_V;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_p_read55 = cross3_dir_V;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_p_read55 = cross2_dir_V;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_p_read55 = cross1_dir_V_reg_1918;
    end else begin
        grp_upwards_fu_276_p_read55 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_broindex_read = cross4_broindex;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_broindex_read = cross3_broindex;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_broindex_read = cross2_broindex;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_broindex_read = cross1_broindex_reg_1868;
    end else begin
        grp_upwards_fu_276_port_cross_in_broindex_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_fb_index_read = cross4_fb_index;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_fb_index_read = cross3_fb_index;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_fb_index_read = cross2_fb_index;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_fb_index_read = cross1_fb_index_reg_1908;
    end else begin
        grp_upwards_fu_276_port_cross_in_fb_index_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_fb_length_read = cross4_fb_length;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_fb_length_read = cross3_fb_length;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_fb_length_read = cross2_fb_length;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_fb_length_read = cross1_fb_length_reg_1913;
    end else begin
        grp_upwards_fu_276_port_cross_in_fb_length_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_node_max_fb_index_read = reg_687;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_node_max_fb_index_read = reg_759;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_node_max_fb_index_read = reg_795;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_node_max_fb_index_read = cross1_node_max_fb_index_ret4_reg_1883;
    end else begin
        grp_upwards_fu_276_port_cross_in_node_max_fb_index_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_node_max_fb_length_read = reg_693;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_node_max_fb_length_read = reg_765;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_node_max_fb_length_read = reg_801;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_node_max_fb_length_read = cross1_node_max_fb_length_ret5_reg_1888;
    end else begin
        grp_upwards_fu_276_port_cross_in_node_max_fb_length_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_node_max_subgraph_index_read = reg_699;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_node_max_subgraph_index_read = reg_771;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_node_max_subgraph_index_read = reg_807;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_node_max_subgraph_index_read = cross1_node_max_subgraph_index_ret6_reg_1893;
    end else begin
        grp_upwards_fu_276_port_cross_in_node_max_subgraph_index_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_node_max_subgraph_length_read = reg_705;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_node_max_subgraph_length_read = reg_777;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_node_max_subgraph_length_read = reg_813;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_node_max_subgraph_length_read = cross1_node_max_subgraph_length_ret7_reg_1898;
    end else begin
        grp_upwards_fu_276_port_cross_in_node_max_subgraph_length_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array1_q0 = cross4_node_mix_array_1_q0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array1_q0 = cross3_node_mix_array_1_q0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array1_q0 = cross2_node_mix_array_1_q0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array1_q0 = cross1_node_mix_array_1_q0;
    end else begin
        grp_upwards_fu_276_port_cross_in_node_mix_array1_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array1_q1 = cross4_node_mix_array_1_q1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array1_q1 = cross3_node_mix_array_1_q1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array1_q1 = cross2_node_mix_array_1_q1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array1_q1 = cross1_node_mix_array_1_q1;
    end else begin
        grp_upwards_fu_276_port_cross_in_node_mix_array1_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array2_q0 = cross4_node_mix_array_2_q0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array2_q0 = cross3_node_mix_array_2_q0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array2_q0 = cross2_node_mix_array_2_q0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array2_q0 = cross1_node_mix_array_2_q0;
    end else begin
        grp_upwards_fu_276_port_cross_in_node_mix_array2_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array2_q1 = cross4_node_mix_array_2_q1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array2_q1 = cross3_node_mix_array_2_q1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array2_q1 = cross2_node_mix_array_2_q1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array2_q1 = cross1_node_mix_array_2_q1;
    end else begin
        grp_upwards_fu_276_port_cross_in_node_mix_array2_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array3_q0 = cross4_node_mix_array_3_q0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array3_q0 = cross3_node_mix_array_3_q0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array3_q0 = cross2_node_mix_array_3_q0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array3_q0 = cross1_node_mix_array_3_q0;
    end else begin
        grp_upwards_fu_276_port_cross_in_node_mix_array3_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array3_q1 = cross4_node_mix_array_3_q1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array3_q1 = cross3_node_mix_array_3_q1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array3_q1 = cross2_node_mix_array_3_q1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array3_q1 = cross1_node_mix_array_3_q1;
    end else begin
        grp_upwards_fu_276_port_cross_in_node_mix_array3_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array4_q0 = cross4_node_mix_array_4_q0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array4_q0 = cross3_node_mix_array_4_q0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array4_q0 = cross2_node_mix_array_4_q0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array4_q0 = cross1_node_mix_array_4_q0;
    end else begin
        grp_upwards_fu_276_port_cross_in_node_mix_array4_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array4_q1 = cross4_node_mix_array_4_q1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array4_q1 = cross3_node_mix_array_4_q1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array4_q1 = cross2_node_mix_array_4_q1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array4_q1 = cross1_node_mix_array_4_q1;
    end else begin
        grp_upwards_fu_276_port_cross_in_node_mix_array4_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array5_q0 = cross4_node_mix_array_5_q0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array5_q0 = cross3_node_mix_array_5_q0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array5_q0 = cross2_node_mix_array_5_q0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array5_q0 = cross1_node_mix_array_5_q0;
    end else begin
        grp_upwards_fu_276_port_cross_in_node_mix_array5_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array5_q1 = cross4_node_mix_array_5_q1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array5_q1 = cross3_node_mix_array_5_q1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array5_q1 = cross2_node_mix_array_5_q1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array5_q1 = cross1_node_mix_array_5_q1;
    end else begin
        grp_upwards_fu_276_port_cross_in_node_mix_array5_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array6_q0 = cross4_node_mix_array_6_q0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array6_q0 = cross3_node_mix_array_6_q0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array6_q0 = cross2_node_mix_array_6_q0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array6_q0 = cross1_node_mix_array_6_q0;
    end else begin
        grp_upwards_fu_276_port_cross_in_node_mix_array6_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array6_q1 = cross4_node_mix_array_6_q1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array6_q1 = cross3_node_mix_array_6_q1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array6_q1 = cross2_node_mix_array_6_q1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array6_q1 = cross1_node_mix_array_6_q1;
    end else begin
        grp_upwards_fu_276_port_cross_in_node_mix_array6_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array7_q0 = cross4_node_mix_array_7_q0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array7_q0 = cross3_node_mix_array_7_q0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array7_q0 = cross2_node_mix_array_7_q0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array7_q0 = cross1_node_mix_array_7_q0;
    end else begin
        grp_upwards_fu_276_port_cross_in_node_mix_array7_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array7_q1 = cross4_node_mix_array_7_q1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array7_q1 = cross3_node_mix_array_7_q1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array7_q1 = cross2_node_mix_array_7_q1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array7_q1 = cross1_node_mix_array_7_q1;
    end else begin
        grp_upwards_fu_276_port_cross_in_node_mix_array7_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array_q0 = cross4_node_mix_array_0_q0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array_q0 = cross3_node_mix_array_0_q0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array_q0 = cross2_node_mix_array_0_q0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array_q0 = cross1_node_mix_array_0_q0;
    end else begin
        grp_upwards_fu_276_port_cross_in_node_mix_array_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array_q1 = cross4_node_mix_array_0_q1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array_q1 = cross3_node_mix_array_0_q1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array_q1 = cross2_node_mix_array_0_q1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_node_mix_array_q1 = cross1_node_mix_array_0_q1;
    end else begin
        grp_upwards_fu_276_port_cross_in_node_mix_array_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_node_next_free_offset_read = reg_681;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_node_next_free_offset_read = reg_753;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_node_next_free_offset_read = reg_789;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_node_next_free_offset_read = cross1_node_next_free_offset_ret_reg_1878;
    end else begin
        grp_upwards_fu_276_port_cross_in_node_next_free_offset_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_node_num_read = reg_675;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_node_num_read = reg_747;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_node_num_read = reg_783;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_node_num_read = cross1_node_num_ret_reg_1873;
    end else begin
        grp_upwards_fu_276_port_cross_in_node_num_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_nodeindex_read = cross4_nodeindex;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_nodeindex_read = cross3_nodeindex;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_nodeindex_read = cross2_nodeindex;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_nodeindex_read = cross1_nodeindex_reg_1863;
    end else begin
        grp_upwards_fu_276_port_cross_in_nodeindex_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_cross_in_pos_read = cross4_pos;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_cross_in_pos_read = cross3_pos;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_cross_in_pos_read = cross2_pos;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_cross_in_pos_read = cross1_pos_reg_1903;
    end else begin
        grp_upwards_fu_276_port_cross_in_pos_read = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state16))) begin
        grp_upwards_fu_276_port_in_address_read = reg_819;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_in_address_read = reg_711;
    end else begin
        grp_upwards_fu_276_port_in_address_read = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state16))) begin
        grp_upwards_fu_276_port_in_broindex_read = reg_829;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_in_broindex_read = 32'd0;
    end else begin
        grp_upwards_fu_276_port_in_broindex_read = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state16))) begin
        grp_upwards_fu_276_port_in_fb_index_read = reg_844;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_in_fb_index_read = parent_fb_index_next_8_reg_1955;
    end else begin
        grp_upwards_fu_276_port_in_fb_index_read = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state16))) begin
        grp_upwards_fu_276_port_in_fb_length_read = reg_849;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_in_fb_length_read = parent_fb_length_next_8_reg_1960;
    end else begin
        grp_upwards_fu_276_port_in_fb_length_read = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state16))) begin
        grp_upwards_fu_276_port_in_level_read = reg_859;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_in_level_read = level_next_reg_1923;
    end else begin
        grp_upwards_fu_276_port_in_level_read = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state16))) begin
        grp_upwards_fu_276_port_in_merge_index_read = reg_834;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_in_merge_index_read = merge_index_next_3_reg_1945;
    end else begin
        grp_upwards_fu_276_port_in_merge_index_read = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state16))) begin
        grp_upwards_fu_276_port_in_merge_length_read = reg_839;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_in_merge_length_read = merge_length_next_3_reg_1950;
    end else begin
        grp_upwards_fu_276_port_in_merge_length_read = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state16))) begin
        grp_upwards_fu_276_port_in_node_max_fb_length_read = reg_854;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_in_node_max_fb_length_read = 32'd0;
    end else begin
        grp_upwards_fu_276_port_in_node_max_fb_length_read = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state16))) begin
        grp_upwards_fu_276_port_in_nodeindex_read = reg_824;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_in_nodeindex_read = 32'd0;
    end else begin
        grp_upwards_fu_276_port_in_nodeindex_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_upwards_fu_276_port_in_op_read = empty_57_reg_2011;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_upwards_fu_276_port_in_op_read = empty_56_reg_1988;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_upwards_fu_276_port_in_op_read = empty_55_reg_1965;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_upwards_fu_276_port_in_op_read = opcode_next_5_reg_1940;
    end else begin
        grp_upwards_fu_276_port_in_op_read = 'bx;
    end
end

always @ (*) begin
    if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
        op_out_ap_vld = 1'b1;
    end else begin
        op_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_downwards_fu_351_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            if (((grp_upwards_fu_276_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1623_fu_1270_p2 = (grp_downwards_fu_351_ap_return_6 + grp_downwards_fu_351_ap_return_5);

assign and_ln1647_fu_1342_p2 = (icmp_ln1647_fu_1336_p2 & icmp_ln1632_fu_1306_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign empty_55_fu_1536_p1 = grp_upwards_fu_276_ap_return_0[4:0];

assign empty_56_fu_1606_p1 = grp_upwards_fu_276_ap_return_0[4:0];

assign empty_57_fu_1676_p1 = grp_upwards_fu_276_ap_return_0[4:0];

assign empty_fu_864_p1 = op_in[4:0];

assign freeaddress_out = grp_upwards_fu_276_ap_return_1;

assign grp_downwards_fu_351_ap_start = grp_downwards_fu_351_ap_start_reg;

assign grp_upwards_fu_276_ap_start = grp_upwards_fu_276_ap_start_reg;

assign icmp_ln1616_1_fu_1386_p2 = ((grp_downwards_fu_351_ap_return_0 == 32'd3) ? 1'b1 : 1'b0);

assign icmp_ln1616_2_fu_1400_p2 = ((grp_downwards_fu_351_ap_return_0 == 32'd2) ? 1'b1 : 1'b0);

assign icmp_ln1616_3_fu_1414_p2 = ((grp_downwards_fu_351_ap_return_0 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln1616_4_fu_1428_p2 = ((grp_downwards_fu_351_ap_return_0 == 32'd16) ? 1'b1 : 1'b0);

assign icmp_ln1616_fu_1372_p2 = ((grp_downwards_fu_351_ap_return_0 == 32'd14) ? 1'b1 : 1'b0);

assign icmp_ln1623_fu_1276_p2 = ((add_ln1623_fu_1270_p2 == grp_downwards_fu_351_ap_return_1) ? 1'b1 : 1'b0);

assign icmp_ln1632_fu_1306_p2 = ((grp_downwards_fu_351_ap_return_5 == grp_downwards_fu_351_ap_return_1) ? 1'b1 : 1'b0);

assign icmp_ln1647_fu_1336_p2 = ((grp_downwards_fu_351_ap_return_6 == grp_downwards_fu_351_ap_return_2) ? 1'b1 : 1'b0);

assign level_next_fu_1264_p2 = (grp_downwards_fu_351_ap_return_7 + 8'd1);

assign merge_index_next_1_fu_1320_p3 = ((icmp_ln1632_fu_1306_p2[0:0] == 1'b1) ? grp_downwards_fu_351_ap_return_5 : 32'd0);

assign merge_index_next_3_fu_1466_p3 = ((icmp_ln1616_4_fu_1428_p2[0:0] == 1'b1) ? select_ln1647_1_fu_1356_p3 : select_ln1616_11_fu_1458_p3);

assign merge_index_next_fu_1290_p3 = ((icmp_ln1623_fu_1276_p2[0:0] == 1'b1) ? grp_downwards_fu_351_ap_return_5 : 32'd0);

assign merge_length_next_1_fu_1328_p3 = ((icmp_ln1632_fu_1306_p2[0:0] == 1'b1) ? grp_downwards_fu_351_ap_return_6 : 32'd0);

assign merge_length_next_3_fu_1498_p3 = ((icmp_ln1616_4_fu_1428_p2[0:0] == 1'b1) ? select_ln1647_2_fu_1364_p3 : select_ln1616_15_fu_1490_p3);

assign merge_length_next_fu_1298_p3 = ((icmp_ln1623_fu_1276_p2[0:0] == 1'b1) ? grp_downwards_fu_351_ap_return_6 : 32'd0);

assign op_out = grp_upwards_fu_276_ap_return_0;

assign opcode_next_5_fu_1434_p3 = ((icmp_ln1616_4_fu_1428_p2[0:0] == 1'b1) ? select_ln1647_fu_1348_p3 : select_ln1616_3_fu_1420_p3);

assign parent_fb_index_next_8_fu_1513_p3 = ((icmp_ln1616_4_reg_1934[0:0] == 1'b1) ? 32'd0 : select_ln1616_5_fu_1506_p3);

assign parent_fb_length_next_8_fu_1528_p3 = ((icmp_ln1616_4_reg_1934[0:0] == 1'b1) ? 32'd0 : select_ln1616_7_fu_1521_p3);

assign select_ln1616_10_fu_1450_p3 = ((icmp_ln1616_2_fu_1400_p2[0:0] == 1'b1) ? merge_index_next_fu_1290_p3 : select_ln1616_9_fu_1442_p3);

assign select_ln1616_11_fu_1458_p3 = ((icmp_ln1616_3_fu_1414_p2[0:0] == 1'b1) ? 32'd0 : select_ln1616_10_fu_1450_p3);

assign select_ln1616_13_fu_1474_p3 = ((icmp_ln1616_1_fu_1386_p2[0:0] == 1'b1) ? merge_length_next_1_fu_1328_p3 : 32'd0);

assign select_ln1616_14_fu_1482_p3 = ((icmp_ln1616_2_fu_1400_p2[0:0] == 1'b1) ? merge_length_next_fu_1298_p3 : select_ln1616_13_fu_1474_p3);

assign select_ln1616_15_fu_1490_p3 = ((icmp_ln1616_3_fu_1414_p2[0:0] == 1'b1) ? 32'd0 : select_ln1616_14_fu_1482_p3);

assign select_ln1616_1_fu_1392_p3 = ((icmp_ln1616_1_fu_1386_p2[0:0] == 1'b1) ? select_ln1636_fu_1312_p3 : select_ln1616_fu_1378_p3);

assign select_ln1616_2_fu_1406_p3 = ((icmp_ln1616_2_fu_1400_p2[0:0] == 1'b1) ? select_ln1627_fu_1282_p3 : select_ln1616_1_fu_1392_p3);

assign select_ln1616_3_fu_1420_p3 = ((icmp_ln1616_3_fu_1414_p2[0:0] == 1'b1) ? 5'd13 : select_ln1616_2_fu_1406_p3);

assign select_ln1616_5_fu_1506_p3 = ((icmp_ln1616_3_reg_1928[0:0] == 1'b1) ? reg_711 : 32'd0);

assign select_ln1616_7_fu_1521_p3 = ((icmp_ln1616_3_reg_1928[0:0] == 1'b1) ? reg_717 : 32'd0);

assign select_ln1616_9_fu_1442_p3 = ((icmp_ln1616_1_fu_1386_p2[0:0] == 1'b1) ? merge_index_next_1_fu_1320_p3 : 32'd0);

assign select_ln1616_fu_1378_p3 = ((icmp_ln1616_fu_1372_p2[0:0] == 1'b1) ? 5'd22 : trunc_ln1721_fu_1208_p1);

assign select_ln1627_fu_1282_p3 = ((icmp_ln1623_fu_1276_p2[0:0] == 1'b1) ? 5'd6 : 5'd12);

assign select_ln1636_fu_1312_p3 = ((icmp_ln1632_fu_1306_p2[0:0] == 1'b1) ? 5'd9 : 5'd12);

assign select_ln1647_1_fu_1356_p3 = ((and_ln1647_fu_1342_p2[0:0] == 1'b1) ? 32'd0 : grp_downwards_fu_351_ap_return_5);

assign select_ln1647_2_fu_1364_p3 = ((and_ln1647_fu_1342_p2[0:0] == 1'b1) ? 32'd0 : grp_downwards_fu_351_ap_return_6);

assign select_ln1647_fu_1348_p3 = ((and_ln1647_fu_1342_p2[0:0] == 1'b1) ? 5'd21 : 5'd19);

assign trunc_ln1718_fu_884_p1 = grp_downwards_fu_351_ap_return_0[4:0];

assign trunc_ln1719_fu_982_p1 = grp_downwards_fu_351_ap_return_0[4:0];

assign trunc_ln1720_fu_1080_p1 = grp_downwards_fu_351_ap_return_0[4:0];

assign trunc_ln1721_fu_1208_p1 = grp_downwards_fu_351_ap_return_0[4:0];

endmodule //execute
