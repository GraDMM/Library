
`timescale 1 ns / 1 ps 

module execute_downwards (
        ap_clk,
        ap_rst,
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
        port_in_op_read,
        port_in_address_read,
        port_in_length_read,
        port_in_nodeindex_read,
        port_in_broindex_read,
        port_in_fb_index_read,
        port_in_fb_length_read,
        port_in_level_read,
        port_out_fb_index_read,
        port_out_fb_length_read,
        port_cross_out_node_num_read,
        port_cross_out_node_next_free_offset_read,
        port_cross_out_mix_array_mix_array_address0,
        port_cross_out_mix_array_mix_array_ce0,
        port_cross_out_mix_array_mix_array_we0,
        port_cross_out_mix_array_mix_array_d0,
        port_cross_out_mix_array_mix_array_q0,
        port_cross_out_mix_array_mix_array1_address0,
        port_cross_out_mix_array_mix_array1_ce0,
        port_cross_out_mix_array_mix_array1_we0,
        port_cross_out_mix_array_mix_array1_d0,
        port_cross_out_mix_array_mix_array2_address0,
        port_cross_out_mix_array_mix_array2_ce0,
        port_cross_out_mix_array_mix_array2_we0,
        port_cross_out_mix_array_mix_array2_d0,
        port_cross_out_mix_array_mix_array2_q0,
        port_cross_out_mix_array_mix_array3_address0,
        port_cross_out_mix_array_mix_array3_ce0,
        port_cross_out_mix_array_mix_array3_we0,
        port_cross_out_mix_array_mix_array3_d0,
        port_cross_out_mix_array_mix_array3_q0,
        port_cross_out_mix_array_mix_array4_address0,
        port_cross_out_mix_array_mix_array4_ce0,
        port_cross_out_mix_array_mix_array4_we0,
        port_cross_out_mix_array_mix_array4_d0,
        port_cross_out_mix_array_mix_array4_q0,
        port_cross_out_mix_array_mix_array5_address0,
        port_cross_out_mix_array_mix_array5_ce0,
        port_cross_out_mix_array_mix_array5_we0,
        port_cross_out_mix_array_mix_array5_d0,
        port_cross_out_mix_array_mix_array6_address0,
        port_cross_out_mix_array_mix_array6_ce0,
        port_cross_out_mix_array_mix_array6_we0,
        port_cross_out_mix_array_mix_array6_d0,
        port_cross_out_mix_array_mix_array6_q0,
        port_cross_out_mix_array_mix_array7_address0,
        port_cross_out_mix_array_mix_array7_ce0,
        port_cross_out_mix_array_mix_array7_we0,
        port_cross_out_mix_array_mix_array7_d0,
        port_cross_out_mix_array_mix_array7_q0,
        port_cross_out_mix_array_mix_array7_address1,
        port_cross_out_mix_array_mix_array7_ce1,
        port_cross_out_mix_array_mix_array7_we1,
        port_cross_out_mix_array_mix_array7_d1,
        port_cross_out_mix_array_mix_array7_q1,
        port_cross_out_node_max_fb_index_read,
        port_cross_out_node_max_fb_length_read,
        port_cross_out_node_max_subgraph_index_read,
        port_cross_out_node_max_subgraph_length_read,
        graphlevel,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5,
        ap_return_6,
        ap_return_7,
        ap_return_8,
        ap_return_9,
        ap_return_10,
        ap_return_11,
        ap_return_12,
        ap_return_13,
        ap_return_14,
        ap_return_15,
        ap_return_16,
        ap_return_17,
        ap_return_18,
        ap_return_19
);

parameter    ap_ST_fsm_state1 = 30'd1;
parameter    ap_ST_fsm_state2 = 30'd2;
parameter    ap_ST_fsm_state3 = 30'd4;
parameter    ap_ST_fsm_state4 = 30'd8;
parameter    ap_ST_fsm_state5 = 30'd16;
parameter    ap_ST_fsm_state6 = 30'd32;
parameter    ap_ST_fsm_state7 = 30'd64;
parameter    ap_ST_fsm_state8 = 30'd128;
parameter    ap_ST_fsm_pp0_stage0 = 30'd256;
parameter    ap_ST_fsm_state12 = 30'd512;
parameter    ap_ST_fsm_state13 = 30'd1024;
parameter    ap_ST_fsm_state14 = 30'd2048;
parameter    ap_ST_fsm_state15 = 30'd4096;
parameter    ap_ST_fsm_state16 = 30'd8192;
parameter    ap_ST_fsm_state17 = 30'd16384;
parameter    ap_ST_fsm_state18 = 30'd32768;
parameter    ap_ST_fsm_state19 = 30'd65536;
parameter    ap_ST_fsm_state20 = 30'd131072;
parameter    ap_ST_fsm_state21 = 30'd262144;
parameter    ap_ST_fsm_state22 = 30'd524288;
parameter    ap_ST_fsm_state23 = 30'd1048576;
parameter    ap_ST_fsm_state24 = 30'd2097152;
parameter    ap_ST_fsm_state25 = 30'd4194304;
parameter    ap_ST_fsm_state26 = 30'd8388608;
parameter    ap_ST_fsm_state27 = 30'd16777216;
parameter    ap_ST_fsm_state28 = 30'd33554432;
parameter    ap_ST_fsm_state29 = 30'd67108864;
parameter    ap_ST_fsm_state30 = 30'd134217728;
parameter    ap_ST_fsm_state31 = 30'd268435456;
parameter    ap_ST_fsm_state32 = 30'd536870912;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_buf_dram_manage_AWVALID;
input   m_axi_buf_dram_manage_AWREADY;
output  [63:0] m_axi_buf_dram_manage_AWADDR;
output  [0:0] m_axi_buf_dram_manage_AWID;
output  [31:0] m_axi_buf_dram_manage_AWLEN;
output  [2:0] m_axi_buf_dram_manage_AWSIZE;
output  [1:0] m_axi_buf_dram_manage_AWBURST;
output  [1:0] m_axi_buf_dram_manage_AWLOCK;
output  [3:0] m_axi_buf_dram_manage_AWCACHE;
output  [2:0] m_axi_buf_dram_manage_AWPROT;
output  [3:0] m_axi_buf_dram_manage_AWQOS;
output  [3:0] m_axi_buf_dram_manage_AWREGION;
output  [0:0] m_axi_buf_dram_manage_AWUSER;
output   m_axi_buf_dram_manage_WVALID;
input   m_axi_buf_dram_manage_WREADY;
output  [255:0] m_axi_buf_dram_manage_WDATA;
output  [31:0] m_axi_buf_dram_manage_WSTRB;
output   m_axi_buf_dram_manage_WLAST;
output  [0:0] m_axi_buf_dram_manage_WID;
output  [0:0] m_axi_buf_dram_manage_WUSER;
output   m_axi_buf_dram_manage_ARVALID;
input   m_axi_buf_dram_manage_ARREADY;
output  [63:0] m_axi_buf_dram_manage_ARADDR;
output  [0:0] m_axi_buf_dram_manage_ARID;
output  [31:0] m_axi_buf_dram_manage_ARLEN;
output  [2:0] m_axi_buf_dram_manage_ARSIZE;
output  [1:0] m_axi_buf_dram_manage_ARBURST;
output  [1:0] m_axi_buf_dram_manage_ARLOCK;
output  [3:0] m_axi_buf_dram_manage_ARCACHE;
output  [2:0] m_axi_buf_dram_manage_ARPROT;
output  [3:0] m_axi_buf_dram_manage_ARQOS;
output  [3:0] m_axi_buf_dram_manage_ARREGION;
output  [0:0] m_axi_buf_dram_manage_ARUSER;
input   m_axi_buf_dram_manage_RVALID;
output   m_axi_buf_dram_manage_RREADY;
input  [255:0] m_axi_buf_dram_manage_RDATA;
input   m_axi_buf_dram_manage_RLAST;
input  [0:0] m_axi_buf_dram_manage_RID;
input  [0:0] m_axi_buf_dram_manage_RUSER;
input  [1:0] m_axi_buf_dram_manage_RRESP;
input   m_axi_buf_dram_manage_BVALID;
output   m_axi_buf_dram_manage_BREADY;
input  [1:0] m_axi_buf_dram_manage_BRESP;
input  [0:0] m_axi_buf_dram_manage_BID;
input  [0:0] m_axi_buf_dram_manage_BUSER;
input  [4:0] port_in_op_read;
input  [31:0] port_in_address_read;
input  [31:0] port_in_length_read;
input  [31:0] port_in_nodeindex_read;
input  [31:0] port_in_broindex_read;
input  [31:0] port_in_fb_index_read;
input  [31:0] port_in_fb_length_read;
input  [7:0] port_in_level_read;
input  [31:0] port_out_fb_index_read;
input  [31:0] port_out_fb_length_read;
input  [31:0] port_cross_out_node_num_read;
input  [31:0] port_cross_out_node_next_free_offset_read;
output  [5:0] port_cross_out_mix_array_mix_array_address0;
output   port_cross_out_mix_array_mix_array_ce0;
output   port_cross_out_mix_array_mix_array_we0;
output  [31:0] port_cross_out_mix_array_mix_array_d0;
input  [31:0] port_cross_out_mix_array_mix_array_q0;
output  [5:0] port_cross_out_mix_array_mix_array1_address0;
output   port_cross_out_mix_array_mix_array1_ce0;
output   port_cross_out_mix_array_mix_array1_we0;
output  [31:0] port_cross_out_mix_array_mix_array1_d0;
output  [4:0] port_cross_out_mix_array_mix_array2_address0;
output   port_cross_out_mix_array_mix_array2_ce0;
output   port_cross_out_mix_array_mix_array2_we0;
output  [31:0] port_cross_out_mix_array_mix_array2_d0;
input  [31:0] port_cross_out_mix_array_mix_array2_q0;
output  [4:0] port_cross_out_mix_array_mix_array3_address0;
output   port_cross_out_mix_array_mix_array3_ce0;
output   port_cross_out_mix_array_mix_array3_we0;
output  [31:0] port_cross_out_mix_array_mix_array3_d0;
input  [31:0] port_cross_out_mix_array_mix_array3_q0;
output  [4:0] port_cross_out_mix_array_mix_array4_address0;
output   port_cross_out_mix_array_mix_array4_ce0;
output   port_cross_out_mix_array_mix_array4_we0;
output  [31:0] port_cross_out_mix_array_mix_array4_d0;
input  [31:0] port_cross_out_mix_array_mix_array4_q0;
output  [4:0] port_cross_out_mix_array_mix_array5_address0;
output   port_cross_out_mix_array_mix_array5_ce0;
output   port_cross_out_mix_array_mix_array5_we0;
output  [31:0] port_cross_out_mix_array_mix_array5_d0;
output  [4:0] port_cross_out_mix_array_mix_array6_address0;
output   port_cross_out_mix_array_mix_array6_ce0;
output   port_cross_out_mix_array_mix_array6_we0;
output  [31:0] port_cross_out_mix_array_mix_array6_d0;
input  [31:0] port_cross_out_mix_array_mix_array6_q0;
output  [4:0] port_cross_out_mix_array_mix_array7_address0;
output   port_cross_out_mix_array_mix_array7_ce0;
output   port_cross_out_mix_array_mix_array7_we0;
output  [31:0] port_cross_out_mix_array_mix_array7_d0;
input  [31:0] port_cross_out_mix_array_mix_array7_q0;
output  [4:0] port_cross_out_mix_array_mix_array7_address1;
output   port_cross_out_mix_array_mix_array7_ce1;
output   port_cross_out_mix_array_mix_array7_we1;
output  [31:0] port_cross_out_mix_array_mix_array7_d1;
input  [31:0] port_cross_out_mix_array_mix_array7_q1;
input  [31:0] port_cross_out_node_max_fb_index_read;
input  [31:0] port_cross_out_node_max_fb_length_read;
input  [31:0] port_cross_out_node_max_subgraph_index_read;
input  [31:0] port_cross_out_node_max_subgraph_length_read;
input  [7:0] graphlevel;
output  [31:0] ap_return_0;
output  [31:0] ap_return_1;
output  [31:0] ap_return_2;
output  [31:0] ap_return_3;
output  [31:0] ap_return_4;
output  [31:0] ap_return_5;
output  [31:0] ap_return_6;
output  [7:0] ap_return_7;
output  [31:0] ap_return_8;
output  [31:0] ap_return_9;
output  [31:0] ap_return_10;
output  [31:0] ap_return_11;
output  [31:0] ap_return_12;
output  [31:0] ap_return_13;
output  [31:0] ap_return_14;
output  [31:0] ap_return_15;
output  [31:0] ap_return_16;
output  [31:0] ap_return_17;
output  [31:0] ap_return_18;
output  [0:0] ap_return_19;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_buf_dram_manage_ARVALID;
reg m_axi_buf_dram_manage_RREADY;
reg[5:0] port_cross_out_mix_array_mix_array_address0;
reg port_cross_out_mix_array_mix_array_ce0;
reg port_cross_out_mix_array_mix_array_we0;
reg port_cross_out_mix_array_mix_array1_ce0;
reg port_cross_out_mix_array_mix_array1_we0;
reg[4:0] port_cross_out_mix_array_mix_array2_address0;
reg port_cross_out_mix_array_mix_array2_ce0;
reg port_cross_out_mix_array_mix_array2_we0;
reg[31:0] port_cross_out_mix_array_mix_array2_d0;
reg[4:0] port_cross_out_mix_array_mix_array3_address0;
reg port_cross_out_mix_array_mix_array3_ce0;
reg port_cross_out_mix_array_mix_array3_we0;
reg[31:0] port_cross_out_mix_array_mix_array3_d0;
reg[4:0] port_cross_out_mix_array_mix_array4_address0;
reg port_cross_out_mix_array_mix_array4_ce0;
reg port_cross_out_mix_array_mix_array4_we0;
reg port_cross_out_mix_array_mix_array5_ce0;
reg port_cross_out_mix_array_mix_array5_we0;
reg[4:0] port_cross_out_mix_array_mix_array6_address0;
reg port_cross_out_mix_array_mix_array6_ce0;
reg port_cross_out_mix_array_mix_array6_we0;
reg[31:0] port_cross_out_mix_array_mix_array6_d0;
reg[4:0] port_cross_out_mix_array_mix_array7_address0;
reg port_cross_out_mix_array_mix_array7_ce0;
reg port_cross_out_mix_array_mix_array7_we0;
reg[31:0] port_cross_out_mix_array_mix_array7_d0;
reg[4:0] port_cross_out_mix_array_mix_array7_address1;
reg port_cross_out_mix_array_mix_array7_ce1;
reg port_cross_out_mix_array_mix_array7_we1;
reg[31:0] port_cross_out_mix_array_mix_array7_d1;
reg[31:0] ap_return_0;
reg[31:0] ap_return_1;
reg[31:0] ap_return_2;
reg[31:0] ap_return_3;
reg[31:0] ap_return_4;
reg[31:0] ap_return_5;
reg[31:0] ap_return_6;
reg[7:0] ap_return_7;
reg[31:0] ap_return_8;
reg[31:0] ap_return_9;
reg[31:0] ap_return_10;
reg[31:0] ap_return_11;
reg[31:0] ap_return_12;
reg[31:0] ap_return_13;
reg[31:0] ap_return_14;
reg[31:0] ap_return_15;
reg[31:0] ap_return_16;
reg[31:0] ap_return_17;
reg[31:0] ap_return_18;
reg[0:0] ap_return_19;

(* fsm_encoding = "none" *) reg   [29:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    buf_dram_manage_blk_n_AR;
wire    ap_CS_fsm_state2;
reg    buf_dram_manage_blk_n_R;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln74_reg_3023;
reg   [5:0] idx_reg_800;
reg   [5:0] idx_reg_800_pp0_iter1_reg;
wire    ap_block_state9_pp0_stage0_iter0;
reg    ap_block_state10_pp0_stage0_iter1;
wire    ap_block_state11_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
reg   [31:0] pos_reg_812;
reg   [31:0] reg_1511;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state23;
wire   [4:0] port_in_op_read_2_read_fu_356_p2;
wire   [7:0] level_next_fu_1516_p2;
reg   [7:0] level_next_reg_2943;
wire   [0:0] icmp_ln160_fu_1526_p2;
reg   [0:0] icmp_ln160_reg_2948;
wire   [31:0] mul_i_fu_1538_p2;
reg   [31:0] mul_i_reg_3007;
wire   [5:0] add_ln74_fu_1584_p2;
reg   [5:0] add_ln74_reg_3018;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] icmp_ln74_fu_1590_p2;
reg   [0:0] icmp_ln74_reg_3023_pp0_iter1_reg;
wire   [31:0] num_2_fu_1596_p1;
reg   [31:0] num_2_reg_3027;
reg   [31:0] readbuf1_reg_3034;
reg   [31:0] readbuf2_reg_3040;
reg   [31:0] readbuf3_reg_3045;
reg   [31:0] readbuf4_reg_3050;
reg   [31:0] readbuf5_reg_3057;
reg   [31:0] readbuf6_reg_3063;
reg   [31:0] readbuf7_reg_3069;
wire   [0:0] icmp_ln87_fu_1670_p2;
reg   [0:0] icmp_ln87_reg_3075;
reg   [31:0] pos_10_reg_3079;
reg    ap_enable_reg_pp0_iter2;
reg   [31:0] pos_11_reg_3095;
reg   [31:0] pos_15_reg_3109;
reg   [31:0] port_cross_out_mix_array_max_subgraph_length_0_load_reg_3119;
reg   [31:0] port_cross_out_mix_array_max_fb_length_0_load_reg_3128;
reg   [31:0] readbuf1_4_load_reg_3138;
reg   [0:0] write_flag38_0_load_reg_3146;
wire   [0:0] icmp_ln225_fu_1867_p2;
reg   [0:0] icmp_ln225_reg_3157;
wire    ap_CS_fsm_state12;
wire   [0:0] icmp_ln238_fu_1871_p2;
reg   [0:0] icmp_ln238_reg_3161;
wire   [0:0] icmp_ln249_fu_1875_p2;
reg   [0:0] icmp_ln249_reg_3165;
wire   [63:0] zext_ln229_fu_1879_p1;
reg   [63:0] zext_ln229_reg_3169;
reg   [4:0] port_cross_out_mix_array_mix_array2_addr_1_reg_3175;
reg   [4:0] port_cross_out_mix_array_mix_array6_addr_2_reg_3180;
reg   [4:0] port_cross_out_mix_array_mix_array3_addr_1_reg_3200;
reg   [4:0] port_cross_out_mix_array_mix_array7_addr_2_reg_3205;
wire   [0:0] dir_cross_next_V_1_fu_1942_p2;
wire    ap_CS_fsm_state13;
wire   [0:0] or_ln206_fu_1992_p2;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state16;
wire   [0:0] trunc_ln229_fu_2006_p1;
reg   [0:0] trunc_ln229_reg_3239;
wire    ap_CS_fsm_state17;
wire   [31:0] address_next_1_fu_2009_p3;
reg   [31:0] address_next_1_reg_3244;
reg   [4:0] port_cross_out_mix_array_mix_array3_addr_2_reg_3249;
reg   [4:0] port_cross_out_mix_array_mix_array7_addr_4_reg_3254;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state21;
wire   [0:0] trunc_ln167_1_fu_2056_p1;
reg   [0:0] trunc_ln167_1_reg_3282;
wire    ap_CS_fsm_state22;
wire   [0:0] icmp_ln167_fu_2068_p2;
reg   [0:0] icmp_ln167_reg_3288;
wire   [0:0] icmp_ln167_1_fu_2082_p2;
reg   [0:0] icmp_ln167_1_reg_3293;
wire   [31:0] select_ln167_2_fu_2096_p3;
reg   [31:0] select_ln167_2_reg_3298;
wire   [0:0] icmp_ln168_fu_2110_p2;
reg   [0:0] icmp_ln168_reg_3304;
wire   [0:0] icmp_ln168_1_fu_2115_p2;
reg   [0:0] icmp_ln168_1_reg_3309;
wire   [63:0] zext_ln178_fu_2130_p1;
reg   [63:0] zext_ln178_reg_3314;
reg   [4:0] port_cross_out_mix_array_mix_array2_addr_4_reg_3322;
reg   [4:0] port_cross_out_mix_array_mix_array6_addr_4_reg_3327;
wire   [0:0] icmp_ln176_fu_2172_p2;
reg   [0:0] icmp_ln176_reg_3332;
wire   [31:0] border_right_fu_2177_p2;
wire   [0:0] or_ln186_1_fu_2272_p2;
reg   [0:0] or_ln186_1_reg_3342;
wire   [0:0] icmp_ln870_1_fu_2278_p2;
reg   [0:0] icmp_ln870_1_reg_3346;
wire   [0:0] icmp_ln870_2_fu_2284_p2;
reg   [0:0] icmp_ln870_2_reg_3350;
wire   [0:0] and_ln188_fu_2290_p2;
reg   [0:0] and_ln188_reg_3354;
reg   [4:0] port_cross_out_mix_array_mix_array3_addr_4_reg_3358;
reg   [4:0] port_cross_out_mix_array_mix_array7_addr_6_reg_3363;
wire   [4:0] port_cross_out_mix_array_mix_array3_addr_3_gep_fu_618_p3;
wire   [4:0] port_cross_out_mix_array_mix_array7_addr_3_gep_fu_625_p3;
wire   [5:0] trunc_ln275_8_fu_2302_p1;
reg   [5:0] trunc_ln275_8_reg_3378;
wire    ap_CS_fsm_state24;
wire   [0:0] trunc_ln275_9_fu_2306_p1;
reg   [0:0] trunc_ln275_9_reg_3383;
wire   [4:0] zext_ln152_fu_2327_p1;
wire    ap_CS_fsm_state25;
wire   [31:0] nodeindex_next_fu_2366_p3;
wire   [0:0] trunc_ln281_4_fu_2398_p1;
reg   [0:0] trunc_ln281_4_reg_3415;
reg   [0:0] dir_cross_next_V_reg_905;
reg   [4:0] lshr_ln9_reg_3450;
reg   [2:0] trunc_ln275_1_reg_3539;
wire   [0:0] trunc_ln277_1_fu_2482_p1;
reg   [0:0] trunc_ln277_1_reg_3460;
wire   [2:0] trunc_ln278_fu_2503_p1;
reg   [2:0] trunc_ln278_reg_3480;
reg   [4:0] port_cross_out_mix_array_mix_array3_addr_7_reg_3501;
wire   [0:0] icmp_ln281_fu_2532_p2;
reg   [0:0] icmp_ln281_reg_3506;
wire    ap_CS_fsm_state26;
wire   [31:0] broindex_next_fu_2552_p3;
reg   [31:0] broindex_next_reg_3510;
wire   [31:0] select_ln282_1_fu_2568_p3;
reg   [31:0] select_ln282_1_reg_3516;
wire   [7:0] shl_ln6_fu_2711_p3;
reg   [7:0] shl_ln6_reg_3532;
wire    ap_CS_fsm_state28;
wire   [2:0] trunc_ln275_1_fu_2723_p3;
reg   [4:0] port_cross_out_mix_array_mix_array7_addr_5_reg_3553;
wire    ap_CS_fsm_state29;
wire    ap_CS_fsm_state30;
wire   [31:0] broindex_next_1_fu_2775_p3;
reg   [31:0] broindex_next_1_reg_3568;
wire    ap_CS_fsm_state32;
wire   [31:0] select_ln278_1_fu_2808_p3;
reg   [31:0] select_ln278_1_reg_3579;
wire   [0:0] icmp_ln279_fu_2821_p2;
reg   [0:0] icmp_ln279_reg_3585;
wire    ap_CS_fsm_state8;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_flush_enable;
reg   [5:0] ap_phi_mux_idx_phi_fu_804_p4;
reg   [31:0] ap_phi_mux_pos_627_phi_fu_838_p4;
reg   [31:0] ap_phi_mux_pos_3_phi_fu_827_p4;
wire   [31:0] select_ln62_fu_1783_p3;
wire   [31:0] ap_phi_reg_pp0_iter2_pos_3_reg_824;
wire   [31:0] pos_14_fu_1842_p3;
wire   [31:0] ap_phi_reg_pp0_iter2_pos_627_reg_834;
wire   [0:0] icmp_ln104_fu_1805_p2;
reg   [3:0] ap_phi_mux_opcode_next_3_phi_fu_852_p10;
reg   [3:0] opcode_next_3_reg_846;
reg   [31:0] ap_phi_mux_address_next_3_phi_fu_873_p10;
reg   [31:0] address_next_3_reg_870;
reg   [31:0] ap_phi_mux_length_next_1_phi_fu_890_p10;
reg   [31:0] length_next_1_reg_886;
reg   [31:0] pos_2_reg_915;
reg   [3:0] opcode_next_6_reg_926;
reg   [31:0] address_next_reg_938;
reg   [31:0] length_next_reg_949;
reg   [31:0] ap_phi_mux_pos_1047_phi_fu_963_p6;
reg   [31:0] pos_1047_reg_960;
reg   [7:0] ap_phi_mux_mul12639_phi_fu_976_p8;
reg   [7:0] mul12639_reg_973;
wire   [7:0] shl_ln275_1_fu_2331_p3;
reg   [31:0] pos_10_ph_reg_1334;
reg   [31:0] ap_phi_mux_pos_1035_phi_fu_989_p8;
reg   [31:0] pos_1035_reg_986;
reg   [31:0] empty_61_reg_1001;
reg   [31:0] length_next_450_reg_1013;
reg   [31:0] address_next_649_reg_1026;
reg   [4:0] opcode_next_748_reg_1039;
reg   [0:0] dir_cross_next_546_reg_1051;
reg   [31:0] ap_phi_mux_port_cross_out_mix_array_num_2_phi_fu_1070_p10;
reg   [31:0] port_cross_out_mix_array_num_2_reg_1067;
wire    ap_CS_fsm_state27;
reg   [0:0] ap_phi_mux_write_flag38_2_phi_fu_1086_p10;
reg   [0:0] write_flag38_2_reg_1082;
reg   [31:0] ap_phi_mux_port_cross_out_mix_array_next_free_offset_2_phi_fu_1103_p10;
reg   [31:0] port_cross_out_mix_array_next_free_offset_2_reg_1099;
reg   [31:0] ap_phi_mux_port_cross_out_mix_array_max_fb_index_2_phi_fu_1119_p10;
reg   [31:0] port_cross_out_mix_array_max_fb_index_2_reg_1116;
reg   [31:0] ap_phi_mux_port_cross_out_mix_array_max_fb_length_2_phi_fu_1134_p10;
reg   [31:0] port_cross_out_mix_array_max_fb_length_2_reg_1131;
reg   [31:0] ap_phi_mux_port_cross_out_mix_array_max_subgraph_index_2_phi_fu_1149_p10;
reg   [31:0] port_cross_out_mix_array_max_subgraph_index_2_reg_1146;
reg   [31:0] ap_phi_mux_port_cross_out_mix_array_max_subgraph_length_2_phi_fu_1164_p10;
reg   [31:0] port_cross_out_mix_array_max_subgraph_length_2_reg_1161;
reg   [31:0] ap_phi_mux_phi_ln302_phi_fu_1179_p10;
reg   [31:0] phi_ln302_reg_1176;
reg   [31:0] ap_phi_mux_phi_ln302_1_phi_fu_1197_p10;
reg   [31:0] phi_ln302_1_reg_1194;
reg   [0:0] ap_phi_mux_dir_cross_next_V_2_phi_fu_1213_p10;
reg   [0:0] dir_cross_next_V_2_reg_1209;
reg   [0:0] dir_cross_next_534_reg_1481;
wire   [0:0] ap_phi_mux_dir_cross_next_534_phi_fu_1487_p8;
reg   [31:0] ap_phi_mux_pos_9_phi_fu_1232_p10;
reg   [31:0] pos_9_reg_1228;
reg   [4:0] ap_phi_mux_opcode_next_phi_fu_1252_p10;
reg   [4:0] opcode_next_reg_1249;
reg   [4:0] opcode_next_736_reg_1462;
wire   [4:0] ap_phi_mux_opcode_next_736_phi_fu_1467_p8;
reg   [31:0] ap_phi_mux_address_next_4_phi_fu_1269_p10;
reg   [31:0] address_next_4_reg_1266;
reg   [31:0] address_next_637_reg_1442;
wire   [31:0] ap_phi_mux_address_next_637_phi_fu_1447_p8;
reg   [31:0] ap_phi_mux_length_next_2_phi_fu_1286_p10;
reg   [31:0] length_next_2_reg_1283;
reg   [31:0] length_next_438_reg_1425;
wire   [31:0] ap_phi_mux_length_next_438_phi_fu_1430_p8;
reg   [31:0] ap_phi_mux_nodeindex_next_4_phi_fu_1303_p10;
reg   [31:0] nodeindex_next_4_reg_1300;
reg   [31:0] empty_60_reg_1409;
wire   [31:0] ap_phi_mux_empty_60_phi_fu_1414_p8;
reg   [31:0] ap_phi_mux_broindex_next_2_phi_fu_1321_p10;
reg   [31:0] broindex_next_2_reg_1317;
wire    ap_CS_fsm_state18;
reg   [4:0] opcode_next_7_ph_reg_1360;
reg   [31:0] address_next_6_ph_reg_1389;
wire   [63:0] zext_ln91_1_fu_1759_p1;
wire   [63:0] zext_ln154_fu_1702_p1;
wire   [63:0] zext_ln167_fu_1913_p1;
wire   [63:0] zext_ln167_1_fu_1936_p1;
wire   [63:0] zext_ln243_fu_1997_p1;
wire   [63:0] zext_ln275_fu_2047_p1;
wire   [63:0] zext_ln275_2_fu_2320_p1;
wire   [63:0] zext_ln281_fu_2418_p1;
wire   [63:0] zext_ln282_fu_2441_p1;
wire   [63:0] zext_ln277_fu_2496_p1;
wire   [63:0] zext_ln278_fu_2517_p1;
wire   [63:0] zext_ln283_fu_2576_p1;
wire   [63:0] zext_ln275_1_fu_2741_p1;
wire  signed [63:0] sext_ln74_fu_1574_p1;
reg   [31:0] pos_1_fu_234;
reg   [31:0] pos_4_fu_238;
reg   [31:0] pos_6_fu_242;
reg   [31:0] port_cross_out_mix_array_max_subgraph_length_0_fu_246;
reg   [31:0] port_cross_out_mix_array_max_fb_length_0_fu_250;
reg   [31:0] readbuf1_4_fu_254;
reg   [0:0] write_flag38_0_fu_258;
reg   [31:0] num_fu_262;
wire   [31:0] add_ln231_fu_2017_p2;
wire   [31:0] add_ln198_fu_1953_p2;
wire   [31:0] add_ln189_1_fu_1978_p2;
wire   [31:0] sub_ln232_fu_2031_p2;
wire   [31:0] add_ln192_fu_2296_p2;
wire    ap_CS_fsm_state31;
wire   [31:0] empty_fu_1532_p2;
wire   [6:0] shl_ln_fu_1712_p3;
wire   [6:0] add_ln91_fu_1733_p2;
wire   [5:0] shl_ln87_fu_1724_p2;
wire   [5:0] add_ln91_1_fu_1743_p2;
wire   [4:0] trunc_ln12_fu_1749_p4;
wire   [31:0] zext_ln91_fu_1739_p1;
wire   [0:0] icmp_ln64_fu_1771_p2;
wire   [31:0] zext_ln87_fu_1720_p1;
wire   [0:0] icmp_ln62_fu_1765_p2;
wire   [31:0] pos_12_fu_1775_p3;
wire   [5:0] or_ln64_fu_1824_p2;
wire   [0:0] icmp_ln64_1_fu_1820_p2;
wire   [31:0] zext_ln64_fu_1830_p1;
wire   [0:0] icmp_ln62_1_fu_1814_p2;
wire   [31:0] pos_13_fu_1834_p3;
wire   [5:0] grp_fu_1502_p4;
wire   [5:0] trunc_ln167_fu_1885_p1;
wire   [7:0] shl_ln5_fu_1889_p3;
wire   [7:0] add_ln167_fu_1897_p2;
wire   [4:0] lshr_ln_fu_1903_p4;
wire   [7:0] add_ln167_1_fu_1920_p2;
wire   [4:0] lshr_ln167_1_fu_1926_p4;
wire   [31:0] select_ln198_fu_1946_p3;
wire   [31:0] select_ln189_fu_1960_p3;
wire   [31:0] add_ln189_fu_1974_p2;
wire   [31:0] select_ln189_1_fu_1967_p3;
wire   [0:0] icmp_ln206_fu_1986_p2;
wire   [31:0] select_ln232_fu_2024_p3;
wire   [5:0] trunc_ln275_3_fu_2038_p4;
wire   [2:0] trunc_ln_fu_2060_p3;
wire   [31:0] select_ln167_fu_2074_p3;
wire   [31:0] select_ln167_1_fu_2088_p3;
wire   [31:0] border_left_fu_2104_p2;
wire   [5:0] trunc_ln178_1_fu_2120_p4;
wire   [0:0] xor_ln168_fu_2142_p2;
wire   [0:0] xor_ln168_1_fu_2151_p2;
wire   [1:0] zext_ln168_fu_2147_p1;
wire   [0:0] icmp_ln166_fu_2136_p2;
wire   [1:0] select_ln168_fu_2156_p3;
wire   [31:0] select_ln178_fu_2181_p3;
wire   [0:0] icmp_ln180_fu_2194_p2;
wire   [0:0] icmp_ln178_fu_2188_p2;
wire   [0:0] xor_ln176_fu_2208_p2;
wire   [0:0] xor_ln178_fu_2220_p2;
wire   [0:0] or_ln178_1_fu_2226_p2;
wire   [0:0] and_ln178_fu_2214_p2;
wire   [0:0] or_ln178_fu_2240_p2;
wire   [1:0] select_ln178_1_fu_2232_p3;
wire   [1:0] right_V_fu_2200_p3;
wire   [1:0] left_V_fu_2164_p3;
wire   [0:0] icmp_ln870_fu_2254_p2;
wire   [0:0] or_ln186_fu_2260_p2;
wire   [0:0] and_ln186_fu_2266_p2;
wire   [1:0] right_V_1_fu_2246_p3;
wire   [5:0] trunc_ln275_5_fu_2310_p4;
wire   [2:0] trunc_ln275_2_fu_2339_p3;
wire   [0:0] icmp_ln275_fu_2346_p2;
wire   [0:0] icmp_ln275_1_fu_2360_p2;
wire   [31:0] select_ln275_fu_2352_p3;
wire   [6:0] trunc_ln281_fu_2374_p1;
wire   [5:0] trunc_ln281_3_fu_2386_p1;
wire   [8:0] shl_ln7_fu_2378_p3;
wire   [8:0] add_ln281_fu_2402_p2;
wire   [5:0] lshr_ln7_fu_2408_p4;
wire   [7:0] trunc_ln281_2_fu_2390_p3;
wire   [7:0] add_ln282_fu_2425_p2;
wire   [4:0] lshr_ln8_fu_2431_p4;
wire   [7:0] add_ln283_fu_2448_p2;
wire   [6:0] trunc_ln277_fu_2464_p1;
wire   [8:0] shl_ln8_fu_2468_p3;
wire   [8:0] add_ln277_fu_2476_p2;
wire   [5:0] lshr_ln1_fu_2486_p4;
wire   [4:0] lshr_ln2_fu_2507_p4;
wire   [2:0] trunc_ln281_1_fu_2525_p3;
wire   [0:0] icmp_ln281_1_fu_2546_p2;
wire   [31:0] select_ln281_fu_2538_p3;
wire   [31:0] select_ln282_fu_2560_p3;
wire   [31:0] zext_ln152_1_fu_2581_p1;
wire   [31:0] select_ln302_fu_2585_p3;
wire   [5:0] trunc_ln275_6_fu_2707_p1;
wire   [0:0] trunc_ln275_7_fu_2719_p1;
wire   [5:0] trunc_ln275_4_fu_2731_p4;
wire   [2:0] trunc_ln14_fu_2748_p3;
wire   [0:0] icmp_ln277_fu_2755_p2;
wire   [0:0] icmp_ln277_1_fu_2769_p2;
wire   [31:0] select_ln277_fu_2761_p3;
wire   [2:0] or_ln278_fu_2783_p2;
wire   [0:0] icmp_ln278_fu_2788_p2;
wire   [0:0] icmp_ln278_1_fu_2802_p2;
wire   [31:0] select_ln278_fu_2794_p3;
wire   [2:0] or_ln279_fu_2816_p2;
wire   [0:0] trunc_ln243_fu_2003_p1;
wire   [0:0] trunc_ln275_fu_2053_p1;
reg   [31:0] ap_return_0_preg;
reg   [31:0] ap_return_1_preg;
reg   [31:0] ap_return_2_preg;
reg   [31:0] ap_return_3_preg;
reg   [31:0] ap_return_4_preg;
reg   [31:0] ap_return_5_preg;
reg   [31:0] ap_return_6_preg;
reg   [7:0] ap_return_7_preg;
reg   [31:0] ap_return_8_preg;
reg   [31:0] ap_return_9_preg;
reg   [31:0] ap_return_10_preg;
reg   [31:0] ap_return_11_preg;
reg   [31:0] ap_return_12_preg;
reg   [31:0] ap_return_13_preg;
reg   [31:0] ap_return_14_preg;
reg   [31:0] ap_return_15_preg;
reg   [31:0] ap_return_16_preg;
reg   [31:0] ap_return_17_preg;
reg   [31:0] ap_return_18_preg;
reg   [0:0] ap_return_19_preg;
reg   [29:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_2746;
reg    ap_condition_2744;
reg    ap_condition_614;
reg    ap_condition_797;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 30'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_return_0_preg = 32'd0;
#0 ap_return_1_preg = 32'd0;
#0 ap_return_2_preg = 32'd0;
#0 ap_return_3_preg = 32'd0;
#0 ap_return_4_preg = 32'd0;
#0 ap_return_5_preg = 32'd0;
#0 ap_return_6_preg = 32'd0;
#0 ap_return_7_preg = 8'd0;
#0 ap_return_8_preg = 32'd0;
#0 ap_return_9_preg = 32'd0;
#0 ap_return_10_preg = 32'd0;
#0 ap_return_11_preg = 32'd0;
#0 ap_return_12_preg = 32'd0;
#0 ap_return_13_preg = 32'd0;
#0 ap_return_14_preg = 32'd0;
#0 ap_return_15_preg = 32'd0;
#0 ap_return_16_preg = 32'd0;
#0 ap_return_17_preg = 32'd0;
#0 ap_return_18_preg = 32'd0;
#0 ap_return_19_preg = 1'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_pp0_flush_enable)) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state8)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((1'b1 == ap_CS_fsm_state8)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
                ap_return_0_preg[0] <= 1'b0;
        ap_return_0_preg[1] <= 1'b0;
        ap_return_0_preg[2] <= 1'b0;
        ap_return_0_preg[3] <= 1'b0;
        ap_return_0_preg[4] <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state27)) begin
                        ap_return_0_preg[4 : 0] <= zext_ln152_1_fu_2581_p1[4 : 0];
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_10_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state27)) begin
            ap_return_10_preg <= ap_phi_mux_port_cross_out_mix_array_num_2_phi_fu_1070_p10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_11_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state27)) begin
            ap_return_11_preg <= select_ln302_fu_2585_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_12_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state27)) begin
            ap_return_12_preg <= ap_phi_mux_port_cross_out_mix_array_max_fb_index_2_phi_fu_1119_p10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_13_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state27)) begin
            ap_return_13_preg <= ap_phi_mux_port_cross_out_mix_array_max_fb_length_2_phi_fu_1134_p10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_14_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state27)) begin
            ap_return_14_preg <= ap_phi_mux_port_cross_out_mix_array_max_subgraph_index_2_phi_fu_1149_p10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_15_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state27)) begin
            ap_return_15_preg <= ap_phi_mux_port_cross_out_mix_array_max_subgraph_length_2_phi_fu_1164_p10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_16_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state27)) begin
            ap_return_16_preg <= ap_phi_mux_pos_9_phi_fu_1232_p10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_17_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state27)) begin
            ap_return_17_preg <= port_in_fb_index_read;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_18_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state27)) begin
            ap_return_18_preg <= port_in_fb_length_read;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_19_preg <= 1'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state27)) begin
            ap_return_19_preg <= ap_phi_mux_dir_cross_next_V_2_phi_fu_1213_p10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state27)) begin
            ap_return_1_preg <= ap_phi_mux_address_next_4_phi_fu_1269_p10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_2_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state27)) begin
            ap_return_2_preg <= ap_phi_mux_length_next_2_phi_fu_1286_p10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_3_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state27)) begin
            ap_return_3_preg <= ap_phi_mux_nodeindex_next_4_phi_fu_1303_p10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_4_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state27)) begin
            ap_return_4_preg <= ap_phi_mux_broindex_next_2_phi_fu_1321_p10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_5_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state27)) begin
            ap_return_5_preg <= ap_phi_mux_phi_ln302_1_phi_fu_1197_p10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_6_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state27)) begin
            ap_return_6_preg <= ap_phi_mux_phi_ln302_phi_fu_1179_p10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_7_preg <= 8'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state27)) begin
            ap_return_7_preg <= level_next_reg_2943;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_8_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state27)) begin
            ap_return_8_preg <= port_in_nodeindex_read;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_9_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state27)) begin
            ap_return_9_preg <= port_in_broindex_read;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln870_2_fu_2284_p2 == 1'd1) & (or_ln186_1_fu_2272_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state23) & (1'd0 == and_ln188_fu_2290_p2))) begin
        address_next_3_reg_870 <= border_right_fu_2177_p2;
    end else if ((((icmp_ln870_2_reg_3350 == 1'd0) & (icmp_ln870_1_reg_3346 == 1'd1) & (or_ln186_1_reg_3342 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state13) & (1'd0 == and_ln188_reg_3354)) | ((or_ln186_1_reg_3342 == 1'd0) & (1'd1 == and_ln188_reg_3354) & (port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state13)) | ((or_ln186_1_fu_2272_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state23)) | ((icmp_ln870_2_fu_2284_p2 == 1'd0) & (icmp_ln870_1_fu_2278_p2 == 1'd0) & (or_ln186_1_fu_2272_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state23) & (1'd0 == and_ln188_fu_2290_p2)))) begin
        address_next_3_reg_870 <= port_in_address_read;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln279_fu_2821_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state32))) begin
        address_next_4_reg_1266 <= ap_phi_mux_address_next_637_phi_fu_1447_p8;
    end else if ((((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        address_next_4_reg_1266 <= address_next_649_reg_1026;
    end else if (((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        address_next_4_reg_1266 <= address_next_637_reg_1442;
    end else if (((ap_start == 1'b1) & (icmp_ln160_fu_1526_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        address_next_4_reg_1266 <= port_in_address_read;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state25) & (((dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | ((dir_cross_next_V_reg_905 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        address_next_637_reg_1442 <= address_next_reg_938;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | ((1'b1 == ap_CS_fsm_state25) & (((((~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln238_reg_3161 == 1'd1)) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln249_reg_3165 == 1'd1))) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln225_reg_3157 == 1'd1))) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3)))))) begin
        address_next_637_reg_1442 <= address_next_6_ph_reg_1389;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20))) begin
        address_next_649_reg_1026 <= port_in_address_read;
    end else if (((1'b1 == ap_CS_fsm_state25) & (((dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | ((dir_cross_next_V_reg_905 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        address_next_649_reg_1026 <= address_next_reg_938;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        address_next_6_ph_reg_1389 <= address_next_1_reg_3244;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        address_next_6_ph_reg_1389 <= port_cross_out_mix_array_mix_array2_q0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        address_next_6_ph_reg_1389 <= port_cross_out_mix_array_mix_array6_q0;
    end else if ((((icmp_ln249_fu_1875_p2 == 1'd1) & (icmp_ln238_fu_1871_p2 == 1'd0) & (icmp_ln225_fu_1867_p2 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14) & (1'b1 == ap_CS_fsm_state12)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd1) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd15) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd22) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd3) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (1'b1 == ap_CS_fsm_state12)) | ((port_in_op_read_2_read_fu_356_p2 == 5'd3) & (1'b1 == ap_CS_fsm_state12)) | ((1'b1 == ap_CS_fsm_state12) & ((port_in_op_read_2_read_fu_356_p2 == 5'd22) | ((port_in_op_read_2_read_fu_356_p2 == 5'd1) | (port_in_op_read_2_read_fu_356_p2 == 5'd15)))))) begin
        address_next_6_ph_reg_1389 <= port_in_address_read;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        if ((port_in_op_read_2_read_fu_356_p2 == 5'd0)) begin
            address_next_reg_938 <= ap_phi_mux_address_next_3_phi_fu_873_p10;
        end else if ((port_in_op_read_2_read_fu_356_p2 == 5'd14)) begin
            address_next_reg_938 <= port_in_address_read;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln279_fu_2821_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state32))) begin
        broindex_next_2_reg_1317 <= broindex_next_1_fu_2775_p3;
    end else if ((((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        broindex_next_2_reg_1317 <= broindex_next_reg_3510;
    end else if (((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        broindex_next_2_reg_1317 <= broindex_next_1_reg_3568;
    end else if (((ap_start == 1'b1) & (icmp_ln160_fu_1526_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        broindex_next_2_reg_1317 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state25) & (((dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | ((dir_cross_next_V_reg_905 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        dir_cross_next_534_reg_1481 <= dir_cross_next_V_reg_905;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | ((1'b1 == ap_CS_fsm_state25) & (((((~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln238_reg_3161 == 1'd1)) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln249_reg_3165 == 1'd1))) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln225_reg_3157 == 1'd1))) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3)))))) begin
        dir_cross_next_534_reg_1481 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20))) begin
        dir_cross_next_546_reg_1051 <= 1'd1;
    end else if (((1'b1 == ap_CS_fsm_state25) & (((dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | ((dir_cross_next_V_reg_905 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        dir_cross_next_546_reg_1051 <= dir_cross_next_V_reg_905;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln279_fu_2821_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state32))) begin
        dir_cross_next_V_2_reg_1209 <= ap_phi_mux_dir_cross_next_534_phi_fu_1487_p8;
    end else if ((((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        dir_cross_next_V_2_reg_1209 <= dir_cross_next_546_reg_1051;
    end else if (((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        dir_cross_next_V_2_reg_1209 <= dir_cross_next_534_reg_1481;
    end else if (((ap_start == 1'b1) & (icmp_ln160_fu_1526_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        dir_cross_next_V_2_reg_1209 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        if ((port_in_op_read_2_read_fu_356_p2 == 5'd0)) begin
            dir_cross_next_V_reg_905 <= or_ln206_fu_1992_p2;
        end else if ((port_in_op_read_2_read_fu_356_p2 == 5'd14)) begin
            dir_cross_next_V_reg_905 <= dir_cross_next_V_1_fu_1942_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state25) & (((dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | ((dir_cross_next_V_reg_905 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        empty_60_reg_1409 <= nodeindex_next_fu_2366_p3;
    end else if (((1'b1 == ap_CS_fsm_state25) & (((((~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln238_reg_3161 == 1'd1)) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln249_reg_3165 == 1'd1))) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln225_reg_3157 == 1'd1))) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))))) begin
        empty_60_reg_1409 <= port_cross_out_mix_array_mix_array7_q1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        empty_60_reg_1409 <= port_cross_out_mix_array_mix_array4_q0;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        empty_60_reg_1409 <= port_cross_out_mix_array_mix_array_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        empty_61_reg_1001 <= port_cross_out_mix_array_mix_array4_q0;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        empty_61_reg_1001 <= port_cross_out_mix_array_mix_array_q0;
    end else if (((1'b1 == ap_CS_fsm_state25) & (((dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | ((dir_cross_next_V_reg_905 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        empty_61_reg_1001 <= nodeindex_next_fu_2366_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln74_reg_3023 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        idx_reg_800 <= add_ln74_reg_3018;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        idx_reg_800 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((((icmp_ln870_2_reg_3350 == 1'd0) & (icmp_ln870_1_reg_3346 == 1'd1) & (or_ln186_1_reg_3342 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state13) & (1'd0 == and_ln188_reg_3354)) | ((icmp_ln870_2_fu_2284_p2 == 1'd1) & (or_ln186_1_fu_2272_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state23) & (1'd0 == and_ln188_fu_2290_p2)))) begin
        length_next_1_reg_886 <= 32'd0;
    end else if ((((or_ln186_1_reg_3342 == 1'd0) & (1'd1 == and_ln188_reg_3354) & (port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state13)) | ((or_ln186_1_fu_2272_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state23)) | ((icmp_ln870_2_fu_2284_p2 == 1'd0) & (icmp_ln870_1_fu_2278_p2 == 1'd0) & (or_ln186_1_fu_2272_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state23) & (1'd0 == and_ln188_fu_2290_p2)))) begin
        length_next_1_reg_886 <= port_in_length_read;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln279_fu_2821_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state32))) begin
        length_next_2_reg_1283 <= ap_phi_mux_length_next_438_phi_fu_1430_p8;
    end else if ((((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        length_next_2_reg_1283 <= length_next_450_reg_1013;
    end else if (((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        length_next_2_reg_1283 <= length_next_438_reg_1425;
    end else if (((ap_start == 1'b1) & (icmp_ln160_fu_1526_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        length_next_2_reg_1283 <= port_in_length_read;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state25) & (((dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | ((dir_cross_next_V_reg_905 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        length_next_438_reg_1425 <= length_next_reg_949;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | ((1'b1 == ap_CS_fsm_state25) & (((((~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln238_reg_3161 == 1'd1)) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln249_reg_3165 == 1'd1))) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln225_reg_3157 == 1'd1))) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3)))))) begin
        length_next_438_reg_1425 <= port_in_length_read;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20))) begin
        length_next_450_reg_1013 <= port_in_length_read;
    end else if (((1'b1 == ap_CS_fsm_state25) & (((dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | ((dir_cross_next_V_reg_905 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        length_next_450_reg_1013 <= length_next_reg_949;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        if ((port_in_op_read_2_read_fu_356_p2 == 5'd0)) begin
            length_next_reg_949 <= ap_phi_mux_length_next_1_phi_fu_890_p10;
        end else if ((port_in_op_read_2_read_fu_356_p2 == 5'd14)) begin
            length_next_reg_949 <= port_in_length_read;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state25) & (((dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | ((dir_cross_next_V_reg_905 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
                mul12639_reg_973[7 : 2] <= shl_ln275_1_fu_2331_p3[7 : 2];
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | ((1'b1 == ap_CS_fsm_state25) & (((((~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln238_reg_3161 == 1'd1)) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln249_reg_3165 == 1'd1))) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln225_reg_3157 == 1'd1))) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3)))))) begin
                mul12639_reg_973[7 : 2] <= shl_ln6_reg_3532[7 : 2];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln279_fu_2821_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state32))) begin
        nodeindex_next_4_reg_1300 <= ap_phi_mux_empty_60_phi_fu_1414_p8;
    end else if ((((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        nodeindex_next_4_reg_1300 <= empty_61_reg_1001;
    end else if (((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        nodeindex_next_4_reg_1300 <= empty_60_reg_1409;
    end else if (((ap_start == 1'b1) & (icmp_ln160_fu_1526_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        nodeindex_next_4_reg_1300 <= port_in_nodeindex_read;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln870_2_reg_3350 == 1'd0) & (icmp_ln870_1_reg_3346 == 1'd1) & (or_ln186_1_reg_3342 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state13) & (1'd0 == and_ln188_reg_3354))) begin
                opcode_next_3_reg_846[0] <= 1'b0;
        opcode_next_3_reg_846[1] <= 1'b1;
        opcode_next_3_reg_846[3] <= 1'b0;
    end else if (((icmp_ln870_2_fu_2284_p2 == 1'd1) & (or_ln186_1_fu_2272_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state23) & (1'd0 == and_ln188_fu_2290_p2))) begin
                opcode_next_3_reg_846[0] <= 1'b1;
        opcode_next_3_reg_846[1] <= 1'b1;
        opcode_next_3_reg_846[3] <= 1'b0;
    end else if (((or_ln186_1_reg_3342 == 1'd0) & (1'd1 == and_ln188_reg_3354) & (port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state13))) begin
                opcode_next_3_reg_846[0] <= 1'b0;
        opcode_next_3_reg_846[1] <= 1'b1;
        opcode_next_3_reg_846[3] <= 1'b1;
    end else if (((icmp_ln870_2_fu_2284_p2 == 1'd0) & (icmp_ln870_1_fu_2278_p2 == 1'd0) & (or_ln186_1_fu_2272_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state23) & (1'd0 == and_ln188_fu_2290_p2))) begin
                opcode_next_3_reg_846[0] <= 1'b0;
        opcode_next_3_reg_846[1] <= 1'b0;
        opcode_next_3_reg_846[3] <= 1'b0;
    end else if (((or_ln186_1_fu_2272_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state23))) begin
                opcode_next_3_reg_846[0] <= 1'b1;
        opcode_next_3_reg_846[1] <= 1'b0;
        opcode_next_3_reg_846[3] <= 1'b0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        if ((port_in_op_read_2_read_fu_356_p2 == 5'd0)) begin
            opcode_next_6_reg_926 <= ap_phi_mux_opcode_next_3_phi_fu_852_p10;
        end else if ((port_in_op_read_2_read_fu_356_p2 == 5'd14)) begin
            opcode_next_6_reg_926 <= 4'd14;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state25) & (((dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | ((dir_cross_next_V_reg_905 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        opcode_next_736_reg_1462 <= zext_ln152_fu_2327_p1;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | ((1'b1 == ap_CS_fsm_state25) & (((((~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln238_reg_3161 == 1'd1)) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln249_reg_3165 == 1'd1))) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln225_reg_3157 == 1'd1))) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3)))))) begin
        opcode_next_736_reg_1462 <= opcode_next_7_ph_reg_1360;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20))) begin
        opcode_next_748_reg_1039 <= port_in_op_read;
    end else if (((1'b1 == ap_CS_fsm_state25) & (((dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | ((dir_cross_next_V_reg_905 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        opcode_next_748_reg_1039 <= zext_ln152_fu_2327_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        opcode_next_7_ph_reg_1360 <= 5'd15;
    end else if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15))) begin
        opcode_next_7_ph_reg_1360 <= 5'd16;
    end else if (((icmp_ln249_fu_1875_p2 == 1'd1) & (icmp_ln238_fu_1871_p2 == 1'd0) & (icmp_ln225_fu_1867_p2 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14) & (1'b1 == ap_CS_fsm_state12))) begin
        opcode_next_7_ph_reg_1360 <= 5'd22;
    end else if (((~(port_in_op_read_2_read_fu_356_p2 == 5'd1) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd15) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd22) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd3) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (1'b1 == ap_CS_fsm_state12)) | ((1'b1 == ap_CS_fsm_state12) & ((port_in_op_read_2_read_fu_356_p2 == 5'd22) | ((port_in_op_read_2_read_fu_356_p2 == 5'd1) | (port_in_op_read_2_read_fu_356_p2 == 5'd15)))))) begin
        opcode_next_7_ph_reg_1360 <= port_in_op_read;
    end else if (((port_in_op_read_2_read_fu_356_p2 == 5'd3) & (1'b1 == ap_CS_fsm_state12))) begin
        opcode_next_7_ph_reg_1360 <= 5'd3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln279_fu_2821_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state32))) begin
        opcode_next_reg_1249 <= ap_phi_mux_opcode_next_736_phi_fu_1467_p8;
    end else if ((((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        opcode_next_reg_1249 <= opcode_next_748_reg_1039;
    end else if (((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        opcode_next_reg_1249 <= opcode_next_736_reg_1462;
    end else if (((ap_start == 1'b1) & (icmp_ln160_fu_1526_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        opcode_next_reg_1249 <= port_in_op_read;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln279_fu_2821_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state32))) begin
        phi_ln302_1_reg_1194 <= select_ln278_1_fu_2808_p3;
    end else if ((((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        phi_ln302_1_reg_1194 <= select_ln282_1_reg_3516;
    end else if (((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        phi_ln302_1_reg_1194 <= select_ln278_1_reg_3579;
    end else if (((ap_start == 1'b1) & (icmp_ln160_fu_1526_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_ln302_1_reg_1194 <= port_out_fb_index_read;
    end
end

always @ (posedge ap_clk) begin
    if ((((icmp_ln279_fu_2821_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state32)) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        phi_ln302_reg_1176 <= port_cross_out_mix_array_mix_array7_q0;
    end else if ((((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        phi_ln302_reg_1176 <= port_cross_out_mix_array_mix_array3_q0;
    end else if (((ap_start == 1'b1) & (icmp_ln160_fu_1526_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_ln302_reg_1176 <= port_out_fb_length_read;
    end
end

always @ (posedge ap_clk) begin
    if ((((icmp_ln279_fu_2821_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state32)) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        port_cross_out_mix_array_max_fb_index_2_reg_1116 <= pos_10_reg_3079;
    end else if (((ap_start == 1'b1) & (icmp_ln160_fu_1526_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        port_cross_out_mix_array_max_fb_index_2_reg_1116 <= port_cross_out_node_max_fb_index_read;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (icmp_ln160_fu_1526_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        port_cross_out_mix_array_max_fb_length_0_fu_250 <= port_cross_out_node_max_fb_length_read;
    end else if (((icmp_ln104_fu_1805_p2 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln74_reg_3023_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        port_cross_out_mix_array_max_fb_length_0_fu_250 <= readbuf5_reg_3057;
    end
end

always @ (posedge ap_clk) begin
    if ((((icmp_ln279_fu_2821_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state32)) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        port_cross_out_mix_array_max_fb_length_2_reg_1131 <= port_cross_out_mix_array_max_fb_length_0_load_reg_3128;
    end else if (((ap_start == 1'b1) & (icmp_ln160_fu_1526_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        port_cross_out_mix_array_max_fb_length_2_reg_1131 <= port_cross_out_node_max_fb_length_read;
    end
end

always @ (posedge ap_clk) begin
    if ((((icmp_ln279_fu_2821_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state32)) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        port_cross_out_mix_array_max_subgraph_index_2_reg_1146 <= pos_15_reg_3109;
    end else if (((ap_start == 1'b1) & (icmp_ln160_fu_1526_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        port_cross_out_mix_array_max_subgraph_index_2_reg_1146 <= port_cross_out_node_max_subgraph_index_read;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (icmp_ln160_fu_1526_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        port_cross_out_mix_array_max_subgraph_length_0_fu_246 <= port_cross_out_node_max_subgraph_length_read;
    end else if (((icmp_ln104_fu_1805_p2 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln74_reg_3023_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        port_cross_out_mix_array_max_subgraph_length_0_fu_246 <= readbuf7_reg_3069;
    end
end

always @ (posedge ap_clk) begin
    if ((((icmp_ln279_fu_2821_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state32)) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        port_cross_out_mix_array_max_subgraph_length_2_reg_1161 <= port_cross_out_mix_array_max_subgraph_length_0_load_reg_3119;
    end else if (((ap_start == 1'b1) & (icmp_ln160_fu_1526_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        port_cross_out_mix_array_max_subgraph_length_2_reg_1161 <= port_cross_out_node_max_subgraph_length_read;
    end
end

always @ (posedge ap_clk) begin
    if ((((icmp_ln279_fu_2821_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state32)) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        port_cross_out_mix_array_num_2_reg_1067 <= pos_11_reg_3095;
    end else if (((ap_start == 1'b1) & (icmp_ln160_fu_1526_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        port_cross_out_mix_array_num_2_reg_1067 <= port_cross_out_node_num_read;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state25) & (((dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | ((dir_cross_next_V_reg_905 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        pos_1035_reg_986 <= pos_2_reg_915;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | ((1'b1 == ap_CS_fsm_state25) & (((((~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln238_reg_3161 == 1'd1)) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln249_reg_3165 == 1'd1))) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln225_reg_3157 == 1'd1))) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3)))))) begin
        pos_1035_reg_986 <= pos_10_ph_reg_1334;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20))) begin
        pos_1047_reg_960 <= pos_11_reg_3095;
    end else if (((1'b1 == ap_CS_fsm_state25) & (((dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | ((dir_cross_next_V_reg_905 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        pos_1047_reg_960 <= pos_2_reg_915;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | ((icmp_ln249_fu_1875_p2 == 1'd1) & (icmp_ln238_fu_1871_p2 == 1'd0) & (icmp_ln225_fu_1867_p2 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14) & (1'b1 == ap_CS_fsm_state12)) | ((1'b1 == ap_CS_fsm_state12) & ((port_in_op_read_2_read_fu_356_p2 == 5'd22) | ((port_in_op_read_2_read_fu_356_p2 == 5'd1) | (port_in_op_read_2_read_fu_356_p2 == 5'd15)))))) begin
        pos_10_ph_reg_1334 <= pos_10_reg_3079;
    end else if ((~(port_in_op_read_2_read_fu_356_p2 == 5'd1) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd15) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd22) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd3) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (1'b1 == ap_CS_fsm_state12))) begin
        pos_10_ph_reg_1334 <= pos_reg_812;
    end else if (((port_in_op_read_2_read_fu_356_p2 == 5'd3) & (1'b1 == ap_CS_fsm_state12))) begin
        pos_10_ph_reg_1334 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (icmp_ln160_fu_1526_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        pos_1_fu_234 <= port_cross_out_node_max_fb_index_read;
    end else if (((icmp_ln104_fu_1805_p2 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln74_reg_3023_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        pos_1_fu_234 <= readbuf4_reg_3050;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        if ((port_in_op_read_2_read_fu_356_p2 == 5'd0)) begin
            pos_2_reg_915 <= pos_reg_812;
        end else if ((port_in_op_read_2_read_fu_356_p2 == 5'd14)) begin
            pos_2_reg_915 <= pos_15_reg_3109;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (icmp_ln160_fu_1526_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        pos_4_fu_238 <= port_cross_out_node_num_read;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln87_reg_3075 == 1'd1) & (icmp_ln74_reg_3023_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        pos_4_fu_238 <= num_2_reg_3027;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (icmp_ln160_fu_1526_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        pos_6_fu_242 <= port_cross_out_node_max_subgraph_index_read;
    end else if (((icmp_ln104_fu_1805_p2 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln74_reg_3023_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        pos_6_fu_242 <= readbuf6_reg_3063;
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        pos_9_reg_1228 <= pos_1047_reg_960;
    end else if ((((icmp_ln279_fu_2821_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state32)) | ((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        pos_9_reg_1228 <= pos_1035_reg_986;
    end else if (((ap_start == 1'b1) & (icmp_ln160_fu_1526_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        pos_9_reg_1228 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln74_reg_3023_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        pos_reg_812 <= ap_phi_mux_pos_627_phi_fu_838_p4;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        pos_reg_812 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (icmp_ln160_fu_1526_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        write_flag38_0_fu_258 <= 1'd0;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln87_reg_3075 == 1'd1) & (icmp_ln74_reg_3023_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        write_flag38_0_fu_258 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((((icmp_ln279_fu_2821_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state32)) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        write_flag38_2_reg_1082 <= write_flag38_0_load_reg_3146;
    end else if (((ap_start == 1'b1) & (icmp_ln160_fu_1526_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        write_flag38_2_reg_1082 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln74_reg_3018 <= add_ln74_fu_1584_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        address_next_1_reg_3244 <= address_next_1_fu_2009_p3;
        port_cross_out_mix_array_mix_array3_addr_2_reg_3249 <= zext_ln229_reg_3169;
        port_cross_out_mix_array_mix_array7_addr_4_reg_3254 <= zext_ln229_reg_3169;
        trunc_ln229_reg_3239 <= trunc_ln229_fu_2006_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((or_ln186_1_fu_2272_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state23))) begin
        and_ln188_reg_3354 <= and_ln188_fu_2290_p2;
        icmp_ln870_1_reg_3346 <= icmp_ln870_1_fu_2278_p2;
        icmp_ln870_2_reg_3350 <= icmp_ln870_2_fu_2284_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        broindex_next_1_reg_3568 <= broindex_next_1_fu_2775_p3;
        icmp_ln279_reg_3585 <= icmp_ln279_fu_2821_p2;
        select_ln278_1_reg_3579 <= select_ln278_1_fu_2808_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        broindex_next_reg_3510 <= broindex_next_fu_2552_p3;
        icmp_ln281_reg_3506 <= icmp_ln281_fu_2532_p2;
        select_ln282_1_reg_3516 <= select_ln282_1_fu_2568_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        icmp_ln160_reg_2948 <= icmp_ln160_fu_1526_p2;
        level_next_reg_2943 <= level_next_fu_1516_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        icmp_ln167_1_reg_3293 <= icmp_ln167_1_fu_2082_p2;
        icmp_ln167_reg_3288 <= icmp_ln167_fu_2068_p2;
        icmp_ln168_1_reg_3309 <= icmp_ln168_1_fu_2115_p2;
        icmp_ln168_reg_3304 <= icmp_ln168_fu_2110_p2;
        port_cross_out_mix_array_mix_array2_addr_4_reg_3322 <= zext_ln178_fu_2130_p1;
        port_cross_out_mix_array_mix_array6_addr_4_reg_3327 <= zext_ln178_fu_2130_p1;
        select_ln167_2_reg_3298 <= select_ln167_2_fu_2096_p3;
        trunc_ln167_1_reg_3282 <= trunc_ln167_1_fu_2056_p1;
        zext_ln178_reg_3314[5 : 0] <= zext_ln178_fu_2130_p1[5 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        icmp_ln176_reg_3332 <= icmp_ln176_fu_2172_p2;
        or_ln186_1_reg_3342 <= or_ln186_1_fu_2272_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((port_in_op_read_2_read_fu_356_p2 == 5'd14) & (1'b1 == ap_CS_fsm_state12))) begin
        icmp_ln225_reg_3157 <= icmp_ln225_fu_1867_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln225_fu_1867_p2 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14) & (1'b1 == ap_CS_fsm_state12))) begin
        icmp_ln238_reg_3161 <= icmp_ln238_fu_1871_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln238_fu_1871_p2 == 1'd0) & (icmp_ln225_fu_1867_p2 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14) & (1'b1 == ap_CS_fsm_state12))) begin
        icmp_ln249_reg_3165 <= icmp_ln249_fu_1875_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln74_reg_3023 <= icmp_ln74_fu_1590_p2;
        icmp_ln74_reg_3023_pp0_iter1_reg <= icmp_ln74_reg_3023;
        idx_reg_800_pp0_iter1_reg <= idx_reg_800;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln74_reg_3023 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln87_reg_3075 <= icmp_ln87_fu_1670_p2;
        num_2_reg_3027 <= num_2_fu_1596_p1;
        readbuf1_reg_3034 <= {{m_axi_buf_dram_manage_RDATA[63:32]}};
        readbuf2_reg_3040 <= {{m_axi_buf_dram_manage_RDATA[95:64]}};
        readbuf3_reg_3045 <= {{m_axi_buf_dram_manage_RDATA[127:96]}};
        readbuf4_reg_3050 <= {{m_axi_buf_dram_manage_RDATA[159:128]}};
        readbuf5_reg_3057 <= {{m_axi_buf_dram_manage_RDATA[191:160]}};
        readbuf6_reg_3063 <= {{m_axi_buf_dram_manage_RDATA[223:192]}};
        readbuf7_reg_3069 <= {{m_axi_buf_dram_manage_RDATA[255:224]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state25) & ((((~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2)) | ((dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((dir_cross_next_V_reg_905 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        lshr_ln9_reg_3450 <= {{add_ln283_fu_2448_p2[7:3]}};
        trunc_ln281_4_reg_3415 <= trunc_ln281_4_fu_2398_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln160_fu_1526_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        mul_i_reg_3007 <= mul_i_fu_1538_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln87_fu_1670_p2 == 1'd1) & (icmp_ln74_reg_3023 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        num_fu_262 <= num_2_fu_1596_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        port_cross_out_mix_array_max_fb_length_0_load_reg_3128 <= port_cross_out_mix_array_max_fb_length_0_fu_250;
        port_cross_out_mix_array_max_subgraph_length_0_load_reg_3119 <= port_cross_out_mix_array_max_subgraph_length_0_fu_246;
        pos_10_reg_3079 <= pos_1_fu_234;
        pos_11_reg_3095 <= pos_4_fu_238;
        pos_15_reg_3109 <= pos_6_fu_242;
        readbuf1_4_load_reg_3138 <= readbuf1_4_fu_254;
        write_flag38_0_load_reg_3146 <= write_flag38_0_fu_258;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln225_fu_1867_p2 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd14) & (1'b1 == ap_CS_fsm_state12))) begin
        port_cross_out_mix_array_mix_array2_addr_1_reg_3175 <= zext_ln229_fu_1879_p1;
        port_cross_out_mix_array_mix_array6_addr_2_reg_3180 <= zext_ln229_fu_1879_p1;
        zext_ln229_reg_3169[5 : 0] <= zext_ln229_fu_1879_p1[5 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        port_cross_out_mix_array_mix_array3_addr_1_reg_3200 <= zext_ln167_1_fu_1936_p1;
        port_cross_out_mix_array_mix_array7_addr_2_reg_3205 <= zext_ln167_1_fu_1936_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln870_2_fu_2284_p2 == 1'd0) & (icmp_ln870_1_fu_2278_p2 == 1'd1) & (or_ln186_1_fu_2272_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state23) & (1'd0 == and_ln188_fu_2290_p2))) begin
        port_cross_out_mix_array_mix_array3_addr_4_reg_3358 <= zext_ln178_reg_3314;
        port_cross_out_mix_array_mix_array7_addr_6_reg_3363 <= zext_ln178_reg_3314;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state25) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (dir_cross_next_V_reg_905 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln249_reg_3165 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln238_reg_3161 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln225_reg_3157 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((dir_cross_next_V_reg_905 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        port_cross_out_mix_array_mix_array3_addr_7_reg_3501 <= zext_ln278_fu_2517_p1;
        trunc_ln277_1_reg_3460 <= trunc_ln277_1_fu_2482_p1;
        trunc_ln278_reg_3480[2] <= trunc_ln278_fu_2503_p1[2];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        port_cross_out_mix_array_mix_array7_addr_5_reg_3553 <= zext_ln275_1_fu_2741_p1;
        shl_ln6_reg_3532[7 : 2] <= shl_ln6_fu_2711_p3[7 : 2];
        trunc_ln275_1_reg_3539[2] <= trunc_ln275_1_fu_2723_p3[2];
    end
end

always @ (posedge ap_clk) begin
    if ((((icmp_ln279_fu_2821_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state32)) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        port_cross_out_mix_array_next_free_offset_2_reg_1099 <= readbuf1_4_load_reg_3138;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln87_reg_3075 == 1'd1) & (icmp_ln74_reg_3023_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        readbuf1_4_fu_254 <= readbuf1_reg_3034;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_1511 <= port_cross_out_mix_array_mix_array2_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        trunc_ln275_8_reg_3378 <= trunc_ln275_8_fu_2302_p1;
        trunc_ln275_9_reg_3383 <= trunc_ln275_9_fu_2306_p1;
    end
end

always @ (*) begin
    if (((icmp_ln74_fu_1590_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_pp0_flush_enable = 1'b1;
    end else begin
        ap_condition_pp0_flush_enable = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln870_2_reg_3350 == 1'd0) & (icmp_ln870_1_reg_3346 == 1'd1) & (or_ln186_1_reg_3342 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state13) & (1'd0 == and_ln188_reg_3354)) | ((or_ln186_1_reg_3342 == 1'd0) & (1'd1 == and_ln188_reg_3354) & (port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state13)))) begin
        ap_phi_mux_address_next_3_phi_fu_873_p10 = port_in_address_read;
    end else begin
        ap_phi_mux_address_next_3_phi_fu_873_p10 = address_next_3_reg_870;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        ap_phi_mux_address_next_4_phi_fu_1269_p10 = address_next_649_reg_1026;
    end else if (((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        ap_phi_mux_address_next_4_phi_fu_1269_p10 = address_next_637_reg_1442;
    end else begin
        ap_phi_mux_address_next_4_phi_fu_1269_p10 = address_next_4_reg_1266;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        ap_phi_mux_broindex_next_2_phi_fu_1321_p10 = broindex_next_reg_3510;
    end else if (((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        ap_phi_mux_broindex_next_2_phi_fu_1321_p10 = broindex_next_1_reg_3568;
    end else begin
        ap_phi_mux_broindex_next_2_phi_fu_1321_p10 = broindex_next_2_reg_1317;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        ap_phi_mux_dir_cross_next_V_2_phi_fu_1213_p10 = dir_cross_next_546_reg_1051;
    end else if (((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        ap_phi_mux_dir_cross_next_V_2_phi_fu_1213_p10 = dir_cross_next_534_reg_1481;
    end else begin
        ap_phi_mux_dir_cross_next_V_2_phi_fu_1213_p10 = dir_cross_next_V_2_reg_1209;
    end
end

always @ (*) begin
    if (((icmp_ln74_reg_3023 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_idx_phi_fu_804_p4 = add_ln74_reg_3018;
    end else begin
        ap_phi_mux_idx_phi_fu_804_p4 = idx_reg_800;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_2744)) begin
        if ((1'b1 == ap_condition_2746)) begin
            ap_phi_mux_length_next_1_phi_fu_890_p10 = 32'd0;
        end else if ((1'd1 == and_ln188_reg_3354)) begin
            ap_phi_mux_length_next_1_phi_fu_890_p10 = port_in_length_read;
        end else begin
            ap_phi_mux_length_next_1_phi_fu_890_p10 = length_next_1_reg_886;
        end
    end else begin
        ap_phi_mux_length_next_1_phi_fu_890_p10 = length_next_1_reg_886;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        ap_phi_mux_length_next_2_phi_fu_1286_p10 = length_next_450_reg_1013;
    end else if (((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        ap_phi_mux_length_next_2_phi_fu_1286_p10 = length_next_438_reg_1425;
    end else begin
        ap_phi_mux_length_next_2_phi_fu_1286_p10 = length_next_2_reg_1283;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        if ((1'b1 == ap_condition_797)) begin
            ap_phi_mux_mul12639_phi_fu_976_p8 = shl_ln275_1_fu_2331_p3;
        end else if ((1'b1 == ap_condition_614)) begin
            ap_phi_mux_mul12639_phi_fu_976_p8 = shl_ln6_reg_3532;
        end else begin
            ap_phi_mux_mul12639_phi_fu_976_p8 = mul12639_reg_973;
        end
    end else begin
        ap_phi_mux_mul12639_phi_fu_976_p8 = mul12639_reg_973;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        ap_phi_mux_nodeindex_next_4_phi_fu_1303_p10 = empty_61_reg_1001;
    end else if (((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        ap_phi_mux_nodeindex_next_4_phi_fu_1303_p10 = empty_60_reg_1409;
    end else begin
        ap_phi_mux_nodeindex_next_4_phi_fu_1303_p10 = nodeindex_next_4_reg_1300;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_2744)) begin
        if ((1'b1 == ap_condition_2746)) begin
            ap_phi_mux_opcode_next_3_phi_fu_852_p10 = 4'd2;
        end else if ((1'd1 == and_ln188_reg_3354)) begin
            ap_phi_mux_opcode_next_3_phi_fu_852_p10 = 4'd10;
        end else begin
            ap_phi_mux_opcode_next_3_phi_fu_852_p10 = opcode_next_3_reg_846;
        end
    end else begin
        ap_phi_mux_opcode_next_3_phi_fu_852_p10 = opcode_next_3_reg_846;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        ap_phi_mux_opcode_next_phi_fu_1252_p10 = opcode_next_748_reg_1039;
    end else if (((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        ap_phi_mux_opcode_next_phi_fu_1252_p10 = opcode_next_736_reg_1462;
    end else begin
        ap_phi_mux_opcode_next_phi_fu_1252_p10 = opcode_next_reg_1249;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        ap_phi_mux_phi_ln302_1_phi_fu_1197_p10 = select_ln282_1_reg_3516;
    end else if (((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        ap_phi_mux_phi_ln302_1_phi_fu_1197_p10 = select_ln278_1_reg_3579;
    end else begin
        ap_phi_mux_phi_ln302_1_phi_fu_1197_p10 = phi_ln302_1_reg_1194;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        ap_phi_mux_phi_ln302_phi_fu_1179_p10 = port_cross_out_mix_array_mix_array7_q0;
    end else if ((((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        ap_phi_mux_phi_ln302_phi_fu_1179_p10 = port_cross_out_mix_array_mix_array3_q0;
    end else begin
        ap_phi_mux_phi_ln302_phi_fu_1179_p10 = phi_ln302_reg_1176;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        ap_phi_mux_port_cross_out_mix_array_max_fb_index_2_phi_fu_1119_p10 = pos_10_reg_3079;
    end else begin
        ap_phi_mux_port_cross_out_mix_array_max_fb_index_2_phi_fu_1119_p10 = port_cross_out_mix_array_max_fb_index_2_reg_1116;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        ap_phi_mux_port_cross_out_mix_array_max_fb_length_2_phi_fu_1134_p10 = port_cross_out_mix_array_max_fb_length_0_load_reg_3128;
    end else begin
        ap_phi_mux_port_cross_out_mix_array_max_fb_length_2_phi_fu_1134_p10 = port_cross_out_mix_array_max_fb_length_2_reg_1131;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        ap_phi_mux_port_cross_out_mix_array_max_subgraph_index_2_phi_fu_1149_p10 = pos_15_reg_3109;
    end else begin
        ap_phi_mux_port_cross_out_mix_array_max_subgraph_index_2_phi_fu_1149_p10 = port_cross_out_mix_array_max_subgraph_index_2_reg_1146;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        ap_phi_mux_port_cross_out_mix_array_max_subgraph_length_2_phi_fu_1164_p10 = port_cross_out_mix_array_max_subgraph_length_0_load_reg_3119;
    end else begin
        ap_phi_mux_port_cross_out_mix_array_max_subgraph_length_2_phi_fu_1164_p10 = port_cross_out_mix_array_max_subgraph_length_2_reg_1161;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        ap_phi_mux_port_cross_out_mix_array_next_free_offset_2_phi_fu_1103_p10 = readbuf1_4_load_reg_3138;
    end else begin
        ap_phi_mux_port_cross_out_mix_array_next_free_offset_2_phi_fu_1103_p10 = port_cross_out_mix_array_next_free_offset_2_reg_1099;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        ap_phi_mux_port_cross_out_mix_array_num_2_phi_fu_1070_p10 = pos_11_reg_3095;
    end else begin
        ap_phi_mux_port_cross_out_mix_array_num_2_phi_fu_1070_p10 = port_cross_out_mix_array_num_2_reg_1067;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        if ((1'b1 == ap_condition_797)) begin
            ap_phi_mux_pos_1035_phi_fu_989_p8 = pos_2_reg_915;
        end else if ((1'b1 == ap_condition_614)) begin
            ap_phi_mux_pos_1035_phi_fu_989_p8 = pos_10_ph_reg_1334;
        end else begin
            ap_phi_mux_pos_1035_phi_fu_989_p8 = pos_1035_reg_986;
        end
    end else begin
        ap_phi_mux_pos_1035_phi_fu_989_p8 = pos_1035_reg_986;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) & (((dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | ((dir_cross_next_V_reg_905 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        ap_phi_mux_pos_1047_phi_fu_963_p6 = pos_2_reg_915;
    end else begin
        ap_phi_mux_pos_1047_phi_fu_963_p6 = pos_1047_reg_960;
    end
end

always @ (*) begin
    if ((icmp_ln74_reg_3023_pp0_iter1_reg == 1'd0)) begin
        if ((icmp_ln87_reg_3075 == 1'd1)) begin
            ap_phi_mux_pos_3_phi_fu_827_p4 = pos_reg_812;
        end else if ((icmp_ln87_reg_3075 == 1'd0)) begin
            ap_phi_mux_pos_3_phi_fu_827_p4 = select_ln62_fu_1783_p3;
        end else begin
            ap_phi_mux_pos_3_phi_fu_827_p4 = ap_phi_reg_pp0_iter2_pos_3_reg_824;
        end
    end else begin
        ap_phi_mux_pos_3_phi_fu_827_p4 = ap_phi_reg_pp0_iter2_pos_3_reg_824;
    end
end

always @ (*) begin
    if ((icmp_ln74_reg_3023_pp0_iter1_reg == 1'd0)) begin
        if ((icmp_ln104_fu_1805_p2 == 1'd1)) begin
            ap_phi_mux_pos_627_phi_fu_838_p4 = ap_phi_mux_pos_3_phi_fu_827_p4;
        end else if ((icmp_ln104_fu_1805_p2 == 1'd0)) begin
            ap_phi_mux_pos_627_phi_fu_838_p4 = pos_14_fu_1842_p3;
        end else begin
            ap_phi_mux_pos_627_phi_fu_838_p4 = ap_phi_reg_pp0_iter2_pos_627_reg_834;
        end
    end else begin
        ap_phi_mux_pos_627_phi_fu_838_p4 = ap_phi_reg_pp0_iter2_pos_627_reg_834;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        ap_phi_mux_pos_9_phi_fu_1232_p10 = pos_1047_reg_960;
    end else if (((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        ap_phi_mux_pos_9_phi_fu_1232_p10 = pos_1035_reg_986;
    end else begin
        ap_phi_mux_pos_9_phi_fu_1232_p10 = pos_9_reg_1228;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln281_reg_3506 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((icmp_ln281_reg_3506 == 1'd0) & (dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state27) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln249_reg_3165 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln238_reg_3161 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln225_reg_3157 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln279_reg_3585 == 1'd1) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((icmp_ln279_reg_3585 == 1'd1) & (dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln160_reg_2948 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))))) begin
        ap_phi_mux_write_flag38_2_phi_fu_1086_p10 = write_flag38_0_load_reg_3146;
    end else begin
        ap_phi_mux_write_flag38_2_phi_fu_1086_p10 = write_flag38_2_reg_1082;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ap_return_0 = zext_ln152_1_fu_2581_p1;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ap_return_1 = ap_phi_mux_address_next_4_phi_fu_1269_p10;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ap_return_10 = ap_phi_mux_port_cross_out_mix_array_num_2_phi_fu_1070_p10;
    end else begin
        ap_return_10 = ap_return_10_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ap_return_11 = select_ln302_fu_2585_p3;
    end else begin
        ap_return_11 = ap_return_11_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ap_return_12 = ap_phi_mux_port_cross_out_mix_array_max_fb_index_2_phi_fu_1119_p10;
    end else begin
        ap_return_12 = ap_return_12_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ap_return_13 = ap_phi_mux_port_cross_out_mix_array_max_fb_length_2_phi_fu_1134_p10;
    end else begin
        ap_return_13 = ap_return_13_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ap_return_14 = ap_phi_mux_port_cross_out_mix_array_max_subgraph_index_2_phi_fu_1149_p10;
    end else begin
        ap_return_14 = ap_return_14_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ap_return_15 = ap_phi_mux_port_cross_out_mix_array_max_subgraph_length_2_phi_fu_1164_p10;
    end else begin
        ap_return_15 = ap_return_15_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ap_return_16 = ap_phi_mux_pos_9_phi_fu_1232_p10;
    end else begin
        ap_return_16 = ap_return_16_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ap_return_17 = port_in_fb_index_read;
    end else begin
        ap_return_17 = ap_return_17_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ap_return_18 = port_in_fb_length_read;
    end else begin
        ap_return_18 = ap_return_18_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ap_return_19 = ap_phi_mux_dir_cross_next_V_2_phi_fu_1213_p10;
    end else begin
        ap_return_19 = ap_return_19_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ap_return_2 = ap_phi_mux_length_next_2_phi_fu_1286_p10;
    end else begin
        ap_return_2 = ap_return_2_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ap_return_3 = ap_phi_mux_nodeindex_next_4_phi_fu_1303_p10;
    end else begin
        ap_return_3 = ap_return_3_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ap_return_4 = ap_phi_mux_broindex_next_2_phi_fu_1321_p10;
    end else begin
        ap_return_4 = ap_return_4_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ap_return_5 = ap_phi_mux_phi_ln302_1_phi_fu_1197_p10;
    end else begin
        ap_return_5 = ap_return_5_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ap_return_6 = ap_phi_mux_phi_ln302_phi_fu_1179_p10;
    end else begin
        ap_return_6 = ap_return_6_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ap_return_7 = level_next_reg_2943;
    end else begin
        ap_return_7 = ap_return_7_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ap_return_8 = port_in_nodeindex_read;
    end else begin
        ap_return_8 = ap_return_8_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        ap_return_9 = port_in_broindex_read;
    end else begin
        ap_return_9 = ap_return_9_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_dram_manage_blk_n_AR = m_axi_buf_dram_manage_ARREADY;
    end else begin
        buf_dram_manage_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln74_reg_3023 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_dram_manage_blk_n_R = m_axi_buf_dram_manage_RVALID;
    end else begin
        buf_dram_manage_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((m_axi_buf_dram_manage_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        m_axi_buf_dram_manage_ARVALID = 1'b1;
    end else begin
        m_axi_buf_dram_manage_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln74_reg_3023 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_axi_buf_dram_manage_RREADY = 1'b1;
    end else begin
        m_axi_buf_dram_manage_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        port_cross_out_mix_array_mix_array1_ce0 = 1'b1;
    end else begin
        port_cross_out_mix_array_mix_array1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln74_reg_3023_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        port_cross_out_mix_array_mix_array1_we0 = 1'b1;
    end else begin
        port_cross_out_mix_array_mix_array1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (dir_cross_next_V_reg_905 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln249_reg_3165 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln238_reg_3161 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln225_reg_3157 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((dir_cross_next_V_reg_905 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        port_cross_out_mix_array_mix_array2_address0 = zext_ln278_fu_2517_p1;
    end else if (((1'b1 == ap_CS_fsm_state25) & ((((~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2)) | ((dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((dir_cross_next_V_reg_905 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        port_cross_out_mix_array_mix_array2_address0 = zext_ln282_fu_2441_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        port_cross_out_mix_array_mix_array2_address0 = port_cross_out_mix_array_mix_array2_addr_4_reg_3322;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        port_cross_out_mix_array_mix_array2_address0 = zext_ln178_fu_2130_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        port_cross_out_mix_array_mix_array2_address0 = port_cross_out_mix_array_mix_array2_addr_1_reg_3175;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        port_cross_out_mix_array_mix_array2_address0 = zext_ln243_fu_1997_p1;
    end else if (((port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        port_cross_out_mix_array_mix_array2_address0 = zext_ln167_fu_1913_p1;
    end else if (((icmp_ln225_fu_1867_p2 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd14) & (1'b1 == ap_CS_fsm_state12))) begin
        port_cross_out_mix_array_mix_array2_address0 = zext_ln229_fu_1879_p1;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        port_cross_out_mix_array_mix_array2_address0 = zext_ln154_fu_1702_p1;
    end else begin
        port_cross_out_mix_array_mix_array2_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state23) | ((1'b1 == ap_CS_fsm_state25) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (dir_cross_next_V_reg_905 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln249_reg_3165 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln238_reg_3161 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln225_reg_3157 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((dir_cross_next_V_reg_905 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state25) & ((((~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2)) | ((dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((dir_cross_next_V_reg_905 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state12)) | ((icmp_ln225_fu_1867_p2 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd14) & (1'b1 == ap_CS_fsm_state12)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        port_cross_out_mix_array_mix_array2_ce0 = 1'b1;
    end else begin
        port_cross_out_mix_array_mix_array2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        port_cross_out_mix_array_mix_array2_d0 = port_in_address_read;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        port_cross_out_mix_array_mix_array2_d0 = add_ln231_fu_2017_p2;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        port_cross_out_mix_array_mix_array2_d0 = readbuf4_reg_3050;
    end else begin
        port_cross_out_mix_array_mix_array2_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln104_fu_1805_p2 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln74_reg_3023_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_ln870_2_fu_2284_p2 == 1'd0) & (icmp_ln870_1_fu_2278_p2 == 1'd1) & (or_ln186_1_fu_2272_p2 == 1'd0) & (trunc_ln167_1_reg_3282 == 1'd0) & (1'b1 == ap_CS_fsm_state23) & (1'd0 == and_ln188_fu_2290_p2)) | ((trunc_ln229_fu_2006_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state17)))) begin
        port_cross_out_mix_array_mix_array2_we0 = 1'b1;
    end else begin
        port_cross_out_mix_array_mix_array2_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        port_cross_out_mix_array_mix_array3_address0 = port_cross_out_mix_array_mix_array3_addr_7_reg_3501;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        port_cross_out_mix_array_mix_array3_address0 = zext_ln283_fu_2576_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        port_cross_out_mix_array_mix_array3_address0 = zext_ln277_fu_2496_p1;
    end else if (((or_ln186_1_fu_2272_p2 == 1'd0) & (icmp_ln167_1_reg_3293 == 1'd1) & (icmp_ln167_reg_3288 == 1'd0) & (1'd1 == and_ln188_fu_2290_p2) & (1'b1 == ap_CS_fsm_state23))) begin
        port_cross_out_mix_array_mix_array3_address0 = port_cross_out_mix_array_mix_array3_addr_3_gep_fu_618_p3;
    end else if (((icmp_ln870_2_fu_2284_p2 == 1'd0) & (icmp_ln870_1_fu_2278_p2 == 1'd1) & (or_ln186_1_fu_2272_p2 == 1'd0) & (trunc_ln167_1_reg_3282 == 1'd0) & (1'b1 == ap_CS_fsm_state23) & (1'd0 == and_ln188_fu_2290_p2))) begin
        port_cross_out_mix_array_mix_array3_address0 = zext_ln178_reg_3314;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        port_cross_out_mix_array_mix_array3_address0 = port_cross_out_mix_array_mix_array3_addr_2_reg_3249;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        port_cross_out_mix_array_mix_array3_address0 = zext_ln229_reg_3169;
    end else if ((((icmp_ln870_2_fu_2284_p2 == 1'd1) & (or_ln186_1_fu_2272_p2 == 1'd0) & (icmp_ln167_reg_3288 == 1'd1) & (1'b1 == ap_CS_fsm_state23) & (1'd0 == and_ln188_fu_2290_p2)) | ((or_ln186_1_reg_3342 == 1'd0) & (icmp_ln167_reg_3288 == 1'd1) & (1'd1 == and_ln188_reg_3354) & (port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state13)))) begin
        port_cross_out_mix_array_mix_array3_address0 = port_cross_out_mix_array_mix_array3_addr_1_reg_3200;
    end else if (((icmp_ln870_2_reg_3350 == 1'd0) & (icmp_ln870_1_reg_3346 == 1'd1) & (or_ln186_1_reg_3342 == 1'd0) & (trunc_ln167_1_reg_3282 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state13) & (1'd0 == and_ln188_reg_3354))) begin
        port_cross_out_mix_array_mix_array3_address0 = port_cross_out_mix_array_mix_array3_addr_4_reg_3358;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        port_cross_out_mix_array_mix_array3_address0 = zext_ln167_1_fu_1936_p1;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        port_cross_out_mix_array_mix_array3_address0 = zext_ln154_fu_1702_p1;
    end else begin
        port_cross_out_mix_array_mix_array3_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state12) | ((icmp_ln870_2_reg_3350 == 1'd0) & (icmp_ln870_1_reg_3346 == 1'd1) & (or_ln186_1_reg_3342 == 1'd0) & (trunc_ln167_1_reg_3282 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state13) & (1'd0 == and_ln188_reg_3354)) | ((icmp_ln870_2_fu_2284_p2 == 1'd1) & (or_ln186_1_fu_2272_p2 == 1'd0) & (icmp_ln167_reg_3288 == 1'd1) & (1'b1 == ap_CS_fsm_state23) & (1'd0 == and_ln188_fu_2290_p2)) | ((or_ln186_1_reg_3342 == 1'd0) & (icmp_ln167_reg_3288 == 1'd1) & (1'd1 == and_ln188_reg_3354) & (port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state13)) | ((icmp_ln870_2_fu_2284_p2 == 1'd0) & (icmp_ln870_1_fu_2278_p2 == 1'd1) & (or_ln186_1_fu_2272_p2 == 1'd0) & (trunc_ln167_1_reg_3282 == 1'd0) & (1'b1 == ap_CS_fsm_state23) & (1'd0 == and_ln188_fu_2290_p2)) | ((or_ln186_1_fu_2272_p2 == 1'd0) & (icmp_ln167_1_reg_3293 == 1'd1) & (icmp_ln167_reg_3288 == 1'd0) & (1'd1 == and_ln188_fu_2290_p2) & (1'b1 == ap_CS_fsm_state23)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        port_cross_out_mix_array_mix_array3_ce0 = 1'b1;
    end else begin
        port_cross_out_mix_array_mix_array3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln870_2_fu_2284_p2 == 1'd1) & (or_ln186_1_fu_2272_p2 == 1'd0) & (icmp_ln167_reg_3288 == 1'd1) & (1'b1 == ap_CS_fsm_state23) & (1'd0 == and_ln188_fu_2290_p2))) begin
        port_cross_out_mix_array_mix_array3_d0 = add_ln192_fu_2296_p2;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        port_cross_out_mix_array_mix_array3_d0 = sub_ln232_fu_2031_p2;
    end else if (((or_ln186_1_reg_3342 == 1'd0) & (icmp_ln167_reg_3288 == 1'd1) & (1'd1 == and_ln188_reg_3354) & (port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state13))) begin
        port_cross_out_mix_array_mix_array3_d0 = add_ln189_1_fu_1978_p2;
    end else if (((icmp_ln870_2_reg_3350 == 1'd0) & (icmp_ln870_1_reg_3346 == 1'd1) & (or_ln186_1_reg_3342 == 1'd0) & (trunc_ln167_1_reg_3282 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state13) & (1'd0 == and_ln188_reg_3354))) begin
        port_cross_out_mix_array_mix_array3_d0 = add_ln198_fu_1953_p2;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        port_cross_out_mix_array_mix_array3_d0 = readbuf5_reg_3057;
    end else begin
        port_cross_out_mix_array_mix_array3_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln870_2_reg_3350 == 1'd0) & (icmp_ln870_1_reg_3346 == 1'd1) & (or_ln186_1_reg_3342 == 1'd0) & (trunc_ln167_1_reg_3282 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state13) & (1'd0 == and_ln188_reg_3354)) | ((icmp_ln870_2_fu_2284_p2 == 1'd1) & (or_ln186_1_fu_2272_p2 == 1'd0) & (icmp_ln167_reg_3288 == 1'd1) & (1'b1 == ap_CS_fsm_state23) & (1'd0 == and_ln188_fu_2290_p2)) | ((or_ln186_1_reg_3342 == 1'd0) & (icmp_ln167_reg_3288 == 1'd1) & (1'd1 == and_ln188_reg_3354) & (port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state13)) | ((icmp_ln104_fu_1805_p2 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln74_reg_3023_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((trunc_ln229_reg_3239 == 1'd0) & (1'b1 == ap_CS_fsm_state18)))) begin
        port_cross_out_mix_array_mix_array3_we0 = 1'b1;
    end else begin
        port_cross_out_mix_array_mix_array3_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        port_cross_out_mix_array_mix_array4_address0 = zext_ln275_1_fu_2741_p1;
    end else if (((1'b1 == ap_CS_fsm_state25) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (dir_cross_next_V_reg_905 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln249_reg_3165 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln238_reg_3161 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln225_reg_3157 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((dir_cross_next_V_reg_905 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        port_cross_out_mix_array_mix_array4_address0 = zext_ln277_fu_2496_p1;
    end else if (((1'b1 == ap_CS_fsm_state25) & ((((~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2)) | ((dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((dir_cross_next_V_reg_905 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        port_cross_out_mix_array_mix_array4_address0 = zext_ln281_fu_2418_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        port_cross_out_mix_array_mix_array4_address0 = zext_ln275_2_fu_2320_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        port_cross_out_mix_array_mix_array4_address0 = zext_ln275_fu_2047_p1;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        port_cross_out_mix_array_mix_array4_address0 = zext_ln154_fu_1702_p1;
    end else begin
        port_cross_out_mix_array_mix_array4_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | ((1'b1 == ap_CS_fsm_state25) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (dir_cross_next_V_reg_905 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln249_reg_3165 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln238_reg_3161 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln225_reg_3157 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((dir_cross_next_V_reg_905 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state25) & ((((~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2)) | ((dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((dir_cross_next_V_reg_905 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        port_cross_out_mix_array_mix_array4_ce0 = 1'b1;
    end else begin
        port_cross_out_mix_array_mix_array4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln104_fu_1805_p2 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln74_reg_3023_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        port_cross_out_mix_array_mix_array4_we0 = 1'b1;
    end else begin
        port_cross_out_mix_array_mix_array4_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        port_cross_out_mix_array_mix_array5_ce0 = 1'b1;
    end else begin
        port_cross_out_mix_array_mix_array5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln104_fu_1805_p2 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln74_reg_3023_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        port_cross_out_mix_array_mix_array5_we0 = 1'b1;
    end else begin
        port_cross_out_mix_array_mix_array5_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (dir_cross_next_V_reg_905 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln249_reg_3165 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln238_reg_3161 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln225_reg_3157 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((dir_cross_next_V_reg_905 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        port_cross_out_mix_array_mix_array6_address0 = zext_ln278_fu_2517_p1;
    end else if (((1'b1 == ap_CS_fsm_state25) & ((((~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2)) | ((dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((dir_cross_next_V_reg_905 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        port_cross_out_mix_array_mix_array6_address0 = zext_ln282_fu_2441_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        port_cross_out_mix_array_mix_array6_address0 = port_cross_out_mix_array_mix_array6_addr_4_reg_3327;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        port_cross_out_mix_array_mix_array6_address0 = zext_ln178_fu_2130_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        port_cross_out_mix_array_mix_array6_address0 = port_cross_out_mix_array_mix_array6_addr_2_reg_3180;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        port_cross_out_mix_array_mix_array6_address0 = zext_ln243_fu_1997_p1;
    end else if (((port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        port_cross_out_mix_array_mix_array6_address0 = zext_ln167_fu_1913_p1;
    end else if (((icmp_ln225_fu_1867_p2 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd14) & (1'b1 == ap_CS_fsm_state12))) begin
        port_cross_out_mix_array_mix_array6_address0 = zext_ln229_fu_1879_p1;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        port_cross_out_mix_array_mix_array6_address0 = zext_ln91_1_fu_1759_p1;
    end else begin
        port_cross_out_mix_array_mix_array6_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state23) | ((1'b1 == ap_CS_fsm_state25) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (dir_cross_next_V_reg_905 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln249_reg_3165 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln238_reg_3161 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln225_reg_3157 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((dir_cross_next_V_reg_905 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state25) & ((((~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2)) | ((dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((dir_cross_next_V_reg_905 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state12)) | ((icmp_ln225_fu_1867_p2 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd14) & (1'b1 == ap_CS_fsm_state12)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        port_cross_out_mix_array_mix_array6_ce0 = 1'b1;
    end else begin
        port_cross_out_mix_array_mix_array6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        port_cross_out_mix_array_mix_array6_d0 = port_in_address_read;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        port_cross_out_mix_array_mix_array6_d0 = add_ln231_fu_2017_p2;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        port_cross_out_mix_array_mix_array6_d0 = num_2_reg_3027;
    end else begin
        port_cross_out_mix_array_mix_array6_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln870_2_fu_2284_p2 == 1'd0) & (icmp_ln870_1_fu_2278_p2 == 1'd1) & (or_ln186_1_fu_2272_p2 == 1'd0) & (trunc_ln167_1_reg_3282 == 1'd1) & (1'b1 == ap_CS_fsm_state23) & (1'd0 == and_ln188_fu_2290_p2)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln87_reg_3075 == 1'd0) & (icmp_ln74_reg_3023_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((trunc_ln229_fu_2006_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state17)))) begin
        port_cross_out_mix_array_mix_array6_we0 = 1'b1;
    end else begin
        port_cross_out_mix_array_mix_array6_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        port_cross_out_mix_array_mix_array7_address0 = zext_ln283_fu_2576_p1;
    end else if (((1'b1 == ap_CS_fsm_state25) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (dir_cross_next_V_reg_905 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln249_reg_3165 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln238_reg_3161 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln225_reg_3157 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((dir_cross_next_V_reg_905 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        port_cross_out_mix_array_mix_array7_address0 = zext_ln278_fu_2517_p1;
    end else if (((1'b1 == ap_CS_fsm_state25) & ((((~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2)) | ((dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((dir_cross_next_V_reg_905 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        port_cross_out_mix_array_mix_array7_address0 = zext_ln282_fu_2441_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        port_cross_out_mix_array_mix_array7_address0 = zext_ln275_2_fu_2320_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        port_cross_out_mix_array_mix_array7_address0 = port_cross_out_mix_array_mix_array7_addr_4_reg_3254;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        port_cross_out_mix_array_mix_array7_address0 = zext_ln229_reg_3169;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        port_cross_out_mix_array_mix_array7_address0 = zext_ln167_1_fu_1936_p1;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        port_cross_out_mix_array_mix_array7_address0 = zext_ln91_1_fu_1759_p1;
    end else begin
        port_cross_out_mix_array_mix_array7_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        port_cross_out_mix_array_mix_array7_address1 = port_cross_out_mix_array_mix_array7_addr_5_reg_3553;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        port_cross_out_mix_array_mix_array7_address1 = zext_ln281_fu_2418_p1;
    end else if (((or_ln186_1_fu_2272_p2 == 1'd0) & (icmp_ln167_reg_3288 == 1'd1) & (1'd1 == and_ln188_fu_2290_p2) & (1'b1 == ap_CS_fsm_state23))) begin
        port_cross_out_mix_array_mix_array7_address1 = port_cross_out_mix_array_mix_array7_addr_3_gep_fu_625_p3;
    end else if (((icmp_ln870_2_fu_2284_p2 == 1'd0) & (icmp_ln870_1_fu_2278_p2 == 1'd1) & (or_ln186_1_fu_2272_p2 == 1'd0) & (trunc_ln167_1_reg_3282 == 1'd1) & (1'b1 == ap_CS_fsm_state23) & (1'd0 == and_ln188_fu_2290_p2))) begin
        port_cross_out_mix_array_mix_array7_address1 = zext_ln178_reg_3314;
    end else if ((((icmp_ln870_2_fu_2284_p2 == 1'd1) & (or_ln186_1_fu_2272_p2 == 1'd0) & (icmp_ln167_reg_3288 == 1'd0) & (1'b1 == ap_CS_fsm_state23) & (1'd0 == and_ln188_fu_2290_p2)) | ((or_ln186_1_reg_3342 == 1'd0) & (icmp_ln167_reg_3288 == 1'd0) & (1'd1 == and_ln188_reg_3354) & (port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state13)))) begin
        port_cross_out_mix_array_mix_array7_address1 = port_cross_out_mix_array_mix_array7_addr_2_reg_3205;
    end else if (((icmp_ln870_2_reg_3350 == 1'd0) & (icmp_ln870_1_reg_3346 == 1'd1) & (or_ln186_1_reg_3342 == 1'd0) & (trunc_ln167_1_reg_3282 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state13) & (1'd0 == and_ln188_reg_3354))) begin
        port_cross_out_mix_array_mix_array7_address1 = port_cross_out_mix_array_mix_array7_addr_6_reg_3363;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        port_cross_out_mix_array_mix_array7_address1 = zext_ln167_fu_1913_p1;
    end else begin
        port_cross_out_mix_array_mix_array7_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state12) | ((1'b1 == ap_CS_fsm_state25) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (dir_cross_next_V_reg_905 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln249_reg_3165 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln238_reg_3161 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln225_reg_3157 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((dir_cross_next_V_reg_905 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state25) & ((((~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2)) | ((dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((dir_cross_next_V_reg_905 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        port_cross_out_mix_array_mix_array7_ce0 = 1'b1;
    end else begin
        port_cross_out_mix_array_mix_array7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state31) | ((icmp_ln870_2_reg_3350 == 1'd0) & (icmp_ln870_1_reg_3346 == 1'd1) & (or_ln186_1_reg_3342 == 1'd0) & (trunc_ln167_1_reg_3282 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state13) & (1'd0 == and_ln188_reg_3354)) | ((icmp_ln870_2_fu_2284_p2 == 1'd1) & (or_ln186_1_fu_2272_p2 == 1'd0) & (icmp_ln167_reg_3288 == 1'd0) & (1'b1 == ap_CS_fsm_state23) & (1'd0 == and_ln188_fu_2290_p2)) | ((or_ln186_1_reg_3342 == 1'd0) & (icmp_ln167_reg_3288 == 1'd0) & (1'd1 == and_ln188_reg_3354) & (port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state13)) | ((icmp_ln870_2_fu_2284_p2 == 1'd0) & (icmp_ln870_1_fu_2278_p2 == 1'd1) & (or_ln186_1_fu_2272_p2 == 1'd0) & (trunc_ln167_1_reg_3282 == 1'd1) & (1'b1 == ap_CS_fsm_state23) & (1'd0 == and_ln188_fu_2290_p2)) | ((or_ln186_1_fu_2272_p2 == 1'd0) & (icmp_ln167_reg_3288 == 1'd1) & (1'd1 == and_ln188_fu_2290_p2) & (1'b1 == ap_CS_fsm_state23)))) begin
        port_cross_out_mix_array_mix_array7_ce1 = 1'b1;
    end else begin
        port_cross_out_mix_array_mix_array7_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        port_cross_out_mix_array_mix_array7_d0 = sub_ln232_fu_2031_p2;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        port_cross_out_mix_array_mix_array7_d0 = readbuf1_reg_3034;
    end else begin
        port_cross_out_mix_array_mix_array7_d0 = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln870_2_fu_2284_p2 == 1'd1) & (or_ln186_1_fu_2272_p2 == 1'd0) & (icmp_ln167_reg_3288 == 1'd0) & (1'b1 == ap_CS_fsm_state23) & (1'd0 == and_ln188_fu_2290_p2))) begin
        port_cross_out_mix_array_mix_array7_d1 = add_ln192_fu_2296_p2;
    end else if (((or_ln186_1_reg_3342 == 1'd0) & (icmp_ln167_reg_3288 == 1'd0) & (1'd1 == and_ln188_reg_3354) & (port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state13))) begin
        port_cross_out_mix_array_mix_array7_d1 = add_ln189_1_fu_1978_p2;
    end else if (((icmp_ln870_2_reg_3350 == 1'd0) & (icmp_ln870_1_reg_3346 == 1'd1) & (or_ln186_1_reg_3342 == 1'd0) & (trunc_ln167_1_reg_3282 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state13) & (1'd0 == and_ln188_reg_3354))) begin
        port_cross_out_mix_array_mix_array7_d1 = add_ln198_fu_1953_p2;
    end else begin
        port_cross_out_mix_array_mix_array7_d1 = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln87_reg_3075 == 1'd0) & (icmp_ln74_reg_3023_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((trunc_ln229_reg_3239 == 1'd1) & (1'b1 == ap_CS_fsm_state18)))) begin
        port_cross_out_mix_array_mix_array7_we0 = 1'b1;
    end else begin
        port_cross_out_mix_array_mix_array7_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln870_2_reg_3350 == 1'd0) & (icmp_ln870_1_reg_3346 == 1'd1) & (or_ln186_1_reg_3342 == 1'd0) & (trunc_ln167_1_reg_3282 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state13) & (1'd0 == and_ln188_reg_3354)) | ((icmp_ln870_2_fu_2284_p2 == 1'd1) & (or_ln186_1_fu_2272_p2 == 1'd0) & (icmp_ln167_reg_3288 == 1'd0) & (1'b1 == ap_CS_fsm_state23) & (1'd0 == and_ln188_fu_2290_p2)) | ((or_ln186_1_reg_3342 == 1'd0) & (icmp_ln167_reg_3288 == 1'd0) & (1'd1 == and_ln188_reg_3354) & (port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state13)))) begin
        port_cross_out_mix_array_mix_array7_we1 = 1'b1;
    end else begin
        port_cross_out_mix_array_mix_array7_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        port_cross_out_mix_array_mix_array_address0 = zext_ln275_1_fu_2741_p1;
    end else if (((1'b1 == ap_CS_fsm_state25) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (dir_cross_next_V_reg_905 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln249_reg_3165 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln238_reg_3161 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln225_reg_3157 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((dir_cross_next_V_reg_905 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        port_cross_out_mix_array_mix_array_address0 = zext_ln277_fu_2496_p1;
    end else if (((1'b1 == ap_CS_fsm_state25) & ((((~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2)) | ((dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((dir_cross_next_V_reg_905 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
        port_cross_out_mix_array_mix_array_address0 = zext_ln281_fu_2418_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        port_cross_out_mix_array_mix_array_address0 = zext_ln275_2_fu_2320_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        port_cross_out_mix_array_mix_array_address0 = zext_ln275_fu_2047_p1;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        port_cross_out_mix_array_mix_array_address0 = zext_ln154_fu_1702_p1;
    end else begin
        port_cross_out_mix_array_mix_array_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | ((1'b1 == ap_CS_fsm_state25) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (dir_cross_next_V_reg_905 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln249_reg_3165 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln238_reg_3161 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln225_reg_3157 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((dir_cross_next_V_reg_905 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((1'b1 == ap_CS_fsm_state25) & ((((~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd2)) | ((dir_cross_next_V_reg_905 == 1'd1) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd16))) | ((dir_cross_next_V_reg_905 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        port_cross_out_mix_array_mix_array_ce0 = 1'b1;
    end else begin
        port_cross_out_mix_array_mix_array_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln74_reg_3023_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        port_cross_out_mix_array_mix_array_we0 = 1'b1;
    end else begin
        port_cross_out_mix_array_mix_array_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (icmp_ln160_fu_1526_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state27;
            end else if (((ap_start == 1'b1) & (icmp_ln160_fu_1526_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((m_axi_buf_dram_manage_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state12 : begin
            if (((icmp_ln249_fu_1875_p2 == 1'd0) & (icmp_ln238_fu_1871_p2 == 1'd0) & (icmp_ln225_fu_1867_p2 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else if (((icmp_ln238_fu_1871_p2 == 1'd1) & (icmp_ln225_fu_1867_p2 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else if (((icmp_ln225_fu_1867_p2 == 1'd1) & (port_in_op_read_2_read_fu_356_p2 == 5'd14) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else if (((1'b1 == ap_CS_fsm_state12) & (((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln249_fu_1875_p2 == 1'd1) & (icmp_ln238_fu_1871_p2 == 1'd0) & (icmp_ln225_fu_1867_p2 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))))) begin
                ap_NS_fsm = ap_ST_fsm_state28;
            end else if (((port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state14 : begin
            if (((trunc_ln243_fu_2003_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state19 : begin
            if (((trunc_ln275_fu_2053_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state19))) begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            if (((1'b1 == ap_CS_fsm_state25) & (((((((~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & (dir_cross_next_V_reg_905 == 1'd0)) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln249_reg_3165 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln238_reg_3161 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln225_reg_3157 == 1'd1))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3))) | ((dir_cross_next_V_reg_905 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0))))) begin
                ap_NS_fsm = ap_ST_fsm_state32;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state26;
            end
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        ap_ST_fsm_state28 : begin
            if ((~(trunc_ln275_1_fu_2723_p3 == 3'd0) & ~(trunc_ln275_1_fu_2723_p3 == 3'd4) & (1'b1 == ap_CS_fsm_state28))) begin
                ap_NS_fsm = ap_ST_fsm_state31;
            end else if (((trunc_ln275_1_fu_2723_p3 == 3'd0) & (1'b1 == ap_CS_fsm_state28))) begin
                ap_NS_fsm = ap_ST_fsm_state30;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state29;
            end
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln167_1_fu_1920_p2 = ($signed(shl_ln5_fu_1889_p3) + $signed(8'd255));

assign add_ln167_fu_1897_p2 = ($signed(shl_ln5_fu_1889_p3) + $signed(8'd254));

assign add_ln189_1_fu_1978_p2 = (add_ln189_fu_1974_p2 + select_ln189_1_fu_1967_p3);

assign add_ln189_fu_1974_p2 = (select_ln167_2_reg_3298 + port_in_length_read);

assign add_ln192_fu_2296_p2 = (select_ln167_2_reg_3298 + port_in_length_read);

assign add_ln198_fu_1953_p2 = (select_ln198_fu_1946_p3 + port_in_length_read);

assign add_ln231_fu_2017_p2 = (address_next_1_fu_2009_p3 + port_in_length_read);

assign add_ln277_fu_2476_p2 = (shl_ln8_fu_2468_p3 + 9'd4);

assign add_ln281_fu_2402_p2 = ($signed(shl_ln7_fu_2378_p3) + $signed(9'd508));

assign add_ln282_fu_2425_p2 = ($signed(trunc_ln281_2_fu_2390_p3) + $signed(8'd254));

assign add_ln283_fu_2448_p2 = ($signed(trunc_ln281_2_fu_2390_p3) + $signed(8'd255));

assign add_ln74_fu_1584_p2 = (ap_phi_mux_idx_phi_fu_804_p4 + 6'd1);

assign add_ln91_1_fu_1743_p2 = ($signed(shl_ln87_fu_1724_p2) + $signed(6'd62));

assign add_ln91_fu_1733_p2 = ($signed(shl_ln_fu_1712_p3) + $signed(7'd127));

assign address_next_1_fu_2009_p3 = ((trunc_ln229_fu_2006_p1[0:0] == 1'b1) ? port_cross_out_mix_array_mix_array6_q0 : port_cross_out_mix_array_mix_array2_q0);

assign and_ln178_fu_2214_p2 = (xor_ln176_fu_2208_p2 & icmp_ln178_fu_2188_p2);

assign and_ln186_fu_2266_p2 = (icmp_ln176_fu_2172_p2 & icmp_ln166_fu_2136_p2);

assign and_ln188_fu_2290_p2 = (icmp_ln870_2_fu_2284_p2 & icmp_ln870_1_fu_2278_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state24 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state25 = ap_CS_fsm[32'd22];

assign ap_CS_fsm_state26 = ap_CS_fsm[32'd23];

assign ap_CS_fsm_state27 = ap_CS_fsm[32'd24];

assign ap_CS_fsm_state28 = ap_CS_fsm[32'd25];

assign ap_CS_fsm_state29 = ap_CS_fsm[32'd26];

assign ap_CS_fsm_state30 = ap_CS_fsm[32'd27];

assign ap_CS_fsm_state31 = ap_CS_fsm[32'd28];

assign ap_CS_fsm_state32 = ap_CS_fsm[32'd29];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((m_axi_buf_dram_manage_RVALID == 1'b0) & (icmp_ln74_reg_3023 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((m_axi_buf_dram_manage_RVALID == 1'b0) & (icmp_ln74_reg_3023 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_state10_pp0_stage0_iter1 = ((m_axi_buf_dram_manage_RVALID == 1'b0) & (icmp_ln74_reg_3023 == 1'd0));
end

assign ap_block_state11_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_2744 = ((or_ln186_1_reg_3342 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0) & (1'b1 == ap_CS_fsm_state13));
end

always @ (*) begin
    ap_condition_2746 = ((icmp_ln870_2_reg_3350 == 1'd0) & (icmp_ln870_1_reg_3346 == 1'd1) & (1'd0 == and_ln188_reg_3354));
end

always @ (*) begin
    ap_condition_614 = (((((~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln238_reg_3161 == 1'd1)) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln249_reg_3165 == 1'd1))) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (icmp_ln225_reg_3157 == 1'd1))) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd14))) | (~(trunc_ln275_1_reg_3539 == 3'd4) & ~(trunc_ln275_1_reg_3539 == 3'd0) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd16) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd2) & ~(port_in_op_read_2_read_fu_356_p2 == 5'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd3)));
end

always @ (*) begin
    ap_condition_797 = (((dir_cross_next_V_reg_905 == 1'd0) & (icmp_ln249_reg_3165 == 1'd0) & (icmp_ln238_reg_3161 == 1'd0) & (icmp_ln225_reg_3157 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd14)) | ((dir_cross_next_V_reg_905 == 1'd0) & (port_in_op_read_2_read_fu_356_p2 == 5'd0)));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_mux_address_next_637_phi_fu_1447_p8 = address_next_637_reg_1442;

assign ap_phi_mux_dir_cross_next_534_phi_fu_1487_p8 = dir_cross_next_534_reg_1481;

assign ap_phi_mux_empty_60_phi_fu_1414_p8 = empty_60_reg_1409;

assign ap_phi_mux_length_next_438_phi_fu_1430_p8 = length_next_438_reg_1425;

assign ap_phi_mux_opcode_next_736_phi_fu_1467_p8 = opcode_next_736_reg_1462;

assign ap_phi_reg_pp0_iter2_pos_3_reg_824 = 'bx;

assign ap_phi_reg_pp0_iter2_pos_627_reg_834 = 'bx;

assign border_left_fu_2104_p2 = (select_ln167_2_fu_2096_p3 + select_ln167_1_fu_2088_p3);

assign border_right_fu_2177_p2 = (port_in_length_read + port_in_address_read);

assign broindex_next_1_fu_2775_p3 = ((icmp_ln277_1_fu_2769_p2[0:0] == 1'b1) ? port_cross_out_mix_array_mix_array_q0 : select_ln277_fu_2761_p3);

assign broindex_next_fu_2552_p3 = ((icmp_ln281_1_fu_2546_p2[0:0] == 1'b1) ? port_cross_out_mix_array_mix_array4_q0 : select_ln281_fu_2538_p3);

assign dir_cross_next_V_1_fu_1942_p2 = ((pos_15_reg_3109 == pos_11_reg_3095) ? 1'b1 : 1'b0);

assign empty_fu_1532_p2 = port_in_nodeindex_read << 32'd5;

assign grp_fu_1502_p4 = {{pos_10_reg_3079[6:1]}};

assign icmp_ln104_fu_1805_p2 = ((idx_reg_800_pp0_iter1_reg == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln160_fu_1526_p2 = (($signed(graphlevel) < $signed(port_in_level_read)) ? 1'b1 : 1'b0);

assign icmp_ln166_fu_2136_p2 = ((pos_reg_812 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln167_1_fu_2082_p2 = ((trunc_ln_fu_2060_p3 == 3'd0) ? 1'b1 : 1'b0);

assign icmp_ln167_fu_2068_p2 = ((trunc_ln_fu_2060_p3 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln168_1_fu_2115_p2 = (($signed(border_left_fu_2104_p2) < $signed(port_in_address_read)) ? 1'b1 : 1'b0);

assign icmp_ln168_fu_2110_p2 = (($signed(port_in_address_read) < $signed(border_left_fu_2104_p2)) ? 1'b1 : 1'b0);

assign icmp_ln176_fu_2172_p2 = ((pos_reg_812 == pos_11_reg_3095) ? 1'b1 : 1'b0);

assign icmp_ln178_fu_2188_p2 = (($signed(border_right_fu_2177_p2) > $signed(select_ln178_fu_2181_p3)) ? 1'b1 : 1'b0);

assign icmp_ln180_fu_2194_p2 = ((border_right_fu_2177_p2 == select_ln178_fu_2181_p3) ? 1'b1 : 1'b0);

assign icmp_ln206_fu_1986_p2 = ((ap_phi_mux_opcode_next_3_phi_fu_852_p10 == 4'd3) ? 1'b1 : 1'b0);

assign icmp_ln225_fu_1867_p2 = (($signed(port_cross_out_mix_array_max_fb_length_0_load_reg_3128) > $signed(port_in_length_read)) ? 1'b1 : 1'b0);

assign icmp_ln238_fu_1871_p2 = ((port_cross_out_mix_array_max_fb_length_0_load_reg_3128 == port_in_length_read) ? 1'b1 : 1'b0);

assign icmp_ln249_fu_1875_p2 = (($signed(port_cross_out_mix_array_max_subgraph_length_0_load_reg_3119) < $signed(port_in_length_read)) ? 1'b1 : 1'b0);

assign icmp_ln275_1_fu_2360_p2 = ((trunc_ln275_2_fu_2339_p3 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln275_fu_2346_p2 = ((trunc_ln275_2_fu_2339_p3 == 3'd0) ? 1'b1 : 1'b0);

assign icmp_ln277_1_fu_2769_p2 = ((trunc_ln14_fu_2748_p3 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln277_fu_2755_p2 = ((trunc_ln14_fu_2748_p3 == 3'd0) ? 1'b1 : 1'b0);

assign icmp_ln278_1_fu_2802_p2 = ((or_ln278_fu_2783_p2 == 3'd6) ? 1'b1 : 1'b0);

assign icmp_ln278_fu_2788_p2 = ((or_ln278_fu_2783_p2 == 3'd2) ? 1'b1 : 1'b0);

assign icmp_ln279_fu_2821_p2 = ((or_ln279_fu_2816_p2 == 3'd3) ? 1'b1 : 1'b0);

assign icmp_ln281_1_fu_2546_p2 = ((trunc_ln281_1_fu_2525_p3 == 3'd0) ? 1'b1 : 1'b0);

assign icmp_ln281_fu_2532_p2 = ((trunc_ln281_1_fu_2525_p3 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln62_1_fu_1814_p2 = (($signed(zext_ln87_fu_1720_p1) < $signed(num_fu_262)) ? 1'b1 : 1'b0);

assign icmp_ln62_fu_1765_p2 = (($signed(zext_ln91_fu_1739_p1) < $signed(num_fu_262)) ? 1'b1 : 1'b0);

assign icmp_ln64_1_fu_1820_p2 = (($signed(readbuf4_reg_3050) < $signed(port_in_address_read)) ? 1'b1 : 1'b0);

assign icmp_ln64_fu_1771_p2 = (($signed(num_2_reg_3027) < $signed(port_in_address_read)) ? 1'b1 : 1'b0);

assign icmp_ln74_fu_1590_p2 = ((ap_phi_mux_idx_phi_fu_804_p4 == 6'd33) ? 1'b1 : 1'b0);

assign icmp_ln870_1_fu_2278_p2 = ((right_V_1_fu_2246_p3 == 2'd1) ? 1'b1 : 1'b0);

assign icmp_ln870_2_fu_2284_p2 = ((left_V_fu_2164_p3 == 2'd1) ? 1'b1 : 1'b0);

assign icmp_ln870_fu_2254_p2 = ((left_V_fu_2164_p3 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln87_fu_1670_p2 = ((idx_reg_800 == 6'd0) ? 1'b1 : 1'b0);

assign left_V_fu_2164_p3 = ((icmp_ln166_fu_2136_p2[0:0] == 1'b1) ? 2'd3 : select_ln168_fu_2156_p3);

assign level_next_fu_1516_p2 = ($signed(port_in_level_read) + $signed(8'd255));

assign lshr_ln167_1_fu_1926_p4 = {{add_ln167_1_fu_1920_p2[7:3]}};

assign lshr_ln1_fu_2486_p4 = {{add_ln277_fu_2476_p2[8:3]}};

assign lshr_ln2_fu_2507_p4 = {{ap_phi_mux_mul12639_phi_fu_976_p8[7:3]}};

assign lshr_ln7_fu_2408_p4 = {{add_ln281_fu_2402_p2[8:3]}};

assign lshr_ln8_fu_2431_p4 = {{add_ln282_fu_2425_p2[7:3]}};

assign lshr_ln_fu_1903_p4 = {{add_ln167_fu_1897_p2[7:3]}};

assign m_axi_buf_dram_manage_ARADDR = sext_ln74_fu_1574_p1;

assign m_axi_buf_dram_manage_ARBURST = 2'd0;

assign m_axi_buf_dram_manage_ARCACHE = 4'd0;

assign m_axi_buf_dram_manage_ARID = 1'd0;

assign m_axi_buf_dram_manage_ARLEN = 32'd33;

assign m_axi_buf_dram_manage_ARLOCK = 2'd0;

assign m_axi_buf_dram_manage_ARPROT = 3'd0;

assign m_axi_buf_dram_manage_ARQOS = 4'd0;

assign m_axi_buf_dram_manage_ARREGION = 4'd0;

assign m_axi_buf_dram_manage_ARSIZE = 3'd0;

assign m_axi_buf_dram_manage_ARUSER = 1'd0;

assign m_axi_buf_dram_manage_AWADDR = 64'd0;

assign m_axi_buf_dram_manage_AWBURST = 2'd0;

assign m_axi_buf_dram_manage_AWCACHE = 4'd0;

assign m_axi_buf_dram_manage_AWID = 1'd0;

assign m_axi_buf_dram_manage_AWLEN = 32'd0;

assign m_axi_buf_dram_manage_AWLOCK = 2'd0;

assign m_axi_buf_dram_manage_AWPROT = 3'd0;

assign m_axi_buf_dram_manage_AWQOS = 4'd0;

assign m_axi_buf_dram_manage_AWREGION = 4'd0;

assign m_axi_buf_dram_manage_AWSIZE = 3'd0;

assign m_axi_buf_dram_manage_AWUSER = 1'd0;

assign m_axi_buf_dram_manage_AWVALID = 1'b0;

assign m_axi_buf_dram_manage_BREADY = 1'b0;

assign m_axi_buf_dram_manage_WDATA = 256'd0;

assign m_axi_buf_dram_manage_WID = 1'd0;

assign m_axi_buf_dram_manage_WLAST = 1'b0;

assign m_axi_buf_dram_manage_WSTRB = 32'd0;

assign m_axi_buf_dram_manage_WUSER = 1'd0;

assign m_axi_buf_dram_manage_WVALID = 1'b0;

assign mul_i_fu_1538_p2 = (empty_fu_1532_p2 + port_in_nodeindex_read);

assign nodeindex_next_fu_2366_p3 = ((icmp_ln275_1_fu_2360_p2[0:0] == 1'b1) ? port_cross_out_mix_array_mix_array4_q0 : select_ln275_fu_2352_p3);

assign num_2_fu_1596_p1 = m_axi_buf_dram_manage_RDATA[31:0];

assign or_ln178_1_fu_2226_p2 = (xor_ln178_fu_2220_p2 | icmp_ln176_fu_2172_p2);

assign or_ln178_fu_2240_p2 = (icmp_ln176_fu_2172_p2 | and_ln178_fu_2214_p2);

assign or_ln186_1_fu_2272_p2 = (or_ln186_fu_2260_p2 | and_ln186_fu_2266_p2);

assign or_ln186_fu_2260_p2 = (icmp_ln870_fu_2254_p2 | and_ln178_fu_2214_p2);

assign or_ln206_fu_1992_p2 = (icmp_ln206_fu_1986_p2 | icmp_ln176_reg_3332);

assign or_ln278_fu_2783_p2 = (trunc_ln278_reg_3480 | 3'd2);

assign or_ln279_fu_2816_p2 = (trunc_ln278_reg_3480 | 3'd3);

assign or_ln64_fu_1824_p2 = (shl_ln87_fu_1724_p2 | 6'd1);

assign port_cross_out_mix_array_mix_array1_address0 = zext_ln154_fu_1702_p1;

assign port_cross_out_mix_array_mix_array1_d0 = readbuf3_reg_3045;

assign port_cross_out_mix_array_mix_array3_addr_3_gep_fu_618_p3 = zext_ln178_reg_3314;

assign port_cross_out_mix_array_mix_array4_d0 = readbuf6_reg_3063;

assign port_cross_out_mix_array_mix_array5_address0 = zext_ln154_fu_1702_p1;

assign port_cross_out_mix_array_mix_array5_d0 = readbuf7_reg_3069;

assign port_cross_out_mix_array_mix_array7_addr_3_gep_fu_625_p3 = zext_ln178_reg_3314;

assign port_cross_out_mix_array_mix_array_d0 = readbuf2_reg_3040;

assign port_in_op_read_2_read_fu_356_p2 = port_in_op_read;

assign pos_12_fu_1775_p3 = ((icmp_ln64_fu_1771_p2[0:0] == 1'b1) ? zext_ln87_fu_1720_p1 : pos_reg_812);

assign pos_13_fu_1834_p3 = ((icmp_ln64_1_fu_1820_p2[0:0] == 1'b1) ? zext_ln64_fu_1830_p1 : ap_phi_mux_pos_3_phi_fu_827_p4);

assign pos_14_fu_1842_p3 = ((icmp_ln62_1_fu_1814_p2[0:0] == 1'b1) ? pos_13_fu_1834_p3 : ap_phi_mux_pos_3_phi_fu_827_p4);

assign right_V_1_fu_2246_p3 = ((or_ln178_fu_2240_p2[0:0] == 1'b1) ? select_ln178_1_fu_2232_p3 : right_V_fu_2200_p3);

assign right_V_fu_2200_p3 = ((icmp_ln180_fu_2194_p2[0:0] == 1'b1) ? 2'd1 : 2'd2);

assign select_ln167_1_fu_2088_p3 = ((icmp_ln167_1_fu_2082_p2[0:0] == 1'b1) ? port_cross_out_mix_array_mix_array6_q0 : select_ln167_fu_2074_p3);

assign select_ln167_2_fu_2096_p3 = ((icmp_ln167_fu_2068_p2[0:0] == 1'b1) ? port_cross_out_mix_array_mix_array3_q0 : port_cross_out_mix_array_mix_array7_q0);

assign select_ln167_fu_2074_p3 = ((icmp_ln167_fu_2068_p2[0:0] == 1'b1) ? port_cross_out_mix_array_mix_array2_q0 : port_cross_out_mix_array_mix_array7_q1);

assign select_ln168_fu_2156_p3 = ((xor_ln168_1_fu_2151_p2[0:0] == 1'b1) ? zext_ln168_fu_2147_p1 : 2'd2);

assign select_ln178_1_fu_2232_p3 = ((or_ln178_1_fu_2226_p2[0:0] == 1'b1) ? 2'd3 : 2'd0);

assign select_ln178_fu_2181_p3 = ((trunc_ln167_1_reg_3282[0:0] == 1'b1) ? port_cross_out_mix_array_mix_array6_q0 : port_cross_out_mix_array_mix_array2_q0);

assign select_ln189_1_fu_1967_p3 = ((icmp_ln167_reg_3288[0:0] == 1'b1) ? port_cross_out_mix_array_mix_array7_q1 : select_ln189_fu_1960_p3);

assign select_ln189_fu_1960_p3 = ((icmp_ln167_1_reg_3293[0:0] == 1'b1) ? port_cross_out_mix_array_mix_array3_q0 : reg_1511);

assign select_ln198_fu_1946_p3 = ((trunc_ln167_1_reg_3282[0:0] == 1'b1) ? port_cross_out_mix_array_mix_array7_q1 : port_cross_out_mix_array_mix_array3_q0);

assign select_ln232_fu_2024_p3 = ((trunc_ln229_reg_3239[0:0] == 1'b1) ? port_cross_out_mix_array_mix_array7_q0 : port_cross_out_mix_array_mix_array3_q0);

assign select_ln275_fu_2352_p3 = ((icmp_ln275_fu_2346_p2[0:0] == 1'b1) ? port_cross_out_mix_array_mix_array_q0 : port_cross_out_mix_array_mix_array7_q0);

assign select_ln277_fu_2761_p3 = ((icmp_ln277_fu_2755_p2[0:0] == 1'b1) ? port_cross_out_mix_array_mix_array4_q0 : port_cross_out_mix_array_mix_array3_q0);

assign select_ln278_1_fu_2808_p3 = ((icmp_ln278_1_fu_2802_p2[0:0] == 1'b1) ? port_cross_out_mix_array_mix_array6_q0 : select_ln278_fu_2794_p3);

assign select_ln278_fu_2794_p3 = ((icmp_ln278_fu_2788_p2[0:0] == 1'b1) ? port_cross_out_mix_array_mix_array2_q0 : port_cross_out_mix_array_mix_array7_q0);

assign select_ln281_fu_2538_p3 = ((icmp_ln281_fu_2532_p2[0:0] == 1'b1) ? port_cross_out_mix_array_mix_array_q0 : port_cross_out_mix_array_mix_array7_q1);

assign select_ln282_1_fu_2568_p3 = ((icmp_ln281_1_fu_2546_p2[0:0] == 1'b1) ? port_cross_out_mix_array_mix_array6_q0 : select_ln282_fu_2560_p3);

assign select_ln282_fu_2560_p3 = ((icmp_ln281_fu_2532_p2[0:0] == 1'b1) ? port_cross_out_mix_array_mix_array2_q0 : port_cross_out_mix_array_mix_array7_q0);

assign select_ln302_fu_2585_p3 = ((ap_phi_mux_write_flag38_2_phi_fu_1086_p10[0:0] == 1'b1) ? ap_phi_mux_port_cross_out_mix_array_next_free_offset_2_phi_fu_1103_p10 : port_cross_out_node_next_free_offset_read);

assign select_ln62_fu_1783_p3 = ((icmp_ln62_fu_1765_p2[0:0] == 1'b1) ? pos_12_fu_1775_p3 : pos_reg_812);

assign sext_ln74_fu_1574_p1 = $signed(mul_i_reg_3007);

assign shl_ln275_1_fu_2331_p3 = {{trunc_ln275_8_reg_3378}, {2'd0}};

assign shl_ln5_fu_1889_p3 = {{trunc_ln167_fu_1885_p1}, {2'd0}};

assign shl_ln6_fu_2711_p3 = {{trunc_ln275_6_fu_2707_p1}, {2'd0}};

assign shl_ln7_fu_2378_p3 = {{trunc_ln281_fu_2374_p1}, {2'd0}};

assign shl_ln87_fu_1724_p2 = idx_reg_800_pp0_iter1_reg << 6'd1;

assign shl_ln8_fu_2468_p3 = {{trunc_ln277_fu_2464_p1}, {2'd0}};

assign shl_ln_fu_1712_p3 = {{idx_reg_800_pp0_iter1_reg}, {1'd0}};

assign sub_ln232_fu_2031_p2 = (select_ln232_fu_2024_p3 - port_in_length_read);

assign trunc_ln12_fu_1749_p4 = {{add_ln91_1_fu_1743_p2[5:1]}};

assign trunc_ln14_fu_2748_p3 = {{trunc_ln277_1_reg_3460}, {2'd0}};

assign trunc_ln167_1_fu_2056_p1 = pos_reg_812[0:0];

assign trunc_ln167_fu_1885_p1 = pos_reg_812[5:0];

assign trunc_ln178_1_fu_2120_p4 = {{pos_reg_812[6:1]}};

assign trunc_ln229_fu_2006_p1 = pos_10_reg_3079[0:0];

assign trunc_ln243_fu_2003_p1 = pos_10_reg_3079[0:0];

assign trunc_ln275_1_fu_2723_p3 = {{trunc_ln275_7_fu_2719_p1}, {2'd0}};

assign trunc_ln275_2_fu_2339_p3 = {{trunc_ln275_9_reg_3383}, {2'd0}};

assign trunc_ln275_3_fu_2038_p4 = {{pos_11_reg_3095[6:1]}};

assign trunc_ln275_4_fu_2731_p4 = {{pos_10_ph_reg_1334[6:1]}};

assign trunc_ln275_5_fu_2310_p4 = {{pos_2_reg_915[6:1]}};

assign trunc_ln275_6_fu_2707_p1 = pos_10_ph_reg_1334[5:0];

assign trunc_ln275_7_fu_2719_p1 = pos_10_ph_reg_1334[0:0];

assign trunc_ln275_8_fu_2302_p1 = pos_2_reg_915[5:0];

assign trunc_ln275_9_fu_2306_p1 = pos_2_reg_915[0:0];

assign trunc_ln275_fu_2053_p1 = pos_11_reg_3095[0:0];

assign trunc_ln277_1_fu_2482_p1 = ap_phi_mux_pos_1035_phi_fu_989_p8[0:0];

assign trunc_ln277_fu_2464_p1 = ap_phi_mux_pos_1035_phi_fu_989_p8[6:0];

assign trunc_ln278_fu_2503_p1 = ap_phi_mux_mul12639_phi_fu_976_p8[2:0];

assign trunc_ln281_1_fu_2525_p3 = {{trunc_ln281_4_reg_3415}, {2'd0}};

assign trunc_ln281_2_fu_2390_p3 = {{trunc_ln281_3_fu_2386_p1}, {2'd0}};

assign trunc_ln281_3_fu_2386_p1 = ap_phi_mux_pos_1047_phi_fu_963_p6[5:0];

assign trunc_ln281_4_fu_2398_p1 = ap_phi_mux_pos_1047_phi_fu_963_p6[0:0];

assign trunc_ln281_fu_2374_p1 = ap_phi_mux_pos_1047_phi_fu_963_p6[6:0];

assign trunc_ln_fu_2060_p3 = {{trunc_ln167_1_fu_2056_p1}, {2'd0}};

assign xor_ln168_1_fu_2151_p2 = (icmp_ln168_1_reg_3309 ^ 1'd1);

assign xor_ln168_fu_2142_p2 = (icmp_ln168_reg_3304 ^ 1'd1);

assign xor_ln176_fu_2208_p2 = (icmp_ln176_fu_2172_p2 ^ 1'd1);

assign xor_ln178_fu_2220_p2 = (icmp_ln178_fu_2188_p2 ^ 1'd1);

assign zext_ln152_1_fu_2581_p1 = ap_phi_mux_opcode_next_phi_fu_1252_p10;

assign zext_ln152_fu_2327_p1 = opcode_next_6_reg_926;

assign zext_ln154_fu_1702_p1 = idx_reg_800_pp0_iter1_reg;

assign zext_ln167_1_fu_1936_p1 = lshr_ln167_1_fu_1926_p4;

assign zext_ln167_fu_1913_p1 = lshr_ln_fu_1903_p4;

assign zext_ln168_fu_2147_p1 = xor_ln168_fu_2142_p2;

assign zext_ln178_fu_2130_p1 = trunc_ln178_1_fu_2120_p4;

assign zext_ln229_fu_1879_p1 = grp_fu_1502_p4;

assign zext_ln243_fu_1997_p1 = grp_fu_1502_p4;

assign zext_ln275_1_fu_2741_p1 = trunc_ln275_4_fu_2731_p4;

assign zext_ln275_2_fu_2320_p1 = trunc_ln275_5_fu_2310_p4;

assign zext_ln275_fu_2047_p1 = trunc_ln275_3_fu_2038_p4;

assign zext_ln277_fu_2496_p1 = lshr_ln1_fu_2486_p4;

assign zext_ln278_fu_2517_p1 = lshr_ln2_fu_2507_p4;

assign zext_ln281_fu_2418_p1 = lshr_ln7_fu_2408_p4;

assign zext_ln282_fu_2441_p1 = lshr_ln8_fu_2431_p4;

assign zext_ln283_fu_2576_p1 = lshr_ln9_reg_3450;

assign zext_ln64_fu_1830_p1 = or_ln64_fu_1824_p2;

assign zext_ln87_fu_1720_p1 = shl_ln_fu_1712_p3;

assign zext_ln91_1_fu_1759_p1 = trunc_ln12_fu_1749_p4;

assign zext_ln91_fu_1739_p1 = add_ln91_fu_1733_p2;

always @ (posedge ap_clk) begin
    zext_ln229_reg_3169[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln178_reg_3314[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    trunc_ln275_1_reg_3539[1:0] <= 2'b00;
    trunc_ln278_reg_3480[1:0] <= 2'b00;
    shl_ln6_reg_3532[1:0] <= 2'b00;
    opcode_next_3_reg_846[2] <= 1'b0;
    mul12639_reg_973[1:0] <= 2'b00;
    ap_return_0_preg[31:5] <= 27'b000000000000000000000000000;
end

endmodule //execute_downwards
