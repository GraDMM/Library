

`timescale 1 ns / 1 ps 

module execute_mergemem (
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
        nodeindex,
        p_read1,
        node_2_address0,
        node_2_ce0,
        node_2_q0,
        node_2_address1,
        node_2_ce1,
        node_2_q1,
        node_21_address0,
        node_21_ce0,
        node_21_q0,
        node_21_address1,
        node_21_ce1,
        node_21_q1,
        node_22_address0,
        node_22_ce0,
        node_22_q0,
        node_22_address1,
        node_22_ce1,
        node_22_q1,
        node_23_address0,
        node_23_ce0,
        node_23_q0,
        node_23_address1,
        node_23_ce1,
        node_23_q1,
        node_24_address0,
        node_24_ce0,
        node_24_q0,
        node_24_address1,
        node_24_ce1,
        node_24_q1,
        node_25_address0,
        node_25_ce0,
        node_25_q0,
        node_25_address1,
        node_25_ce1,
        node_25_q1,
        node_26_address0,
        node_26_ce0,
        node_26_q0,
        node_26_address1,
        node_26_ce1,
        node_26_q1,
        node_27_address0,
        node_27_ce0,
        node_27_q0,
        node_27_address1,
        node_27_ce1,
        node_27_q1,
        bronode_2_address0,
        bronode_2_ce0,
        bronode_2_q0,
        bronode_2_address1,
        bronode_2_ce1,
        bronode_2_q1,
        bronode_28_address0,
        bronode_28_ce0,
        bronode_28_q0,
        bronode_28_address1,
        bronode_28_ce1,
        bronode_28_q1,
        bronode_29_address0,
        bronode_29_ce0,
        bronode_29_q0,
        bronode_29_address1,
        bronode_29_ce1,
        bronode_29_q1,
        bronode_210_address0,
        bronode_210_ce0,
        bronode_210_q0,
        bronode_210_address1,
        bronode_210_ce1,
        bronode_210_q1,
        bronode_211_address0,
        bronode_211_ce0,
        bronode_211_q0,
        bronode_211_address1,
        bronode_211_ce1,
        bronode_211_q1,
        bronode_212_address0,
        bronode_212_ce0,
        bronode_212_q0,
        bronode_212_address1,
        bronode_212_ce1,
        bronode_212_q1,
        bronode_213_address0,
        bronode_213_ce0,
        bronode_213_q0,
        bronode_213_address1,
        bronode_213_ce1,
        bronode_213_q1,
        bronode_214_address0,
        bronode_214_ce0,
        bronode_214_q0,
        bronode_214_address1,
        bronode_214_ce1,
        bronode_214_q1,
        checkpos,
        head_index,
        fb_length
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_pp0_stage0 = 8'd4;
parameter    ap_ST_fsm_state7 = 8'd8;
parameter    ap_ST_fsm_state8 = 8'd16;
parameter    ap_ST_fsm_state9 = 8'd32;
parameter    ap_ST_fsm_state10 = 8'd64;
parameter    ap_ST_fsm_state11 = 8'd128;

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
input  [31:0] nodeindex;
input  [31:0] p_read1;
output  [5:0] node_2_address0;
output   node_2_ce0;
input  [31:0] node_2_q0;
output  [5:0] node_2_address1;
output   node_2_ce1;
input  [31:0] node_2_q1;
output  [5:0] node_21_address0;
output   node_21_ce0;
input  [31:0] node_21_q0;
output  [5:0] node_21_address1;
output   node_21_ce1;
input  [31:0] node_21_q1;
output  [4:0] node_22_address0;
output   node_22_ce0;
input  [31:0] node_22_q0;
output  [4:0] node_22_address1;
output   node_22_ce1;
input  [31:0] node_22_q1;
output  [4:0] node_23_address0;
output   node_23_ce0;
input  [31:0] node_23_q0;
output  [4:0] node_23_address1;
output   node_23_ce1;
input  [31:0] node_23_q1;
output  [4:0] node_24_address0;
output   node_24_ce0;
input  [31:0] node_24_q0;
output  [4:0] node_24_address1;
output   node_24_ce1;
input  [31:0] node_24_q1;
output  [4:0] node_25_address0;
output   node_25_ce0;
input  [31:0] node_25_q0;
output  [4:0] node_25_address1;
output   node_25_ce1;
input  [31:0] node_25_q1;
output  [4:0] node_26_address0;
output   node_26_ce0;
input  [31:0] node_26_q0;
output  [4:0] node_26_address1;
output   node_26_ce1;
input  [31:0] node_26_q1;
output  [4:0] node_27_address0;
output   node_27_ce0;
input  [31:0] node_27_q0;
output  [4:0] node_27_address1;
output   node_27_ce1;
input  [31:0] node_27_q1;
output  [5:0] bronode_2_address0;
output   bronode_2_ce0;
input  [31:0] bronode_2_q0;
output  [5:0] bronode_2_address1;
output   bronode_2_ce1;
input  [31:0] bronode_2_q1;
output  [5:0] bronode_28_address0;
output   bronode_28_ce0;
input  [31:0] bronode_28_q0;
output  [5:0] bronode_28_address1;
output   bronode_28_ce1;
input  [31:0] bronode_28_q1;
output  [4:0] bronode_29_address0;
output   bronode_29_ce0;
input  [31:0] bronode_29_q0;
output  [4:0] bronode_29_address1;
output   bronode_29_ce1;
input  [31:0] bronode_29_q1;
output  [4:0] bronode_210_address0;
output   bronode_210_ce0;
input  [31:0] bronode_210_q0;
output  [4:0] bronode_210_address1;
output   bronode_210_ce1;
input  [31:0] bronode_210_q1;
output  [4:0] bronode_211_address0;
output   bronode_211_ce0;
input  [31:0] bronode_211_q0;
output  [4:0] bronode_211_address1;
output   bronode_211_ce1;
input  [31:0] bronode_211_q1;
output  [4:0] bronode_212_address0;
output   bronode_212_ce0;
input  [31:0] bronode_212_q0;
output  [4:0] bronode_212_address1;
output   bronode_212_ce1;
input  [31:0] bronode_212_q1;
output  [4:0] bronode_213_address0;
output   bronode_213_ce0;
input  [31:0] bronode_213_q0;
output  [4:0] bronode_213_address1;
output   bronode_213_ce1;
input  [31:0] bronode_213_q1;
output  [4:0] bronode_214_address0;
output   bronode_214_ce0;
input  [31:0] bronode_214_q0;
output  [4:0] bronode_214_address1;
output   bronode_214_ce1;
input  [31:0] bronode_214_q1;
input  [31:0] checkpos;
input  [31:0] head_index;
input  [31:0] fb_length;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_buf_dram_manage_AWVALID;
reg m_axi_buf_dram_manage_WVALID;
reg m_axi_buf_dram_manage_BREADY;
reg node_2_ce0;
reg node_2_ce1;
reg node_21_ce0;
reg node_21_ce1;
reg node_22_ce0;
reg node_22_ce1;
reg node_23_ce0;
reg node_23_ce1;
reg node_24_ce0;
reg node_24_ce1;
reg node_25_ce0;
reg node_25_ce1;
reg node_26_ce0;
reg node_26_ce1;
reg node_27_ce0;
reg node_27_ce1;
reg bronode_2_ce0;
reg bronode_2_ce1;
reg bronode_28_ce0;
reg bronode_28_ce1;
reg bronode_29_ce0;
reg bronode_29_ce1;
reg bronode_210_ce0;
reg bronode_210_ce1;
reg bronode_211_ce0;
reg bronode_211_ce1;
reg bronode_212_ce0;
reg bronode_212_ce1;
reg bronode_213_ce0;
reg bronode_213_ce1;
reg bronode_214_ce0;
reg bronode_214_ce1;

(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    buf_dram_manage_blk_n_AW;
wire    ap_CS_fsm_state2;
reg    buf_dram_manage_blk_n_W;
reg    ap_enable_reg_pp0_iter3;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln794_reg_2861;
reg   [0:0] icmp_ln794_reg_2861_pp0_iter2_reg;
reg    buf_dram_manage_blk_n_B;
wire    ap_CS_fsm_state11;
reg   [7:0] empty_49_reg_626;
reg   [7:0] empty_50_reg_638;
reg   [7:0] empty_51_reg_650;
reg   [7:0] empty_52_reg_662;
reg   [5:0] idx_reg_674;
reg   [31:0] temp1_reg_685;
reg   [31:0] temp2_reg_697;
reg   [31:0] temp3_reg_709;
reg   [31:0] temp4_reg_721;
reg   [0:0] Isdelete_reg_733;
reg   [0:0] Isdelete_graph_reg_744;
reg   [0:0] Isinsert_reg_755;
reg   [7:0] it_graph_V_reg_766;
reg   [7:0] it_node_V_reg_777;
wire   [31:0] mul_fu_794_p2;
reg   [31:0] mul_reg_2816;
wire   [7:0] checkpos_V_fu_824_p1;
reg   [7:0] checkpos_V_reg_2838;
wire   [7:0] checkpos_graph_V_fu_828_p2;
reg   [7:0] checkpos_graph_V_reg_2844;
wire   [5:0] idx_3_fu_844_p2;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state3_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_state6_pp0_stage0_iter3;
reg    ap_block_state6_io;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln794_fu_850_p2;
reg   [0:0] icmp_ln794_reg_2861_pp0_iter1_reg;
wire   [0:0] icmp_ln373_fu_859_p2;
reg   [0:0] icmp_ln373_reg_2865;
reg   [0:0] icmp_ln373_reg_2865_pp0_iter1_reg;
wire   [0:0] xor_ln373_fu_1054_p2;
reg   [0:0] xor_ln373_reg_2873;
reg   [0:0] xor_ln373_reg_2873_pp0_iter1_reg;
wire   [1:0] sel_11_fu_1074_p3;
reg   [1:0] sel_11_reg_2878;
reg   [1:0] sel_11_reg_2878_pp0_iter1_reg;
wire   [7:0] it_graph_V_19_fu_1185_p3;
reg   [7:0] it_graph_V_19_reg_2885;
wire   [0:0] icmp_ln430_fu_1205_p2;
reg   [0:0] icmp_ln430_reg_2893;
reg   [0:0] icmp_ln430_reg_2893_pp0_iter1_reg;
wire   [0:0] or_ln434_fu_1223_p2;
reg   [0:0] or_ln434_reg_2908;
wire   [7:0] it_node_V_24_fu_1252_p3;
reg   [7:0] it_node_V_24_reg_2914;
wire   [0:0] icmp_ln878_13_fu_1298_p2;
reg   [0:0] icmp_ln878_13_reg_2920;
wire   [0:0] and_ln443_fu_1310_p2;
reg   [0:0] and_ln443_reg_2926;
wire   [0:0] and_ln878_2_fu_1316_p2;
reg   [0:0] and_ln878_2_reg_2932;
wire   [7:0] it_graph_V_20_fu_1377_p3;
reg   [7:0] it_graph_V_20_reg_2939;
wire   [0:0] Isdelete_2_fu_1403_p2;
wire   [0:0] and_ln430_fu_1415_p2;
wire   [7:0] it_node_V_22_fu_1421_p3;
wire   [7:0] it_graph_V_18_fu_1429_p3;
wire   [0:0] Isdelete_graph_4_fu_1443_p2;
reg   [4:0] trunc_ln_reg_2972;
wire   [0:0] trunc_ln529_fu_1459_p1;
reg   [0:0] trunc_ln529_reg_2977;
reg   [0:0] trunc_ln529_reg_2977_pp0_iter1_reg;
wire   [6:0] tempindex3_fu_1463_p3;
reg   [6:0] tempindex3_reg_2986;
reg   [6:0] tempindex3_reg_2986_pp0_iter1_reg;
reg   [0:0] tmp_10_reg_2993;
reg   [0:0] tmp_10_reg_2993_pp0_iter1_reg;
wire   [0:0] icmp_ln890_fu_1499_p2;
reg   [0:0] icmp_ln890_reg_3001;
wire   [0:0] icmp_ln890_3_fu_1504_p2;
reg   [0:0] icmp_ln890_3_reg_3007;
wire   [0:0] icmp_ln890_4_fu_1618_p2;
reg   [0:0] icmp_ln890_4_reg_3012;
wire   [0:0] icmp_ln890_5_fu_1623_p2;
reg   [0:0] icmp_ln890_5_reg_3017;
wire   [1:0] select_ln430_fu_1661_p3;
reg   [1:0] select_ln430_reg_3022;
wire   [0:0] trunc_ln558_fu_1708_p1;
reg   [0:0] trunc_ln558_reg_3079;
wire   [0:0] trunc_ln590_fu_1734_p1;
reg   [0:0] trunc_ln590_reg_3128;
wire   [0:0] trunc_ln622_fu_1760_p1;
reg   [0:0] trunc_ln622_reg_3177;
wire   [7:0] select_ln373_fu_2021_p3;
reg   [7:0] select_ln373_reg_3216;
reg    ap_enable_reg_pp0_iter2;
wire   [31:0] temp1_8_fu_2036_p3;
reg   [31:0] temp1_8_reg_3221;
wire   [31:0] readbuf1_fu_2051_p3;
reg   [31:0] readbuf1_reg_3226;
wire   [31:0] readbuf0_7_fu_2065_p3;
reg   [31:0] readbuf0_7_reg_3231;
wire   [31:0] temp2_9_fu_2168_p3;
reg   [31:0] temp2_9_reg_3236;
wire   [31:0] readbuf2_6_fu_2208_p3;
reg   [31:0] readbuf2_6_reg_3241;
wire   [7:0] select_ln332_16_fu_2222_p3;
reg   [7:0] select_ln332_16_reg_3246;
wire   [31:0] temp2_8_fu_2230_p3;
reg   [31:0] temp2_8_reg_3251;
wire   [7:0] select_ln878_44_fu_2669_p3;
reg   [7:0] select_ln878_44_reg_3256;
wire   [7:0] select_ln878_45_fu_2684_p3;
reg   [7:0] select_ln878_45_reg_3261;
wire   [31:0] select_ln878_46_fu_2699_p3;
reg   [31:0] select_ln878_46_reg_3266;
wire   [31:0] select_ln878_47_fu_2714_p3;
reg   [31:0] select_ln878_47_reg_3271;
wire   [31:0] select_ln878_48_fu_2729_p3;
reg   [31:0] select_ln878_48_reg_3276;
wire   [31:0] temp4_7_fu_2737_p3;
reg   [31:0] temp4_7_reg_3281;
wire   [31:0] readbuf7_fu_2752_p3;
reg   [31:0] readbuf7_reg_3286;
wire   [31:0] readbuf6_12_fu_2771_p3;
reg   [31:0] readbuf6_12_reg_3291;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter1;
reg   [7:0] ap_phi_mux_empty_49_phi_fu_630_p4;
reg   [7:0] ap_phi_mux_empty_50_phi_fu_642_p4;
reg   [7:0] ap_phi_mux_empty_51_phi_fu_654_p4;
reg   [7:0] ap_phi_mux_empty_52_phi_fu_666_p4;
reg   [31:0] ap_phi_mux_temp1_phi_fu_689_p4;
reg   [31:0] ap_phi_mux_temp2_phi_fu_701_p4;
reg   [31:0] ap_phi_mux_temp3_phi_fu_713_p4;
reg   [31:0] ap_phi_mux_temp4_phi_fu_725_p4;
wire   [63:0] zext_ln529_fu_1675_p1;
wire   [63:0] zext_ln558_fu_1696_p1;
wire   [63:0] zext_ln590_fu_1722_p1;
wire   [63:0] zext_ln622_fu_1748_p1;
wire  signed [63:0] sext_ln794_fu_834_p1;
wire    ap_block_pp0_stage0_01001;
reg   [31:0] addr_fu_164;
wire   [31:0] addr_50_fu_1668_p3;
reg   [31:0] addr_29_fu_168;
wire   [31:0] addr_49_fu_1654_p3;
reg   [31:0] addr_30_fu_172;
wire   [31:0] addr_51_fu_1527_p3;
reg   [31:0] addr_31_fu_176;
wire   [31:0] addr_38_fu_1090_p3;
wire   [31:0] empty_fu_788_p2;
wire   [26:0] tmp_fu_800_p4;
wire   [0:0] icmp_ln782_fu_810_p2;
wire   [7:0] select_ln782_cast_cast_fu_816_p3;
wire   [0:0] icmp_ln377_fu_865_p2;
wire   [0:0] xor_ln377_fu_871_p2;
wire   [0:0] icmp_ln381_fu_883_p2;
wire   [0:0] xor_ln381_fu_888_p2;
wire   [0:0] or_ln381_fu_894_p2;
wire   [7:0] it_node_V_13_fu_900_p2;
wire   [7:0] it_node_V_23_fu_906_p3;
wire   [0:0] icmp_ln386_fu_922_p2;
wire   [2:0] tmp_5_fu_934_p4;
wire   [1:0] tmp_6_fu_950_p4;
wire   [8:0] zext_ln797_fu_918_p1;
wire   [8:0] addr_34_fu_966_p2;
wire   [0:0] icmp_ln878_11_fu_960_p2;
wire  signed [31:0] sext_ln797_fu_972_p1;
wire   [0:0] xor_ln386_fu_992_p2;
wire   [0:0] or_ln386_fu_928_p2;
wire   [0:0] icmp_ln878_fu_944_p2;
wire   [0:0] and_ln878_fu_1004_p2;
wire   [0:0] and_ln386_fu_998_p2;
wire   [0:0] or_ln878_fu_1018_p2;
wire   [1:0] select_ln878_fu_1010_p3;
wire   [1:0] select_ln393_1_fu_976_p3;
wire   [31:0] select_ln393_fu_984_p3;
wire   [31:0] zext_ln870_fu_914_p1;
wire   [31:0] addr_35_fu_1032_p3;
wire   [0:0] or_ln377_fu_877_p2;
wire   [0:0] and_ln377_fu_1060_p2;
wire   [1:0] sel_fu_1024_p3;
wire   [1:0] select_ln377_fu_1066_p3;
wire   [31:0] addr_36_fu_1040_p3;
wire   [31:0] addr_37_fu_1082_p3;
wire   [7:0] it_node_V_15_fu_1048_p2;
wire   [7:0] it_node_V_16_fu_1098_p3;
wire   [0:0] and_ln377_6_fu_1114_p2;
wire   [0:0] or_ln373_fu_1120_p2;
wire   [0:0] xor_ln377_3_fu_1132_p2;
wire   [0:0] and_ln377_7_fu_1138_p2;
wire   [0:0] or_ln373_3_fu_1144_p2;
wire   [0:0] or_ln373_4_fu_1150_p2;
wire   [0:0] icmp_ln408_fu_1162_p2;
wire   [0:0] xor_ln408_fu_1167_p2;
wire   [0:0] or_ln408_fu_1173_p2;
wire   [7:0] it_graph_V_12_fu_1179_p2;
wire   [7:0] it_node_V_17_fu_1106_p3;
wire   [0:0] Isinsert_1_fu_1126_p2;
wire   [0:0] icmp_ln434_fu_1211_p2;
wire   [0:0] xor_ln434_fu_1217_p2;
wire   [0:0] Isdelete_1_fu_1156_p2;
wire   [0:0] icmp_ln438_fu_1229_p2;
wire   [0:0] xor_ln438_fu_1234_p2;
wire   [0:0] or_ln438_fu_1240_p2;
wire   [7:0] it_node_V_18_fu_1246_p2;
wire   [0:0] icmp_ln443_fu_1260_p2;
wire   [2:0] tmp_7_fu_1272_p4;
wire   [1:0] tmp_8_fu_1288_p4;
wire   [0:0] xor_ln443_fu_1304_p2;
wire   [0:0] or_ln443_fu_1266_p2;
wire   [0:0] icmp_ln878_12_fu_1282_p2;
wire   [7:0] it_node_V_20_fu_1322_p2;
wire   [0:0] xor_ln434_3_fu_1342_p2;
wire   [7:0] it_graph_V_14_fu_1199_p2;
wire   [0:0] Isdelete_graph_3_fu_1193_p2;
wire   [0:0] icmp_ln468_fu_1354_p2;
wire   [0:0] xor_ln468_fu_1359_p2;
wire   [0:0] or_ln468_fu_1365_p2;
wire   [7:0] it_graph_V_15_fu_1371_p2;
wire   [0:0] and_ln434_4_fu_1348_p2;
wire   [0:0] or_ln430_fu_1391_p2;
wire   [0:0] or_ln430_6_fu_1397_p2;
wire   [0:0] and_ln434_fu_1336_p2;
wire   [0:0] or_ln430_7_fu_1409_p2;
wire   [7:0] it_node_V_21_fu_1328_p3;
wire   [7:0] it_graph_V_17_fu_1385_p2;
wire   [0:0] or_ln430_8_fu_1437_p2;
wire   [8:0] zext_ln797_1_fu_1496_p1;
wire   [8:0] addr_40_fu_1509_p2;
wire  signed [31:0] sext_ln797_1_fu_1515_p1;
wire   [31:0] select_ln420_fu_1519_p3;
wire   [31:0] zext_ln890_fu_1493_p1;
wire   [8:0] zext_ln797_2_fu_1538_p1;
wire   [8:0] addr_42_fu_1541_p2;
wire  signed [31:0] sext_ln797_2_fu_1547_p1;
wire   [0:0] or_ln878_1_fu_1572_p2;
wire   [1:0] select_ln878_33_fu_1565_p3;
wire   [1:0] select_ln450_1_fu_1551_p3;
wire   [31:0] select_ln450_fu_1558_p3;
wire   [31:0] zext_ln870_4_fu_1535_p1;
wire   [31:0] addr_43_fu_1584_p3;
wire   [1:0] sel_13_fu_1576_p3;
wire   [31:0] addr_44_fu_1591_p3;
wire   [8:0] zext_ln797_3_fu_1615_p1;
wire   [8:0] addr_47_fu_1628_p2;
wire  signed [31:0] sext_ln797_3_fu_1634_p1;
wire   [31:0] select_ln480_fu_1638_p3;
wire   [31:0] zext_ln890_1_fu_1612_p1;
wire   [31:0] addr_45_fu_1605_p3;
wire   [1:0] select_ln434_fu_1598_p3;
wire   [31:0] addr_48_fu_1646_p3;
wire   [5:0] trunc_ln9_fu_1686_p4;
wire   [4:0] trunc_ln10_fu_1712_p4;
wire   [5:0] trunc_ln11_fu_1738_p4;
wire   [0:0] xor_ln420_fu_1779_p2;
wire   [1:0] select_ln420_1_fu_1784_p3;
wire   [0:0] xor_ln480_fu_1799_p2;
wire   [1:0] select_ln480_1_fu_1804_p3;
wire   [1:0] sel_14_fu_1812_p3;
wire   [0:0] icmp_ln527_fu_1840_p2;
wire   [0:0] icmp_ln527_3_fu_1852_p2;
wire   [0:0] xor_ln530_fu_1857_p2;
wire   [0:0] and_ln530_fu_1862_p2;
wire   [31:0] select_ln527_fu_1845_p3;
wire   [0:0] and_ln530_3_fu_1876_p2;
wire   [31:0] select_ln530_fu_1868_p3;
wire   [0:0] icmp_ln527_4_fu_1889_p2;
wire   [0:0] and_ln542_fu_1894_p2;
wire   [31:0] select_ln530_7_fu_1881_p3;
wire   [0:0] and_ln542_1_fu_1908_p2;
wire   [31:0] select_ln542_fu_1900_p3;
wire   [31:0] readbuf0_fu_1826_p3;
wire   [31:0] select_ln527_3_fu_1921_p3;
wire   [31:0] select_ln530_8_fu_1928_p3;
wire   [31:0] readbuf0_5_fu_1833_p3;
wire   [31:0] select_ln530_9_fu_1936_p3;
wire   [31:0] select_ln542_2_fu_1944_p3;
wire  signed [6:0] tempindex1_fu_1963_p2;
wire   [0:0] tmp_9_fu_1972_p3;
wire   [31:0] temp1_9_fu_1913_p3;
wire   [0:0] icmp_ln332_fu_1986_p2;
wire  signed [7:0] sext_ln768_fu_1968_p1;
wire   [0:0] xor_ln878_fu_1980_p2;
wire   [0:0] and_ln878_3_fu_2008_p2;
wire   [7:0] select_ln332_fu_1992_p3;
wire   [7:0] select_ln878_36_fu_2013_p3;
wire   [31:0] select_ln332_15_fu_2000_p3;
wire   [31:0] select_ln878_37_fu_2028_p3;
wire   [31:0] select_ln878_38_fu_2043_p3;
wire   [31:0] readbuf0_6_fu_1952_p3;
wire   [31:0] select_ln878_39_fu_2057_p3;
wire   [1:0] sel_12_fu_1792_p3;
wire   [0:0] icmp_ln556_fu_2086_p2;
wire   [0:0] and_ln556_fu_2092_p2;
wire   [0:0] icmp_ln556_2_fu_2105_p2;
wire   [0:0] xor_ln559_fu_2111_p2;
wire   [0:0] and_ln559_fu_2116_p2;
wire   [31:0] select_ln556_fu_2097_p3;
wire   [0:0] and_ln559_2_fu_2130_p2;
wire   [31:0] select_ln559_fu_2122_p3;
wire   [0:0] icmp_ln556_3_fu_2143_p2;
wire   [0:0] and_ln571_fu_2149_p2;
wire   [31:0] select_ln559_4_fu_2135_p3;
wire   [0:0] and_ln571_1_fu_2163_p2;
wire   [31:0] select_ln571_fu_2155_p3;
wire   [31:0] readbuf2_fu_2072_p3;
wire   [31:0] select_ln556_1_fu_2176_p3;
wire   [31:0] select_ln559_5_fu_2184_p3;
wire   [31:0] readbuf2_5_fu_2079_p3;
wire   [31:0] select_ln559_6_fu_2192_p3;
wire   [31:0] select_ln571_2_fu_2200_p3;
wire   [0:0] icmp_ln332_7_fu_2216_p2;
wire   [7:0] zext_ln301_fu_1960_p1;
wire   [0:0] icmp_ln585_fu_2238_p2;
wire   [7:0] readbuf4_fu_2244_p3;
wire   [0:0] icmp_ln617_fu_2264_p2;
wire   [0:0] icmp_ln588_fu_2300_p2;
wire   [0:0] icmp_ln588_3_fu_2312_p2;
wire   [0:0] xor_ln591_fu_2317_p2;
wire   [0:0] and_ln591_fu_2322_p2;
wire   [31:0] select_ln588_fu_2305_p3;
wire   [0:0] and_ln591_3_fu_2336_p2;
wire   [31:0] select_ln591_fu_2328_p3;
wire   [0:0] icmp_ln588_4_fu_2349_p2;
wire   [0:0] and_ln603_fu_2354_p2;
wire   [31:0] select_ln591_7_fu_2341_p3;
wire   [0:0] and_ln603_1_fu_2368_p2;
wire   [31:0] select_ln603_fu_2360_p3;
wire   [31:0] readbuf4_5_fu_2286_p3;
wire   [31:0] select_ln588_3_fu_2381_p3;
wire   [31:0] select_ln591_8_fu_2388_p3;
wire   [31:0] readbuf4_6_fu_2293_p3;
wire   [31:0] select_ln591_9_fu_2396_p3;
wire   [31:0] select_ln603_2_fu_2404_p3;
wire   [31:0] temp3_6_fu_2373_p3;
wire   [0:0] icmp_ln332_8_fu_2420_p2;
wire   [7:0] select_ln332_18_fu_2426_p3;
wire   [31:0] select_ln332_19_fu_2434_p3;
wire   [31:0] readbuf4_7_fu_2412_p3;
wire   [1:0] sel_15_fu_1819_p3;
wire   [0:0] icmp_ln620_fu_2484_p2;
wire   [0:0] icmp_ln620_2_fu_2490_p2;
wire   [0:0] and_ln620_fu_2496_p2;
wire   [0:0] icmp_ln620_3_fu_2510_p2;
wire   [0:0] xor_ln623_fu_2516_p2;
wire   [0:0] and_ln623_fu_2521_p2;
wire   [31:0] select_ln620_fu_2502_p3;
wire   [0:0] and_ln623_2_fu_2535_p2;
wire   [31:0] select_ln623_fu_2527_p3;
wire   [0:0] icmp_ln620_4_fu_2548_p2;
wire   [0:0] and_ln635_fu_2554_p2;
wire   [31:0] select_ln623_4_fu_2540_p3;
wire   [0:0] and_ln635_1_fu_2568_p2;
wire   [31:0] select_ln635_fu_2560_p3;
wire   [31:0] readbuf6_8_fu_2470_p3;
wire   [31:0] select_ln620_1_fu_2581_p3;
wire   [31:0] select_ln623_5_fu_2589_p3;
wire   [31:0] readbuf6_9_fu_2477_p3;
wire   [31:0] select_ln623_6_fu_2597_p3;
wire   [31:0] select_ln635_2_fu_2605_p3;
wire   [6:0] tempindex4_fu_2621_p2;
wire   [31:0] temp4_8_fu_2573_p3;
wire   [0:0] icmp_ln332_9_fu_2636_p2;
wire   [7:0] zext_ln774_fu_2626_p1;
wire   [0:0] icmp_ln878_14_fu_2630_p2;
wire   [0:0] xor_ln430_fu_2658_p2;
wire   [0:0] and_ln878_4_fu_2663_p2;
wire   [7:0] select_ln332_20_fu_2642_p3;
wire   [7:0] select_ln878_40_fu_2442_p3;
wire   [7:0] select_ln430_19_fu_2677_p3;
wire   [31:0] zext_ln585_fu_2252_p1;
wire   [31:0] select_ln878_43_fu_2463_p3;
wire   [31:0] select_ln430_20_fu_2692_p3;
wire   [31:0] readbuf5_fu_2256_p3;
wire   [31:0] select_ln878_42_fu_2456_p3;
wire   [31:0] select_ln430_21_fu_2707_p3;
wire   [31:0] select_ln878_41_fu_2449_p3;
wire   [31:0] select_ln430_22_fu_2722_p3;
wire   [31:0] select_ln332_21_fu_2650_p3;
wire   [31:0] select_ln618_fu_2278_p3;
wire   [31:0] select_ln430_23_fu_2745_p3;
wire   [7:0] readbuf6_fu_2270_p3;
wire   [7:0] readbuf6_11_fu_2760_p3;
wire   [31:0] readbuf6_10_fu_2613_p3;
wire   [31:0] zext_ln521_fu_2767_p1;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln794_fu_850_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        Isdelete_reg_733 <= Isdelete_2_fu_1403_p2;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        Isdelete_reg_733 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln794_fu_850_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        Isdelete_graph_reg_744 <= Isdelete_graph_4_fu_1443_p2;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        Isdelete_graph_reg_744 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln794_fu_850_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        Isinsert_reg_755 <= and_ln430_fu_1415_p2;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        Isinsert_reg_755 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln794_reg_2861_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        empty_49_reg_626 <= select_ln878_44_reg_3256;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        empty_49_reg_626 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln794_reg_2861_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        empty_50_reg_638 <= select_ln332_16_reg_3246;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        empty_50_reg_638 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln794_reg_2861_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        empty_51_reg_650 <= select_ln878_45_reg_3261;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        empty_51_reg_650 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln794_reg_2861_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        empty_52_reg_662 <= select_ln373_reg_3216;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        empty_52_reg_662 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln794_fu_850_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        idx_reg_674 <= idx_3_fu_844_p2;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        idx_reg_674 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln794_fu_850_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        it_node_V_reg_777 <= it_node_V_22_fu_1421_p3;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        it_node_V_reg_777 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln794_fu_850_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        it_graph_V_reg_766 <= it_graph_V_18_fu_1429_p3;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        it_graph_V_reg_766 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln794_reg_2861_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        temp1_reg_685 <= temp1_8_reg_3221;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        temp1_reg_685 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln794_reg_2861_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        temp2_reg_697 <= temp2_8_reg_3251;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        temp2_reg_697 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln794_reg_2861_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        temp3_reg_709 <= select_ln878_48_reg_3276;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        temp3_reg_709 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln794_reg_2861_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        temp4_reg_721 <= temp4_7_reg_3281;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        temp4_reg_721 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln794_reg_2861 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        addr_29_fu_168 <= addr_49_fu_1654_p3;
        addr_30_fu_172 <= addr_51_fu_1527_p3;
        addr_fu_164 <= addr_50_fu_1668_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln794_fu_850_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        addr_31_fu_176 <= addr_38_fu_1090_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln794_fu_850_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln443_reg_2926 <= and_ln443_fu_1310_p2;
        and_ln878_2_reg_2932 <= and_ln878_2_fu_1316_p2;
        icmp_ln373_reg_2865 <= icmp_ln373_fu_859_p2;
        icmp_ln430_reg_2893 <= icmp_ln430_fu_1205_p2;
        icmp_ln878_13_reg_2920 <= icmp_ln878_13_fu_1298_p2;
        it_node_V_24_reg_2914 <= it_node_V_24_fu_1252_p3;
        it_graph_V_19_reg_2885 <= it_graph_V_19_fu_1185_p3;
        it_graph_V_20_reg_2939 <= it_graph_V_20_fu_1377_p3;
        or_ln434_reg_2908 <= or_ln434_fu_1223_p2;
        sel_11_reg_2878 <= sel_11_fu_1074_p3;
        tempindex3_reg_2986[6 : 1] <= tempindex3_fu_1463_p3[6 : 1];
        tmp_10_reg_2993 <= idx_reg_674[32'd5];
        trunc_ln529_reg_2977 <= trunc_ln529_fu_1459_p1;
        trunc_ln_reg_2972 <= {{addr_38_fu_1090_p3[5:1]}};
        xor_ln373_reg_2873 <= xor_ln373_fu_1054_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        checkpos_V_reg_2838 <= checkpos_V_fu_824_p1;
        checkpos_graph_V_reg_2844 <= checkpos_graph_V_fu_828_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln373_reg_2865_pp0_iter1_reg <= icmp_ln373_reg_2865;
        icmp_ln430_reg_2893_pp0_iter1_reg <= icmp_ln430_reg_2893;
        icmp_ln794_reg_2861 <= icmp_ln794_fu_850_p2;
        icmp_ln794_reg_2861_pp0_iter1_reg <= icmp_ln794_reg_2861;
        sel_11_reg_2878_pp0_iter1_reg <= sel_11_reg_2878;
        tempindex3_reg_2986_pp0_iter1_reg[6 : 1] <= tempindex3_reg_2986[6 : 1];
        tmp_10_reg_2993_pp0_iter1_reg <= tmp_10_reg_2993;
        trunc_ln529_reg_2977_pp0_iter1_reg <= trunc_ln529_reg_2977;
        xor_ln373_reg_2873_pp0_iter1_reg <= xor_ln373_reg_2873;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_ln794_reg_2861_pp0_iter2_reg <= icmp_ln794_reg_2861_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln794_reg_2861 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln890_3_reg_3007 <= icmp_ln890_3_fu_1504_p2;
        icmp_ln890_4_reg_3012 <= icmp_ln890_4_fu_1618_p2;
        icmp_ln890_5_reg_3017 <= icmp_ln890_5_fu_1623_p2;
        icmp_ln890_reg_3001 <= icmp_ln890_fu_1499_p2;
        select_ln430_reg_3022 <= select_ln430_fu_1661_p3;
        trunc_ln558_reg_3079 <= trunc_ln558_fu_1708_p1;
        trunc_ln590_reg_3128 <= trunc_ln590_fu_1734_p1;
        trunc_ln622_reg_3177 <= trunc_ln622_fu_1760_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        mul_reg_2816 <= mul_fu_794_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln794_reg_2861_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        readbuf0_7_reg_3231 <= readbuf0_7_fu_2065_p3;
        readbuf1_reg_3226 <= readbuf1_fu_2051_p3;
        readbuf2_6_reg_3241 <= readbuf2_6_fu_2208_p3;
        readbuf6_12_reg_3291 <= readbuf6_12_fu_2771_p3;
        readbuf7_reg_3286 <= readbuf7_fu_2752_p3;
        select_ln878_46_reg_3266 <= select_ln878_46_fu_2699_p3;
        select_ln878_47_reg_3271 <= select_ln878_47_fu_2714_p3;
        temp2_9_reg_3236 <= temp2_9_fu_2168_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln794_reg_2861_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        select_ln332_16_reg_3246 <= select_ln332_16_fu_2222_p3;
        select_ln373_reg_3216 <= select_ln373_fu_2021_p3;
        select_ln878_44_reg_3256 <= select_ln878_44_fu_2669_p3;
        select_ln878_45_reg_3261 <= select_ln878_45_fu_2684_p3;
        select_ln878_48_reg_3276 <= select_ln878_48_fu_2729_p3;
        temp1_8_reg_3221 <= temp1_8_fu_2036_p3;
        temp2_8_reg_3251 <= temp2_8_fu_2230_p3;
        temp4_7_reg_3281 <= temp4_7_fu_2737_p3;
    end
end

always @ (*) begin
    if ((icmp_ln794_fu_850_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if ((((m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln794_reg_2861_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        ap_phi_mux_empty_49_phi_fu_630_p4 = select_ln878_44_reg_3256;
    end else begin
        ap_phi_mux_empty_49_phi_fu_630_p4 = empty_49_reg_626;
    end
end

always @ (*) begin
    if (((icmp_ln794_reg_2861_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        ap_phi_mux_empty_50_phi_fu_642_p4 = select_ln332_16_reg_3246;
    end else begin
        ap_phi_mux_empty_50_phi_fu_642_p4 = empty_50_reg_638;
    end
end

always @ (*) begin
    if (((icmp_ln794_reg_2861_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        ap_phi_mux_empty_51_phi_fu_654_p4 = select_ln878_45_reg_3261;
    end else begin
        ap_phi_mux_empty_51_phi_fu_654_p4 = empty_51_reg_650;
    end
end

always @ (*) begin
    if (((icmp_ln794_reg_2861_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        ap_phi_mux_empty_52_phi_fu_666_p4 = select_ln373_reg_3216;
    end else begin
        ap_phi_mux_empty_52_phi_fu_666_p4 = empty_52_reg_662;
    end
end

always @ (*) begin
    if (((icmp_ln794_reg_2861_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        ap_phi_mux_temp1_phi_fu_689_p4 = temp1_8_reg_3221;
    end else begin
        ap_phi_mux_temp1_phi_fu_689_p4 = temp1_reg_685;
    end
end

always @ (*) begin
    if (((icmp_ln794_reg_2861_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        ap_phi_mux_temp2_phi_fu_701_p4 = temp2_8_reg_3251;
    end else begin
        ap_phi_mux_temp2_phi_fu_701_p4 = temp2_reg_697;
    end
end

always @ (*) begin
    if (((icmp_ln794_reg_2861_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        ap_phi_mux_temp3_phi_fu_713_p4 = select_ln878_48_reg_3276;
    end else begin
        ap_phi_mux_temp3_phi_fu_713_p4 = temp3_reg_709;
    end
end

always @ (*) begin
    if (((icmp_ln794_reg_2861_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        ap_phi_mux_temp4_phi_fu_725_p4 = temp4_7_reg_3281;
    end else begin
        ap_phi_mux_temp4_phi_fu_725_p4 = temp4_reg_721;
    end
end

always @ (*) begin
    if (((m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bronode_210_ce0 = 1'b1;
    end else begin
        bronode_210_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bronode_210_ce1 = 1'b1;
    end else begin
        bronode_210_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bronode_211_ce0 = 1'b1;
    end else begin
        bronode_211_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bronode_211_ce1 = 1'b1;
    end else begin
        bronode_211_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bronode_212_ce0 = 1'b1;
    end else begin
        bronode_212_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bronode_212_ce1 = 1'b1;
    end else begin
        bronode_212_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bronode_213_ce0 = 1'b1;
    end else begin
        bronode_213_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bronode_213_ce1 = 1'b1;
    end else begin
        bronode_213_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bronode_214_ce0 = 1'b1;
    end else begin
        bronode_214_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bronode_214_ce1 = 1'b1;
    end else begin
        bronode_214_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bronode_28_ce0 = 1'b1;
    end else begin
        bronode_28_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bronode_28_ce1 = 1'b1;
    end else begin
        bronode_28_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bronode_29_ce0 = 1'b1;
    end else begin
        bronode_29_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bronode_29_ce1 = 1'b1;
    end else begin
        bronode_29_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bronode_2_ce0 = 1'b1;
    end else begin
        bronode_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bronode_2_ce1 = 1'b1;
    end else begin
        bronode_2_ce1 = 1'b0;
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
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buf_dram_manage_blk_n_B = m_axi_buf_dram_manage_BVALID;
    end else begin
        buf_dram_manage_blk_n_B = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln794_reg_2861_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
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
    if (((m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        m_axi_buf_dram_manage_BREADY = 1'b1;
    end else begin
        m_axi_buf_dram_manage_BREADY = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln794_reg_2861_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        m_axi_buf_dram_manage_WVALID = 1'b1;
    end else begin
        m_axi_buf_dram_manage_WVALID = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        node_21_ce0 = 1'b1;
    end else begin
        node_21_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        node_21_ce1 = 1'b1;
    end else begin
        node_21_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        node_22_ce0 = 1'b1;
    end else begin
        node_22_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        node_22_ce1 = 1'b1;
    end else begin
        node_22_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        node_23_ce0 = 1'b1;
    end else begin
        node_23_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        node_23_ce1 = 1'b1;
    end else begin
        node_23_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        node_24_ce0 = 1'b1;
    end else begin
        node_24_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        node_24_ce1 = 1'b1;
    end else begin
        node_24_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        node_25_ce0 = 1'b1;
    end else begin
        node_25_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        node_25_ce1 = 1'b1;
    end else begin
        node_25_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        node_26_ce0 = 1'b1;
    end else begin
        node_26_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        node_26_ce1 = 1'b1;
    end else begin
        node_26_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        node_27_ce0 = 1'b1;
    end else begin
        node_27_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        node_27_ce1 = 1'b1;
    end else begin
        node_27_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        node_2_ce0 = 1'b1;
    end else begin
        node_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        node_2_ce1 = 1'b1;
    end else begin
        node_2_ce1 = 1'b0;
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
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (icmp_ln794_fu_850_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b0) & (icmp_ln794_fu_850_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
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
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Isdelete_1_fu_1156_p2 = (or_ln373_4_fu_1150_p2 & Isdelete_reg_733);

assign Isdelete_2_fu_1403_p2 = (or_ln430_6_fu_1397_p2 & Isdelete_1_fu_1156_p2);

assign Isdelete_graph_3_fu_1193_p2 = (icmp_ln408_fu_1162_p2 & Isdelete_graph_reg_744);

assign Isdelete_graph_4_fu_1443_p2 = (or_ln430_8_fu_1437_p2 & Isdelete_graph_3_fu_1193_p2);

assign Isinsert_1_fu_1126_p2 = (or_ln373_fu_1120_p2 & Isinsert_reg_755);

assign addr_34_fu_966_p2 = ($signed(zext_ln797_fu_918_p1) + $signed(9'd480));

assign addr_35_fu_1032_p3 = ((and_ln386_fu_998_p2[0:0] == 1'b1) ? addr_31_fu_176 : select_ln393_fu_984_p3);

assign addr_36_fu_1040_p3 = ((and_ln878_fu_1004_p2[0:0] == 1'b1) ? zext_ln870_fu_914_p1 : addr_35_fu_1032_p3);

assign addr_37_fu_1082_p3 = ((and_ln377_fu_1060_p2[0:0] == 1'b1) ? addr_36_fu_1040_p3 : addr_31_fu_176);

assign addr_38_fu_1090_p3 = ((icmp_ln373_fu_859_p2[0:0] == 1'b1) ? addr_31_fu_176 : addr_37_fu_1082_p3);

assign addr_40_fu_1509_p2 = ($signed(zext_ln797_1_fu_1496_p1) + $signed(9'd479));

assign addr_42_fu_1541_p2 = ($signed(zext_ln797_2_fu_1538_p1) + $signed(9'd480));

assign addr_43_fu_1584_p3 = ((and_ln443_reg_2926[0:0] == 1'b1) ? addr_29_fu_168 : select_ln450_fu_1558_p3);

assign addr_44_fu_1591_p3 = ((and_ln878_2_reg_2932[0:0] == 1'b1) ? zext_ln870_4_fu_1535_p1 : addr_43_fu_1584_p3);

assign addr_45_fu_1605_p3 = ((or_ln434_reg_2908[0:0] == 1'b1) ? addr_44_fu_1591_p3 : addr_29_fu_168);

assign addr_47_fu_1628_p2 = ($signed(zext_ln797_3_fu_1615_p1) + $signed(9'd479));

assign addr_48_fu_1646_p3 = ((icmp_ln890_4_fu_1618_p2[0:0] == 1'b1) ? select_ln480_fu_1638_p3 : zext_ln890_1_fu_1612_p1);

assign addr_49_fu_1654_p3 = ((icmp_ln430_reg_2893[0:0] == 1'b1) ? addr_29_fu_168 : addr_45_fu_1605_p3);

assign addr_50_fu_1668_p3 = ((icmp_ln430_reg_2893[0:0] == 1'b1) ? addr_fu_164 : addr_48_fu_1646_p3);

assign addr_51_fu_1527_p3 = ((icmp_ln890_fu_1499_p2[0:0] == 1'b1) ? select_ln420_fu_1519_p3 : zext_ln890_fu_1493_p1);

assign and_ln377_6_fu_1114_p2 = (icmp_ln386_fu_922_p2 & and_ln377_fu_1060_p2);

assign and_ln377_7_fu_1138_p2 = (xor_ln377_3_fu_1132_p2 & Isinsert_reg_755);

assign and_ln377_fu_1060_p2 = (xor_ln373_fu_1054_p2 & or_ln377_fu_877_p2);

assign and_ln386_fu_998_p2 = (xor_ln386_fu_992_p2 & Isinsert_reg_755);

assign and_ln430_fu_1415_p2 = (or_ln430_7_fu_1409_p2 & Isinsert_1_fu_1126_p2);

assign and_ln434_4_fu_1348_p2 = (xor_ln434_3_fu_1342_p2 & Isinsert_1_fu_1126_p2);

assign and_ln434_fu_1336_p2 = (or_ln434_fu_1223_p2 & icmp_ln443_fu_1260_p2);

assign and_ln443_fu_1310_p2 = (xor_ln443_fu_1304_p2 & Isinsert_1_fu_1126_p2);

assign and_ln530_3_fu_1876_p2 = (trunc_ln529_reg_2977_pp0_iter1_reg & icmp_ln527_3_fu_1852_p2);

assign and_ln530_fu_1862_p2 = (xor_ln530_fu_1857_p2 & icmp_ln527_3_fu_1852_p2);

assign and_ln542_1_fu_1908_p2 = (trunc_ln529_reg_2977_pp0_iter1_reg & icmp_ln527_4_fu_1889_p2);

assign and_ln542_fu_1894_p2 = (xor_ln530_fu_1857_p2 & icmp_ln527_4_fu_1889_p2);

assign and_ln556_fu_2092_p2 = (icmp_ln890_reg_3001 & icmp_ln556_fu_2086_p2);

assign and_ln559_2_fu_2130_p2 = (trunc_ln558_reg_3079 & icmp_ln556_2_fu_2105_p2);

assign and_ln559_fu_2116_p2 = (xor_ln559_fu_2111_p2 & icmp_ln556_2_fu_2105_p2);

assign and_ln571_1_fu_2163_p2 = (trunc_ln558_reg_3079 & icmp_ln556_3_fu_2143_p2);

assign and_ln571_fu_2149_p2 = (xor_ln559_fu_2111_p2 & icmp_ln556_3_fu_2143_p2);

assign and_ln591_3_fu_2336_p2 = (trunc_ln590_reg_3128 & icmp_ln588_3_fu_2312_p2);

assign and_ln591_fu_2322_p2 = (xor_ln591_fu_2317_p2 & icmp_ln588_3_fu_2312_p2);

assign and_ln603_1_fu_2368_p2 = (trunc_ln590_reg_3128 & icmp_ln588_4_fu_2349_p2);

assign and_ln603_fu_2354_p2 = (xor_ln591_fu_2317_p2 & icmp_ln588_4_fu_2349_p2);

assign and_ln620_fu_2496_p2 = (icmp_ln620_fu_2484_p2 & icmp_ln620_2_fu_2490_p2);

assign and_ln623_2_fu_2535_p2 = (trunc_ln622_reg_3177 & icmp_ln620_3_fu_2510_p2);

assign and_ln623_fu_2521_p2 = (xor_ln623_fu_2516_p2 & icmp_ln620_3_fu_2510_p2);

assign and_ln635_1_fu_2568_p2 = (trunc_ln622_reg_3177 & icmp_ln620_4_fu_2548_p2);

assign and_ln635_fu_2554_p2 = (xor_ln623_fu_2516_p2 & icmp_ln620_4_fu_2548_p2);

assign and_ln878_2_fu_1316_p2 = (or_ln443_fu_1266_p2 & icmp_ln878_12_fu_1282_p2);

assign and_ln878_3_fu_2008_p2 = (xor_ln878_fu_1980_p2 & xor_ln373_reg_2873_pp0_iter1_reg);

assign and_ln878_4_fu_2663_p2 = (xor_ln430_fu_2658_p2 & icmp_ln878_14_fu_2630_p2);

assign and_ln878_fu_1004_p2 = (or_ln386_fu_928_p2 & icmp_ln878_fu_944_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state6_io));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state6_io));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state6_io = ((m_axi_buf_dram_manage_WREADY == 1'b0) & (icmp_ln794_reg_2861_pp0_iter2_reg == 1'd0));
end

assign ap_block_state6_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign bronode_210_address0 = zext_ln590_fu_1722_p1;

assign bronode_210_address1 = zext_ln529_fu_1675_p1;

assign bronode_211_address0 = zext_ln622_fu_1748_p1;

assign bronode_211_address1 = zext_ln558_fu_1696_p1;

assign bronode_212_address0 = zext_ln622_fu_1748_p1;

assign bronode_212_address1 = zext_ln558_fu_1696_p1;

assign bronode_213_address0 = zext_ln590_fu_1722_p1;

assign bronode_213_address1 = zext_ln529_fu_1675_p1;

assign bronode_214_address0 = zext_ln590_fu_1722_p1;

assign bronode_214_address1 = zext_ln529_fu_1675_p1;

assign bronode_28_address0 = zext_ln622_fu_1748_p1;

assign bronode_28_address1 = zext_ln558_fu_1696_p1;

assign bronode_29_address0 = zext_ln590_fu_1722_p1;

assign bronode_29_address1 = zext_ln529_fu_1675_p1;

assign bronode_2_address0 = zext_ln622_fu_1748_p1;

assign bronode_2_address1 = zext_ln558_fu_1696_p1;

assign checkpos_V_fu_824_p1 = checkpos[7:0];

assign checkpos_graph_V_fu_828_p2 = (select_ln782_cast_cast_fu_816_p3 + checkpos_V_fu_824_p1);

assign empty_fu_788_p2 = nodeindex << 32'd5;

assign icmp_ln332_7_fu_2216_p2 = (($signed(temp2_9_fu_2168_p3) > $signed(ap_phi_mux_temp2_phi_fu_701_p4)) ? 1'b1 : 1'b0);

assign icmp_ln332_8_fu_2420_p2 = (($signed(temp3_6_fu_2373_p3) > $signed(ap_phi_mux_temp3_phi_fu_713_p4)) ? 1'b1 : 1'b0);

assign icmp_ln332_9_fu_2636_p2 = (($signed(temp4_8_fu_2573_p3) > $signed(ap_phi_mux_temp4_phi_fu_725_p4)) ? 1'b1 : 1'b0);

assign icmp_ln332_fu_1986_p2 = (($signed(temp1_9_fu_1913_p3) > $signed(ap_phi_mux_temp1_phi_fu_689_p4)) ? 1'b1 : 1'b0);

assign icmp_ln373_fu_859_p2 = ((idx_reg_674 == 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln377_fu_865_p2 = ((it_node_V_reg_777 != 8'd32) ? 1'b1 : 1'b0);

assign icmp_ln381_fu_883_p2 = ((it_node_V_reg_777 != checkpos_V_reg_2838) ? 1'b1 : 1'b0);

assign icmp_ln386_fu_922_p2 = ((it_node_V_23_fu_906_p3 != 8'd32) ? 1'b1 : 1'b0);

assign icmp_ln408_fu_1162_p2 = ((it_graph_V_reg_766 != checkpos_graph_V_reg_2844) ? 1'b1 : 1'b0);

assign icmp_ln430_fu_1205_p2 = ((idx_reg_674 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln434_fu_1211_p2 = ((it_node_V_17_fu_1106_p3 != 8'd32) ? 1'b1 : 1'b0);

assign icmp_ln438_fu_1229_p2 = ((it_node_V_17_fu_1106_p3 != checkpos_V_reg_2838) ? 1'b1 : 1'b0);

assign icmp_ln443_fu_1260_p2 = ((it_node_V_24_fu_1252_p3 != 8'd32) ? 1'b1 : 1'b0);

assign icmp_ln468_fu_1354_p2 = ((it_graph_V_14_fu_1199_p2 != checkpos_graph_V_reg_2844) ? 1'b1 : 1'b0);

assign icmp_ln527_3_fu_1852_p2 = ((sel_11_reg_2878_pp0_iter1_reg == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln527_4_fu_1889_p2 = ((sel_11_reg_2878_pp0_iter1_reg == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln527_fu_1840_p2 = ((sel_11_reg_2878_pp0_iter1_reg == 2'd1) ? 1'b1 : 1'b0);

assign icmp_ln556_2_fu_2105_p2 = ((sel_12_fu_1792_p3 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln556_3_fu_2143_p2 = ((sel_12_fu_1792_p3 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln556_fu_2086_p2 = ((sel_12_fu_1792_p3 != 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln585_fu_2238_p2 = (($signed(temp1_8_fu_2036_p3) > $signed(ap_phi_mux_temp3_phi_fu_713_p4)) ? 1'b1 : 1'b0);

assign icmp_ln588_3_fu_2312_p2 = ((select_ln430_reg_3022 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln588_4_fu_2349_p2 = ((select_ln430_reg_3022 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln588_fu_2300_p2 = ((select_ln430_reg_3022 == 2'd1) ? 1'b1 : 1'b0);

assign icmp_ln617_fu_2264_p2 = (($signed(temp2_8_fu_2230_p3) > $signed(ap_phi_mux_temp4_phi_fu_725_p4)) ? 1'b1 : 1'b0);

assign icmp_ln620_2_fu_2490_p2 = ((sel_15_fu_1819_p3 != 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln620_3_fu_2510_p2 = ((sel_15_fu_1819_p3 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln620_4_fu_2548_p2 = ((sel_15_fu_1819_p3 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln620_fu_2484_p2 = ((sel_15_fu_1819_p3 != 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln782_fu_810_p2 = (($signed(tmp_fu_800_p4) < $signed(27'd1)) ? 1'b1 : 1'b0);

assign icmp_ln794_fu_850_p2 = ((idx_reg_674 == 6'd33) ? 1'b1 : 1'b0);

assign icmp_ln878_11_fu_960_p2 = ((tmp_6_fu_950_p4 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln878_12_fu_1282_p2 = ((tmp_7_fu_1272_p4 == 3'd0) ? 1'b1 : 1'b0);

assign icmp_ln878_13_fu_1298_p2 = ((tmp_8_fu_1288_p4 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln878_14_fu_2630_p2 = ((tempindex4_fu_2621_p2 < 7'd65) ? 1'b1 : 1'b0);

assign icmp_ln878_fu_944_p2 = ((tmp_5_fu_934_p4 == 3'd0) ? 1'b1 : 1'b0);

assign icmp_ln890_3_fu_1504_p2 = ((it_graph_V_19_reg_2885 > 8'd65) ? 1'b1 : 1'b0);

assign icmp_ln890_4_fu_1618_p2 = ((it_graph_V_20_reg_2939 > 8'd32) ? 1'b1 : 1'b0);

assign icmp_ln890_5_fu_1623_p2 = ((it_graph_V_20_reg_2939 > 8'd65) ? 1'b1 : 1'b0);

assign icmp_ln890_fu_1499_p2 = ((it_graph_V_19_reg_2885 > 8'd32) ? 1'b1 : 1'b0);

assign idx_3_fu_844_p2 = (idx_reg_674 + 6'd1);

assign it_node_V_13_fu_900_p2 = (it_node_V_reg_777 + 8'd1);

assign it_node_V_15_fu_1048_p2 = (it_node_V_23_fu_906_p3 + 8'd1);

assign it_node_V_16_fu_1098_p3 = ((and_ln377_fu_1060_p2[0:0] == 1'b1) ? it_node_V_15_fu_1048_p2 : it_node_V_reg_777);

assign it_node_V_17_fu_1106_p3 = ((icmp_ln373_fu_859_p2[0:0] == 1'b1) ? it_node_V_reg_777 : it_node_V_16_fu_1098_p3);

assign it_node_V_18_fu_1246_p2 = (it_node_V_17_fu_1106_p3 + 8'd1);

assign it_node_V_20_fu_1322_p2 = (it_node_V_24_fu_1252_p3 + 8'd1);

assign it_node_V_21_fu_1328_p3 = ((or_ln434_fu_1223_p2[0:0] == 1'b1) ? it_node_V_20_fu_1322_p2 : it_node_V_17_fu_1106_p3);

assign it_node_V_22_fu_1421_p3 = ((icmp_ln430_fu_1205_p2[0:0] == 1'b1) ? it_node_V_17_fu_1106_p3 : it_node_V_21_fu_1328_p3);

assign it_node_V_23_fu_906_p3 = ((or_ln381_fu_894_p2[0:0] == 1'b1) ? it_node_V_reg_777 : it_node_V_13_fu_900_p2);

assign it_node_V_24_fu_1252_p3 = ((or_ln438_fu_1240_p2[0:0] == 1'b1) ? it_node_V_17_fu_1106_p3 : it_node_V_18_fu_1246_p2);

assign it_graph_V_12_fu_1179_p2 = (it_graph_V_reg_766 + 8'd1);

assign it_graph_V_14_fu_1199_p2 = (it_graph_V_19_fu_1185_p3 + 8'd1);

assign it_graph_V_15_fu_1371_p2 = (it_graph_V_19_fu_1185_p3 + 8'd2);

assign it_graph_V_17_fu_1385_p2 = (it_graph_V_20_fu_1377_p3 + 8'd1);

assign it_graph_V_18_fu_1429_p3 = ((icmp_ln430_fu_1205_p2[0:0] == 1'b1) ? it_graph_V_14_fu_1199_p2 : it_graph_V_17_fu_1385_p2);

assign it_graph_V_19_fu_1185_p3 = ((or_ln408_fu_1173_p2[0:0] == 1'b1) ? it_graph_V_reg_766 : it_graph_V_12_fu_1179_p2);

assign it_graph_V_20_fu_1377_p3 = ((or_ln468_fu_1365_p2[0:0] == 1'b1) ? it_graph_V_14_fu_1199_p2 : it_graph_V_15_fu_1371_p2);

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

assign m_axi_buf_dram_manage_AWADDR = sext_ln794_fu_834_p1;

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

assign m_axi_buf_dram_manage_WDATA = {{{{{{{{readbuf7_reg_3286}, {readbuf6_12_reg_3291}}, {select_ln878_47_reg_3271}}, {select_ln878_46_reg_3266}}, {temp2_9_reg_3236}}, {readbuf2_6_reg_3241}}, {readbuf1_reg_3226}}, {readbuf0_7_reg_3231}};

assign m_axi_buf_dram_manage_WID = 1'd0;

assign m_axi_buf_dram_manage_WLAST = 1'b0;

assign m_axi_buf_dram_manage_WSTRB = 32'd4294967295;

assign m_axi_buf_dram_manage_WUSER = 1'd0;

assign mul_fu_794_p2 = (empty_fu_788_p2 + nodeindex);

assign node_21_address0 = zext_ln622_fu_1748_p1;

assign node_21_address1 = zext_ln558_fu_1696_p1;

assign node_22_address0 = zext_ln590_fu_1722_p1;

assign node_22_address1 = zext_ln529_fu_1675_p1;

assign node_23_address0 = zext_ln590_fu_1722_p1;

assign node_23_address1 = zext_ln529_fu_1675_p1;

assign node_24_address0 = zext_ln622_fu_1748_p1;

assign node_24_address1 = zext_ln558_fu_1696_p1;

assign node_25_address0 = zext_ln622_fu_1748_p1;

assign node_25_address1 = zext_ln558_fu_1696_p1;

assign node_26_address0 = zext_ln590_fu_1722_p1;

assign node_26_address1 = zext_ln529_fu_1675_p1;

assign node_27_address0 = zext_ln590_fu_1722_p1;

assign node_27_address1 = zext_ln529_fu_1675_p1;

assign node_2_address0 = zext_ln622_fu_1748_p1;

assign node_2_address1 = zext_ln558_fu_1696_p1;

assign or_ln373_3_fu_1144_p2 = (icmp_ln381_fu_883_p2 | and_ln377_7_fu_1138_p2);

assign or_ln373_4_fu_1150_p2 = (or_ln373_3_fu_1144_p2 | icmp_ln373_fu_859_p2);

assign or_ln373_fu_1120_p2 = (icmp_ln373_fu_859_p2 | and_ln377_6_fu_1114_p2);

assign or_ln377_fu_877_p2 = (xor_ln377_fu_871_p2 | icmp_ln377_fu_865_p2);

assign or_ln381_fu_894_p2 = (xor_ln381_fu_888_p2 | icmp_ln381_fu_883_p2);

assign or_ln386_fu_928_p2 = (xor_ln377_fu_871_p2 | icmp_ln386_fu_922_p2);

assign or_ln408_fu_1173_p2 = (xor_ln408_fu_1167_p2 | icmp_ln408_fu_1162_p2);

assign or_ln430_6_fu_1397_p2 = (or_ln430_fu_1391_p2 | icmp_ln438_fu_1229_p2);

assign or_ln430_7_fu_1409_p2 = (icmp_ln430_fu_1205_p2 | and_ln434_fu_1336_p2);

assign or_ln430_8_fu_1437_p2 = (icmp_ln468_fu_1354_p2 | icmp_ln430_fu_1205_p2);

assign or_ln430_fu_1391_p2 = (icmp_ln430_fu_1205_p2 | and_ln434_4_fu_1348_p2);

assign or_ln434_fu_1223_p2 = (xor_ln434_fu_1217_p2 | icmp_ln434_fu_1211_p2);

assign or_ln438_fu_1240_p2 = (xor_ln438_fu_1234_p2 | icmp_ln438_fu_1229_p2);

assign or_ln443_fu_1266_p2 = (xor_ln434_fu_1217_p2 | icmp_ln443_fu_1260_p2);

assign or_ln468_fu_1365_p2 = (xor_ln468_fu_1359_p2 | icmp_ln468_fu_1354_p2);

assign or_ln878_1_fu_1572_p2 = (and_ln878_2_reg_2932 | and_ln443_reg_2926);

assign or_ln878_fu_1018_p2 = (and_ln878_fu_1004_p2 | and_ln386_fu_998_p2);

assign readbuf0_5_fu_1833_p3 = ((trunc_ln529_reg_2977_pp0_iter1_reg[0:0] == 1'b1) ? bronode_213_q1 : bronode_29_q1);

assign readbuf0_6_fu_1952_p3 = ((and_ln542_1_fu_1908_p2[0:0] == 1'b1) ? readbuf0_5_fu_1833_p3 : select_ln542_2_fu_1944_p3);

assign readbuf0_7_fu_2065_p3 = ((icmp_ln373_reg_2865_pp0_iter1_reg[0:0] == 1'b1) ? 32'd64 : select_ln878_39_fu_2057_p3);

assign readbuf0_fu_1826_p3 = ((trunc_ln529_reg_2977_pp0_iter1_reg[0:0] == 1'b1) ? node_26_q1 : node_22_q1);

assign readbuf1_fu_2051_p3 = ((icmp_ln373_reg_2865_pp0_iter1_reg[0:0] == 1'b1) ? p_read1 : select_ln878_38_fu_2043_p3);

assign readbuf2_5_fu_2079_p3 = ((trunc_ln558_reg_3079[0:0] == 1'b1) ? bronode_211_q1 : bronode_2_q1);

assign readbuf2_6_fu_2208_p3 = ((and_ln571_1_fu_2163_p2[0:0] == 1'b1) ? readbuf2_5_fu_2079_p3 : select_ln571_2_fu_2200_p3);

assign readbuf2_fu_2072_p3 = ((trunc_ln558_reg_3079[0:0] == 1'b1) ? node_24_q1 : node_2_q1);

assign readbuf4_5_fu_2286_p3 = ((trunc_ln590_reg_3128[0:0] == 1'b1) ? node_26_q0 : node_22_q0);

assign readbuf4_6_fu_2293_p3 = ((trunc_ln590_reg_3128[0:0] == 1'b1) ? bronode_213_q0 : bronode_29_q0);

assign readbuf4_7_fu_2412_p3 = ((and_ln603_1_fu_2368_p2[0:0] == 1'b1) ? readbuf4_6_fu_2293_p3 : select_ln603_2_fu_2404_p3);

assign readbuf4_fu_2244_p3 = ((icmp_ln585_fu_2238_p2[0:0] == 1'b1) ? select_ln373_fu_2021_p3 : ap_phi_mux_empty_51_phi_fu_654_p4);

assign readbuf5_fu_2256_p3 = ((icmp_ln585_fu_2238_p2[0:0] == 1'b1) ? temp1_8_fu_2036_p3 : ap_phi_mux_temp3_phi_fu_713_p4);

assign readbuf6_10_fu_2613_p3 = ((and_ln635_1_fu_2568_p2[0:0] == 1'b1) ? readbuf6_9_fu_2477_p3 : select_ln635_2_fu_2605_p3);

assign readbuf6_11_fu_2760_p3 = ((icmp_ln430_reg_2893_pp0_iter1_reg[0:0] == 1'b1) ? readbuf6_fu_2270_p3 : 8'd0);

assign readbuf6_12_fu_2771_p3 = ((and_ln878_4_fu_2663_p2[0:0] == 1'b1) ? readbuf6_10_fu_2613_p3 : zext_ln521_fu_2767_p1);

assign readbuf6_8_fu_2470_p3 = ((trunc_ln622_reg_3177[0:0] == 1'b1) ? node_24_q0 : node_2_q0);

assign readbuf6_9_fu_2477_p3 = ((trunc_ln622_reg_3177[0:0] == 1'b1) ? bronode_211_q0 : bronode_2_q0);

assign readbuf6_fu_2270_p3 = ((icmp_ln617_fu_2264_p2[0:0] == 1'b1) ? select_ln332_16_fu_2222_p3 : ap_phi_mux_empty_49_phi_fu_630_p4);

assign readbuf7_fu_2752_p3 = ((and_ln878_4_fu_2663_p2[0:0] == 1'b1) ? temp4_8_fu_2573_p3 : select_ln430_23_fu_2745_p3);

assign sel_11_fu_1074_p3 = ((icmp_ln373_fu_859_p2[0:0] == 1'b1) ? 2'd0 : select_ln377_fu_1066_p3);

assign sel_12_fu_1792_p3 = ((icmp_ln890_reg_3001[0:0] == 1'b1) ? select_ln420_1_fu_1784_p3 : 2'd2);

assign sel_13_fu_1576_p3 = ((or_ln878_1_fu_1572_p2[0:0] == 1'b1) ? select_ln878_33_fu_1565_p3 : select_ln450_1_fu_1551_p3);

assign sel_14_fu_1812_p3 = ((icmp_ln890_4_reg_3012[0:0] == 1'b1) ? select_ln480_1_fu_1804_p3 : 2'd2);

assign sel_15_fu_1819_p3 = ((icmp_ln430_reg_2893_pp0_iter1_reg[0:0] == 1'b1) ? 2'd0 : sel_14_fu_1812_p3);

assign sel_fu_1024_p3 = ((or_ln878_fu_1018_p2[0:0] == 1'b1) ? select_ln878_fu_1010_p3 : select_ln393_1_fu_976_p3);

assign select_ln332_15_fu_2000_p3 = ((icmp_ln332_fu_1986_p2[0:0] == 1'b1) ? temp1_9_fu_1913_p3 : ap_phi_mux_temp1_phi_fu_689_p4);

assign select_ln332_16_fu_2222_p3 = ((icmp_ln332_7_fu_2216_p2[0:0] == 1'b1) ? zext_ln301_fu_1960_p1 : ap_phi_mux_empty_50_phi_fu_642_p4);

assign select_ln332_18_fu_2426_p3 = ((icmp_ln332_8_fu_2420_p2[0:0] == 1'b1) ? zext_ln301_fu_1960_p1 : ap_phi_mux_empty_51_phi_fu_654_p4);

assign select_ln332_19_fu_2434_p3 = ((icmp_ln332_8_fu_2420_p2[0:0] == 1'b1) ? temp3_6_fu_2373_p3 : ap_phi_mux_temp3_phi_fu_713_p4);

assign select_ln332_20_fu_2642_p3 = ((icmp_ln332_9_fu_2636_p2[0:0] == 1'b1) ? zext_ln774_fu_2626_p1 : ap_phi_mux_empty_49_phi_fu_630_p4);

assign select_ln332_21_fu_2650_p3 = ((icmp_ln332_9_fu_2636_p2[0:0] == 1'b1) ? temp4_8_fu_2573_p3 : ap_phi_mux_temp4_phi_fu_725_p4);

assign select_ln332_fu_1992_p3 = ((icmp_ln332_fu_1986_p2[0:0] == 1'b1) ? sext_ln768_fu_1968_p1 : ap_phi_mux_empty_52_phi_fu_666_p4);

assign select_ln373_fu_2021_p3 = ((icmp_ln373_reg_2865_pp0_iter1_reg[0:0] == 1'b1) ? ap_phi_mux_empty_52_phi_fu_666_p4 : select_ln878_36_fu_2013_p3);

assign select_ln377_fu_1066_p3 = ((and_ln377_fu_1060_p2[0:0] == 1'b1) ? sel_fu_1024_p3 : 2'd1);

assign select_ln393_1_fu_976_p3 = ((icmp_ln878_11_fu_960_p2[0:0] == 1'b1) ? 2'd3 : 2'd0);

assign select_ln393_fu_984_p3 = ((icmp_ln878_11_fu_960_p2[0:0] == 1'b1) ? sext_ln797_fu_972_p1 : addr_31_fu_176);

assign select_ln420_1_fu_1784_p3 = ((xor_ln420_fu_1779_p2[0:0] == 1'b1) ? 2'd3 : 2'd0);

assign select_ln420_fu_1519_p3 = ((icmp_ln890_3_fu_1504_p2[0:0] == 1'b1) ? addr_30_fu_172 : sext_ln797_1_fu_1515_p1);

assign select_ln430_19_fu_2677_p3 = ((icmp_ln430_reg_2893_pp0_iter1_reg[0:0] == 1'b1) ? ap_phi_mux_empty_51_phi_fu_654_p4 : select_ln878_40_fu_2442_p3);

assign select_ln430_20_fu_2692_p3 = ((icmp_ln430_reg_2893_pp0_iter1_reg[0:0] == 1'b1) ? zext_ln585_fu_2252_p1 : select_ln878_43_fu_2463_p3);

assign select_ln430_21_fu_2707_p3 = ((icmp_ln430_reg_2893_pp0_iter1_reg[0:0] == 1'b1) ? readbuf5_fu_2256_p3 : select_ln878_42_fu_2456_p3);

assign select_ln430_22_fu_2722_p3 = ((icmp_ln430_reg_2893_pp0_iter1_reg[0:0] == 1'b1) ? ap_phi_mux_temp3_phi_fu_713_p4 : select_ln878_41_fu_2449_p3);

assign select_ln430_23_fu_2745_p3 = ((icmp_ln430_reg_2893_pp0_iter1_reg[0:0] == 1'b1) ? select_ln618_fu_2278_p3 : 32'd0);

assign select_ln430_fu_1661_p3 = ((icmp_ln430_reg_2893[0:0] == 1'b1) ? 2'd0 : select_ln434_fu_1598_p3);

assign select_ln434_fu_1598_p3 = ((or_ln434_reg_2908[0:0] == 1'b1) ? sel_13_fu_1576_p3 : 2'd1);

assign select_ln450_1_fu_1551_p3 = ((icmp_ln878_13_reg_2920[0:0] == 1'b1) ? 2'd3 : 2'd0);

assign select_ln450_fu_1558_p3 = ((icmp_ln878_13_reg_2920[0:0] == 1'b1) ? sext_ln797_2_fu_1547_p1 : addr_29_fu_168);

assign select_ln480_1_fu_1804_p3 = ((xor_ln480_fu_1799_p2[0:0] == 1'b1) ? 2'd3 : 2'd0);

assign select_ln480_fu_1638_p3 = ((icmp_ln890_5_fu_1623_p2[0:0] == 1'b1) ? addr_fu_164 : sext_ln797_3_fu_1634_p1);

assign select_ln527_3_fu_1921_p3 = ((icmp_ln527_fu_1840_p2[0:0] == 1'b1) ? head_index : 32'd0);

assign select_ln527_fu_1845_p3 = ((icmp_ln527_fu_1840_p2[0:0] == 1'b1) ? fb_length : 32'd0);

assign select_ln530_7_fu_1881_p3 = ((and_ln530_3_fu_1876_p2[0:0] == 1'b1) ? node_27_q1 : select_ln530_fu_1868_p3);

assign select_ln530_8_fu_1928_p3 = ((and_ln530_fu_1862_p2[0:0] == 1'b1) ? readbuf0_fu_1826_p3 : select_ln527_3_fu_1921_p3);

assign select_ln530_9_fu_1936_p3 = ((and_ln530_3_fu_1876_p2[0:0] == 1'b1) ? readbuf0_fu_1826_p3 : select_ln530_8_fu_1928_p3);

assign select_ln530_fu_1868_p3 = ((and_ln530_fu_1862_p2[0:0] == 1'b1) ? node_23_q1 : select_ln527_fu_1845_p3);

assign select_ln542_2_fu_1944_p3 = ((and_ln542_fu_1894_p2[0:0] == 1'b1) ? readbuf0_5_fu_1833_p3 : select_ln530_9_fu_1936_p3);

assign select_ln542_fu_1900_p3 = ((and_ln542_fu_1894_p2[0:0] == 1'b1) ? bronode_210_q1 : select_ln530_7_fu_1881_p3);

assign select_ln556_1_fu_2176_p3 = ((and_ln556_fu_2092_p2[0:0] == 1'b1) ? 32'd0 : readbuf2_fu_2072_p3);

assign select_ln556_fu_2097_p3 = ((and_ln556_fu_2092_p2[0:0] == 1'b1) ? 32'd0 : node_2_q1);

assign select_ln559_4_fu_2135_p3 = ((and_ln559_2_fu_2130_p2[0:0] == 1'b1) ? node_25_q1 : select_ln559_fu_2122_p3);

assign select_ln559_5_fu_2184_p3 = ((and_ln559_fu_2116_p2[0:0] == 1'b1) ? readbuf2_fu_2072_p3 : select_ln556_1_fu_2176_p3);

assign select_ln559_6_fu_2192_p3 = ((and_ln559_2_fu_2130_p2[0:0] == 1'b1) ? readbuf2_fu_2072_p3 : select_ln559_5_fu_2184_p3);

assign select_ln559_fu_2122_p3 = ((and_ln559_fu_2116_p2[0:0] == 1'b1) ? node_21_q1 : select_ln556_fu_2097_p3);

assign select_ln571_2_fu_2200_p3 = ((and_ln571_fu_2149_p2[0:0] == 1'b1) ? readbuf2_5_fu_2079_p3 : select_ln559_6_fu_2192_p3);

assign select_ln571_fu_2155_p3 = ((and_ln571_fu_2149_p2[0:0] == 1'b1) ? bronode_28_q1 : select_ln559_4_fu_2135_p3);

assign select_ln588_3_fu_2381_p3 = ((icmp_ln588_fu_2300_p2[0:0] == 1'b1) ? head_index : 32'd0);

assign select_ln588_fu_2305_p3 = ((icmp_ln588_fu_2300_p2[0:0] == 1'b1) ? fb_length : 32'd0);

assign select_ln591_7_fu_2341_p3 = ((and_ln591_3_fu_2336_p2[0:0] == 1'b1) ? node_27_q0 : select_ln591_fu_2328_p3);

assign select_ln591_8_fu_2388_p3 = ((and_ln591_fu_2322_p2[0:0] == 1'b1) ? readbuf4_5_fu_2286_p3 : select_ln588_3_fu_2381_p3);

assign select_ln591_9_fu_2396_p3 = ((and_ln591_3_fu_2336_p2[0:0] == 1'b1) ? readbuf4_5_fu_2286_p3 : select_ln591_8_fu_2388_p3);

assign select_ln591_fu_2328_p3 = ((and_ln591_fu_2322_p2[0:0] == 1'b1) ? node_23_q0 : select_ln588_fu_2305_p3);

assign select_ln603_2_fu_2404_p3 = ((and_ln603_fu_2354_p2[0:0] == 1'b1) ? readbuf4_6_fu_2293_p3 : select_ln591_9_fu_2396_p3);

assign select_ln603_fu_2360_p3 = ((and_ln603_fu_2354_p2[0:0] == 1'b1) ? bronode_210_q0 : select_ln591_7_fu_2341_p3);

assign select_ln618_fu_2278_p3 = ((icmp_ln617_fu_2264_p2[0:0] == 1'b1) ? temp2_8_fu_2230_p3 : ap_phi_mux_temp4_phi_fu_725_p4);

assign select_ln620_1_fu_2581_p3 = ((and_ln620_fu_2496_p2[0:0] == 1'b1) ? 32'd0 : readbuf6_8_fu_2470_p3);

assign select_ln620_fu_2502_p3 = ((and_ln620_fu_2496_p2[0:0] == 1'b1) ? 32'd0 : node_2_q0);

assign select_ln623_4_fu_2540_p3 = ((and_ln623_2_fu_2535_p2[0:0] == 1'b1) ? node_25_q0 : select_ln623_fu_2527_p3);

assign select_ln623_5_fu_2589_p3 = ((and_ln623_fu_2521_p2[0:0] == 1'b1) ? readbuf6_8_fu_2470_p3 : select_ln620_1_fu_2581_p3);

assign select_ln623_6_fu_2597_p3 = ((and_ln623_2_fu_2535_p2[0:0] == 1'b1) ? readbuf6_8_fu_2470_p3 : select_ln623_5_fu_2589_p3);

assign select_ln623_fu_2527_p3 = ((and_ln623_fu_2521_p2[0:0] == 1'b1) ? node_21_q0 : select_ln620_fu_2502_p3);

assign select_ln635_2_fu_2605_p3 = ((and_ln635_fu_2554_p2[0:0] == 1'b1) ? readbuf6_9_fu_2477_p3 : select_ln623_6_fu_2597_p3);

assign select_ln635_fu_2560_p3 = ((and_ln635_fu_2554_p2[0:0] == 1'b1) ? bronode_28_q0 : select_ln623_4_fu_2540_p3);

assign select_ln782_cast_cast_fu_816_p3 = ((icmp_ln782_fu_810_p2[0:0] == 1'b1) ? 8'd1 : 8'd2);

assign select_ln878_33_fu_1565_p3 = ((and_ln878_2_reg_2932[0:0] == 1'b1) ? 2'd2 : 2'd1);

assign select_ln878_36_fu_2013_p3 = ((and_ln878_3_fu_2008_p2[0:0] == 1'b1) ? select_ln332_fu_1992_p3 : ap_phi_mux_empty_52_phi_fu_666_p4);

assign select_ln878_37_fu_2028_p3 = ((and_ln878_3_fu_2008_p2[0:0] == 1'b1) ? select_ln332_15_fu_2000_p3 : ap_phi_mux_temp1_phi_fu_689_p4);

assign select_ln878_38_fu_2043_p3 = ((and_ln878_3_fu_2008_p2[0:0] == 1'b1) ? temp1_9_fu_1913_p3 : 32'd0);

assign select_ln878_39_fu_2057_p3 = ((and_ln878_3_fu_2008_p2[0:0] == 1'b1) ? readbuf0_6_fu_1952_p3 : 32'd0);

assign select_ln878_40_fu_2442_p3 = ((tmp_10_reg_2993_pp0_iter1_reg[0:0] == 1'b1) ? ap_phi_mux_empty_51_phi_fu_654_p4 : select_ln332_18_fu_2426_p3);

assign select_ln878_41_fu_2449_p3 = ((tmp_10_reg_2993_pp0_iter1_reg[0:0] == 1'b1) ? ap_phi_mux_temp3_phi_fu_713_p4 : select_ln332_19_fu_2434_p3);

assign select_ln878_42_fu_2456_p3 = ((tmp_10_reg_2993_pp0_iter1_reg[0:0] == 1'b1) ? 32'd0 : temp3_6_fu_2373_p3);

assign select_ln878_43_fu_2463_p3 = ((tmp_10_reg_2993_pp0_iter1_reg[0:0] == 1'b1) ? 32'd0 : readbuf4_7_fu_2412_p3);

assign select_ln878_44_fu_2669_p3 = ((and_ln878_4_fu_2663_p2[0:0] == 1'b1) ? select_ln332_20_fu_2642_p3 : ap_phi_mux_empty_49_phi_fu_630_p4);

assign select_ln878_45_fu_2684_p3 = ((and_ln878_4_fu_2663_p2[0:0] == 1'b1) ? select_ln878_40_fu_2442_p3 : select_ln430_19_fu_2677_p3);

assign select_ln878_46_fu_2699_p3 = ((and_ln878_4_fu_2663_p2[0:0] == 1'b1) ? select_ln878_43_fu_2463_p3 : select_ln430_20_fu_2692_p3);

assign select_ln878_47_fu_2714_p3 = ((and_ln878_4_fu_2663_p2[0:0] == 1'b1) ? select_ln878_42_fu_2456_p3 : select_ln430_21_fu_2707_p3);

assign select_ln878_48_fu_2729_p3 = ((and_ln878_4_fu_2663_p2[0:0] == 1'b1) ? select_ln878_41_fu_2449_p3 : select_ln430_22_fu_2722_p3);

assign select_ln878_fu_1010_p3 = ((and_ln878_fu_1004_p2[0:0] == 1'b1) ? 2'd2 : 2'd1);

assign sext_ln768_fu_1968_p1 = tempindex1_fu_1963_p2;

assign sext_ln794_fu_834_p1 = $signed(mul_reg_2816);

assign sext_ln797_1_fu_1515_p1 = $signed(addr_40_fu_1509_p2);

assign sext_ln797_2_fu_1547_p1 = $signed(addr_42_fu_1541_p2);

assign sext_ln797_3_fu_1634_p1 = $signed(addr_47_fu_1628_p2);

assign sext_ln797_fu_972_p1 = $signed(addr_34_fu_966_p2);

assign temp1_8_fu_2036_p3 = ((icmp_ln373_reg_2865_pp0_iter1_reg[0:0] == 1'b1) ? ap_phi_mux_temp1_phi_fu_689_p4 : select_ln878_37_fu_2028_p3);

assign temp1_9_fu_1913_p3 = ((and_ln542_1_fu_1908_p2[0:0] == 1'b1) ? bronode_214_q1 : select_ln542_fu_1900_p3);

assign temp2_8_fu_2230_p3 = ((icmp_ln332_7_fu_2216_p2[0:0] == 1'b1) ? temp2_9_fu_2168_p3 : ap_phi_mux_temp2_phi_fu_701_p4);

assign temp2_9_fu_2168_p3 = ((and_ln571_1_fu_2163_p2[0:0] == 1'b1) ? bronode_212_q1 : select_ln571_fu_2155_p3);

assign temp3_6_fu_2373_p3 = ((and_ln603_1_fu_2368_p2[0:0] == 1'b1) ? bronode_214_q0 : select_ln603_fu_2360_p3);

assign temp4_7_fu_2737_p3 = ((and_ln878_4_fu_2663_p2[0:0] == 1'b1) ? select_ln332_21_fu_2650_p3 : ap_phi_mux_temp4_phi_fu_725_p4);

assign temp4_8_fu_2573_p3 = ((and_ln635_1_fu_2568_p2[0:0] == 1'b1) ? bronode_212_q0 : select_ln635_fu_2560_p3);

assign tempindex1_fu_1963_p2 = ($signed(tempindex3_reg_2986_pp0_iter1_reg) + $signed(7'd127));

assign tempindex3_fu_1463_p3 = {{idx_reg_674}, {1'd0}};

assign tempindex4_fu_2621_p2 = (tempindex3_reg_2986_pp0_iter1_reg | 7'd1);

assign tmp_5_fu_934_p4 = {{it_node_V_23_fu_906_p3[7:5]}};

assign tmp_6_fu_950_p4 = {{it_node_V_23_fu_906_p3[7:6]}};

assign tmp_7_fu_1272_p4 = {{it_node_V_24_fu_1252_p3[7:5]}};

assign tmp_8_fu_1288_p4 = {{it_node_V_24_fu_1252_p3[7:6]}};

assign tmp_9_fu_1972_p3 = tempindex1_fu_1963_p2[32'd6];

assign tmp_fu_800_p4 = {{checkpos[31:5]}};

assign trunc_ln10_fu_1712_p4 = {{addr_49_fu_1654_p3[5:1]}};

assign trunc_ln11_fu_1738_p4 = {{addr_50_fu_1668_p3[6:1]}};

assign trunc_ln529_fu_1459_p1 = addr_38_fu_1090_p3[0:0];

assign trunc_ln558_fu_1708_p1 = addr_51_fu_1527_p3[0:0];

assign trunc_ln590_fu_1734_p1 = addr_49_fu_1654_p3[0:0];

assign trunc_ln622_fu_1760_p1 = addr_50_fu_1668_p3[0:0];

assign trunc_ln9_fu_1686_p4 = {{addr_51_fu_1527_p3[6:1]}};

assign xor_ln373_fu_1054_p2 = (icmp_ln373_fu_859_p2 ^ 1'd1);

assign xor_ln377_3_fu_1132_p2 = (icmp_ln377_fu_865_p2 ^ 1'd1);

assign xor_ln377_fu_871_p2 = (1'd1 ^ Isinsert_reg_755);

assign xor_ln381_fu_888_p2 = (1'd1 ^ Isdelete_reg_733);

assign xor_ln386_fu_992_p2 = (icmp_ln386_fu_922_p2 ^ 1'd1);

assign xor_ln408_fu_1167_p2 = (1'd1 ^ Isdelete_graph_reg_744);

assign xor_ln420_fu_1779_p2 = (icmp_ln890_3_reg_3007 ^ 1'd1);

assign xor_ln430_fu_2658_p2 = (icmp_ln430_reg_2893_pp0_iter1_reg ^ 1'd1);

assign xor_ln434_3_fu_1342_p2 = (icmp_ln434_fu_1211_p2 ^ 1'd1);

assign xor_ln434_fu_1217_p2 = (1'd1 ^ Isinsert_1_fu_1126_p2);

assign xor_ln438_fu_1234_p2 = (1'd1 ^ Isdelete_1_fu_1156_p2);

assign xor_ln443_fu_1304_p2 = (icmp_ln443_fu_1260_p2 ^ 1'd1);

assign xor_ln468_fu_1359_p2 = (1'd1 ^ Isdelete_graph_3_fu_1193_p2);

assign xor_ln480_fu_1799_p2 = (icmp_ln890_5_reg_3017 ^ 1'd1);

assign xor_ln530_fu_1857_p2 = (trunc_ln529_reg_2977_pp0_iter1_reg ^ 1'd1);

assign xor_ln559_fu_2111_p2 = (trunc_ln558_reg_3079 ^ 1'd1);

assign xor_ln591_fu_2317_p2 = (trunc_ln590_reg_3128 ^ 1'd1);

assign xor_ln623_fu_2516_p2 = (trunc_ln622_reg_3177 ^ 1'd1);

assign xor_ln878_fu_1980_p2 = (tmp_9_fu_1972_p3 ^ 1'd1);

assign zext_ln301_fu_1960_p1 = tempindex3_reg_2986_pp0_iter1_reg;

assign zext_ln521_fu_2767_p1 = readbuf6_11_fu_2760_p3;

assign zext_ln529_fu_1675_p1 = trunc_ln_reg_2972;

assign zext_ln558_fu_1696_p1 = trunc_ln9_fu_1686_p4;

assign zext_ln585_fu_2252_p1 = readbuf4_fu_2244_p3;

assign zext_ln590_fu_1722_p1 = trunc_ln10_fu_1712_p4;

assign zext_ln622_fu_1748_p1 = trunc_ln11_fu_1738_p4;

assign zext_ln774_fu_2626_p1 = tempindex4_fu_2621_p2;

assign zext_ln797_1_fu_1496_p1 = it_graph_V_19_reg_2885;

assign zext_ln797_2_fu_1538_p1 = it_node_V_24_reg_2914;

assign zext_ln797_3_fu_1615_p1 = it_graph_V_20_reg_2939;

assign zext_ln797_fu_918_p1 = it_node_V_23_fu_906_p3;

assign zext_ln870_4_fu_1535_p1 = it_node_V_24_reg_2914;

assign zext_ln870_fu_914_p1 = it_node_V_23_fu_906_p3;

assign zext_ln890_1_fu_1612_p1 = it_graph_V_20_reg_2939;

assign zext_ln890_fu_1493_p1 = it_graph_V_19_reg_2885;

always @ (posedge ap_clk) begin
    tempindex3_reg_2986[0] <= 1'b0;
    tempindex3_reg_2986_pp0_iter1_reg[0] <= 1'b0;
end

endmodule //execute_mergemem
