

`timescale 1 ns / 1 ps 

module execute_split (
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
        p_read,
        node_mix_array_address0,
        node_mix_array_ce0,
        node_mix_array_q0,
        node_mix_array_address1,
        node_mix_array_ce1,
        node_mix_array_q1,
        node_mix_array1_address0,
        node_mix_array1_ce0,
        node_mix_array1_q0,
        node_mix_array1_address1,
        node_mix_array1_ce1,
        node_mix_array1_q1,
        node_mix_array2_address0,
        node_mix_array2_ce0,
        node_mix_array2_q0,
        node_mix_array2_address1,
        node_mix_array2_ce1,
        node_mix_array2_q1,
        node_mix_array3_address0,
        node_mix_array3_ce0,
        node_mix_array3_q0,
        node_mix_array3_address1,
        node_mix_array3_ce1,
        node_mix_array3_q1,
        node_mix_array4_address0,
        node_mix_array4_ce0,
        node_mix_array4_q0,
        node_mix_array4_address1,
        node_mix_array4_ce1,
        node_mix_array4_q1,
        node_mix_array5_address0,
        node_mix_array5_ce0,
        node_mix_array5_q0,
        node_mix_array5_address1,
        node_mix_array5_ce1,
        node_mix_array5_q1,
        node_mix_array6_address0,
        node_mix_array6_ce0,
        node_mix_array6_q0,
        node_mix_array6_address1,
        node_mix_array6_ce1,
        node_mix_array6_q1,
        node_mix_array7_address0,
        node_mix_array7_ce0,
        node_mix_array7_q0,
        node_mix_array7_address1,
        node_mix_array7_ce1,
        node_mix_array7_q1,
        nodeindex,
        p_read1,
        p_read2,
        p_read3,
        p_read4,
        p_read5,
        p_read6,
        pos_node,
        pos_graph,
        head_index,
        fb_length,
        subgraph,
        ap_return_0,
        ap_return_1
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_pp0_stage0 = 8'd4;
parameter    ap_ST_fsm_state6 = 8'd8;
parameter    ap_ST_fsm_state7 = 8'd16;
parameter    ap_ST_fsm_state8 = 8'd32;
parameter    ap_ST_fsm_state9 = 8'd64;
parameter    ap_ST_fsm_state10 = 8'd128;

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
input  [31:0] p_read;
output  [5:0] node_mix_array_address0;
output   node_mix_array_ce0;
input  [31:0] node_mix_array_q0;
output  [5:0] node_mix_array_address1;
output   node_mix_array_ce1;
input  [31:0] node_mix_array_q1;
output  [5:0] node_mix_array1_address0;
output   node_mix_array1_ce0;
input  [31:0] node_mix_array1_q0;
output  [5:0] node_mix_array1_address1;
output   node_mix_array1_ce1;
input  [31:0] node_mix_array1_q1;
output  [4:0] node_mix_array2_address0;
output   node_mix_array2_ce0;
input  [31:0] node_mix_array2_q0;
output  [4:0] node_mix_array2_address1;
output   node_mix_array2_ce1;
input  [31:0] node_mix_array2_q1;
output  [4:0] node_mix_array3_address0;
output   node_mix_array3_ce0;
input  [31:0] node_mix_array3_q0;
output  [4:0] node_mix_array3_address1;
output   node_mix_array3_ce1;
input  [31:0] node_mix_array3_q1;
output  [4:0] node_mix_array4_address0;
output   node_mix_array4_ce0;
input  [31:0] node_mix_array4_q0;
output  [4:0] node_mix_array4_address1;
output   node_mix_array4_ce1;
input  [31:0] node_mix_array4_q1;
output  [4:0] node_mix_array5_address0;
output   node_mix_array5_ce0;
input  [31:0] node_mix_array5_q0;
output  [4:0] node_mix_array5_address1;
output   node_mix_array5_ce1;
input  [31:0] node_mix_array5_q1;
output  [4:0] node_mix_array6_address0;
output   node_mix_array6_ce0;
input  [31:0] node_mix_array6_q0;
output  [4:0] node_mix_array6_address1;
output   node_mix_array6_ce1;
input  [31:0] node_mix_array6_q1;
output  [4:0] node_mix_array7_address0;
output   node_mix_array7_ce0;
input  [31:0] node_mix_array7_q0;
output  [4:0] node_mix_array7_address1;
output   node_mix_array7_ce1;
input  [31:0] node_mix_array7_q1;
input  [31:0] nodeindex;
input  [0:0] p_read1;
input  [0:0] p_read2;
input  [0:0] p_read3;
input  [0:0] p_read4;
input  [5:0] p_read5;
input  [5:0] p_read6;
input  [7:0] pos_node;
input  [7:0] pos_graph;
input  [31:0] head_index;
input  [31:0] fb_length;
input  [31:0] subgraph;
output  [0:0] ap_return_0;
output  [0:0] ap_return_1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_buf_dram_manage_AWVALID;
reg m_axi_buf_dram_manage_WVALID;
reg m_axi_buf_dram_manage_BREADY;
reg node_mix_array_ce0;
reg node_mix_array_ce1;
reg node_mix_array1_ce0;
reg node_mix_array1_ce1;
reg node_mix_array2_ce0;
reg node_mix_array2_ce1;
reg node_mix_array3_ce0;
reg node_mix_array3_ce1;
reg node_mix_array4_ce0;
reg node_mix_array4_ce1;
reg node_mix_array5_ce0;
reg node_mix_array5_ce1;
reg node_mix_array6_ce0;
reg node_mix_array6_ce1;
reg node_mix_array7_ce0;
reg node_mix_array7_ce1;

(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    buf_dram_manage_blk_n_AW;
wire    ap_CS_fsm_state2;
reg    buf_dram_manage_blk_n_W;
reg    ap_enable_reg_pp0_iter2;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln889_reg_2246;
reg   [0:0] icmp_ln889_reg_2246_pp0_iter1_reg;
reg    buf_dram_manage_blk_n_B;
wire    ap_CS_fsm_state10;
reg   [0:0] Isinsert_0_reg_470;
reg   [0:0] Isdelete_0_reg_479;
reg   [0:0] Isinsert_graph_0_reg_489;
reg   [0:0] Isdelete_graph_0_reg_498;
reg   [7:0] addr_19_reg_508;
reg   [7:0] addr_22_reg_517;
reg   [7:0] empty_43_reg_526;
reg   [7:0] empty_44_reg_538;
reg   [7:0] empty_45_reg_550;
reg   [7:0] empty_46_reg_562;
reg   [5:0] idx_reg_574;
reg   [31:0] temp1_reg_585;
reg   [31:0] temp2_reg_597;
reg   [31:0] temp3_reg_609;
reg   [31:0] temp4_reg_621;
wire   [31:0] mul_fu_639_p2;
reg   [31:0] mul_reg_2161;
wire   [7:0] p_read6_cast_fu_645_p1;
wire   [7:0] p_read5_cast_fu_649_p1;
wire   [5:0] idx_2_fu_663_p2;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state3_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
reg    ap_block_state5_io;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln889_fu_669_p2;
wire   [0:0] icmp_ln373_fu_687_p2;
reg   [0:0] icmp_ln373_reg_2250;
wire   [0:0] icmp_ln878_fu_720_p2;
reg   [0:0] icmp_ln878_reg_2258;
wire   [0:0] xor_ln373_fu_744_p2;
reg   [0:0] xor_ln373_reg_2263;
wire   [0:0] and_ln377_fu_750_p2;
reg   [0:0] and_ln377_reg_2269;
wire   [0:0] or_ln404_fu_826_p2;
reg   [0:0] or_ln404_reg_2274;
wire   [0:0] icmp_ln890_fu_832_p2;
reg   [0:0] icmp_ln890_reg_2279;
wire   [0:0] icmp_ln430_fu_883_p2;
reg   [0:0] icmp_ln430_reg_2284;
wire   [0:0] or_ln434_fu_900_p2;
reg   [0:0] or_ln434_reg_2296;
wire   [0:0] icmp_ln878_6_fu_916_p2;
reg   [0:0] icmp_ln878_6_reg_2301;
wire   [0:0] icmp_ln890_2_fu_996_p2;
reg   [0:0] icmp_ln890_2_reg_2306;
wire   [0:0] xor_ln430_fu_1028_p2;
reg   [0:0] xor_ln430_reg_2311;
wire   [0:0] and_ln464_fu_1034_p2;
reg   [0:0] and_ln464_reg_2316;
wire   [0:0] select_ln464_fu_1040_p3;
wire   [0:0] select_ln464_3_fu_1056_p3;
reg   [0:0] select_ln464_3_reg_2327;
wire   [0:0] and_ln464_3_fu_1070_p2;
wire   [0:0] and_ln464_7_fu_1106_p2;
reg   [0:0] and_ln464_7_reg_2337;
wire   [7:0] select_ln464_4_fu_1120_p3;
wire   [7:0] select_ln464_5_fu_1135_p3;
wire   [0:0] trunc_ln529_fu_1185_p1;
reg   [0:0] trunc_ln529_reg_2362;
wire   [6:0] tempindex3_fu_1189_p3;
reg   [6:0] tempindex3_reg_2379;
wire   [0:0] trunc_ln558_fu_1215_p1;
reg   [0:0] trunc_ln558_reg_2397;
wire   [0:0] trunc_ln590_fu_1237_p1;
reg   [0:0] trunc_ln590_reg_2424;
wire   [0:0] icmp_ln878_9_fu_1251_p2;
reg   [0:0] icmp_ln878_9_reg_2441;
wire   [0:0] trunc_ln622_fu_1275_p1;
reg   [0:0] trunc_ln622_reg_2459;
wire   [7:0] select_ln373_6_fu_1523_p3;
reg   [7:0] select_ln373_6_reg_2476;
reg    ap_enable_reg_pp0_iter1;
wire   [31:0] temp1_5_fu_1538_p3;
reg   [31:0] temp1_5_reg_2481;
wire   [31:0] readbuf1_fu_1553_p3;
reg   [31:0] readbuf1_reg_2486;
wire   [31:0] readbuf0_4_fu_1567_p3;
reg   [31:0] readbuf0_4_reg_2491;
wire   [7:0] select_ln878_15_fu_1675_p3;
reg   [7:0] select_ln878_15_reg_2496;
wire   [31:0] temp2_5_fu_1683_p3;
reg   [31:0] temp2_5_reg_2501;
wire   [31:0] readbuf3_fu_1691_p3;
reg   [31:0] readbuf3_reg_2506;
wire   [31:0] readbuf2_4_fu_1699_p3;
reg   [31:0] readbuf2_4_reg_2511;
wire   [7:0] select_ln878_23_fu_2002_p3;
reg   [7:0] select_ln878_23_reg_2516;
wire   [7:0] select_ln878_24_fu_2017_p3;
reg   [7:0] select_ln878_24_reg_2521;
wire   [31:0] select_ln878_25_fu_2032_p3;
reg   [31:0] select_ln878_25_reg_2526;
wire   [31:0] select_ln878_26_fu_2047_p3;
reg   [31:0] select_ln878_26_reg_2531;
wire   [31:0] select_ln878_27_fu_2062_p3;
reg   [31:0] select_ln878_27_reg_2536;
wire   [31:0] temp4_4_fu_2070_p3;
reg   [31:0] temp4_4_reg_2541;
wire   [31:0] readbuf7_fu_2085_p3;
reg   [31:0] readbuf7_reg_2546;
wire   [31:0] readbuf6_7_fu_2104_p3;
reg   [31:0] readbuf6_7_reg_2551;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg   [0:0] ap_phi_mux_Isdelete_0_phi_fu_482_p4;
reg   [0:0] ap_phi_mux_Isdelete_graph_0_phi_fu_501_p4;
reg   [7:0] ap_phi_mux_empty_43_phi_fu_530_p4;
reg   [7:0] ap_phi_mux_empty_44_phi_fu_542_p4;
reg   [7:0] ap_phi_mux_empty_45_phi_fu_554_p4;
reg   [7:0] ap_phi_mux_empty_46_phi_fu_566_p4;
reg   [31:0] ap_phi_mux_temp1_phi_fu_589_p4;
reg   [31:0] ap_phi_mux_temp2_phi_fu_601_p4;
reg   [31:0] ap_phi_mux_temp3_phi_fu_613_p4;
reg   [31:0] ap_phi_mux_temp4_phi_fu_625_p4;
wire   [63:0] zext_ln529_fu_1177_p1;
wire   [63:0] zext_ln558_fu_1207_p1;
wire   [63:0] zext_ln590_fu_1229_p1;
wire   [63:0] zext_ln622_fu_1267_p1;
wire  signed [63:0] sext_ln940_fu_653_p1;
wire    ap_block_pp0_stage0_01001;
reg   [31:0] addr_fu_160;
wire   [31:0] addr_32_fu_1159_p3;
reg   [31:0] addr_15_fu_164;
wire   [31:0] addr_31_fu_1151_p3;
reg   [31:0] addr_16_fu_168;
wire   [31:0] addr_24_fu_875_p3;
reg   [31:0] addr_17_fu_172;
wire   [31:0] addr_21_fu_807_p3;
wire   [31:0] empty_fu_633_p2;
wire   [0:0] icmp_ln377_fu_693_p2;
wire   [0:0] xor_ln377_fu_698_p2;
wire   [1:0] tmp_fu_710_p4;
wire   [31:0] zext_ln390_fu_726_p1;
wire   [0:0] or_ln377_fu_704_p2;
wire   [0:0] or_ln377_1_fu_756_p2;
wire   [0:0] xor_ln377_2_fu_768_p2;
wire   [0:0] and_ln377_4_fu_774_p2;
wire   [0:0] or_ln377_2_fu_780_p2;
wire   [7:0] add_ln691_fu_738_p2;
wire   [7:0] select_ln373_fu_792_p3;
wire   [31:0] addr_20_fu_730_p3;
wire   [0:0] icmp_ln404_fu_815_p2;
wire   [0:0] xor_ln404_fu_820_p2;
wire   [31:0] zext_ln418_fu_838_p1;
wire   [7:0] add_ln691_1_fu_850_p2;
wire   [31:0] addr_23_fu_842_p3;
wire   [7:0] addr_25_fu_799_p3;
wire   [0:0] and_ln377_3_fu_762_p2;
wire   [0:0] icmp_ln434_fu_889_p2;
wire   [0:0] xor_ln434_fu_894_p2;
wire   [1:0] tmp_2_fu_906_p4;
wire   [31:0] zext_ln447_fu_922_p1;
wire   [0:0] and_ln377_5_fu_786_p2;
wire   [0:0] xor_ln434_2_fu_946_p2;
wire   [0:0] and_ln434_2_fu_952_p2;
wire   [7:0] add_ln691_2_fu_934_p2;
wire   [31:0] addr_26_fu_926_p3;
wire   [7:0] addr_28_fu_868_p3;
wire   [0:0] and_ln404_fu_856_p2;
wire   [0:0] icmp_ln464_fu_979_p2;
wire   [0:0] xor_ln464_fu_984_p2;
wire   [31:0] zext_ln478_fu_1002_p1;
wire   [0:0] and_ln434_fu_940_p2;
wire   [0:0] or_ln464_fu_990_p2;
wire   [0:0] select_ln430_fu_1020_p3;
wire   [0:0] and_ln434_3_fu_958_p2;
wire   [0:0] select_ln430_4_fu_1048_p3;
wire   [0:0] or_ln464_1_fu_1064_p2;
wire   [0:0] xor_ln464_2_fu_1076_p2;
wire   [0:0] and_ln464_4_fu_1082_p2;
wire   [0:0] or_ln464_2_fu_1088_p2;
wire   [0:0] xor_ln404_2_fu_862_p2;
wire   [0:0] and_ln464_5_fu_1094_p2;
wire   [0:0] and_ln464_6_fu_1100_p2;
wire   [7:0] select_ln434_fu_964_p3;
wire   [7:0] select_ln430_5_fu_1112_p3;
wire   [7:0] add_ln691_3_fu_1014_p2;
wire   [7:0] select_ln430_6_fu_1128_p3;
wire   [31:0] addr_27_fu_971_p3;
wire   [31:0] addr_30_fu_1143_p3;
wire   [31:0] addr_29_fu_1006_p3;
wire   [4:0] trunc_ln_fu_1167_p4;
wire   [5:0] trunc_ln6_fu_1197_p4;
wire   [4:0] trunc_ln7_fu_1219_p4;
wire   [1:0] tmp_4_fu_1241_p4;
wire   [5:0] trunc_ln8_fu_1257_p4;
wire   [1:0] sel_fu_1299_p3;
wire   [1:0] zext_ln377_fu_1306_p1;
wire   [2:0] select_ln416_fu_1316_p3;
wire   [1:0] sel_9_fu_1330_p3;
wire   [1:0] select_ln434_3_fu_1337_p3;
wire   [1:0] select_ln430_8_fu_1351_p3;
wire   [2:0] select_ln476_fu_1344_p3;
wire   [2:0] select_ln430_9_fu_1365_p3;
wire   [1:0] sel_7_fu_1309_p3;
wire   [0:0] icmp_ln527_fu_1386_p2;
wire   [0:0] icmp_ln527_2_fu_1399_p2;
wire   [0:0] xor_ln530_fu_1405_p2;
wire   [0:0] and_ln530_fu_1410_p2;
wire   [31:0] select_ln527_fu_1392_p3;
wire   [0:0] and_ln530_2_fu_1424_p2;
wire   [31:0] select_ln530_fu_1416_p3;
wire   [31:0] readbuf0_fu_1379_p3;
wire   [31:0] select_ln527_2_fu_1437_p3;
wire   [31:0] select_ln530_5_fu_1444_p3;
wire  signed [6:0] tempindex1_fu_1463_p2;
wire   [1:0] tmp_3_fu_1472_p4;
wire   [31:0] temp1_6_fu_1429_p3;
wire   [0:0] icmp_ln332_fu_1488_p2;
wire  signed [7:0] sext_ln877_fu_1468_p1;
wire   [0:0] icmp_ln878_7_fu_1482_p2;
wire   [0:0] and_ln878_fu_1510_p2;
wire   [7:0] select_ln332_fu_1494_p3;
wire   [7:0] select_ln878_fu_1515_p3;
wire   [31:0] select_ln332_8_fu_1502_p3;
wire   [31:0] select_ln878_12_fu_1530_p3;
wire   [31:0] select_ln878_13_fu_1545_p3;
wire   [31:0] readbuf0_3_fu_1452_p3;
wire   [31:0] select_ln878_14_fu_1559_p3;
wire   [2:0] sel_8_fu_1323_p3;
wire   [0:0] icmp_ln556_fu_1581_p2;
wire   [0:0] xor_ln559_fu_1587_p2;
wire   [0:0] and_ln559_fu_1592_p2;
wire   [0:0] and_ln559_1_fu_1606_p2;
wire   [31:0] select_ln559_fu_1598_p3;
wire   [0:0] icmp_ln556_1_fu_1619_p2;
wire   [31:0] readbuf2_fu_1574_p3;
wire   [31:0] select_ln556_fu_1625_p3;
wire   [31:0] select_ln559_2_fu_1632_p3;
wire   [31:0] temp2_6_fu_1611_p3;
wire   [0:0] icmp_ln332_4_fu_1653_p2;
wire   [7:0] zext_ln301_fu_1460_p1;
wire   [0:0] icmp_ln878_8_fu_1648_p2;
wire   [7:0] select_ln332_9_fu_1659_p3;
wire   [31:0] select_ln332_10_fu_1667_p3;
wire   [31:0] readbuf2_3_fu_1640_p3;
wire   [0:0] icmp_ln585_fu_1707_p2;
wire   [7:0] readbuf4_fu_1713_p3;
wire   [0:0] icmp_ln617_fu_1733_p2;
wire   [1:0] select_ln464_7_fu_1358_p3;
wire   [0:0] icmp_ln588_fu_1762_p2;
wire   [0:0] icmp_ln588_2_fu_1775_p2;
wire   [0:0] xor_ln591_fu_1781_p2;
wire   [0:0] and_ln591_fu_1786_p2;
wire   [31:0] select_ln588_fu_1768_p3;
wire   [0:0] and_ln591_2_fu_1800_p2;
wire   [31:0] select_ln591_fu_1792_p3;
wire   [31:0] readbuf4_3_fu_1755_p3;
wire   [31:0] select_ln588_2_fu_1813_p3;
wire   [31:0] select_ln591_5_fu_1820_p3;
wire   [31:0] temp3_4_fu_1805_p3;
wire   [0:0] icmp_ln332_5_fu_1836_p2;
wire   [7:0] select_ln332_11_fu_1842_p3;
wire   [31:0] select_ln332_12_fu_1850_p3;
wire   [31:0] readbuf4_4_fu_1828_p3;
wire   [2:0] sel_10_fu_1372_p3;
wire   [0:0] icmp_ln620_fu_1893_p2;
wire   [0:0] xor_ln623_fu_1899_p2;
wire   [0:0] and_ln623_fu_1904_p2;
wire   [0:0] and_ln623_1_fu_1918_p2;
wire   [31:0] select_ln623_fu_1910_p3;
wire   [0:0] icmp_ln620_1_fu_1931_p2;
wire   [31:0] readbuf6_4_fu_1886_p3;
wire   [31:0] select_ln620_fu_1937_p3;
wire   [31:0] select_ln623_2_fu_1944_p3;
wire   [6:0] tempindex4_fu_1960_p2;
wire   [31:0] temp4_5_fu_1923_p3;
wire   [0:0] icmp_ln332_6_fu_1975_p2;
wire   [7:0] zext_ln883_fu_1965_p1;
wire   [0:0] icmp_ln878_10_fu_1969_p2;
wire   [0:0] and_ln878_1_fu_1997_p2;
wire   [7:0] select_ln332_13_fu_1981_p3;
wire   [7:0] select_ln878_19_fu_1858_p3;
wire   [7:0] select_ln430_10_fu_2010_p3;
wire   [31:0] zext_ln585_fu_1721_p1;
wire   [31:0] select_ln878_22_fu_1879_p3;
wire   [31:0] select_ln430_11_fu_2025_p3;
wire   [31:0] readbuf5_fu_1725_p3;
wire   [31:0] select_ln878_21_fu_1872_p3;
wire   [31:0] select_ln430_12_fu_2040_p3;
wire   [31:0] select_ln878_20_fu_1865_p3;
wire   [31:0] select_ln430_13_fu_2055_p3;
wire   [31:0] select_ln332_14_fu_1989_p3;
wire   [31:0] select_ln618_fu_1747_p3;
wire   [31:0] select_ln430_14_fu_2078_p3;
wire   [7:0] readbuf6_fu_1739_p3;
wire   [7:0] readbuf6_6_fu_2093_p3;
wire   [31:0] readbuf6_5_fu_1952_p3;
wire   [31:0] zext_ln521_fu_2100_p1;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
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
        if (((1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln889_reg_2246 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Isdelete_0_reg_479 <= select_ln464_3_reg_2327;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        Isdelete_0_reg_479 <= p_read2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln889_reg_2246 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Isdelete_graph_0_reg_498 <= and_ln464_7_reg_2337;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        Isdelete_graph_0_reg_498 <= p_read4;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln889_fu_669_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Isinsert_0_reg_470 <= select_ln464_fu_1040_p3;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        Isinsert_0_reg_470 <= p_read1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln889_fu_669_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Isinsert_graph_0_reg_489 <= and_ln464_3_fu_1070_p2;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        Isinsert_graph_0_reg_489 <= p_read3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln889_fu_669_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        addr_19_reg_508 <= select_ln464_4_fu_1120_p3;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        addr_19_reg_508 <= p_read5_cast_fu_649_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln889_fu_669_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        addr_22_reg_517 <= select_ln464_5_fu_1135_p3;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        addr_22_reg_517 <= p_read6_cast_fu_645_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln889_reg_2246_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        empty_43_reg_526 <= select_ln878_23_reg_2516;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        empty_43_reg_526 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln889_reg_2246_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        empty_44_reg_538 <= select_ln878_15_reg_2496;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        empty_44_reg_538 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln889_reg_2246_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        empty_45_reg_550 <= select_ln878_24_reg_2521;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        empty_45_reg_550 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln889_reg_2246_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        empty_46_reg_562 <= select_ln373_6_reg_2476;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        empty_46_reg_562 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln889_fu_669_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        idx_reg_574 <= idx_2_fu_663_p2;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        idx_reg_574 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln889_reg_2246_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        temp1_reg_585 <= temp1_5_reg_2481;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        temp1_reg_585 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln889_reg_2246_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        temp2_reg_597 <= temp2_5_reg_2501;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        temp2_reg_597 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln889_reg_2246_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        temp3_reg_609 <= select_ln878_27_reg_2536;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        temp3_reg_609 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln889_reg_2246_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        temp4_reg_621 <= temp4_4_reg_2541;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        temp4_reg_621 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln889_fu_669_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        addr_15_fu_164 <= addr_31_fu_1151_p3;
        addr_16_fu_168 <= addr_24_fu_875_p3;
        addr_17_fu_172 <= addr_21_fu_807_p3;
        addr_fu_160 <= addr_32_fu_1159_p3;
        and_ln464_7_reg_2337 <= and_ln464_7_fu_1106_p2;
        select_ln464_3_reg_2327 <= select_ln464_3_fu_1056_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln889_fu_669_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        and_ln377_reg_2269 <= and_ln377_fu_750_p2;
        and_ln464_reg_2316 <= and_ln464_fu_1034_p2;
        icmp_ln373_reg_2250 <= icmp_ln373_fu_687_p2;
        icmp_ln430_reg_2284 <= icmp_ln430_fu_883_p2;
        icmp_ln878_6_reg_2301 <= icmp_ln878_6_fu_916_p2;
        icmp_ln878_9_reg_2441 <= icmp_ln878_9_fu_1251_p2;
        icmp_ln878_reg_2258 <= icmp_ln878_fu_720_p2;
        icmp_ln890_2_reg_2306 <= icmp_ln890_2_fu_996_p2;
        icmp_ln890_reg_2279 <= icmp_ln890_fu_832_p2;
        or_ln404_reg_2274 <= or_ln404_fu_826_p2;
        or_ln434_reg_2296 <= or_ln434_fu_900_p2;
        tempindex3_reg_2379[6 : 1] <= tempindex3_fu_1189_p3[6 : 1];
        trunc_ln529_reg_2362 <= trunc_ln529_fu_1185_p1;
        trunc_ln558_reg_2397 <= trunc_ln558_fu_1215_p1;
        trunc_ln590_reg_2424 <= trunc_ln590_fu_1237_p1;
        trunc_ln622_reg_2459 <= trunc_ln622_fu_1275_p1;
        xor_ln373_reg_2263 <= xor_ln373_fu_744_p2;
        xor_ln430_reg_2311 <= xor_ln430_fu_1028_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln889_reg_2246 <= icmp_ln889_fu_669_p2;
        icmp_ln889_reg_2246_pp0_iter1_reg <= icmp_ln889_reg_2246;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        mul_reg_2161 <= mul_fu_639_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln889_reg_2246 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        readbuf0_4_reg_2491 <= readbuf0_4_fu_1567_p3;
        readbuf1_reg_2486 <= readbuf1_fu_1553_p3;
        readbuf2_4_reg_2511 <= readbuf2_4_fu_1699_p3;
        readbuf3_reg_2506 <= readbuf3_fu_1691_p3;
        readbuf6_7_reg_2551 <= readbuf6_7_fu_2104_p3;
        readbuf7_reg_2546 <= readbuf7_fu_2085_p3;
        select_ln878_25_reg_2526 <= select_ln878_25_fu_2032_p3;
        select_ln878_26_reg_2531 <= select_ln878_26_fu_2047_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln889_reg_2246 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        select_ln373_6_reg_2476 <= select_ln373_6_fu_1523_p3;
        select_ln878_15_reg_2496 <= select_ln878_15_fu_1675_p3;
        select_ln878_23_reg_2516 <= select_ln878_23_fu_2002_p3;
        select_ln878_24_reg_2521 <= select_ln878_24_fu_2017_p3;
        select_ln878_27_reg_2536 <= select_ln878_27_fu_2062_p3;
        temp1_5_reg_2481 <= temp1_5_fu_1538_p3;
        temp2_5_reg_2501 <= temp2_5_fu_1683_p3;
        temp4_4_reg_2541 <= temp4_4_fu_2070_p3;
    end
end

always @ (*) begin
    if ((icmp_ln889_fu_669_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if ((((m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state10)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln889_reg_2246 == 1'd0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_Isdelete_0_phi_fu_482_p4 = select_ln464_3_reg_2327;
    end else begin
        ap_phi_mux_Isdelete_0_phi_fu_482_p4 = Isdelete_0_reg_479;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln889_reg_2246 == 1'd0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_Isdelete_graph_0_phi_fu_501_p4 = and_ln464_7_reg_2337;
    end else begin
        ap_phi_mux_Isdelete_graph_0_phi_fu_501_p4 = Isdelete_graph_0_reg_498;
    end
end

always @ (*) begin
    if (((icmp_ln889_reg_2246_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_empty_43_phi_fu_530_p4 = select_ln878_23_reg_2516;
    end else begin
        ap_phi_mux_empty_43_phi_fu_530_p4 = empty_43_reg_526;
    end
end

always @ (*) begin
    if (((icmp_ln889_reg_2246_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_empty_44_phi_fu_542_p4 = select_ln878_15_reg_2496;
    end else begin
        ap_phi_mux_empty_44_phi_fu_542_p4 = empty_44_reg_538;
    end
end

always @ (*) begin
    if (((icmp_ln889_reg_2246_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_empty_45_phi_fu_554_p4 = select_ln878_24_reg_2521;
    end else begin
        ap_phi_mux_empty_45_phi_fu_554_p4 = empty_45_reg_550;
    end
end

always @ (*) begin
    if (((icmp_ln889_reg_2246_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_empty_46_phi_fu_566_p4 = select_ln373_6_reg_2476;
    end else begin
        ap_phi_mux_empty_46_phi_fu_566_p4 = empty_46_reg_562;
    end
end

always @ (*) begin
    if (((icmp_ln889_reg_2246_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_temp1_phi_fu_589_p4 = temp1_5_reg_2481;
    end else begin
        ap_phi_mux_temp1_phi_fu_589_p4 = temp1_reg_585;
    end
end

always @ (*) begin
    if (((icmp_ln889_reg_2246_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_temp2_phi_fu_601_p4 = temp2_5_reg_2501;
    end else begin
        ap_phi_mux_temp2_phi_fu_601_p4 = temp2_reg_597;
    end
end

always @ (*) begin
    if (((icmp_ln889_reg_2246_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_temp3_phi_fu_613_p4 = select_ln878_27_reg_2536;
    end else begin
        ap_phi_mux_temp3_phi_fu_613_p4 = temp3_reg_609;
    end
end

always @ (*) begin
    if (((icmp_ln889_reg_2246_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_temp4_phi_fu_625_p4 = temp4_4_reg_2541;
    end else begin
        ap_phi_mux_temp4_phi_fu_625_p4 = temp4_reg_621;
    end
end

always @ (*) begin
    if (((m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_dram_manage_blk_n_AW = m_axi_buf_dram_manage_AWREADY;
    end else begin
        buf_dram_manage_blk_n_AW = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buf_dram_manage_blk_n_B = m_axi_buf_dram_manage_BVALID;
    end else begin
        buf_dram_manage_blk_n_B = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln889_reg_2246_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buf_dram_manage_blk_n_W = m_axi_buf_dram_manage_WREADY;
    end else begin
        buf_dram_manage_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        m_axi_buf_dram_manage_AWVALID = 1'b1;
    end else begin
        m_axi_buf_dram_manage_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        m_axi_buf_dram_manage_BREADY = 1'b1;
    end else begin
        m_axi_buf_dram_manage_BREADY = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln889_reg_2246_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        m_axi_buf_dram_manage_WVALID = 1'b1;
    end else begin
        m_axi_buf_dram_manage_WVALID = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array1_ce0 = 1'b1;
    end else begin
        node_mix_array1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array1_ce1 = 1'b1;
    end else begin
        node_mix_array1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array2_ce0 = 1'b1;
    end else begin
        node_mix_array2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array2_ce1 = 1'b1;
    end else begin
        node_mix_array2_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array3_ce0 = 1'b1;
    end else begin
        node_mix_array3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array3_ce1 = 1'b1;
    end else begin
        node_mix_array3_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array4_ce0 = 1'b1;
    end else begin
        node_mix_array4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array4_ce1 = 1'b1;
    end else begin
        node_mix_array4_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array5_ce0 = 1'b1;
    end else begin
        node_mix_array5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array5_ce1 = 1'b1;
    end else begin
        node_mix_array5_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array6_ce0 = 1'b1;
    end else begin
        node_mix_array6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array6_ce1 = 1'b1;
    end else begin
        node_mix_array6_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array7_ce0 = 1'b1;
    end else begin
        node_mix_array7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array7_ce1 = 1'b1;
    end else begin
        node_mix_array7_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array_ce0 = 1'b1;
    end else begin
        node_mix_array_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array_ce1 = 1'b1;
    end else begin
        node_mix_array_ce1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (icmp_ln889_fu_669_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter1 == 1'b0) & (icmp_ln889_fu_669_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln691_1_fu_850_p2 = (addr_22_reg_517 + 8'd1);

assign add_ln691_2_fu_934_p2 = (addr_25_fu_799_p3 + 8'd1);

assign add_ln691_3_fu_1014_p2 = (addr_28_fu_868_p3 + 8'd1);

assign add_ln691_fu_738_p2 = (addr_19_reg_508 + 8'd1);

assign addr_20_fu_730_p3 = ((icmp_ln878_fu_720_p2[0:0] == 1'b1) ? zext_ln390_fu_726_p1 : addr_17_fu_172);

assign addr_21_fu_807_p3 = ((and_ln377_fu_750_p2[0:0] == 1'b1) ? addr_20_fu_730_p3 : addr_17_fu_172);

assign addr_23_fu_842_p3 = ((icmp_ln890_fu_832_p2[0:0] == 1'b1) ? zext_ln418_fu_838_p1 : addr_16_fu_168);

assign addr_24_fu_875_p3 = ((or_ln404_fu_826_p2[0:0] == 1'b1) ? addr_23_fu_842_p3 : addr_16_fu_168);

assign addr_25_fu_799_p3 = ((and_ln377_fu_750_p2[0:0] == 1'b1) ? add_ln691_fu_738_p2 : select_ln373_fu_792_p3);

assign addr_26_fu_926_p3 = ((icmp_ln878_6_fu_916_p2[0:0] == 1'b1) ? zext_ln447_fu_922_p1 : addr_15_fu_164);

assign addr_27_fu_971_p3 = ((or_ln434_fu_900_p2[0:0] == 1'b1) ? addr_26_fu_926_p3 : addr_15_fu_164);

assign addr_28_fu_868_p3 = ((or_ln404_fu_826_p2[0:0] == 1'b1) ? add_ln691_1_fu_850_p2 : pos_graph);

assign addr_29_fu_1006_p3 = ((icmp_ln890_2_fu_996_p2[0:0] == 1'b1) ? zext_ln478_fu_1002_p1 : addr_fu_160);

assign addr_30_fu_1143_p3 = ((icmp_ln430_fu_883_p2[0:0] == 1'b1) ? addr_15_fu_164 : addr_27_fu_971_p3);

assign addr_31_fu_1151_p3 = ((and_ln464_fu_1034_p2[0:0] == 1'b1) ? addr_27_fu_971_p3 : addr_30_fu_1143_p3);

assign addr_32_fu_1159_p3 = ((and_ln464_fu_1034_p2[0:0] == 1'b1) ? addr_29_fu_1006_p3 : addr_fu_160);

assign and_ln377_3_fu_762_p2 = (or_ln377_1_fu_756_p2 & Isinsert_0_reg_470);

assign and_ln377_4_fu_774_p2 = (xor_ln377_2_fu_768_p2 & Isinsert_0_reg_470);

assign and_ln377_5_fu_786_p2 = (or_ln377_2_fu_780_p2 & ap_phi_mux_Isdelete_0_phi_fu_482_p4);

assign and_ln377_fu_750_p2 = (xor_ln373_fu_744_p2 & or_ln377_fu_704_p2);

assign and_ln404_fu_856_p2 = (icmp_ln404_fu_815_p2 & Isinsert_graph_0_reg_489);

assign and_ln434_2_fu_952_p2 = (xor_ln434_2_fu_946_p2 & and_ln377_5_fu_786_p2);

assign and_ln434_3_fu_958_p2 = (and_ln434_2_fu_952_p2 & and_ln377_3_fu_762_p2);

assign and_ln434_fu_940_p2 = (icmp_ln434_fu_889_p2 & and_ln377_3_fu_762_p2);

assign and_ln464_3_fu_1070_p2 = (or_ln464_1_fu_1064_p2 & and_ln404_fu_856_p2);

assign and_ln464_4_fu_1082_p2 = (xor_ln464_2_fu_1076_p2 & and_ln404_fu_856_p2);

assign and_ln464_5_fu_1094_p2 = (xor_ln404_2_fu_862_p2 & or_ln464_2_fu_1088_p2);

assign and_ln464_6_fu_1100_p2 = (and_ln464_5_fu_1094_p2 & Isinsert_graph_0_reg_489);

assign and_ln464_7_fu_1106_p2 = (ap_phi_mux_Isdelete_graph_0_phi_fu_501_p4 & and_ln464_6_fu_1100_p2);

assign and_ln464_fu_1034_p2 = (xor_ln430_fu_1028_p2 & or_ln464_fu_990_p2);

assign and_ln530_2_fu_1424_p2 = (trunc_ln529_reg_2362 & icmp_ln527_2_fu_1399_p2);

assign and_ln530_fu_1410_p2 = (xor_ln530_fu_1405_p2 & icmp_ln527_2_fu_1399_p2);

assign and_ln559_1_fu_1606_p2 = (trunc_ln558_reg_2397 & icmp_ln556_fu_1581_p2);

assign and_ln559_fu_1592_p2 = (xor_ln559_fu_1587_p2 & icmp_ln556_fu_1581_p2);

assign and_ln591_2_fu_1800_p2 = (trunc_ln590_reg_2424 & icmp_ln588_2_fu_1775_p2);

assign and_ln591_fu_1786_p2 = (xor_ln591_fu_1781_p2 & icmp_ln588_2_fu_1775_p2);

assign and_ln623_1_fu_1918_p2 = (trunc_ln622_reg_2459 & icmp_ln620_fu_1893_p2);

assign and_ln623_fu_1904_p2 = (xor_ln623_fu_1899_p2 & icmp_ln620_fu_1893_p2);

assign and_ln878_1_fu_1997_p2 = (xor_ln430_reg_2311 & icmp_ln878_10_fu_1969_p2);

assign and_ln878_fu_1510_p2 = (xor_ln373_reg_2263 & icmp_ln878_7_fu_1482_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state5_io));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state5_io));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state5_io = ((m_axi_buf_dram_manage_WREADY == 1'b0) & (icmp_ln889_reg_2246_pp0_iter1_reg == 1'd0));
end

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_return_0 = Isdelete_0_reg_479;

assign ap_return_1 = Isdelete_graph_0_reg_498;

assign empty_fu_633_p2 = nodeindex << 32'd5;

assign icmp_ln332_4_fu_1653_p2 = (($signed(temp2_6_fu_1611_p3) > $signed(ap_phi_mux_temp2_phi_fu_601_p4)) ? 1'b1 : 1'b0);

assign icmp_ln332_5_fu_1836_p2 = (($signed(temp3_4_fu_1805_p3) > $signed(ap_phi_mux_temp3_phi_fu_613_p4)) ? 1'b1 : 1'b0);

assign icmp_ln332_6_fu_1975_p2 = (($signed(temp4_5_fu_1923_p3) > $signed(ap_phi_mux_temp4_phi_fu_625_p4)) ? 1'b1 : 1'b0);

assign icmp_ln332_fu_1488_p2 = (($signed(temp1_6_fu_1429_p3) > $signed(ap_phi_mux_temp1_phi_fu_589_p4)) ? 1'b1 : 1'b0);

assign icmp_ln373_fu_687_p2 = ((idx_reg_574 == 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln377_fu_693_p2 = ((addr_19_reg_508 != pos_node) ? 1'b1 : 1'b0);

assign icmp_ln404_fu_815_p2 = ((addr_22_reg_517 != pos_graph) ? 1'b1 : 1'b0);

assign icmp_ln430_fu_883_p2 = ((idx_reg_574 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln434_fu_889_p2 = ((addr_25_fu_799_p3 != pos_node) ? 1'b1 : 1'b0);

assign icmp_ln464_fu_979_p2 = ((addr_28_fu_868_p3 != pos_graph) ? 1'b1 : 1'b0);

assign icmp_ln527_2_fu_1399_p2 = ((sel_7_fu_1309_p3 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln527_fu_1386_p2 = ((sel_7_fu_1309_p3 == 2'd1) ? 1'b1 : 1'b0);

assign icmp_ln556_1_fu_1619_p2 = ((sel_8_fu_1323_p3 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln556_fu_1581_p2 = ((sel_8_fu_1323_p3 == 3'd2) ? 1'b1 : 1'b0);

assign icmp_ln585_fu_1707_p2 = (($signed(temp1_5_fu_1538_p3) > $signed(ap_phi_mux_temp3_phi_fu_613_p4)) ? 1'b1 : 1'b0);

assign icmp_ln588_2_fu_1775_p2 = ((select_ln464_7_fu_1358_p3 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln588_fu_1762_p2 = ((select_ln464_7_fu_1358_p3 == 2'd1) ? 1'b1 : 1'b0);

assign icmp_ln617_fu_1733_p2 = (($signed(temp2_5_fu_1683_p3) > $signed(ap_phi_mux_temp4_phi_fu_625_p4)) ? 1'b1 : 1'b0);

assign icmp_ln620_1_fu_1931_p2 = ((sel_10_fu_1372_p3 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln620_fu_1893_p2 = ((sel_10_fu_1372_p3 == 3'd2) ? 1'b1 : 1'b0);

assign icmp_ln878_10_fu_1969_p2 = ((tempindex4_fu_1960_p2 < 7'd33) ? 1'b1 : 1'b0);

assign icmp_ln878_6_fu_916_p2 = ((tmp_2_fu_906_p4 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln878_7_fu_1482_p2 = ((tmp_3_fu_1472_p4 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln878_8_fu_1648_p2 = ((tempindex3_reg_2379 < 7'd33) ? 1'b1 : 1'b0);

assign icmp_ln878_9_fu_1251_p2 = ((tmp_4_fu_1241_p4 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln878_fu_720_p2 = ((tmp_fu_710_p4 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln889_fu_669_p2 = ((idx_reg_574 == 6'd33) ? 1'b1 : 1'b0);

assign icmp_ln890_2_fu_996_p2 = ((addr_28_fu_868_p3 < 8'd65) ? 1'b1 : 1'b0);

assign icmp_ln890_fu_832_p2 = ((addr_22_reg_517 < 8'd65) ? 1'b1 : 1'b0);

assign idx_2_fu_663_p2 = (idx_reg_574 + 6'd1);

assign m_axi_buf_dram_manage_ARADDR = 64'd0;

assign m_axi_buf_dram_manage_ARBURST = 2'd0;

assign m_axi_buf_dram_manage_ARCACHE = 4'd0;

assign m_axi_buf_dram_manage_ARID = 1'd0;

assign m_axi_buf_dram_manage_ARLEN = 32'd0;

assign m_axi_buf_dram_manage_ARLOCK = 2'd0;

assign m_axi_buf_dram_manage_ARPROT = 3'd0;

assign m_axi_buf_dram_manage_ARQOS = 4'd0;

assign m_axi_buf_dram_manage_ARREGION = 4'd0;

assign m_axi_buf_dram_manage_ARSIZE = 3'd0;

assign m_axi_buf_dram_manage_ARUSER = 1'd0;

assign m_axi_buf_dram_manage_ARVALID = 1'b0;

assign m_axi_buf_dram_manage_AWADDR = sext_ln940_fu_653_p1;

assign m_axi_buf_dram_manage_AWBURST = 2'd0;

assign m_axi_buf_dram_manage_AWCACHE = 4'd0;

assign m_axi_buf_dram_manage_AWID = 1'd0;

assign m_axi_buf_dram_manage_AWLEN = 32'd33;

assign m_axi_buf_dram_manage_AWLOCK = 2'd0;

assign m_axi_buf_dram_manage_AWPROT = 3'd0;

assign m_axi_buf_dram_manage_AWQOS = 4'd0;

assign m_axi_buf_dram_manage_AWREGION = 4'd0;

assign m_axi_buf_dram_manage_AWSIZE = 3'd0;

assign m_axi_buf_dram_manage_AWUSER = 1'd0;

assign m_axi_buf_dram_manage_RREADY = 1'b0;

assign m_axi_buf_dram_manage_WDATA = {{{{{{{{readbuf7_reg_2546}, {readbuf6_7_reg_2551}}, {select_ln878_26_reg_2531}}, {select_ln878_25_reg_2526}}, {readbuf3_reg_2506}}, {readbuf2_4_reg_2511}}, {readbuf1_reg_2486}}, {readbuf0_4_reg_2491}};

assign m_axi_buf_dram_manage_WID = 1'd0;

assign m_axi_buf_dram_manage_WLAST = 1'b0;

assign m_axi_buf_dram_manage_WSTRB = 32'd4294967295;

assign m_axi_buf_dram_manage_WUSER = 1'd0;

assign mul_fu_639_p2 = (empty_fu_633_p2 + nodeindex);

assign node_mix_array1_address0 = zext_ln622_fu_1267_p1;

assign node_mix_array1_address1 = zext_ln558_fu_1207_p1;

assign node_mix_array2_address0 = zext_ln590_fu_1229_p1;

assign node_mix_array2_address1 = zext_ln529_fu_1177_p1;

assign node_mix_array3_address0 = zext_ln590_fu_1229_p1;

assign node_mix_array3_address1 = zext_ln529_fu_1177_p1;

assign node_mix_array4_address0 = zext_ln622_fu_1267_p1;

assign node_mix_array4_address1 = zext_ln558_fu_1207_p1;

assign node_mix_array5_address0 = zext_ln622_fu_1267_p1;

assign node_mix_array5_address1 = zext_ln558_fu_1207_p1;

assign node_mix_array6_address0 = zext_ln590_fu_1229_p1;

assign node_mix_array6_address1 = zext_ln529_fu_1177_p1;

assign node_mix_array7_address0 = zext_ln590_fu_1229_p1;

assign node_mix_array7_address1 = zext_ln529_fu_1177_p1;

assign node_mix_array_address0 = zext_ln622_fu_1267_p1;

assign node_mix_array_address1 = zext_ln558_fu_1207_p1;

assign or_ln377_1_fu_756_p2 = (icmp_ln373_fu_687_p2 | and_ln377_fu_750_p2);

assign or_ln377_2_fu_780_p2 = (icmp_ln373_fu_687_p2 | and_ln377_4_fu_774_p2);

assign or_ln377_fu_704_p2 = (xor_ln377_fu_698_p2 | icmp_ln377_fu_693_p2);

assign or_ln404_fu_826_p2 = (xor_ln404_fu_820_p2 | icmp_ln404_fu_815_p2);

assign or_ln434_fu_900_p2 = (xor_ln434_fu_894_p2 | icmp_ln434_fu_889_p2);

assign or_ln464_1_fu_1064_p2 = (icmp_ln430_fu_883_p2 | and_ln464_fu_1034_p2);

assign or_ln464_2_fu_1088_p2 = (icmp_ln430_fu_883_p2 | and_ln464_4_fu_1082_p2);

assign or_ln464_fu_990_p2 = (xor_ln464_fu_984_p2 | icmp_ln464_fu_979_p2);

assign p_read5_cast_fu_649_p1 = p_read5;

assign p_read6_cast_fu_645_p1 = p_read6;

assign readbuf0_3_fu_1452_p3 = ((and_ln530_2_fu_1424_p2[0:0] == 1'b1) ? readbuf0_fu_1379_p3 : select_ln530_5_fu_1444_p3);

assign readbuf0_4_fu_1567_p3 = ((icmp_ln373_reg_2250[0:0] == 1'b1) ? 32'd32 : select_ln878_14_fu_1559_p3);

assign readbuf0_fu_1379_p3 = ((trunc_ln529_reg_2362[0:0] == 1'b1) ? node_mix_array6_q1 : node_mix_array2_q1);

assign readbuf1_fu_1553_p3 = ((icmp_ln373_reg_2250[0:0] == 1'b1) ? p_read : select_ln878_13_fu_1545_p3);

assign readbuf2_3_fu_1640_p3 = ((and_ln559_1_fu_1606_p2[0:0] == 1'b1) ? readbuf2_fu_1574_p3 : select_ln559_2_fu_1632_p3);

assign readbuf2_4_fu_1699_p3 = ((icmp_ln878_8_fu_1648_p2[0:0] == 1'b1) ? readbuf2_3_fu_1640_p3 : 32'd0);

assign readbuf2_fu_1574_p3 = ((trunc_ln558_reg_2397[0:0] == 1'b1) ? node_mix_array4_q1 : node_mix_array_q1);

assign readbuf3_fu_1691_p3 = ((icmp_ln878_8_fu_1648_p2[0:0] == 1'b1) ? temp2_6_fu_1611_p3 : 32'd0);

assign readbuf4_3_fu_1755_p3 = ((trunc_ln590_reg_2424[0:0] == 1'b1) ? node_mix_array6_q0 : node_mix_array2_q0);

assign readbuf4_4_fu_1828_p3 = ((and_ln591_2_fu_1800_p2[0:0] == 1'b1) ? readbuf4_3_fu_1755_p3 : select_ln591_5_fu_1820_p3);

assign readbuf4_fu_1713_p3 = ((icmp_ln585_fu_1707_p2[0:0] == 1'b1) ? select_ln373_6_fu_1523_p3 : ap_phi_mux_empty_45_phi_fu_554_p4);

assign readbuf5_fu_1725_p3 = ((icmp_ln585_fu_1707_p2[0:0] == 1'b1) ? temp1_5_fu_1538_p3 : ap_phi_mux_temp3_phi_fu_613_p4);

assign readbuf6_4_fu_1886_p3 = ((trunc_ln622_reg_2459[0:0] == 1'b1) ? node_mix_array4_q0 : node_mix_array_q0);

assign readbuf6_5_fu_1952_p3 = ((and_ln623_1_fu_1918_p2[0:0] == 1'b1) ? readbuf6_4_fu_1886_p3 : select_ln623_2_fu_1944_p3);

assign readbuf6_6_fu_2093_p3 = ((icmp_ln430_reg_2284[0:0] == 1'b1) ? readbuf6_fu_1739_p3 : 8'd0);

assign readbuf6_7_fu_2104_p3 = ((and_ln878_1_fu_1997_p2[0:0] == 1'b1) ? readbuf6_5_fu_1952_p3 : zext_ln521_fu_2100_p1);

assign readbuf6_fu_1739_p3 = ((icmp_ln617_fu_1733_p2[0:0] == 1'b1) ? select_ln878_15_fu_1675_p3 : ap_phi_mux_empty_43_phi_fu_530_p4);

assign readbuf7_fu_2085_p3 = ((and_ln878_1_fu_1997_p2[0:0] == 1'b1) ? temp4_5_fu_1923_p3 : select_ln430_14_fu_2078_p3);

assign sel_10_fu_1372_p3 = ((and_ln464_reg_2316[0:0] == 1'b1) ? select_ln476_fu_1344_p3 : select_ln430_9_fu_1365_p3);

assign sel_7_fu_1309_p3 = ((and_ln377_reg_2269[0:0] == 1'b1) ? sel_fu_1299_p3 : zext_ln377_fu_1306_p1);

assign sel_8_fu_1323_p3 = ((or_ln404_reg_2274[0:0] == 1'b1) ? select_ln416_fu_1316_p3 : 3'd4);

assign sel_9_fu_1330_p3 = ((icmp_ln878_6_reg_2301[0:0] == 1'b1) ? 2'd2 : 2'd0);

assign sel_fu_1299_p3 = ((icmp_ln878_reg_2258[0:0] == 1'b1) ? 2'd2 : 2'd0);

assign select_ln332_10_fu_1667_p3 = ((icmp_ln332_4_fu_1653_p2[0:0] == 1'b1) ? temp2_6_fu_1611_p3 : ap_phi_mux_temp2_phi_fu_601_p4);

assign select_ln332_11_fu_1842_p3 = ((icmp_ln332_5_fu_1836_p2[0:0] == 1'b1) ? zext_ln301_fu_1460_p1 : ap_phi_mux_empty_45_phi_fu_554_p4);

assign select_ln332_12_fu_1850_p3 = ((icmp_ln332_5_fu_1836_p2[0:0] == 1'b1) ? temp3_4_fu_1805_p3 : ap_phi_mux_temp3_phi_fu_613_p4);

assign select_ln332_13_fu_1981_p3 = ((icmp_ln332_6_fu_1975_p2[0:0] == 1'b1) ? zext_ln883_fu_1965_p1 : ap_phi_mux_empty_43_phi_fu_530_p4);

assign select_ln332_14_fu_1989_p3 = ((icmp_ln332_6_fu_1975_p2[0:0] == 1'b1) ? temp4_5_fu_1923_p3 : ap_phi_mux_temp4_phi_fu_625_p4);

assign select_ln332_8_fu_1502_p3 = ((icmp_ln332_fu_1488_p2[0:0] == 1'b1) ? temp1_6_fu_1429_p3 : ap_phi_mux_temp1_phi_fu_589_p4);

assign select_ln332_9_fu_1659_p3 = ((icmp_ln332_4_fu_1653_p2[0:0] == 1'b1) ? zext_ln301_fu_1460_p1 : ap_phi_mux_empty_44_phi_fu_542_p4);

assign select_ln332_fu_1494_p3 = ((icmp_ln332_fu_1488_p2[0:0] == 1'b1) ? sext_ln877_fu_1468_p1 : ap_phi_mux_empty_46_phi_fu_566_p4);

assign select_ln373_6_fu_1523_p3 = ((icmp_ln373_reg_2250[0:0] == 1'b1) ? ap_phi_mux_empty_46_phi_fu_566_p4 : select_ln878_fu_1515_p3);

assign select_ln373_fu_792_p3 = ((icmp_ln373_fu_687_p2[0:0] == 1'b1) ? addr_19_reg_508 : pos_node);

assign select_ln416_fu_1316_p3 = ((icmp_ln890_reg_2279[0:0] == 1'b1) ? 3'd2 : 3'd0);

assign select_ln430_10_fu_2010_p3 = ((icmp_ln430_reg_2284[0:0] == 1'b1) ? ap_phi_mux_empty_45_phi_fu_554_p4 : select_ln878_19_fu_1858_p3);

assign select_ln430_11_fu_2025_p3 = ((icmp_ln430_reg_2284[0:0] == 1'b1) ? zext_ln585_fu_1721_p1 : select_ln878_22_fu_1879_p3);

assign select_ln430_12_fu_2040_p3 = ((icmp_ln430_reg_2284[0:0] == 1'b1) ? readbuf5_fu_1725_p3 : select_ln878_21_fu_1872_p3);

assign select_ln430_13_fu_2055_p3 = ((icmp_ln430_reg_2284[0:0] == 1'b1) ? ap_phi_mux_temp3_phi_fu_613_p4 : select_ln878_20_fu_1865_p3);

assign select_ln430_14_fu_2078_p3 = ((icmp_ln430_reg_2284[0:0] == 1'b1) ? select_ln618_fu_1747_p3 : 32'd0);

assign select_ln430_4_fu_1048_p3 = ((icmp_ln430_fu_883_p2[0:0] == 1'b1) ? and_ln377_5_fu_786_p2 : and_ln434_3_fu_958_p2);

assign select_ln430_5_fu_1112_p3 = ((icmp_ln430_fu_883_p2[0:0] == 1'b1) ? addr_25_fu_799_p3 : select_ln434_fu_964_p3);

assign select_ln430_6_fu_1128_p3 = ((icmp_ln430_fu_883_p2[0:0] == 1'b1) ? addr_28_fu_868_p3 : pos_graph);

assign select_ln430_8_fu_1351_p3 = ((icmp_ln430_reg_2284[0:0] == 1'b1) ? 2'd0 : select_ln434_3_fu_1337_p3);

assign select_ln430_9_fu_1365_p3 = ((icmp_ln430_reg_2284[0:0] == 1'b1) ? 3'd0 : 3'd4);

assign select_ln430_fu_1020_p3 = ((icmp_ln430_fu_883_p2[0:0] == 1'b1) ? and_ln377_3_fu_762_p2 : and_ln434_fu_940_p2);

assign select_ln434_3_fu_1337_p3 = ((or_ln434_reg_2296[0:0] == 1'b1) ? sel_9_fu_1330_p3 : 2'd1);

assign select_ln434_fu_964_p3 = ((or_ln434_fu_900_p2[0:0] == 1'b1) ? add_ln691_2_fu_934_p2 : pos_node);

assign select_ln464_3_fu_1056_p3 = ((and_ln464_fu_1034_p2[0:0] == 1'b1) ? and_ln434_3_fu_958_p2 : select_ln430_4_fu_1048_p3);

assign select_ln464_4_fu_1120_p3 = ((and_ln464_fu_1034_p2[0:0] == 1'b1) ? select_ln434_fu_964_p3 : select_ln430_5_fu_1112_p3);

assign select_ln464_5_fu_1135_p3 = ((and_ln464_fu_1034_p2[0:0] == 1'b1) ? add_ln691_3_fu_1014_p2 : select_ln430_6_fu_1128_p3);

assign select_ln464_7_fu_1358_p3 = ((and_ln464_reg_2316[0:0] == 1'b1) ? select_ln434_3_fu_1337_p3 : select_ln430_8_fu_1351_p3);

assign select_ln464_fu_1040_p3 = ((and_ln464_fu_1034_p2[0:0] == 1'b1) ? and_ln434_fu_940_p2 : select_ln430_fu_1020_p3);

assign select_ln476_fu_1344_p3 = ((icmp_ln890_2_reg_2306[0:0] == 1'b1) ? 3'd2 : 3'd0);

assign select_ln527_2_fu_1437_p3 = ((icmp_ln527_fu_1386_p2[0:0] == 1'b1) ? head_index : 32'd0);

assign select_ln527_fu_1392_p3 = ((icmp_ln527_fu_1386_p2[0:0] == 1'b1) ? fb_length : 32'd0);

assign select_ln530_5_fu_1444_p3 = ((and_ln530_fu_1410_p2[0:0] == 1'b1) ? readbuf0_fu_1379_p3 : select_ln527_2_fu_1437_p3);

assign select_ln530_fu_1416_p3 = ((and_ln530_fu_1410_p2[0:0] == 1'b1) ? node_mix_array3_q1 : select_ln527_fu_1392_p3);

assign select_ln556_fu_1625_p3 = ((icmp_ln556_1_fu_1619_p2[0:0] == 1'b1) ? subgraph : 32'd0);

assign select_ln559_2_fu_1632_p3 = ((and_ln559_fu_1592_p2[0:0] == 1'b1) ? readbuf2_fu_1574_p3 : select_ln556_fu_1625_p3);

assign select_ln559_fu_1598_p3 = ((and_ln559_fu_1592_p2[0:0] == 1'b1) ? node_mix_array1_q1 : 32'd0);

assign select_ln588_2_fu_1813_p3 = ((icmp_ln588_fu_1762_p2[0:0] == 1'b1) ? head_index : 32'd0);

assign select_ln588_fu_1768_p3 = ((icmp_ln588_fu_1762_p2[0:0] == 1'b1) ? fb_length : 32'd0);

assign select_ln591_5_fu_1820_p3 = ((and_ln591_fu_1786_p2[0:0] == 1'b1) ? readbuf4_3_fu_1755_p3 : select_ln588_2_fu_1813_p3);

assign select_ln591_fu_1792_p3 = ((and_ln591_fu_1786_p2[0:0] == 1'b1) ? node_mix_array3_q0 : select_ln588_fu_1768_p3);

assign select_ln618_fu_1747_p3 = ((icmp_ln617_fu_1733_p2[0:0] == 1'b1) ? temp2_5_fu_1683_p3 : ap_phi_mux_temp4_phi_fu_625_p4);

assign select_ln620_fu_1937_p3 = ((icmp_ln620_1_fu_1931_p2[0:0] == 1'b1) ? subgraph : 32'd0);

assign select_ln623_2_fu_1944_p3 = ((and_ln623_fu_1904_p2[0:0] == 1'b1) ? readbuf6_4_fu_1886_p3 : select_ln620_fu_1937_p3);

assign select_ln623_fu_1910_p3 = ((and_ln623_fu_1904_p2[0:0] == 1'b1) ? node_mix_array1_q0 : 32'd0);

assign select_ln878_12_fu_1530_p3 = ((and_ln878_fu_1510_p2[0:0] == 1'b1) ? select_ln332_8_fu_1502_p3 : ap_phi_mux_temp1_phi_fu_589_p4);

assign select_ln878_13_fu_1545_p3 = ((and_ln878_fu_1510_p2[0:0] == 1'b1) ? temp1_6_fu_1429_p3 : 32'd0);

assign select_ln878_14_fu_1559_p3 = ((and_ln878_fu_1510_p2[0:0] == 1'b1) ? readbuf0_3_fu_1452_p3 : 32'd0);

assign select_ln878_15_fu_1675_p3 = ((icmp_ln878_8_fu_1648_p2[0:0] == 1'b1) ? select_ln332_9_fu_1659_p3 : ap_phi_mux_empty_44_phi_fu_542_p4);

assign select_ln878_19_fu_1858_p3 = ((icmp_ln878_9_reg_2441[0:0] == 1'b1) ? select_ln332_11_fu_1842_p3 : ap_phi_mux_empty_45_phi_fu_554_p4);

assign select_ln878_20_fu_1865_p3 = ((icmp_ln878_9_reg_2441[0:0] == 1'b1) ? select_ln332_12_fu_1850_p3 : ap_phi_mux_temp3_phi_fu_613_p4);

assign select_ln878_21_fu_1872_p3 = ((icmp_ln878_9_reg_2441[0:0] == 1'b1) ? temp3_4_fu_1805_p3 : 32'd0);

assign select_ln878_22_fu_1879_p3 = ((icmp_ln878_9_reg_2441[0:0] == 1'b1) ? readbuf4_4_fu_1828_p3 : 32'd0);

assign select_ln878_23_fu_2002_p3 = ((and_ln878_1_fu_1997_p2[0:0] == 1'b1) ? select_ln332_13_fu_1981_p3 : ap_phi_mux_empty_43_phi_fu_530_p4);

assign select_ln878_24_fu_2017_p3 = ((and_ln878_1_fu_1997_p2[0:0] == 1'b1) ? select_ln878_19_fu_1858_p3 : select_ln430_10_fu_2010_p3);

assign select_ln878_25_fu_2032_p3 = ((and_ln878_1_fu_1997_p2[0:0] == 1'b1) ? select_ln878_22_fu_1879_p3 : select_ln430_11_fu_2025_p3);

assign select_ln878_26_fu_2047_p3 = ((and_ln878_1_fu_1997_p2[0:0] == 1'b1) ? select_ln878_21_fu_1872_p3 : select_ln430_12_fu_2040_p3);

assign select_ln878_27_fu_2062_p3 = ((and_ln878_1_fu_1997_p2[0:0] == 1'b1) ? select_ln878_20_fu_1865_p3 : select_ln430_13_fu_2055_p3);

assign select_ln878_fu_1515_p3 = ((and_ln878_fu_1510_p2[0:0] == 1'b1) ? select_ln332_fu_1494_p3 : ap_phi_mux_empty_46_phi_fu_566_p4);

assign sext_ln877_fu_1468_p1 = tempindex1_fu_1463_p2;

assign sext_ln940_fu_653_p1 = $signed(mul_reg_2161);

assign temp1_5_fu_1538_p3 = ((icmp_ln373_reg_2250[0:0] == 1'b1) ? ap_phi_mux_temp1_phi_fu_589_p4 : select_ln878_12_fu_1530_p3);

assign temp1_6_fu_1429_p3 = ((and_ln530_2_fu_1424_p2[0:0] == 1'b1) ? node_mix_array7_q1 : select_ln530_fu_1416_p3);

assign temp2_5_fu_1683_p3 = ((icmp_ln878_8_fu_1648_p2[0:0] == 1'b1) ? select_ln332_10_fu_1667_p3 : ap_phi_mux_temp2_phi_fu_601_p4);

assign temp2_6_fu_1611_p3 = ((and_ln559_1_fu_1606_p2[0:0] == 1'b1) ? node_mix_array5_q1 : select_ln559_fu_1598_p3);

assign temp3_4_fu_1805_p3 = ((and_ln591_2_fu_1800_p2[0:0] == 1'b1) ? node_mix_array7_q0 : select_ln591_fu_1792_p3);

assign temp4_4_fu_2070_p3 = ((and_ln878_1_fu_1997_p2[0:0] == 1'b1) ? select_ln332_14_fu_1989_p3 : ap_phi_mux_temp4_phi_fu_625_p4);

assign temp4_5_fu_1923_p3 = ((and_ln623_1_fu_1918_p2[0:0] == 1'b1) ? node_mix_array5_q0 : select_ln623_fu_1910_p3);

assign tempindex1_fu_1463_p2 = ($signed(tempindex3_reg_2379) + $signed(7'd127));

assign tempindex3_fu_1189_p3 = {{idx_reg_574}, {1'd0}};

assign tempindex4_fu_1960_p2 = (tempindex3_reg_2379 | 7'd1);

assign tmp_2_fu_906_p4 = {{addr_25_fu_799_p3[7:6]}};

assign tmp_3_fu_1472_p4 = {{tempindex1_fu_1463_p2[6:5]}};

assign tmp_4_fu_1241_p4 = {{idx_reg_574[5:4]}};

assign tmp_fu_710_p4 = {{addr_19_reg_508[7:6]}};

assign trunc_ln529_fu_1185_p1 = addr_21_fu_807_p3[0:0];

assign trunc_ln558_fu_1215_p1 = addr_24_fu_875_p3[0:0];

assign trunc_ln590_fu_1237_p1 = addr_31_fu_1151_p3[0:0];

assign trunc_ln622_fu_1275_p1 = addr_32_fu_1159_p3[0:0];

assign trunc_ln6_fu_1197_p4 = {{addr_24_fu_875_p3[6:1]}};

assign trunc_ln7_fu_1219_p4 = {{addr_31_fu_1151_p3[5:1]}};

assign trunc_ln8_fu_1257_p4 = {{addr_32_fu_1159_p3[6:1]}};

assign trunc_ln_fu_1167_p4 = {{addr_21_fu_807_p3[5:1]}};

assign xor_ln373_fu_744_p2 = (icmp_ln373_fu_687_p2 ^ 1'd1);

assign xor_ln377_2_fu_768_p2 = (icmp_ln377_fu_693_p2 ^ 1'd1);

assign xor_ln377_fu_698_p2 = (1'd1 ^ Isinsert_0_reg_470);

assign xor_ln404_2_fu_862_p2 = (icmp_ln404_fu_815_p2 ^ 1'd1);

assign xor_ln404_fu_820_p2 = (1'd1 ^ Isinsert_graph_0_reg_489);

assign xor_ln430_fu_1028_p2 = (icmp_ln430_fu_883_p2 ^ 1'd1);

assign xor_ln434_2_fu_946_p2 = (icmp_ln434_fu_889_p2 ^ 1'd1);

assign xor_ln434_fu_894_p2 = (1'd1 ^ and_ln377_3_fu_762_p2);

assign xor_ln464_2_fu_1076_p2 = (icmp_ln464_fu_979_p2 ^ 1'd1);

assign xor_ln464_fu_984_p2 = (1'd1 ^ and_ln404_fu_856_p2);

assign xor_ln530_fu_1405_p2 = (trunc_ln529_reg_2362 ^ 1'd1);

assign xor_ln559_fu_1587_p2 = (trunc_ln558_reg_2397 ^ 1'd1);

assign xor_ln591_fu_1781_p2 = (trunc_ln590_reg_2424 ^ 1'd1);

assign xor_ln623_fu_1899_p2 = (trunc_ln622_reg_2459 ^ 1'd1);

assign zext_ln301_fu_1460_p1 = tempindex3_reg_2379;

assign zext_ln377_fu_1306_p1 = xor_ln373_reg_2263;

assign zext_ln390_fu_726_p1 = addr_19_reg_508;

assign zext_ln418_fu_838_p1 = addr_22_reg_517;

assign zext_ln447_fu_922_p1 = addr_25_fu_799_p3;

assign zext_ln478_fu_1002_p1 = addr_28_fu_868_p3;

assign zext_ln521_fu_2100_p1 = readbuf6_6_fu_2093_p3;

assign zext_ln529_fu_1177_p1 = trunc_ln_fu_1167_p4;

assign zext_ln558_fu_1207_p1 = trunc_ln6_fu_1197_p4;

assign zext_ln585_fu_1721_p1 = readbuf4_fu_1713_p3;

assign zext_ln590_fu_1229_p1 = trunc_ln7_fu_1219_p4;

assign zext_ln622_fu_1267_p1 = trunc_ln8_fu_1257_p4;

assign zext_ln883_fu_1965_p1 = tempindex4_fu_1960_p2;

always @ (posedge ap_clk) begin
    tempindex3_reg_2379[0] <= 1'b0;
end

endmodule //execute_split
