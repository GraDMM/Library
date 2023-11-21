

`timescale 1 ns / 1 ps 

module execute_writemem (
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
        p_read1,
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
        Isinsert,
        Isdelete,
        pos_node,
        pos_graph,
        checkpos,
        checkpos_graph,
        head_index,
        fb_length,
        subgraph,
        maxsubgraph
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
input  [31:0] p_read;
input  [31:0] p_read1;
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
input  [0:0] Isinsert;
input  [0:0] Isdelete;
input  [7:0] pos_node;
input  [7:0] pos_graph;
input  [7:0] checkpos;
input  [7:0] checkpos_graph;
input  [31:0] head_index;
input  [31:0] fb_length;
input  [31:0] subgraph;
input  [31:0] maxsubgraph;

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
reg    ap_enable_reg_pp0_iter3;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln699_reg_2439;
reg   [0:0] icmp_ln699_reg_2439_pp0_iter2_reg;
reg    buf_dram_manage_blk_n_B;
wire    ap_CS_fsm_state11;
reg   [7:0] empty_27_reg_466;
reg   [7:0] empty_28_reg_478;
reg   [5:0] idx_reg_490;
reg   [0:0] Isinsert_assign_reg_501;
reg   [0:0] Isdelete_assign_reg_510;
reg   [31:0] temp1_reg_519;
reg   [31:0] temp2_reg_531;
reg   [0:0] Isinsert_graph_reg_543;
reg   [0:0] Isdelete_graph_reg_552;
reg   [7:0] it_graph_V_reg_561;
reg   [7:0] it_node_V_reg_572;
wire   [31:0] mul_fu_729_p2;
reg   [31:0] mul_reg_2329;
wire   [31:0] num_fu_781_p2;
reg   [31:0] num_reg_2411;
wire   [7:0] num_V_fu_791_p2;
reg   [7:0] num_V_reg_2416;
wire   [7:0] num_V_1_fu_797_p2;
reg   [7:0] num_V_1_reg_2422;
wire   [5:0] idx_1_fu_813_p2;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state3_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_state6_pp0_stage0_iter3;
reg    ap_block_state6_io;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln699_fu_819_p2;
reg   [0:0] icmp_ln699_reg_2439_pp0_iter1_reg;
wire   [0:0] icmp_ln373_fu_837_p2;
reg   [0:0] icmp_ln373_reg_2443;
reg   [0:0] icmp_ln373_reg_2443_pp0_iter1_reg;
wire   [0:0] xor_ln373_fu_949_p2;
reg   [0:0] xor_ln373_reg_2451;
reg   [0:0] xor_ln373_reg_2451_pp0_iter1_reg;
wire   [1:0] sel_1_fu_969_p3;
reg   [1:0] sel_1_reg_2456;
reg   [1:0] sel_1_reg_2456_pp0_iter1_reg;
wire   [2:0] sel_3_fu_1163_p3;
reg   [2:0] sel_3_reg_2462;
reg   [2:0] sel_3_reg_2462_pp0_iter1_reg;
wire   [0:0] icmp_ln430_fu_1223_p2;
reg   [0:0] icmp_ln430_reg_2466;
reg   [0:0] icmp_ln430_reg_2466_pp0_iter1_reg;
wire   [0:0] and_ln430_fu_1489_p2;
wire   [0:0] and_ln430_1_fu_1507_p2;
wire   [7:0] it_node_V_10_fu_1513_p3;
wire   [1:0] select_ln430_fu_1529_p3;
reg   [1:0] select_ln430_reg_2485;
reg   [1:0] select_ln430_reg_2485_pp0_iter1_reg;
wire   [2:0] sel_6_fu_1557_p3;
reg   [2:0] sel_6_reg_2491;
reg   [2:0] sel_6_reg_2491_pp0_iter1_reg;
wire   [7:0] it_graph_V_9_fu_1589_p3;
wire   [0:0] Isdelete_graph_2_fu_1621_p2;
wire   [0:0] Isinsert_graph_2_fu_1639_p2;
reg   [4:0] trunc_ln1_reg_2510;
wire   [0:0] trunc_ln529_fu_1655_p1;
reg   [0:0] trunc_ln529_reg_2515;
reg   [0:0] trunc_ln529_reg_2515_pp0_iter1_reg;
wire   [6:0] tempindex3_fu_1659_p3;
reg   [6:0] tempindex3_reg_2522;
reg   [6:0] tempindex3_reg_2522_pp0_iter1_reg;
wire   [0:0] trunc_ln558_fu_1705_p1;
reg   [0:0] trunc_ln558_reg_2539;
reg   [0:0] trunc_ln558_reg_2539_pp0_iter1_reg;
reg   [5:0] node_mix_array1_addr_reg_2544;
reg   [4:0] node_mix_array5_addr_reg_2549;
reg   [4:0] trunc_ln3_reg_2554;
wire   [0:0] trunc_ln590_fu_1719_p1;
reg   [0:0] trunc_ln590_reg_2559;
reg   [0:0] trunc_ln590_reg_2559_pp0_iter1_reg;
reg   [5:0] trunc_ln4_reg_2566;
wire   [0:0] trunc_ln622_fu_1733_p1;
reg   [0:0] trunc_ln622_reg_2571;
reg   [0:0] trunc_ln622_reg_2571_pp0_iter1_reg;
wire   [31:0] readbuf2_fu_1744_p3;
reg   [31:0] readbuf2_reg_2596;
wire   [7:0] select_ln373_fu_1896_p3;
reg   [7:0] select_ln373_reg_2642;
reg    ap_enable_reg_pp0_iter2;
wire   [31:0] temp1_2_fu_1911_p3;
reg   [31:0] temp1_2_reg_2647;
wire   [31:0] readbuf1_fu_1926_p3;
reg   [31:0] readbuf1_reg_2652;
wire   [31:0] readbuf0_2_fu_1940_p3;
reg   [31:0] readbuf0_2_reg_2657;
wire   [7:0] select_ln878_4_fu_1973_p3;
reg   [7:0] select_ln878_4_reg_2662;
wire   [31:0] temp2_2_fu_1981_p3;
reg   [31:0] temp2_2_reg_2667;
wire   [31:0] readbuf3_fu_1989_p3;
reg   [31:0] readbuf3_reg_2672;
wire   [31:0] readbuf2_2_fu_1997_p3;
reg   [31:0] readbuf2_2_reg_2677;
wire   [31:0] select_ln878_10_fu_2127_p3;
wire   [31:0] select_ln878_11_fu_2135_p3;
wire   [0:0] icmp_ln878_5_fu_2161_p2;
wire   [31:0] zext_ln585_fu_2222_p1;
wire   [31:0] readbuf5_fu_2226_p3;
wire   [31:0] zext_ln617_fu_2248_p1;
wire   [31:0] select_ln618_fu_2252_p3;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter1;
reg   [7:0] ap_phi_mux_empty_27_phi_fu_470_p4;
reg   [7:0] ap_phi_mux_empty_28_phi_fu_482_p4;
reg   [31:0] ap_phi_mux_temp1_phi_fu_523_p4;
reg   [31:0] ap_phi_mux_temp2_phi_fu_535_p4;
reg   [31:0] ap_phi_mux_temp2_3_phi_fu_587_p10;
wire   [31:0] ap_phi_reg_pp0_iter0_temp2_3_reg_583;
reg   [31:0] ap_phi_reg_pp0_iter1_temp2_3_reg_583;
reg   [31:0] ap_phi_reg_pp0_iter2_temp2_3_reg_583;
reg   [31:0] ap_phi_mux_readbuf2_1_phi_fu_607_p10;
wire   [31:0] ap_phi_reg_pp0_iter0_readbuf2_1_reg_603;
reg   [31:0] ap_phi_reg_pp0_iter1_readbuf2_1_reg_603;
reg   [31:0] ap_phi_reg_pp0_iter2_readbuf2_1_reg_603;
reg   [31:0] ap_phi_mux_temp4_2_phi_fu_625_p10;
wire   [31:0] ap_phi_reg_pp0_iter0_temp4_2_reg_621;
reg   [31:0] ap_phi_reg_pp0_iter1_temp4_2_reg_621;
reg   [31:0] ap_phi_reg_pp0_iter2_temp4_2_reg_621;
reg   [31:0] ap_phi_mux_readbuf6_2_phi_fu_646_p10;
wire   [31:0] ap_phi_reg_pp0_iter0_readbuf6_2_reg_642;
reg   [31:0] ap_phi_reg_pp0_iter1_readbuf6_2_reg_642;
reg   [31:0] ap_phi_reg_pp0_iter2_readbuf6_2_reg_642;
wire   [31:0] readbuf6_1_fu_2143_p3;
wire   [31:0] ap_phi_reg_pp0_iter0_readbuf4_i_215_reg_661;
reg   [31:0] ap_phi_reg_pp0_iter1_readbuf4_i_215_reg_661;
reg   [31:0] ap_phi_reg_pp0_iter2_readbuf4_i_215_reg_661;
reg   [31:0] ap_phi_reg_pp0_iter3_readbuf4_i_215_reg_661;
wire   [31:0] ap_phi_reg_pp0_iter0_readbuf5_i_213_reg_672;
reg   [31:0] ap_phi_reg_pp0_iter1_readbuf5_i_213_reg_672;
reg   [31:0] ap_phi_reg_pp0_iter2_readbuf5_i_213_reg_672;
reg   [31:0] ap_phi_reg_pp0_iter3_readbuf5_i_213_reg_672;
wire   [31:0] ap_phi_reg_pp0_iter0_readbuf7_reg_683;
reg   [31:0] ap_phi_reg_pp0_iter1_readbuf7_reg_683;
reg   [31:0] ap_phi_reg_pp0_iter2_readbuf7_reg_683;
reg   [31:0] ap_phi_reg_pp0_iter3_readbuf7_reg_683;
wire   [31:0] ap_phi_reg_pp0_iter0_readbuf6_3_reg_697;
reg   [31:0] ap_phi_reg_pp0_iter1_readbuf6_3_reg_697;
reg   [31:0] ap_phi_reg_pp0_iter2_readbuf6_3_reg_697;
reg   [31:0] ap_phi_reg_pp0_iter3_readbuf6_3_reg_697;
wire   [63:0] zext_ln558_fu_1697_p1;
wire   [63:0] zext_ln529_fu_1737_p1;
wire   [63:0] zext_ln590_fu_1751_p1;
wire   [63:0] zext_ln622_fu_1758_p1;
wire  signed [63:0] sext_ln750_fu_803_p1;
wire    ap_block_pp0_stage0_01001;
reg   [31:0] addr_fu_142;
wire   [31:0] addr_18_fu_1573_p3;
reg   [31:0] addr_1_fu_146;
wire   [31:0] addr_16_fu_1521_p3;
reg   [31:0] addr_2_fu_150;
wire   [31:0] addr_10_fu_1171_p3;
reg   [31:0] addr_3_fu_154;
wire   [31:0] addr_7_fu_985_p3;
reg   [31:0] temp4_fu_158;
wire   [31:0] select_ln332_7_fu_2190_p3;
reg   [7:0] empty_fu_162;
wire   [7:0] select_ln332_6_fu_2182_p3;
reg   [31:0] temp3_fu_166;
wire   [31:0] select_ln878_9_fu_2119_p3;
reg   [7:0] empty_25_fu_170;
wire   [7:0] select_ln878_8_fu_2111_p3;
wire   [31:0] empty_26_fu_723_p2;
wire   [1:0] select_ln695_fu_759_p3;
wire   [1:0] Isinsert_cast_fu_755_p1;
wire  signed [1:0] add_ln695_fu_771_p2;
wire  signed [31:0] sext_ln695_fu_777_p1;
wire  signed [7:0] tmp215_cast_fu_787_p1;
wire   [7:0] trunc_ln695_fu_767_p1;
wire   [0:0] icmp_ln377_fu_843_p2;
wire   [0:0] xor_ln377_fu_848_p2;
wire   [0:0] icmp_ln381_fu_860_p2;
wire   [0:0] xor_ln381_fu_865_p2;
wire   [0:0] or_ln381_fu_871_p2;
wire   [7:0] it_node_V_1_fu_877_p2;
wire   [7:0] it_node_V_11_fu_883_p3;
wire   [0:0] icmp_ln386_fu_895_p2;
wire   [31:0] zext_ln870_fu_891_p1;
wire   [0:0] icmp_ln878_fu_906_p2;
wire   [0:0] or_ln386_fu_900_p2;
wire   [1:0] select_ln389_fu_911_p3;
wire   [31:0] select_ln389_1_fu_919_p3;
wire   [0:0] or_ln377_fu_854_p2;
wire   [0:0] and_ln377_fu_955_p2;
wire   [1:0] sel_fu_927_p3;
wire   [1:0] select_ln377_fu_961_p3;
wire   [31:0] addr_5_fu_935_p3;
wire   [31:0] addr_6_fu_977_p3;
wire   [7:0] it_node_V_3_fu_943_p2;
wire   [7:0] it_node_V_4_fu_993_p3;
wire   [0:0] xor_ln377_1_fu_1009_p2;
wire   [0:0] and_ln377_1_fu_1015_p2;
wire   [0:0] or_ln373_fu_1021_p2;
wire   [0:0] or_ln373_1_fu_1027_p2;
wire   [0:0] and_ln377_2_fu_1039_p2;
wire   [0:0] or_ln373_2_fu_1045_p2;
wire   [0:0] icmp_ln404_fu_1057_p2;
wire   [0:0] xor_ln404_fu_1062_p2;
wire   [0:0] icmp_ln408_fu_1074_p2;
wire   [0:0] xor_ln408_fu_1079_p2;
wire   [0:0] or_ln408_fu_1085_p2;
wire   [7:0] it_graph_V_1_fu_1091_p2;
wire   [7:0] it_graph_V_10_fu_1097_p3;
wire   [0:0] icmp_ln413_fu_1109_p2;
wire   [31:0] zext_ln870_1_fu_1105_p1;
wire   [0:0] icmp_ln890_fu_1120_p2;
wire   [0:0] or_ln413_fu_1114_p2;
wire   [2:0] select_ln416_fu_1125_p3;
wire   [31:0] select_ln416_1_fu_1133_p3;
wire   [0:0] or_ln404_fu_1068_p2;
wire   [2:0] sel_2_fu_1141_p3;
wire   [31:0] addr_9_fu_1149_p3;
wire   [7:0] it_graph_V_3_fu_1157_p2;
wire   [0:0] xor_ln404_1_fu_1187_p2;
wire   [0:0] and_ln404_fu_1193_p2;
wire   [0:0] or_ln404_1_fu_1199_p2;
wire   [0:0] and_ln404_2_fu_1211_p2;
wire   [7:0] it_node_V_5_fu_1001_p3;
wire   [0:0] and_ln373_1_fu_1051_p2;
wire   [0:0] icmp_ln434_fu_1229_p2;
wire   [0:0] xor_ln434_fu_1234_p2;
wire   [0:0] and_ln373_fu_1033_p2;
wire   [0:0] icmp_ln438_fu_1246_p2;
wire   [0:0] xor_ln438_fu_1251_p2;
wire   [0:0] or_ln438_fu_1257_p2;
wire   [7:0] it_node_V_6_fu_1263_p2;
wire   [7:0] it_node_V_12_fu_1269_p3;
wire   [0:0] icmp_ln443_fu_1281_p2;
wire   [31:0] zext_ln870_2_fu_1277_p1;
wire   [0:0] icmp_ln878_1_fu_1292_p2;
wire   [0:0] or_ln443_fu_1286_p2;
wire   [1:0] select_ln446_fu_1297_p3;
wire   [31:0] select_ln446_1_fu_1305_p3;
wire   [0:0] or_ln434_fu_1240_p2;
wire   [1:0] sel_4_fu_1313_p3;
wire   [31:0] addr_12_fu_1321_p3;
wire   [7:0] it_node_V_8_fu_1329_p2;
wire   [0:0] xor_ln434_1_fu_1359_p2;
wire   [7:0] it_graph_V_4_fu_1179_p3;
wire   [0:0] Isinsert_graph_1_fu_1217_p2;
wire   [0:0] icmp_ln464_fu_1377_p2;
wire   [0:0] xor_ln464_fu_1382_p2;
wire   [0:0] Isdelete_graph_1_fu_1205_p2;
wire   [0:0] icmp_ln468_fu_1394_p2;
wire   [0:0] xor_ln468_fu_1399_p2;
wire   [0:0] or_ln468_fu_1405_p2;
wire   [7:0] it_graph_V_5_fu_1411_p2;
wire   [7:0] it_graph_V_11_fu_1417_p3;
wire   [0:0] icmp_ln473_fu_1429_p2;
wire   [31:0] zext_ln870_3_fu_1425_p1;
wire   [0:0] icmp_ln890_1_fu_1440_p2;
wire   [0:0] or_ln473_fu_1434_p2;
wire   [2:0] select_ln476_fu_1445_p3;
wire   [31:0] select_ln476_1_fu_1453_p3;
wire   [0:0] and_ln434_1_fu_1371_p2;
wire   [0:0] or_ln430_fu_1483_p2;
wire   [0:0] and_ln434_fu_1365_p2;
wire   [0:0] or_ln430_1_fu_1495_p2;
wire   [0:0] or_ln430_2_fu_1501_p2;
wire   [7:0] it_node_V_9_fu_1351_p3;
wire   [31:0] addr_13_fu_1343_p3;
wire   [1:0] select_ln434_fu_1335_p3;
wire   [0:0] or_ln464_fu_1388_p2;
wire   [0:0] xor_ln430_fu_1537_p2;
wire   [0:0] and_ln464_fu_1543_p2;
wire   [2:0] sel_5_fu_1461_p3;
wire   [2:0] select_ln464_fu_1549_p3;
wire   [31:0] addr_15_fu_1469_p3;
wire   [31:0] addr_17_fu_1565_p3;
wire   [7:0] it_graph_V_7_fu_1477_p2;
wire   [7:0] it_graph_V_8_fu_1581_p3;
wire   [0:0] xor_ln464_1_fu_1597_p2;
wire   [0:0] and_ln464_1_fu_1603_p2;
wire   [0:0] or_ln430_3_fu_1609_p2;
wire   [0:0] or_ln430_4_fu_1615_p2;
wire   [0:0] and_ln464_2_fu_1627_p2;
wire   [0:0] or_ln430_5_fu_1633_p2;
wire   [5:0] trunc_ln2_fu_1687_p4;
wire   [0:0] icmp_ln527_fu_1772_p2;
wire   [0:0] icmp_ln527_1_fu_1784_p2;
wire   [0:0] xor_ln530_fu_1789_p2;
wire   [0:0] and_ln530_fu_1794_p2;
wire   [31:0] select_ln527_fu_1777_p3;
wire   [0:0] and_ln530_1_fu_1808_p2;
wire   [31:0] select_ln530_fu_1800_p3;
wire   [31:0] readbuf0_fu_1765_p3;
wire   [31:0] select_ln527_1_fu_1821_p3;
wire   [31:0] select_ln530_2_fu_1828_p3;
wire   [6:0] tempindex1_fu_1847_p2;
wire  signed [7:0] sext_ln685_fu_1852_p1;
wire   [31:0] temp1_3_fu_1813_p3;
wire   [0:0] icmp_ln332_fu_1861_p2;
wire   [0:0] icmp_ln878_2_fu_1856_p2;
wire   [0:0] and_ln878_fu_1883_p2;
wire   [7:0] select_ln332_fu_1867_p3;
wire   [7:0] select_ln878_fu_1888_p3;
wire   [31:0] select_ln332_1_fu_1875_p3;
wire   [31:0] select_ln878_1_fu_1903_p3;
wire   [31:0] select_ln878_2_fu_1918_p3;
wire   [31:0] readbuf0_1_fu_1836_p3;
wire   [31:0] select_ln878_3_fu_1932_p3;
wire   [7:0] zext_ln301_fu_1844_p1;
wire   [0:0] icmp_ln332_1_fu_1951_p2;
wire   [0:0] icmp_ln878_3_fu_1946_p2;
wire   [7:0] select_ln332_2_fu_1957_p3;
wire   [31:0] select_ln332_3_fu_1965_p3;
wire   [0:0] icmp_ln588_fu_2012_p2;
wire   [0:0] icmp_ln588_1_fu_2024_p2;
wire   [0:0] xor_ln591_fu_2029_p2;
wire   [0:0] and_ln591_fu_2034_p2;
wire   [31:0] select_ln588_fu_2017_p3;
wire   [0:0] and_ln591_1_fu_2048_p2;
wire   [31:0] select_ln591_fu_2040_p3;
wire   [31:0] readbuf4_1_fu_2005_p3;
wire   [31:0] select_ln588_1_fu_2061_p3;
wire   [31:0] select_ln591_2_fu_2068_p3;
wire   [31:0] temp3_2_fu_2053_p3;
wire   [0:0] icmp_ln332_2_fu_2089_p2;
wire   [0:0] icmp_ln878_4_fu_2084_p2;
wire   [7:0] select_ln332_4_fu_2095_p3;
wire   [31:0] select_ln332_5_fu_2103_p3;
wire   [31:0] readbuf4_2_fu_2076_p3;
wire   [6:0] tempindex4_fu_2152_p2;
wire   [7:0] zext_ln691_fu_2157_p1;
wire   [0:0] icmp_ln332_3_fu_2176_p2;
wire   [0:0] icmp_ln585_fu_2208_p2;
wire   [7:0] readbuf4_fu_2214_p3;
wire   [0:0] icmp_ln617_fu_2234_p2;
wire   [7:0] readbuf6_fu_2240_p3;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_579;
reg    ap_condition_576;
reg    ap_condition_529;
reg    ap_condition_600;
reg    ap_condition_603;
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
    if (((icmp_ln699_fu_819_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Isdelete_assign_reg_510 <= and_ln430_1_fu_1507_p2;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        Isdelete_assign_reg_510 <= Isdelete;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln699_fu_819_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Isdelete_graph_reg_552 <= Isdelete_graph_2_fu_1621_p2;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        Isdelete_graph_reg_552 <= Isdelete;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln699_fu_819_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Isinsert_assign_reg_501 <= and_ln430_fu_1489_p2;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        Isinsert_assign_reg_501 <= Isinsert;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln699_fu_819_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Isinsert_graph_reg_543 <= Isinsert_graph_2_fu_1639_p2;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        Isinsert_graph_reg_543 <= Isinsert;
    end
end

always @ (posedge ap_clk) begin
    if (((sel_3_fu_1163_p3 == 3'd4) & (icmp_ln699_fu_819_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter1_readbuf2_1_reg_603 <= subgraph;
    end else if (((~(sel_3_fu_1163_p3 == 3'd0) & ~(sel_3_fu_1163_p3 == 3'd4) & ~(sel_3_fu_1163_p3 == 3'd2) & (icmp_ln699_fu_819_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((sel_3_fu_1163_p3 == 3'd0) & (icmp_ln699_fu_819_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        ap_phi_reg_pp0_iter1_readbuf2_1_reg_603 <= 32'd0;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter1_readbuf2_1_reg_603 <= ap_phi_reg_pp0_iter0_readbuf2_1_reg_603;
    end
end

always @ (posedge ap_clk) begin
    if (((~(sel_6_fu_1557_p3 == 3'd0) & ~(sel_6_fu_1557_p3 == 3'd4) & ~(sel_6_fu_1557_p3 == 3'd2) & (icmp_ln430_fu_1223_p2 == 1'd0) & (icmp_ln699_fu_819_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((sel_6_fu_1557_p3 == 3'd0) & (icmp_ln430_fu_1223_p2 == 1'd0) & (icmp_ln699_fu_819_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        ap_phi_reg_pp0_iter1_readbuf6_2_reg_642 <= 32'd0;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter1_readbuf6_2_reg_642 <= ap_phi_reg_pp0_iter0_readbuf6_2_reg_642;
    end
end

always @ (posedge ap_clk) begin
    if (((sel_3_fu_1163_p3 == 3'd4) & (icmp_ln699_fu_819_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter1_temp2_3_reg_583 <= maxsubgraph;
    end else if (((~(sel_3_fu_1163_p3 == 3'd0) & ~(sel_3_fu_1163_p3 == 3'd4) & ~(sel_3_fu_1163_p3 == 3'd2) & (icmp_ln699_fu_819_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((sel_3_fu_1163_p3 == 3'd0) & (icmp_ln699_fu_819_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        ap_phi_reg_pp0_iter1_temp2_3_reg_583 <= 32'd0;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter1_temp2_3_reg_583 <= ap_phi_reg_pp0_iter0_temp2_3_reg_583;
    end
end

always @ (posedge ap_clk) begin
    if (((~(sel_6_fu_1557_p3 == 3'd0) & ~(sel_6_fu_1557_p3 == 3'd4) & ~(sel_6_fu_1557_p3 == 3'd2) & (icmp_ln430_fu_1223_p2 == 1'd0) & (icmp_ln699_fu_819_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((sel_6_fu_1557_p3 == 3'd0) & (icmp_ln430_fu_1223_p2 == 1'd0) & (icmp_ln699_fu_819_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        ap_phi_reg_pp0_iter1_temp4_2_reg_621 <= 32'd0;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter1_temp4_2_reg_621 <= ap_phi_reg_pp0_iter0_temp4_2_reg_621;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_529)) begin
        if ((1'b1 == ap_condition_576)) begin
            ap_phi_reg_pp0_iter2_readbuf6_2_reg_642 <= subgraph;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter2_readbuf6_2_reg_642 <= ap_phi_reg_pp0_iter1_readbuf6_2_reg_642;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_529)) begin
        if ((1'b1 == ap_condition_576)) begin
            ap_phi_reg_pp0_iter2_temp4_2_reg_621 <= maxsubgraph;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter2_temp4_2_reg_621 <= ap_phi_reg_pp0_iter1_temp4_2_reg_621;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((((icmp_ln878_5_fu_2161_p2 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln430_reg_2466_pp0_iter1_reg == 1'd0) & (icmp_ln699_reg_2439_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_ln878_5_fu_2161_p2 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln430_reg_2466_pp0_iter1_reg == 1'd0) & (icmp_ln699_reg_2439_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        ap_phi_reg_pp0_iter3_readbuf4_i_215_reg_661 <= select_ln878_11_fu_2135_p3;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln430_reg_2466_pp0_iter1_reg == 1'd1) & (icmp_ln699_reg_2439_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter3_readbuf4_i_215_reg_661 <= zext_ln585_fu_2222_p1;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter3_readbuf4_i_215_reg_661 <= ap_phi_reg_pp0_iter2_readbuf4_i_215_reg_661;
    end
end

always @ (posedge ap_clk) begin
    if ((((icmp_ln878_5_fu_2161_p2 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln430_reg_2466_pp0_iter1_reg == 1'd0) & (icmp_ln699_reg_2439_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_ln878_5_fu_2161_p2 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln430_reg_2466_pp0_iter1_reg == 1'd0) & (icmp_ln699_reg_2439_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        ap_phi_reg_pp0_iter3_readbuf5_i_213_reg_672 <= select_ln878_10_fu_2127_p3;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln430_reg_2466_pp0_iter1_reg == 1'd1) & (icmp_ln699_reg_2439_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter3_readbuf5_i_213_reg_672 <= readbuf5_fu_2226_p3;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter3_readbuf5_i_213_reg_672 <= ap_phi_reg_pp0_iter2_readbuf5_i_213_reg_672;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if ((1'b1 == ap_condition_603)) begin
            ap_phi_reg_pp0_iter3_readbuf6_3_reg_697 <= 32'd0;
        end else if ((1'b1 == ap_condition_600)) begin
            ap_phi_reg_pp0_iter3_readbuf6_3_reg_697 <= ap_phi_mux_readbuf6_2_phi_fu_646_p10;
        end else if (((icmp_ln430_reg_2466_pp0_iter1_reg == 1'd1) & (icmp_ln699_reg_2439_pp0_iter1_reg == 1'd0))) begin
            ap_phi_reg_pp0_iter3_readbuf6_3_reg_697 <= zext_ln617_fu_2248_p1;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter3_readbuf6_3_reg_697 <= ap_phi_reg_pp0_iter2_readbuf6_3_reg_697;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if ((1'b1 == ap_condition_603)) begin
            ap_phi_reg_pp0_iter3_readbuf7_reg_683 <= 32'd0;
        end else if ((1'b1 == ap_condition_600)) begin
            ap_phi_reg_pp0_iter3_readbuf7_reg_683 <= ap_phi_mux_temp4_2_phi_fu_625_p10;
        end else if (((icmp_ln430_reg_2466_pp0_iter1_reg == 1'd1) & (icmp_ln699_reg_2439_pp0_iter1_reg == 1'd0))) begin
            ap_phi_reg_pp0_iter3_readbuf7_reg_683 <= select_ln618_fu_2252_p3;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter3_readbuf7_reg_683 <= ap_phi_reg_pp0_iter2_readbuf7_reg_683;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        empty_25_fu_170 <= 8'd0;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln430_reg_2466_pp0_iter1_reg == 1'd0) & (icmp_ln699_reg_2439_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        empty_25_fu_170 <= select_ln878_8_fu_2111_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln699_reg_2439_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        empty_27_reg_466 <= select_ln878_4_reg_2662;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        empty_27_reg_466 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln699_reg_2439_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        empty_28_reg_478 <= select_ln373_reg_2642;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        empty_28_reg_478 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        empty_fu_162 <= 8'd0;
    end else if (((icmp_ln878_5_fu_2161_p2 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln430_reg_2466_pp0_iter1_reg == 1'd0) & (icmp_ln699_reg_2439_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        empty_fu_162 <= select_ln332_6_fu_2182_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln699_fu_819_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        idx_reg_490 <= idx_1_fu_813_p2;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        idx_reg_490 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln699_fu_819_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        it_node_V_reg_572 <= it_node_V_10_fu_1513_p3;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        it_node_V_reg_572 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln699_fu_819_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        it_graph_V_reg_561 <= it_graph_V_9_fu_1589_p3;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        it_graph_V_reg_561 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln699_reg_2439_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        temp1_reg_519 <= temp1_2_reg_2647;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        temp1_reg_519 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln699_reg_2439_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        temp2_reg_531 <= temp2_2_reg_2667;
    end else if (((m_axi_buf_dram_manage_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        temp2_reg_531 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        temp3_fu_166 <= 32'd0;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln430_reg_2466_pp0_iter1_reg == 1'd0) & (icmp_ln699_reg_2439_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        temp3_fu_166 <= select_ln878_9_fu_2119_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        temp4_fu_158 <= 32'd0;
    end else if (((icmp_ln878_5_fu_2161_p2 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln430_reg_2466_pp0_iter1_reg == 1'd0) & (icmp_ln699_reg_2439_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        temp4_fu_158 <= select_ln332_7_fu_2190_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln699_fu_819_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        addr_1_fu_146 <= addr_16_fu_1521_p3;
        addr_2_fu_150 <= addr_10_fu_1171_p3;
        addr_3_fu_154 <= addr_7_fu_985_p3;
        addr_fu_142 <= addr_18_fu_1573_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter1_readbuf4_i_215_reg_661 <= ap_phi_reg_pp0_iter0_readbuf4_i_215_reg_661;
        ap_phi_reg_pp0_iter1_readbuf5_i_213_reg_672 <= ap_phi_reg_pp0_iter0_readbuf5_i_213_reg_672;
        ap_phi_reg_pp0_iter1_readbuf6_3_reg_697 <= ap_phi_reg_pp0_iter0_readbuf6_3_reg_697;
        ap_phi_reg_pp0_iter1_readbuf7_reg_683 <= ap_phi_reg_pp0_iter0_readbuf7_reg_683;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter2_readbuf2_1_reg_603 <= ap_phi_reg_pp0_iter1_readbuf2_1_reg_603;
        ap_phi_reg_pp0_iter2_readbuf4_i_215_reg_661 <= ap_phi_reg_pp0_iter1_readbuf4_i_215_reg_661;
        ap_phi_reg_pp0_iter2_readbuf5_i_213_reg_672 <= ap_phi_reg_pp0_iter1_readbuf5_i_213_reg_672;
        ap_phi_reg_pp0_iter2_readbuf6_3_reg_697 <= ap_phi_reg_pp0_iter1_readbuf6_3_reg_697;
        ap_phi_reg_pp0_iter2_readbuf7_reg_683 <= ap_phi_reg_pp0_iter1_readbuf7_reg_683;
        ap_phi_reg_pp0_iter2_temp2_3_reg_583 <= ap_phi_reg_pp0_iter1_temp2_3_reg_583;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln699_fu_819_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln373_reg_2443 <= icmp_ln373_fu_837_p2;
        icmp_ln430_reg_2466 <= icmp_ln430_fu_1223_p2;
        sel_1_reg_2456 <= sel_1_fu_969_p3;
        sel_3_reg_2462[2 : 1] <= sel_3_fu_1163_p3[2 : 1];
        sel_6_reg_2491[2 : 1] <= sel_6_fu_1557_p3[2 : 1];
        select_ln430_reg_2485 <= select_ln430_fu_1529_p3;
        tempindex3_reg_2522[6 : 1] <= tempindex3_fu_1659_p3[6 : 1];
        trunc_ln1_reg_2510 <= {{addr_7_fu_985_p3[5:1]}};
        trunc_ln529_reg_2515 <= trunc_ln529_fu_1655_p1;
        xor_ln373_reg_2451 <= xor_ln373_fu_949_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln373_reg_2443_pp0_iter1_reg <= icmp_ln373_reg_2443;
        icmp_ln430_reg_2466_pp0_iter1_reg <= icmp_ln430_reg_2466;
        icmp_ln699_reg_2439 <= icmp_ln699_fu_819_p2;
        icmp_ln699_reg_2439_pp0_iter1_reg <= icmp_ln699_reg_2439;
        sel_1_reg_2456_pp0_iter1_reg <= sel_1_reg_2456;
        sel_3_reg_2462_pp0_iter1_reg[2 : 1] <= sel_3_reg_2462[2 : 1];
        sel_6_reg_2491_pp0_iter1_reg[2 : 1] <= sel_6_reg_2491[2 : 1];
        select_ln430_reg_2485_pp0_iter1_reg <= select_ln430_reg_2485;
        tempindex3_reg_2522_pp0_iter1_reg[6 : 1] <= tempindex3_reg_2522[6 : 1];
        trunc_ln529_reg_2515_pp0_iter1_reg <= trunc_ln529_reg_2515;
        trunc_ln558_reg_2539_pp0_iter1_reg <= trunc_ln558_reg_2539;
        trunc_ln590_reg_2559_pp0_iter1_reg <= trunc_ln590_reg_2559;
        trunc_ln622_reg_2571_pp0_iter1_reg <= trunc_ln622_reg_2571;
        xor_ln373_reg_2451_pp0_iter1_reg <= xor_ln373_reg_2451;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_ln699_reg_2439_pp0_iter2_reg <= icmp_ln699_reg_2439_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        mul_reg_2329 <= mul_fu_729_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((sel_3_fu_1163_p3 == 3'd2) & (icmp_ln699_fu_819_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array1_addr_reg_2544 <= zext_ln558_fu_1697_p1;
        node_mix_array5_addr_reg_2549 <= zext_ln558_fu_1697_p1;
        trunc_ln558_reg_2539 <= trunc_ln558_fu_1705_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        num_V_1_reg_2422 <= num_V_1_fu_797_p2;
        num_V_reg_2416 <= num_V_fu_791_p2;
        num_reg_2411 <= num_fu_781_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln699_reg_2439_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        readbuf0_2_reg_2657 <= readbuf0_2_fu_1940_p3;
        readbuf1_reg_2652 <= readbuf1_fu_1926_p3;
        readbuf2_2_reg_2677 <= readbuf2_2_fu_1997_p3;
        readbuf3_reg_2672 <= readbuf3_fu_1989_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((sel_3_reg_2462 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln699_reg_2439 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        readbuf2_reg_2596 <= readbuf2_fu_1744_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln699_reg_2439_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        select_ln373_reg_2642 <= select_ln373_fu_1896_p3;
        select_ln878_4_reg_2662 <= select_ln878_4_fu_1973_p3;
        temp1_2_reg_2647 <= temp1_2_fu_1911_p3;
        temp2_2_reg_2667 <= temp2_2_fu_1981_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln430_fu_1223_p2 == 1'd0) & (icmp_ln699_fu_819_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        trunc_ln3_reg_2554 <= {{addr_16_fu_1521_p3[5:1]}};
        trunc_ln590_reg_2559 <= trunc_ln590_fu_1719_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((sel_6_fu_1557_p3 == 3'd2) & (icmp_ln430_fu_1223_p2 == 1'd0) & (icmp_ln699_fu_819_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        trunc_ln4_reg_2566 <= {{addr_18_fu_1573_p3[6:1]}};
        trunc_ln622_reg_2571 <= trunc_ln622_fu_1733_p1;
    end
end

always @ (*) begin
    if ((icmp_ln699_fu_819_p2 == 1'd1)) begin
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
    if (((icmp_ln699_reg_2439_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        ap_phi_mux_empty_27_phi_fu_470_p4 = select_ln878_4_reg_2662;
    end else begin
        ap_phi_mux_empty_27_phi_fu_470_p4 = empty_27_reg_466;
    end
end

always @ (*) begin
    if (((icmp_ln699_reg_2439_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        ap_phi_mux_empty_28_phi_fu_482_p4 = select_ln373_reg_2642;
    end else begin
        ap_phi_mux_empty_28_phi_fu_482_p4 = empty_28_reg_478;
    end
end

always @ (*) begin
    if ((((trunc_ln558_reg_2539_pp0_iter1_reg == 1'd1) & (sel_3_reg_2462_pp0_iter1_reg == 3'd2) & (icmp_ln699_reg_2439_pp0_iter1_reg == 1'd0)) | ((trunc_ln558_reg_2539_pp0_iter1_reg == 1'd0) & (sel_3_reg_2462_pp0_iter1_reg == 3'd2) & (icmp_ln699_reg_2439_pp0_iter1_reg == 1'd0)))) begin
        ap_phi_mux_readbuf2_1_phi_fu_607_p10 = readbuf2_reg_2596;
    end else begin
        ap_phi_mux_readbuf2_1_phi_fu_607_p10 = ap_phi_reg_pp0_iter2_readbuf2_1_reg_603;
    end
end

always @ (*) begin
    if ((((trunc_ln622_reg_2571_pp0_iter1_reg == 1'd1) & (sel_6_reg_2491_pp0_iter1_reg == 3'd2) & (icmp_ln430_reg_2466_pp0_iter1_reg == 1'd0) & (icmp_ln699_reg_2439_pp0_iter1_reg == 1'd0)) | ((trunc_ln622_reg_2571_pp0_iter1_reg == 1'd0) & (sel_6_reg_2491_pp0_iter1_reg == 3'd2) & (icmp_ln430_reg_2466_pp0_iter1_reg == 1'd0) & (icmp_ln699_reg_2439_pp0_iter1_reg == 1'd0)))) begin
        ap_phi_mux_readbuf6_2_phi_fu_646_p10 = readbuf6_1_fu_2143_p3;
    end else begin
        ap_phi_mux_readbuf6_2_phi_fu_646_p10 = ap_phi_reg_pp0_iter2_readbuf6_2_reg_642;
    end
end

always @ (*) begin
    if (((icmp_ln699_reg_2439_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        ap_phi_mux_temp1_phi_fu_523_p4 = temp1_2_reg_2647;
    end else begin
        ap_phi_mux_temp1_phi_fu_523_p4 = temp1_reg_519;
    end
end

always @ (*) begin
    if (((sel_3_reg_2462_pp0_iter1_reg == 3'd2) & (icmp_ln699_reg_2439_pp0_iter1_reg == 1'd0))) begin
        if ((trunc_ln558_reg_2539_pp0_iter1_reg == 1'd1)) begin
            ap_phi_mux_temp2_3_phi_fu_587_p10 = node_mix_array5_q1;
        end else if ((trunc_ln558_reg_2539_pp0_iter1_reg == 1'd0)) begin
            ap_phi_mux_temp2_3_phi_fu_587_p10 = node_mix_array1_q1;
        end else begin
            ap_phi_mux_temp2_3_phi_fu_587_p10 = ap_phi_reg_pp0_iter2_temp2_3_reg_583;
        end
    end else begin
        ap_phi_mux_temp2_3_phi_fu_587_p10 = ap_phi_reg_pp0_iter2_temp2_3_reg_583;
    end
end

always @ (*) begin
    if (((icmp_ln699_reg_2439_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        ap_phi_mux_temp2_phi_fu_535_p4 = temp2_2_reg_2667;
    end else begin
        ap_phi_mux_temp2_phi_fu_535_p4 = temp2_reg_531;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_579)) begin
        if ((trunc_ln622_reg_2571_pp0_iter1_reg == 1'd1)) begin
            ap_phi_mux_temp4_2_phi_fu_625_p10 = node_mix_array5_q0;
        end else if ((trunc_ln622_reg_2571_pp0_iter1_reg == 1'd0)) begin
            ap_phi_mux_temp4_2_phi_fu_625_p10 = node_mix_array1_q0;
        end else begin
            ap_phi_mux_temp4_2_phi_fu_625_p10 = ap_phi_reg_pp0_iter2_temp4_2_reg_621;
        end
    end else begin
        ap_phi_mux_temp4_2_phi_fu_625_p10 = ap_phi_reg_pp0_iter2_temp4_2_reg_621;
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
    if (((icmp_ln699_reg_2439_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
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
    if (((icmp_ln699_reg_2439_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        m_axi_buf_dram_manage_WVALID = 1'b1;
    end else begin
        m_axi_buf_dram_manage_WVALID = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array1_ce0 = 1'b1;
    end else begin
        node_mix_array1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array1_ce1 = 1'b1;
    end else begin
        node_mix_array1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array2_ce0 = 1'b1;
    end else begin
        node_mix_array2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array2_ce1 = 1'b1;
    end else begin
        node_mix_array2_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array3_ce0 = 1'b1;
    end else begin
        node_mix_array3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array3_ce1 = 1'b1;
    end else begin
        node_mix_array3_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array5_ce0 = 1'b1;
    end else begin
        node_mix_array5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array5_ce1 = 1'b1;
    end else begin
        node_mix_array5_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array6_ce0 = 1'b1;
    end else begin
        node_mix_array6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array6_ce1 = 1'b1;
    end else begin
        node_mix_array6_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array7_ce0 = 1'b1;
    end else begin
        node_mix_array7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_mix_array7_ce1 = 1'b1;
    end else begin
        node_mix_array7_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (icmp_ln699_fu_819_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b0) & (icmp_ln699_fu_819_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
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

assign Isdelete_graph_1_fu_1205_p2 = (or_ln404_1_fu_1199_p2 & Isdelete_graph_reg_552);

assign Isdelete_graph_2_fu_1621_p2 = (or_ln430_4_fu_1615_p2 & Isdelete_graph_1_fu_1205_p2);

assign Isinsert_cast_fu_755_p1 = Isinsert;

assign Isinsert_graph_1_fu_1217_p2 = (and_ln404_2_fu_1211_p2 & Isinsert_graph_reg_543);

assign Isinsert_graph_2_fu_1639_p2 = (or_ln430_5_fu_1633_p2 & Isinsert_graph_1_fu_1217_p2);

assign add_ln695_fu_771_p2 = (select_ln695_fu_759_p3 + Isinsert_cast_fu_755_p1);

assign addr_10_fu_1171_p3 = ((or_ln404_fu_1068_p2[0:0] == 1'b1) ? addr_9_fu_1149_p3 : addr_2_fu_150);

assign addr_12_fu_1321_p3 = ((or_ln443_fu_1286_p2[0:0] == 1'b1) ? select_ln446_1_fu_1305_p3 : addr_1_fu_146);

assign addr_13_fu_1343_p3 = ((or_ln434_fu_1240_p2[0:0] == 1'b1) ? addr_12_fu_1321_p3 : addr_1_fu_146);

assign addr_15_fu_1469_p3 = ((or_ln473_fu_1434_p2[0:0] == 1'b1) ? select_ln476_1_fu_1453_p3 : addr_fu_142);

assign addr_16_fu_1521_p3 = ((icmp_ln430_fu_1223_p2[0:0] == 1'b1) ? addr_1_fu_146 : addr_13_fu_1343_p3);

assign addr_17_fu_1565_p3 = ((and_ln464_fu_1543_p2[0:0] == 1'b1) ? addr_15_fu_1469_p3 : addr_fu_142);

assign addr_18_fu_1573_p3 = ((icmp_ln430_fu_1223_p2[0:0] == 1'b1) ? addr_fu_142 : addr_17_fu_1565_p3);

assign addr_5_fu_935_p3 = ((or_ln386_fu_900_p2[0:0] == 1'b1) ? select_ln389_1_fu_919_p3 : addr_3_fu_154);

assign addr_6_fu_977_p3 = ((and_ln377_fu_955_p2[0:0] == 1'b1) ? addr_5_fu_935_p3 : addr_3_fu_154);

assign addr_7_fu_985_p3 = ((icmp_ln373_fu_837_p2[0:0] == 1'b1) ? addr_3_fu_154 : addr_6_fu_977_p3);

assign addr_9_fu_1149_p3 = ((or_ln413_fu_1114_p2[0:0] == 1'b1) ? select_ln416_1_fu_1133_p3 : addr_2_fu_150);

assign and_ln373_1_fu_1051_p2 = (or_ln373_2_fu_1045_p2 & Isinsert_assign_reg_501);

assign and_ln373_fu_1033_p2 = (or_ln373_1_fu_1027_p2 & Isdelete_assign_reg_510);

assign and_ln377_1_fu_1015_p2 = (xor_ln377_1_fu_1009_p2 & Isinsert_assign_reg_501);

assign and_ln377_2_fu_1039_p2 = (icmp_ln386_fu_895_p2 & and_ln377_fu_955_p2);

assign and_ln377_fu_955_p2 = (xor_ln373_fu_949_p2 & or_ln377_fu_854_p2);

assign and_ln404_2_fu_1211_p2 = (or_ln404_fu_1068_p2 & icmp_ln413_fu_1109_p2);

assign and_ln404_fu_1193_p2 = (xor_ln404_1_fu_1187_p2 & Isinsert_graph_reg_543);

assign and_ln430_1_fu_1507_p2 = (or_ln430_2_fu_1501_p2 & and_ln373_fu_1033_p2);

assign and_ln430_fu_1489_p2 = (or_ln430_fu_1483_p2 & and_ln373_1_fu_1051_p2);

assign and_ln434_1_fu_1371_p2 = (or_ln434_fu_1240_p2 & icmp_ln443_fu_1281_p2);

assign and_ln434_fu_1365_p2 = (xor_ln434_1_fu_1359_p2 & and_ln373_1_fu_1051_p2);

assign and_ln464_1_fu_1603_p2 = (xor_ln464_1_fu_1597_p2 & Isinsert_graph_1_fu_1217_p2);

assign and_ln464_2_fu_1627_p2 = (icmp_ln473_fu_1429_p2 & and_ln464_fu_1543_p2);

assign and_ln464_fu_1543_p2 = (xor_ln430_fu_1537_p2 & or_ln464_fu_1388_p2);

assign and_ln530_1_fu_1808_p2 = (trunc_ln529_reg_2515_pp0_iter1_reg & icmp_ln527_1_fu_1784_p2);

assign and_ln530_fu_1794_p2 = (xor_ln530_fu_1789_p2 & icmp_ln527_1_fu_1784_p2);

assign and_ln591_1_fu_2048_p2 = (trunc_ln590_reg_2559_pp0_iter1_reg & icmp_ln588_1_fu_2024_p2);

assign and_ln591_fu_2034_p2 = (xor_ln591_fu_2029_p2 & icmp_ln588_1_fu_2024_p2);

assign and_ln878_fu_1883_p2 = (xor_ln373_reg_2451_pp0_iter1_reg & icmp_ln878_2_fu_1856_p2);

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
    ap_block_state6_io = ((m_axi_buf_dram_manage_WREADY == 1'b0) & (icmp_ln699_reg_2439_pp0_iter2_reg == 1'd0));
end

assign ap_block_state6_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_529 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

always @ (*) begin
    ap_condition_576 = ((sel_6_reg_2491 == 3'd4) & (icmp_ln430_reg_2466 == 1'd0) & (icmp_ln699_reg_2439 == 1'd0));
end

always @ (*) begin
    ap_condition_579 = ((sel_6_reg_2491_pp0_iter1_reg == 3'd2) & (icmp_ln430_reg_2466_pp0_iter1_reg == 1'd0) & (icmp_ln699_reg_2439_pp0_iter1_reg == 1'd0));
end

always @ (*) begin
    ap_condition_600 = ((icmp_ln878_5_fu_2161_p2 == 1'd1) & (icmp_ln430_reg_2466_pp0_iter1_reg == 1'd0) & (icmp_ln699_reg_2439_pp0_iter1_reg == 1'd0));
end

always @ (*) begin
    ap_condition_603 = ((icmp_ln878_5_fu_2161_p2 == 1'd0) & (icmp_ln430_reg_2466_pp0_iter1_reg == 1'd0) & (icmp_ln699_reg_2439_pp0_iter1_reg == 1'd0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_readbuf2_1_reg_603 = 'bx;

assign ap_phi_reg_pp0_iter0_readbuf4_i_215_reg_661 = 'bx;

assign ap_phi_reg_pp0_iter0_readbuf5_i_213_reg_672 = 'bx;

assign ap_phi_reg_pp0_iter0_readbuf6_2_reg_642 = 'bx;

assign ap_phi_reg_pp0_iter0_readbuf6_3_reg_697 = 'bx;

assign ap_phi_reg_pp0_iter0_readbuf7_reg_683 = 'bx;

assign ap_phi_reg_pp0_iter0_temp2_3_reg_583 = 'bx;

assign ap_phi_reg_pp0_iter0_temp4_2_reg_621 = 'bx;

assign empty_26_fu_723_p2 = nodeindex << 32'd5;

assign icmp_ln332_1_fu_1951_p2 = (($signed(ap_phi_mux_temp2_3_phi_fu_587_p10) > $signed(ap_phi_mux_temp2_phi_fu_535_p4)) ? 1'b1 : 1'b0);

assign icmp_ln332_2_fu_2089_p2 = (($signed(temp3_2_fu_2053_p3) > $signed(temp3_fu_166)) ? 1'b1 : 1'b0);

assign icmp_ln332_3_fu_2176_p2 = (($signed(ap_phi_mux_temp4_2_phi_fu_625_p10) > $signed(temp4_fu_158)) ? 1'b1 : 1'b0);

assign icmp_ln332_fu_1861_p2 = (($signed(temp1_3_fu_1813_p3) > $signed(ap_phi_mux_temp1_phi_fu_523_p4)) ? 1'b1 : 1'b0);

assign icmp_ln373_fu_837_p2 = ((idx_reg_490 == 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln377_fu_843_p2 = ((it_node_V_reg_572 != pos_node) ? 1'b1 : 1'b0);

assign icmp_ln381_fu_860_p2 = ((it_node_V_reg_572 != checkpos) ? 1'b1 : 1'b0);

assign icmp_ln386_fu_895_p2 = ((it_node_V_11_fu_883_p3 != pos_node) ? 1'b1 : 1'b0);

assign icmp_ln404_fu_1057_p2 = ((it_graph_V_reg_561 != pos_graph) ? 1'b1 : 1'b0);

assign icmp_ln408_fu_1074_p2 = ((it_graph_V_reg_561 != checkpos_graph) ? 1'b1 : 1'b0);

assign icmp_ln413_fu_1109_p2 = ((it_graph_V_10_fu_1097_p3 != pos_graph) ? 1'b1 : 1'b0);

assign icmp_ln430_fu_1223_p2 = ((idx_reg_490 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln434_fu_1229_p2 = ((it_node_V_5_fu_1001_p3 != pos_node) ? 1'b1 : 1'b0);

assign icmp_ln438_fu_1246_p2 = ((it_node_V_5_fu_1001_p3 != checkpos) ? 1'b1 : 1'b0);

assign icmp_ln443_fu_1281_p2 = ((it_node_V_12_fu_1269_p3 != pos_node) ? 1'b1 : 1'b0);

assign icmp_ln464_fu_1377_p2 = ((it_graph_V_4_fu_1179_p3 != pos_graph) ? 1'b1 : 1'b0);

assign icmp_ln468_fu_1394_p2 = ((it_graph_V_4_fu_1179_p3 != checkpos_graph) ? 1'b1 : 1'b0);

assign icmp_ln473_fu_1429_p2 = ((it_graph_V_11_fu_1417_p3 != pos_graph) ? 1'b1 : 1'b0);

assign icmp_ln527_1_fu_1784_p2 = ((sel_1_reg_2456_pp0_iter1_reg == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln527_fu_1772_p2 = ((sel_1_reg_2456_pp0_iter1_reg == 2'd1) ? 1'b1 : 1'b0);

assign icmp_ln585_fu_2208_p2 = (($signed(temp1_2_fu_1911_p3) > $signed(temp3_fu_166)) ? 1'b1 : 1'b0);

assign icmp_ln588_1_fu_2024_p2 = ((select_ln430_reg_2485_pp0_iter1_reg == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln588_fu_2012_p2 = ((select_ln430_reg_2485_pp0_iter1_reg == 2'd1) ? 1'b1 : 1'b0);

assign icmp_ln617_fu_2234_p2 = (($signed(temp2_2_fu_1981_p3) > $signed(temp4_fu_158)) ? 1'b1 : 1'b0);

assign icmp_ln699_fu_819_p2 = ((idx_reg_490 == 6'd33) ? 1'b1 : 1'b0);

assign icmp_ln878_1_fu_1292_p2 = (($signed(zext_ln870_2_fu_1277_p1) < $signed(p_read)) ? 1'b1 : 1'b0);

assign icmp_ln878_2_fu_1856_p2 = ((sext_ln685_fu_1852_p1 < num_V_reg_2416) ? 1'b1 : 1'b0);

assign icmp_ln878_3_fu_1946_p2 = ((zext_ln301_fu_1844_p1 < num_V_1_reg_2422) ? 1'b1 : 1'b0);

assign icmp_ln878_4_fu_2084_p2 = ((zext_ln301_fu_1844_p1 < num_V_reg_2416) ? 1'b1 : 1'b0);

assign icmp_ln878_5_fu_2161_p2 = ((zext_ln691_fu_2157_p1 < num_V_1_reg_2422) ? 1'b1 : 1'b0);

assign icmp_ln878_fu_906_p2 = (($signed(zext_ln870_fu_891_p1) < $signed(p_read)) ? 1'b1 : 1'b0);

assign icmp_ln890_1_fu_1440_p2 = (($signed(zext_ln870_3_fu_1425_p1) > $signed(p_read)) ? 1'b1 : 1'b0);

assign icmp_ln890_fu_1120_p2 = (($signed(zext_ln870_1_fu_1105_p1) > $signed(p_read)) ? 1'b1 : 1'b0);

assign idx_1_fu_813_p2 = (idx_reg_490 + 6'd1);

assign it_node_V_10_fu_1513_p3 = ((icmp_ln430_fu_1223_p2[0:0] == 1'b1) ? it_node_V_5_fu_1001_p3 : it_node_V_9_fu_1351_p3);

assign it_node_V_11_fu_883_p3 = ((or_ln381_fu_871_p2[0:0] == 1'b1) ? it_node_V_reg_572 : it_node_V_1_fu_877_p2);

assign it_node_V_12_fu_1269_p3 = ((or_ln438_fu_1257_p2[0:0] == 1'b1) ? it_node_V_5_fu_1001_p3 : it_node_V_6_fu_1263_p2);

assign it_node_V_1_fu_877_p2 = (it_node_V_reg_572 + 8'd1);

assign it_node_V_3_fu_943_p2 = (it_node_V_11_fu_883_p3 + 8'd1);

assign it_node_V_4_fu_993_p3 = ((and_ln377_fu_955_p2[0:0] == 1'b1) ? it_node_V_3_fu_943_p2 : it_node_V_reg_572);

assign it_node_V_5_fu_1001_p3 = ((icmp_ln373_fu_837_p2[0:0] == 1'b1) ? it_node_V_reg_572 : it_node_V_4_fu_993_p3);

assign it_node_V_6_fu_1263_p2 = (it_node_V_5_fu_1001_p3 + 8'd1);

assign it_node_V_8_fu_1329_p2 = (it_node_V_12_fu_1269_p3 + 8'd1);

assign it_node_V_9_fu_1351_p3 = ((or_ln434_fu_1240_p2[0:0] == 1'b1) ? it_node_V_8_fu_1329_p2 : it_node_V_5_fu_1001_p3);

assign it_graph_V_10_fu_1097_p3 = ((or_ln408_fu_1085_p2[0:0] == 1'b1) ? it_graph_V_reg_561 : it_graph_V_1_fu_1091_p2);

assign it_graph_V_11_fu_1417_p3 = ((or_ln468_fu_1405_p2[0:0] == 1'b1) ? it_graph_V_4_fu_1179_p3 : it_graph_V_5_fu_1411_p2);

assign it_graph_V_1_fu_1091_p2 = (it_graph_V_reg_561 + 8'd1);

assign it_graph_V_3_fu_1157_p2 = (it_graph_V_10_fu_1097_p3 + 8'd1);

assign it_graph_V_4_fu_1179_p3 = ((or_ln404_fu_1068_p2[0:0] == 1'b1) ? it_graph_V_3_fu_1157_p2 : it_graph_V_reg_561);

assign it_graph_V_5_fu_1411_p2 = (it_graph_V_4_fu_1179_p3 + 8'd1);

assign it_graph_V_7_fu_1477_p2 = (it_graph_V_11_fu_1417_p3 + 8'd1);

assign it_graph_V_8_fu_1581_p3 = ((and_ln464_fu_1543_p2[0:0] == 1'b1) ? it_graph_V_7_fu_1477_p2 : it_graph_V_4_fu_1179_p3);

assign it_graph_V_9_fu_1589_p3 = ((icmp_ln430_fu_1223_p2[0:0] == 1'b1) ? it_graph_V_4_fu_1179_p3 : it_graph_V_8_fu_1581_p3);

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

assign m_axi_buf_dram_manage_AWADDR = sext_ln750_fu_803_p1;

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

assign m_axi_buf_dram_manage_WDATA = {{{{{{{{ap_phi_reg_pp0_iter3_readbuf7_reg_683}, {ap_phi_reg_pp0_iter3_readbuf6_3_reg_697}}, {ap_phi_reg_pp0_iter3_readbuf5_i_213_reg_672}}, {ap_phi_reg_pp0_iter3_readbuf4_i_215_reg_661}}, {readbuf3_reg_2672}}, {readbuf2_2_reg_2677}}, {readbuf1_reg_2652}}, {readbuf0_2_reg_2657}};

assign m_axi_buf_dram_manage_WID = 1'd0;

assign m_axi_buf_dram_manage_WLAST = 1'b0;

assign m_axi_buf_dram_manage_WSTRB = 32'd4294967295;

assign m_axi_buf_dram_manage_WUSER = 1'd0;

assign mul_fu_729_p2 = (empty_26_fu_723_p2 + nodeindex);

assign node_mix_array1_address0 = zext_ln622_fu_1758_p1;

assign node_mix_array1_address1 = node_mix_array1_addr_reg_2544;

assign node_mix_array2_address0 = zext_ln590_fu_1751_p1;

assign node_mix_array2_address1 = zext_ln529_fu_1737_p1;

assign node_mix_array3_address0 = zext_ln590_fu_1751_p1;

assign node_mix_array3_address1 = zext_ln529_fu_1737_p1;

assign node_mix_array4_address0 = zext_ln622_fu_1758_p1;

assign node_mix_array4_address1 = zext_ln558_fu_1697_p1;

assign node_mix_array5_address0 = zext_ln622_fu_1758_p1;

assign node_mix_array5_address1 = node_mix_array5_addr_reg_2549;

assign node_mix_array6_address0 = zext_ln590_fu_1751_p1;

assign node_mix_array6_address1 = zext_ln529_fu_1737_p1;

assign node_mix_array7_address0 = zext_ln590_fu_1751_p1;

assign node_mix_array7_address1 = zext_ln529_fu_1737_p1;

assign node_mix_array_address0 = zext_ln622_fu_1758_p1;

assign node_mix_array_address1 = zext_ln558_fu_1697_p1;

assign num_V_1_fu_797_p2 = (num_V_fu_791_p2 + 8'd1);

assign num_V_fu_791_p2 = ($signed(tmp215_cast_fu_787_p1) + $signed(trunc_ln695_fu_767_p1));

assign num_fu_781_p2 = ($signed(sext_ln695_fu_777_p1) + $signed(p_read));

assign or_ln373_1_fu_1027_p2 = (or_ln373_fu_1021_p2 | icmp_ln373_fu_837_p2);

assign or_ln373_2_fu_1045_p2 = (icmp_ln373_fu_837_p2 | and_ln377_2_fu_1039_p2);

assign or_ln373_fu_1021_p2 = (icmp_ln381_fu_860_p2 | and_ln377_1_fu_1015_p2);

assign or_ln377_fu_854_p2 = (xor_ln377_fu_848_p2 | icmp_ln377_fu_843_p2);

assign or_ln381_fu_871_p2 = (xor_ln381_fu_865_p2 | icmp_ln381_fu_860_p2);

assign or_ln386_fu_900_p2 = (xor_ln377_fu_848_p2 | icmp_ln386_fu_895_p2);

assign or_ln404_1_fu_1199_p2 = (icmp_ln408_fu_1074_p2 | and_ln404_fu_1193_p2);

assign or_ln404_fu_1068_p2 = (xor_ln404_fu_1062_p2 | icmp_ln404_fu_1057_p2);

assign or_ln408_fu_1085_p2 = (xor_ln408_fu_1079_p2 | icmp_ln408_fu_1074_p2);

assign or_ln413_fu_1114_p2 = (xor_ln404_fu_1062_p2 | icmp_ln413_fu_1109_p2);

assign or_ln430_1_fu_1495_p2 = (icmp_ln430_fu_1223_p2 | and_ln434_fu_1365_p2);

assign or_ln430_2_fu_1501_p2 = (or_ln430_1_fu_1495_p2 | icmp_ln438_fu_1246_p2);

assign or_ln430_3_fu_1609_p2 = (icmp_ln468_fu_1394_p2 | and_ln464_1_fu_1603_p2);

assign or_ln430_4_fu_1615_p2 = (or_ln430_3_fu_1609_p2 | icmp_ln430_fu_1223_p2);

assign or_ln430_5_fu_1633_p2 = (icmp_ln430_fu_1223_p2 | and_ln464_2_fu_1627_p2);

assign or_ln430_fu_1483_p2 = (icmp_ln430_fu_1223_p2 | and_ln434_1_fu_1371_p2);

assign or_ln434_fu_1240_p2 = (xor_ln434_fu_1234_p2 | icmp_ln434_fu_1229_p2);

assign or_ln438_fu_1257_p2 = (xor_ln438_fu_1251_p2 | icmp_ln438_fu_1246_p2);

assign or_ln443_fu_1286_p2 = (xor_ln434_fu_1234_p2 | icmp_ln443_fu_1281_p2);

assign or_ln464_fu_1388_p2 = (xor_ln464_fu_1382_p2 | icmp_ln464_fu_1377_p2);

assign or_ln468_fu_1405_p2 = (xor_ln468_fu_1399_p2 | icmp_ln468_fu_1394_p2);

assign or_ln473_fu_1434_p2 = (xor_ln464_fu_1382_p2 | icmp_ln473_fu_1429_p2);

assign readbuf0_1_fu_1836_p3 = ((and_ln530_1_fu_1808_p2[0:0] == 1'b1) ? readbuf0_fu_1765_p3 : select_ln530_2_fu_1828_p3);

assign readbuf0_2_fu_1940_p3 = ((icmp_ln373_reg_2443_pp0_iter1_reg[0:0] == 1'b1) ? num_reg_2411 : select_ln878_3_fu_1932_p3);

assign readbuf0_fu_1765_p3 = ((trunc_ln529_reg_2515_pp0_iter1_reg[0:0] == 1'b1) ? node_mix_array6_q1 : node_mix_array2_q1);

assign readbuf1_fu_1926_p3 = ((icmp_ln373_reg_2443_pp0_iter1_reg[0:0] == 1'b1) ? p_read1 : select_ln878_2_fu_1918_p3);

assign readbuf2_2_fu_1997_p3 = ((icmp_ln878_3_fu_1946_p2[0:0] == 1'b1) ? ap_phi_mux_readbuf2_1_phi_fu_607_p10 : 32'd0);

assign readbuf2_fu_1744_p3 = ((trunc_ln558_reg_2539[0:0] == 1'b1) ? node_mix_array4_q1 : node_mix_array_q1);

assign readbuf3_fu_1989_p3 = ((icmp_ln878_3_fu_1946_p2[0:0] == 1'b1) ? ap_phi_mux_temp2_3_phi_fu_587_p10 : 32'd0);

assign readbuf4_1_fu_2005_p3 = ((trunc_ln590_reg_2559_pp0_iter1_reg[0:0] == 1'b1) ? node_mix_array6_q0 : node_mix_array2_q0);

assign readbuf4_2_fu_2076_p3 = ((and_ln591_1_fu_2048_p2[0:0] == 1'b1) ? readbuf4_1_fu_2005_p3 : select_ln591_2_fu_2068_p3);

assign readbuf4_fu_2214_p3 = ((icmp_ln585_fu_2208_p2[0:0] == 1'b1) ? select_ln373_fu_1896_p3 : empty_25_fu_170);

assign readbuf5_fu_2226_p3 = ((icmp_ln585_fu_2208_p2[0:0] == 1'b1) ? temp1_2_fu_1911_p3 : temp3_fu_166);

assign readbuf6_1_fu_2143_p3 = ((trunc_ln622_reg_2571_pp0_iter1_reg[0:0] == 1'b1) ? node_mix_array4_q0 : node_mix_array_q0);

assign readbuf6_fu_2240_p3 = ((icmp_ln617_fu_2234_p2[0:0] == 1'b1) ? select_ln878_4_fu_1973_p3 : empty_fu_162);

assign sel_1_fu_969_p3 = ((icmp_ln373_fu_837_p2[0:0] == 1'b1) ? 2'd0 : select_ln377_fu_961_p3);

assign sel_2_fu_1141_p3 = ((or_ln413_fu_1114_p2[0:0] == 1'b1) ? select_ln416_fu_1125_p3 : 3'd4);

assign sel_3_fu_1163_p3 = ((or_ln404_fu_1068_p2[0:0] == 1'b1) ? sel_2_fu_1141_p3 : 3'd4);

assign sel_4_fu_1313_p3 = ((or_ln443_fu_1286_p2[0:0] == 1'b1) ? select_ln446_fu_1297_p3 : 2'd1);

assign sel_5_fu_1461_p3 = ((or_ln473_fu_1434_p2[0:0] == 1'b1) ? select_ln476_fu_1445_p3 : 3'd4);

assign sel_6_fu_1557_p3 = ((icmp_ln430_fu_1223_p2[0:0] == 1'b1) ? 3'd0 : select_ln464_fu_1549_p3);

assign sel_fu_927_p3 = ((or_ln386_fu_900_p2[0:0] == 1'b1) ? select_ln389_fu_911_p3 : 2'd1);

assign select_ln332_1_fu_1875_p3 = ((icmp_ln332_fu_1861_p2[0:0] == 1'b1) ? temp1_3_fu_1813_p3 : ap_phi_mux_temp1_phi_fu_523_p4);

assign select_ln332_2_fu_1957_p3 = ((icmp_ln332_1_fu_1951_p2[0:0] == 1'b1) ? zext_ln301_fu_1844_p1 : ap_phi_mux_empty_27_phi_fu_470_p4);

assign select_ln332_3_fu_1965_p3 = ((icmp_ln332_1_fu_1951_p2[0:0] == 1'b1) ? ap_phi_mux_temp2_3_phi_fu_587_p10 : ap_phi_mux_temp2_phi_fu_535_p4);

assign select_ln332_4_fu_2095_p3 = ((icmp_ln332_2_fu_2089_p2[0:0] == 1'b1) ? zext_ln301_fu_1844_p1 : empty_25_fu_170);

assign select_ln332_5_fu_2103_p3 = ((icmp_ln332_2_fu_2089_p2[0:0] == 1'b1) ? temp3_2_fu_2053_p3 : temp3_fu_166);

assign select_ln332_6_fu_2182_p3 = ((icmp_ln332_3_fu_2176_p2[0:0] == 1'b1) ? zext_ln691_fu_2157_p1 : empty_fu_162);

assign select_ln332_7_fu_2190_p3 = ((icmp_ln332_3_fu_2176_p2[0:0] == 1'b1) ? ap_phi_mux_temp4_2_phi_fu_625_p10 : temp4_fu_158);

assign select_ln332_fu_1867_p3 = ((icmp_ln332_fu_1861_p2[0:0] == 1'b1) ? sext_ln685_fu_1852_p1 : ap_phi_mux_empty_28_phi_fu_482_p4);

assign select_ln373_fu_1896_p3 = ((icmp_ln373_reg_2443_pp0_iter1_reg[0:0] == 1'b1) ? ap_phi_mux_empty_28_phi_fu_482_p4 : select_ln878_fu_1888_p3);

assign select_ln377_fu_961_p3 = ((and_ln377_fu_955_p2[0:0] == 1'b1) ? sel_fu_927_p3 : 2'd1);

assign select_ln389_1_fu_919_p3 = ((icmp_ln878_fu_906_p2[0:0] == 1'b1) ? zext_ln870_fu_891_p1 : addr_3_fu_154);

assign select_ln389_fu_911_p3 = ((icmp_ln878_fu_906_p2[0:0] == 1'b1) ? 2'd2 : 2'd0);

assign select_ln416_1_fu_1133_p3 = ((icmp_ln890_fu_1120_p2[0:0] == 1'b1) ? addr_2_fu_150 : zext_ln870_1_fu_1105_p1);

assign select_ln416_fu_1125_p3 = ((icmp_ln890_fu_1120_p2[0:0] == 1'b1) ? 3'd0 : 3'd2);

assign select_ln430_fu_1529_p3 = ((icmp_ln430_fu_1223_p2[0:0] == 1'b1) ? 2'd0 : select_ln434_fu_1335_p3);

assign select_ln434_fu_1335_p3 = ((or_ln434_fu_1240_p2[0:0] == 1'b1) ? sel_4_fu_1313_p3 : 2'd1);

assign select_ln446_1_fu_1305_p3 = ((icmp_ln878_1_fu_1292_p2[0:0] == 1'b1) ? zext_ln870_2_fu_1277_p1 : addr_1_fu_146);

assign select_ln446_fu_1297_p3 = ((icmp_ln878_1_fu_1292_p2[0:0] == 1'b1) ? 2'd2 : 2'd0);

assign select_ln464_fu_1549_p3 = ((and_ln464_fu_1543_p2[0:0] == 1'b1) ? sel_5_fu_1461_p3 : 3'd4);

assign select_ln476_1_fu_1453_p3 = ((icmp_ln890_1_fu_1440_p2[0:0] == 1'b1) ? addr_fu_142 : zext_ln870_3_fu_1425_p1);

assign select_ln476_fu_1445_p3 = ((icmp_ln890_1_fu_1440_p2[0:0] == 1'b1) ? 3'd0 : 3'd2);

assign select_ln527_1_fu_1821_p3 = ((icmp_ln527_fu_1772_p2[0:0] == 1'b1) ? head_index : 32'd0);

assign select_ln527_fu_1777_p3 = ((icmp_ln527_fu_1772_p2[0:0] == 1'b1) ? fb_length : 32'd0);

assign select_ln530_2_fu_1828_p3 = ((and_ln530_fu_1794_p2[0:0] == 1'b1) ? readbuf0_fu_1765_p3 : select_ln527_1_fu_1821_p3);

assign select_ln530_fu_1800_p3 = ((and_ln530_fu_1794_p2[0:0] == 1'b1) ? node_mix_array3_q1 : select_ln527_fu_1777_p3);

assign select_ln588_1_fu_2061_p3 = ((icmp_ln588_fu_2012_p2[0:0] == 1'b1) ? head_index : 32'd0);

assign select_ln588_fu_2017_p3 = ((icmp_ln588_fu_2012_p2[0:0] == 1'b1) ? fb_length : 32'd0);

assign select_ln591_2_fu_2068_p3 = ((and_ln591_fu_2034_p2[0:0] == 1'b1) ? readbuf4_1_fu_2005_p3 : select_ln588_1_fu_2061_p3);

assign select_ln591_fu_2040_p3 = ((and_ln591_fu_2034_p2[0:0] == 1'b1) ? node_mix_array3_q0 : select_ln588_fu_2017_p3);

assign select_ln618_fu_2252_p3 = ((icmp_ln617_fu_2234_p2[0:0] == 1'b1) ? temp2_2_fu_1981_p3 : temp4_fu_158);

assign select_ln695_fu_759_p3 = ((Isdelete[0:0] == 1'b1) ? 2'd3 : 2'd0);

assign select_ln878_10_fu_2127_p3 = ((icmp_ln878_4_fu_2084_p2[0:0] == 1'b1) ? temp3_2_fu_2053_p3 : 32'd0);

assign select_ln878_11_fu_2135_p3 = ((icmp_ln878_4_fu_2084_p2[0:0] == 1'b1) ? readbuf4_2_fu_2076_p3 : 32'd0);

assign select_ln878_1_fu_1903_p3 = ((and_ln878_fu_1883_p2[0:0] == 1'b1) ? select_ln332_1_fu_1875_p3 : ap_phi_mux_temp1_phi_fu_523_p4);

assign select_ln878_2_fu_1918_p3 = ((and_ln878_fu_1883_p2[0:0] == 1'b1) ? temp1_3_fu_1813_p3 : 32'd0);

assign select_ln878_3_fu_1932_p3 = ((and_ln878_fu_1883_p2[0:0] == 1'b1) ? readbuf0_1_fu_1836_p3 : 32'd0);

assign select_ln878_4_fu_1973_p3 = ((icmp_ln878_3_fu_1946_p2[0:0] == 1'b1) ? select_ln332_2_fu_1957_p3 : ap_phi_mux_empty_27_phi_fu_470_p4);

assign select_ln878_8_fu_2111_p3 = ((icmp_ln878_4_fu_2084_p2[0:0] == 1'b1) ? select_ln332_4_fu_2095_p3 : empty_25_fu_170);

assign select_ln878_9_fu_2119_p3 = ((icmp_ln878_4_fu_2084_p2[0:0] == 1'b1) ? select_ln332_5_fu_2103_p3 : temp3_fu_166);

assign select_ln878_fu_1888_p3 = ((and_ln878_fu_1883_p2[0:0] == 1'b1) ? select_ln332_fu_1867_p3 : ap_phi_mux_empty_28_phi_fu_482_p4);

assign sext_ln685_fu_1852_p1 = $signed(tempindex1_fu_1847_p2);

assign sext_ln695_fu_777_p1 = add_ln695_fu_771_p2;

assign sext_ln750_fu_803_p1 = $signed(mul_reg_2329);

assign temp1_2_fu_1911_p3 = ((icmp_ln373_reg_2443_pp0_iter1_reg[0:0] == 1'b1) ? ap_phi_mux_temp1_phi_fu_523_p4 : select_ln878_1_fu_1903_p3);

assign temp1_3_fu_1813_p3 = ((and_ln530_1_fu_1808_p2[0:0] == 1'b1) ? node_mix_array7_q1 : select_ln530_fu_1800_p3);

assign temp2_2_fu_1981_p3 = ((icmp_ln878_3_fu_1946_p2[0:0] == 1'b1) ? select_ln332_3_fu_1965_p3 : ap_phi_mux_temp2_phi_fu_535_p4);

assign temp3_2_fu_2053_p3 = ((and_ln591_1_fu_2048_p2[0:0] == 1'b1) ? node_mix_array7_q0 : select_ln591_fu_2040_p3);

assign tempindex1_fu_1847_p2 = ($signed(tempindex3_reg_2522_pp0_iter1_reg) + $signed(7'd127));

assign tempindex3_fu_1659_p3 = {{idx_reg_490}, {1'd0}};

assign tempindex4_fu_2152_p2 = (tempindex3_reg_2522_pp0_iter1_reg | 7'd1);

assign tmp215_cast_fu_787_p1 = add_ln695_fu_771_p2;

assign trunc_ln2_fu_1687_p4 = {{addr_10_fu_1171_p3[6:1]}};

assign trunc_ln529_fu_1655_p1 = addr_7_fu_985_p3[0:0];

assign trunc_ln558_fu_1705_p1 = addr_10_fu_1171_p3[0:0];

assign trunc_ln590_fu_1719_p1 = addr_16_fu_1521_p3[0:0];

assign trunc_ln622_fu_1733_p1 = addr_18_fu_1573_p3[0:0];

assign trunc_ln695_fu_767_p1 = p_read[7:0];

assign xor_ln373_fu_949_p2 = (icmp_ln373_fu_837_p2 ^ 1'd1);

assign xor_ln377_1_fu_1009_p2 = (icmp_ln377_fu_843_p2 ^ 1'd1);

assign xor_ln377_fu_848_p2 = (1'd1 ^ Isinsert_assign_reg_501);

assign xor_ln381_fu_865_p2 = (1'd1 ^ Isdelete_assign_reg_510);

assign xor_ln404_1_fu_1187_p2 = (icmp_ln404_fu_1057_p2 ^ 1'd1);

assign xor_ln404_fu_1062_p2 = (1'd1 ^ Isinsert_graph_reg_543);

assign xor_ln408_fu_1079_p2 = (1'd1 ^ Isdelete_graph_reg_552);

assign xor_ln430_fu_1537_p2 = (icmp_ln430_fu_1223_p2 ^ 1'd1);

assign xor_ln434_1_fu_1359_p2 = (icmp_ln434_fu_1229_p2 ^ 1'd1);

assign xor_ln434_fu_1234_p2 = (1'd1 ^ and_ln373_1_fu_1051_p2);

assign xor_ln438_fu_1251_p2 = (1'd1 ^ and_ln373_fu_1033_p2);

assign xor_ln464_1_fu_1597_p2 = (icmp_ln464_fu_1377_p2 ^ 1'd1);

assign xor_ln464_fu_1382_p2 = (1'd1 ^ Isinsert_graph_1_fu_1217_p2);

assign xor_ln468_fu_1399_p2 = (1'd1 ^ Isdelete_graph_1_fu_1205_p2);

assign xor_ln530_fu_1789_p2 = (trunc_ln529_reg_2515_pp0_iter1_reg ^ 1'd1);

assign xor_ln591_fu_2029_p2 = (trunc_ln590_reg_2559_pp0_iter1_reg ^ 1'd1);

assign zext_ln301_fu_1844_p1 = tempindex3_reg_2522_pp0_iter1_reg;

assign zext_ln529_fu_1737_p1 = trunc_ln1_reg_2510;

assign zext_ln558_fu_1697_p1 = trunc_ln2_fu_1687_p4;

assign zext_ln585_fu_2222_p1 = readbuf4_fu_2214_p3;

assign zext_ln590_fu_1751_p1 = trunc_ln3_reg_2554;

assign zext_ln617_fu_2248_p1 = readbuf6_fu_2240_p3;

assign zext_ln622_fu_1758_p1 = trunc_ln4_reg_2566;

assign zext_ln691_fu_2157_p1 = tempindex4_fu_2152_p2;

assign zext_ln870_1_fu_1105_p1 = it_graph_V_10_fu_1097_p3;

assign zext_ln870_2_fu_1277_p1 = it_node_V_12_fu_1269_p3;

assign zext_ln870_3_fu_1425_p1 = it_graph_V_11_fu_1417_p3;

assign zext_ln870_fu_891_p1 = it_node_V_11_fu_883_p3;

always @ (posedge ap_clk) begin
    sel_3_reg_2462[0] <= 1'b0;
    sel_3_reg_2462_pp0_iter1_reg[0] <= 1'b0;
    sel_6_reg_2491[0] <= 1'b0;
    sel_6_reg_2491_pp0_iter1_reg[0] <= 1'b0;
    tempindex3_reg_2522[0] <= 1'b0;
    tempindex3_reg_2522_pp0_iter1_reg[0] <= 1'b0;
end

endmodule //execute_writemem
