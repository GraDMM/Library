

`timescale 1 ns / 1 ps 

module execute_upwards (
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
        port_in_nodeindex_read,
        port_in_broindex_read,
        port_in_merge_index_read,
        port_in_merge_length_read,
        port_in_fb_index_read,
        port_in_fb_length_read,
        port_in_node_max_fb_length_read,
        port_in_level_read,
        port_cross_in_nodeindex_read,
        port_cross_in_broindex_read,
        port_cross_in_node_num_read,
        port_cross_in_node_next_free_offset_read,
        port_cross_in_node_mix_array_address0,
        port_cross_in_node_mix_array_ce0,
        port_cross_in_node_mix_array_we0,
        port_cross_in_node_mix_array_d0,
        port_cross_in_node_mix_array_q0,
        port_cross_in_node_mix_array_address1,
        port_cross_in_node_mix_array_ce1,
        port_cross_in_node_mix_array_q1,
        port_cross_in_node_mix_array1_address0,
        port_cross_in_node_mix_array1_ce0,
        port_cross_in_node_mix_array1_we0,
        port_cross_in_node_mix_array1_d0,
        port_cross_in_node_mix_array1_q0,
        port_cross_in_node_mix_array1_address1,
        port_cross_in_node_mix_array1_ce1,
        port_cross_in_node_mix_array1_q1,
        port_cross_in_node_mix_array2_address0,
        port_cross_in_node_mix_array2_ce0,
        port_cross_in_node_mix_array2_we0,
        port_cross_in_node_mix_array2_d0,
        port_cross_in_node_mix_array2_q0,
        port_cross_in_node_mix_array2_address1,
        port_cross_in_node_mix_array2_ce1,
        port_cross_in_node_mix_array2_q1,
        port_cross_in_node_mix_array3_address0,
        port_cross_in_node_mix_array3_ce0,
        port_cross_in_node_mix_array3_we0,
        port_cross_in_node_mix_array3_d0,
        port_cross_in_node_mix_array3_q0,
        port_cross_in_node_mix_array3_address1,
        port_cross_in_node_mix_array3_ce1,
        port_cross_in_node_mix_array3_q1,
        port_cross_in_node_mix_array4_address0,
        port_cross_in_node_mix_array4_ce0,
        port_cross_in_node_mix_array4_we0,
        port_cross_in_node_mix_array4_d0,
        port_cross_in_node_mix_array4_q0,
        port_cross_in_node_mix_array4_address1,
        port_cross_in_node_mix_array4_ce1,
        port_cross_in_node_mix_array4_q1,
        port_cross_in_node_mix_array5_address0,
        port_cross_in_node_mix_array5_ce0,
        port_cross_in_node_mix_array5_we0,
        port_cross_in_node_mix_array5_d0,
        port_cross_in_node_mix_array5_q0,
        port_cross_in_node_mix_array5_address1,
        port_cross_in_node_mix_array5_ce1,
        port_cross_in_node_mix_array5_q1,
        port_cross_in_node_mix_array6_address0,
        port_cross_in_node_mix_array6_ce0,
        port_cross_in_node_mix_array6_we0,
        port_cross_in_node_mix_array6_d0,
        port_cross_in_node_mix_array6_q0,
        port_cross_in_node_mix_array6_address1,
        port_cross_in_node_mix_array6_ce1,
        port_cross_in_node_mix_array6_q1,
        port_cross_in_node_mix_array7_address0,
        port_cross_in_node_mix_array7_ce0,
        port_cross_in_node_mix_array7_we0,
        port_cross_in_node_mix_array7_d0,
        port_cross_in_node_mix_array7_q0,
        port_cross_in_node_mix_array7_address1,
        port_cross_in_node_mix_array7_ce1,
        port_cross_in_node_mix_array7_q1,
        port_cross_in_node_max_fb_index_read,
        port_cross_in_node_max_fb_length_read,
        port_cross_in_node_max_subgraph_index_read,
        port_cross_in_node_max_subgraph_length_read,
        port_cross_in_pos_read,
        port_cross_in_fb_index_read,
        port_cross_in_fb_length_read,
        p_read55,
        graphlevel_i,
        graphlevel_o,
        graphlevel_o_ap_vld,
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
        ap_return_15
);

parameter    ap_ST_fsm_state1 = 155'd1;
parameter    ap_ST_fsm_state2 = 155'd2;
parameter    ap_ST_fsm_state3 = 155'd4;
parameter    ap_ST_fsm_state4 = 155'd8;
parameter    ap_ST_fsm_state5 = 155'd16;
parameter    ap_ST_fsm_state6 = 155'd32;
parameter    ap_ST_fsm_state7 = 155'd64;
parameter    ap_ST_fsm_state8 = 155'd128;
parameter    ap_ST_fsm_state9 = 155'd256;
parameter    ap_ST_fsm_state10 = 155'd512;
parameter    ap_ST_fsm_state11 = 155'd1024;
parameter    ap_ST_fsm_state12 = 155'd2048;
parameter    ap_ST_fsm_state13 = 155'd4096;
parameter    ap_ST_fsm_state14 = 155'd8192;
parameter    ap_ST_fsm_state15 = 155'd16384;
parameter    ap_ST_fsm_state16 = 155'd32768;
parameter    ap_ST_fsm_state17 = 155'd65536;
parameter    ap_ST_fsm_state18 = 155'd131072;
parameter    ap_ST_fsm_state19 = 155'd262144;
parameter    ap_ST_fsm_state20 = 155'd524288;
parameter    ap_ST_fsm_state21 = 155'd1048576;
parameter    ap_ST_fsm_state22 = 155'd2097152;
parameter    ap_ST_fsm_state23 = 155'd4194304;
parameter    ap_ST_fsm_state24 = 155'd8388608;
parameter    ap_ST_fsm_state25 = 155'd16777216;
parameter    ap_ST_fsm_state26 = 155'd33554432;
parameter    ap_ST_fsm_state27 = 155'd67108864;
parameter    ap_ST_fsm_state28 = 155'd134217728;
parameter    ap_ST_fsm_state29 = 155'd268435456;
parameter    ap_ST_fsm_state30 = 155'd536870912;
parameter    ap_ST_fsm_state31 = 155'd1073741824;
parameter    ap_ST_fsm_state32 = 155'd2147483648;
parameter    ap_ST_fsm_state33 = 155'd4294967296;
parameter    ap_ST_fsm_state34 = 155'd8589934592;
parameter    ap_ST_fsm_state35 = 155'd17179869184;
parameter    ap_ST_fsm_state36 = 155'd34359738368;
parameter    ap_ST_fsm_state37 = 155'd68719476736;
parameter    ap_ST_fsm_state38 = 155'd137438953472;
parameter    ap_ST_fsm_state39 = 155'd274877906944;
parameter    ap_ST_fsm_state40 = 155'd549755813888;
parameter    ap_ST_fsm_state41 = 155'd1099511627776;
parameter    ap_ST_fsm_state42 = 155'd2199023255552;
parameter    ap_ST_fsm_state43 = 155'd4398046511104;
parameter    ap_ST_fsm_state44 = 155'd8796093022208;
parameter    ap_ST_fsm_state45 = 155'd17592186044416;
parameter    ap_ST_fsm_state46 = 155'd35184372088832;
parameter    ap_ST_fsm_state47 = 155'd70368744177664;
parameter    ap_ST_fsm_state48 = 155'd140737488355328;
parameter    ap_ST_fsm_state49 = 155'd281474976710656;
parameter    ap_ST_fsm_state50 = 155'd562949953421312;
parameter    ap_ST_fsm_state51 = 155'd1125899906842624;
parameter    ap_ST_fsm_state52 = 155'd2251799813685248;
parameter    ap_ST_fsm_state53 = 155'd4503599627370496;
parameter    ap_ST_fsm_state54 = 155'd9007199254740992;
parameter    ap_ST_fsm_state55 = 155'd18014398509481984;
parameter    ap_ST_fsm_state56 = 155'd36028797018963968;
parameter    ap_ST_fsm_state57 = 155'd72057594037927936;
parameter    ap_ST_fsm_state58 = 155'd144115188075855872;
parameter    ap_ST_fsm_state59 = 155'd288230376151711744;
parameter    ap_ST_fsm_state60 = 155'd576460752303423488;
parameter    ap_ST_fsm_state61 = 155'd1152921504606846976;
parameter    ap_ST_fsm_state62 = 155'd2305843009213693952;
parameter    ap_ST_fsm_state63 = 155'd4611686018427387904;
parameter    ap_ST_fsm_state64 = 155'd9223372036854775808;
parameter    ap_ST_fsm_state65 = 155'd18446744073709551616;
parameter    ap_ST_fsm_state66 = 155'd36893488147419103232;
parameter    ap_ST_fsm_state67 = 155'd73786976294838206464;
parameter    ap_ST_fsm_state68 = 155'd147573952589676412928;
parameter    ap_ST_fsm_state69 = 155'd295147905179352825856;
parameter    ap_ST_fsm_state70 = 155'd590295810358705651712;
parameter    ap_ST_fsm_state71 = 155'd1180591620717411303424;
parameter    ap_ST_fsm_state72 = 155'd2361183241434822606848;
parameter    ap_ST_fsm_state73 = 155'd4722366482869645213696;
parameter    ap_ST_fsm_state74 = 155'd9444732965739290427392;
parameter    ap_ST_fsm_state75 = 155'd18889465931478580854784;
parameter    ap_ST_fsm_state76 = 155'd37778931862957161709568;
parameter    ap_ST_fsm_state77 = 155'd75557863725914323419136;
parameter    ap_ST_fsm_state78 = 155'd151115727451828646838272;
parameter    ap_ST_fsm_state79 = 155'd302231454903657293676544;
parameter    ap_ST_fsm_state80 = 155'd604462909807314587353088;
parameter    ap_ST_fsm_state81 = 155'd1208925819614629174706176;
parameter    ap_ST_fsm_state82 = 155'd2417851639229258349412352;
parameter    ap_ST_fsm_state83 = 155'd4835703278458516698824704;
parameter    ap_ST_fsm_state84 = 155'd9671406556917033397649408;
parameter    ap_ST_fsm_state85 = 155'd19342813113834066795298816;
parameter    ap_ST_fsm_state86 = 155'd38685626227668133590597632;
parameter    ap_ST_fsm_state87 = 155'd77371252455336267181195264;
parameter    ap_ST_fsm_state88 = 155'd154742504910672534362390528;
parameter    ap_ST_fsm_pp0_stage0 = 155'd309485009821345068724781056;
parameter    ap_ST_fsm_state92 = 155'd618970019642690137449562112;
parameter    ap_ST_fsm_state93 = 155'd1237940039285380274899124224;
parameter    ap_ST_fsm_state94 = 155'd2475880078570760549798248448;
parameter    ap_ST_fsm_state95 = 155'd4951760157141521099596496896;
parameter    ap_ST_fsm_state96 = 155'd9903520314283042199192993792;
parameter    ap_ST_fsm_state97 = 155'd19807040628566084398385987584;
parameter    ap_ST_fsm_state98 = 155'd39614081257132168796771975168;
parameter    ap_ST_fsm_state99 = 155'd79228162514264337593543950336;
parameter    ap_ST_fsm_state100 = 155'd158456325028528675187087900672;
parameter    ap_ST_fsm_state101 = 155'd316912650057057350374175801344;
parameter    ap_ST_fsm_state102 = 155'd633825300114114700748351602688;
parameter    ap_ST_fsm_state103 = 155'd1267650600228229401496703205376;
parameter    ap_ST_fsm_state104 = 155'd2535301200456458802993406410752;
parameter    ap_ST_fsm_state105 = 155'd5070602400912917605986812821504;
parameter    ap_ST_fsm_state106 = 155'd10141204801825835211973625643008;
parameter    ap_ST_fsm_state107 = 155'd20282409603651670423947251286016;
parameter    ap_ST_fsm_state108 = 155'd40564819207303340847894502572032;
parameter    ap_ST_fsm_state109 = 155'd81129638414606681695789005144064;
parameter    ap_ST_fsm_state110 = 155'd162259276829213363391578010288128;
parameter    ap_ST_fsm_state111 = 155'd324518553658426726783156020576256;
parameter    ap_ST_fsm_state112 = 155'd649037107316853453566312041152512;
parameter    ap_ST_fsm_state113 = 155'd1298074214633706907132624082305024;
parameter    ap_ST_fsm_state114 = 155'd2596148429267413814265248164610048;
parameter    ap_ST_fsm_state115 = 155'd5192296858534827628530496329220096;
parameter    ap_ST_fsm_state116 = 155'd10384593717069655257060992658440192;
parameter    ap_ST_fsm_state117 = 155'd20769187434139310514121985316880384;
parameter    ap_ST_fsm_state118 = 155'd41538374868278621028243970633760768;
parameter    ap_ST_fsm_state119 = 155'd83076749736557242056487941267521536;
parameter    ap_ST_fsm_state120 = 155'd166153499473114484112975882535043072;
parameter    ap_ST_fsm_state121 = 155'd332306998946228968225951765070086144;
parameter    ap_ST_fsm_state122 = 155'd664613997892457936451903530140172288;
parameter    ap_ST_fsm_state123 = 155'd1329227995784915872903807060280344576;
parameter    ap_ST_fsm_state124 = 155'd2658455991569831745807614120560689152;
parameter    ap_ST_fsm_state125 = 155'd5316911983139663491615228241121378304;
parameter    ap_ST_fsm_state126 = 155'd10633823966279326983230456482242756608;
parameter    ap_ST_fsm_state127 = 155'd21267647932558653966460912964485513216;
parameter    ap_ST_fsm_state128 = 155'd42535295865117307932921825928971026432;
parameter    ap_ST_fsm_state129 = 155'd85070591730234615865843651857942052864;
parameter    ap_ST_fsm_state130 = 155'd170141183460469231731687303715884105728;
parameter    ap_ST_fsm_state131 = 155'd340282366920938463463374607431768211456;
parameter    ap_ST_fsm_state132 = 155'd680564733841876926926749214863536422912;
parameter    ap_ST_fsm_state133 = 155'd1361129467683753853853498429727072845824;
parameter    ap_ST_fsm_state134 = 155'd2722258935367507707706996859454145691648;
parameter    ap_ST_fsm_state135 = 155'd5444517870735015415413993718908291383296;
parameter    ap_ST_fsm_state136 = 155'd10889035741470030830827987437816582766592;
parameter    ap_ST_fsm_state137 = 155'd21778071482940061661655974875633165533184;
parameter    ap_ST_fsm_state138 = 155'd43556142965880123323311949751266331066368;
parameter    ap_ST_fsm_state139 = 155'd87112285931760246646623899502532662132736;
parameter    ap_ST_fsm_state140 = 155'd174224571863520493293247799005065324265472;
parameter    ap_ST_fsm_state141 = 155'd348449143727040986586495598010130648530944;
parameter    ap_ST_fsm_state142 = 155'd696898287454081973172991196020261297061888;
parameter    ap_ST_fsm_state143 = 155'd1393796574908163946345982392040522594123776;
parameter    ap_ST_fsm_state144 = 155'd2787593149816327892691964784081045188247552;
parameter    ap_ST_fsm_state145 = 155'd5575186299632655785383929568162090376495104;
parameter    ap_ST_fsm_state146 = 155'd11150372599265311570767859136324180752990208;
parameter    ap_ST_fsm_state147 = 155'd22300745198530623141535718272648361505980416;
parameter    ap_ST_fsm_state148 = 155'd44601490397061246283071436545296723011960832;
parameter    ap_ST_fsm_state149 = 155'd89202980794122492566142873090593446023921664;
parameter    ap_ST_fsm_state150 = 155'd178405961588244985132285746181186892047843328;
parameter    ap_ST_fsm_state151 = 155'd356811923176489970264571492362373784095686656;
parameter    ap_ST_fsm_state152 = 155'd713623846352979940529142984724747568191373312;
parameter    ap_ST_fsm_state153 = 155'd1427247692705959881058285969449495136382746624;
parameter    ap_ST_fsm_state154 = 155'd2854495385411919762116571938898990272765493248;
parameter    ap_ST_fsm_state155 = 155'd5708990770823839524233143877797980545530986496;
parameter    ap_ST_fsm_state156 = 155'd11417981541647679048466287755595961091061972992;
parameter    ap_ST_fsm_state157 = 155'd22835963083295358096932575511191922182123945984;

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
input  [31:0] port_in_nodeindex_read;
input  [31:0] port_in_broindex_read;
input  [31:0] port_in_merge_index_read;
input  [31:0] port_in_merge_length_read;
input  [31:0] port_in_fb_index_read;
input  [31:0] port_in_fb_length_read;
input  [31:0] port_in_node_max_fb_length_read;
input  [7:0] port_in_level_read;
input  [31:0] port_cross_in_nodeindex_read;
input  [31:0] port_cross_in_broindex_read;
input  [31:0] port_cross_in_node_num_read;
input  [31:0] port_cross_in_node_next_free_offset_read;
output  [5:0] port_cross_in_node_mix_array_address0;
output   port_cross_in_node_mix_array_ce0;
output   port_cross_in_node_mix_array_we0;
output  [31:0] port_cross_in_node_mix_array_d0;
input  [31:0] port_cross_in_node_mix_array_q0;
output  [5:0] port_cross_in_node_mix_array_address1;
output   port_cross_in_node_mix_array_ce1;
input  [31:0] port_cross_in_node_mix_array_q1;
output  [5:0] port_cross_in_node_mix_array1_address0;
output   port_cross_in_node_mix_array1_ce0;
output   port_cross_in_node_mix_array1_we0;
output  [31:0] port_cross_in_node_mix_array1_d0;
input  [31:0] port_cross_in_node_mix_array1_q0;
output  [5:0] port_cross_in_node_mix_array1_address1;
output   port_cross_in_node_mix_array1_ce1;
input  [31:0] port_cross_in_node_mix_array1_q1;
output  [4:0] port_cross_in_node_mix_array2_address0;
output   port_cross_in_node_mix_array2_ce0;
output   port_cross_in_node_mix_array2_we0;
output  [31:0] port_cross_in_node_mix_array2_d0;
input  [31:0] port_cross_in_node_mix_array2_q0;
output  [4:0] port_cross_in_node_mix_array2_address1;
output   port_cross_in_node_mix_array2_ce1;
input  [31:0] port_cross_in_node_mix_array2_q1;
output  [4:0] port_cross_in_node_mix_array3_address0;
output   port_cross_in_node_mix_array3_ce0;
output   port_cross_in_node_mix_array3_we0;
output  [31:0] port_cross_in_node_mix_array3_d0;
input  [31:0] port_cross_in_node_mix_array3_q0;
output  [4:0] port_cross_in_node_mix_array3_address1;
output   port_cross_in_node_mix_array3_ce1;
input  [31:0] port_cross_in_node_mix_array3_q1;
output  [4:0] port_cross_in_node_mix_array4_address0;
output   port_cross_in_node_mix_array4_ce0;
output   port_cross_in_node_mix_array4_we0;
output  [31:0] port_cross_in_node_mix_array4_d0;
input  [31:0] port_cross_in_node_mix_array4_q0;
output  [4:0] port_cross_in_node_mix_array4_address1;
output   port_cross_in_node_mix_array4_ce1;
input  [31:0] port_cross_in_node_mix_array4_q1;
output  [4:0] port_cross_in_node_mix_array5_address0;
output   port_cross_in_node_mix_array5_ce0;
output   port_cross_in_node_mix_array5_we0;
output  [31:0] port_cross_in_node_mix_array5_d0;
input  [31:0] port_cross_in_node_mix_array5_q0;
output  [4:0] port_cross_in_node_mix_array5_address1;
output   port_cross_in_node_mix_array5_ce1;
input  [31:0] port_cross_in_node_mix_array5_q1;
output  [4:0] port_cross_in_node_mix_array6_address0;
output   port_cross_in_node_mix_array6_ce0;
output   port_cross_in_node_mix_array6_we0;
output  [31:0] port_cross_in_node_mix_array6_d0;
input  [31:0] port_cross_in_node_mix_array6_q0;
output  [4:0] port_cross_in_node_mix_array6_address1;
output   port_cross_in_node_mix_array6_ce1;
input  [31:0] port_cross_in_node_mix_array6_q1;
output  [4:0] port_cross_in_node_mix_array7_address0;
output   port_cross_in_node_mix_array7_ce0;
output   port_cross_in_node_mix_array7_we0;
output  [31:0] port_cross_in_node_mix_array7_d0;
input  [31:0] port_cross_in_node_mix_array7_q0;
output  [4:0] port_cross_in_node_mix_array7_address1;
output   port_cross_in_node_mix_array7_ce1;
input  [31:0] port_cross_in_node_mix_array7_q1;
input  [31:0] port_cross_in_node_max_fb_index_read;
input  [31:0] port_cross_in_node_max_fb_length_read;
input  [31:0] port_cross_in_node_max_subgraph_index_read;
input  [31:0] port_cross_in_node_max_subgraph_length_read;
input  [31:0] port_cross_in_pos_read;
input  [31:0] port_cross_in_fb_index_read;
input  [31:0] port_cross_in_fb_length_read;
input  [0:0] p_read55;
input  [7:0] graphlevel_i;
output  [7:0] graphlevel_o;
output   graphlevel_o_ap_vld;
output  [31:0] ap_return_0;
output  [31:0] ap_return_1;
output  [31:0] ap_return_2;
output  [31:0] ap_return_3;
output  [31:0] ap_return_4;
output  [31:0] ap_return_5;
output  [31:0] ap_return_6;
output  [31:0] ap_return_7;
output  [31:0] ap_return_8;
output  [7:0] ap_return_9;
output  [31:0] ap_return_10;
output  [31:0] ap_return_11;
output  [31:0] ap_return_12;
output  [31:0] ap_return_13;
output  [31:0] ap_return_14;
output  [31:0] ap_return_15;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_buf_dram_manage_AWVALID;
reg[63:0] m_axi_buf_dram_manage_AWADDR;
reg[0:0] m_axi_buf_dram_manage_AWID;
reg[31:0] m_axi_buf_dram_manage_AWLEN;
reg[2:0] m_axi_buf_dram_manage_AWSIZE;
reg[1:0] m_axi_buf_dram_manage_AWBURST;
reg[1:0] m_axi_buf_dram_manage_AWLOCK;
reg[3:0] m_axi_buf_dram_manage_AWCACHE;
reg[2:0] m_axi_buf_dram_manage_AWPROT;
reg[3:0] m_axi_buf_dram_manage_AWQOS;
reg[3:0] m_axi_buf_dram_manage_AWREGION;
reg[0:0] m_axi_buf_dram_manage_AWUSER;
reg m_axi_buf_dram_manage_WVALID;
reg[255:0] m_axi_buf_dram_manage_WDATA;
reg[31:0] m_axi_buf_dram_manage_WSTRB;
reg m_axi_buf_dram_manage_WLAST;
reg[0:0] m_axi_buf_dram_manage_WID;
reg[0:0] m_axi_buf_dram_manage_WUSER;
reg m_axi_buf_dram_manage_ARVALID;
reg[63:0] m_axi_buf_dram_manage_ARADDR;
reg[31:0] m_axi_buf_dram_manage_ARLEN;
reg m_axi_buf_dram_manage_RREADY;
reg m_axi_buf_dram_manage_BREADY;
reg[5:0] port_cross_in_node_mix_array_address0;
reg port_cross_in_node_mix_array_ce0;
reg port_cross_in_node_mix_array_we0;
reg[31:0] port_cross_in_node_mix_array_d0;
reg[5:0] port_cross_in_node_mix_array_address1;
reg port_cross_in_node_mix_array_ce1;
reg[5:0] port_cross_in_node_mix_array1_address0;
reg port_cross_in_node_mix_array1_ce0;
reg port_cross_in_node_mix_array1_we0;
reg[31:0] port_cross_in_node_mix_array1_d0;
reg[5:0] port_cross_in_node_mix_array1_address1;
reg port_cross_in_node_mix_array1_ce1;
reg[4:0] port_cross_in_node_mix_array2_address0;
reg port_cross_in_node_mix_array2_ce0;
reg port_cross_in_node_mix_array2_we0;
reg[31:0] port_cross_in_node_mix_array2_d0;
reg[4:0] port_cross_in_node_mix_array2_address1;
reg port_cross_in_node_mix_array2_ce1;
reg[4:0] port_cross_in_node_mix_array3_address0;
reg port_cross_in_node_mix_array3_ce0;
reg port_cross_in_node_mix_array3_we0;
reg[31:0] port_cross_in_node_mix_array3_d0;
reg[4:0] port_cross_in_node_mix_array3_address1;
reg port_cross_in_node_mix_array3_ce1;
reg[4:0] port_cross_in_node_mix_array4_address0;
reg port_cross_in_node_mix_array4_ce0;
reg port_cross_in_node_mix_array4_we0;
reg[4:0] port_cross_in_node_mix_array4_address1;
reg port_cross_in_node_mix_array4_ce1;
reg[4:0] port_cross_in_node_mix_array5_address0;
reg port_cross_in_node_mix_array5_ce0;
reg port_cross_in_node_mix_array5_we0;
reg[31:0] port_cross_in_node_mix_array5_d0;
reg[4:0] port_cross_in_node_mix_array5_address1;
reg port_cross_in_node_mix_array5_ce1;
reg[4:0] port_cross_in_node_mix_array6_address0;
reg port_cross_in_node_mix_array6_ce0;
reg port_cross_in_node_mix_array6_we0;
reg[31:0] port_cross_in_node_mix_array6_d0;
reg[4:0] port_cross_in_node_mix_array6_address1;
reg port_cross_in_node_mix_array6_ce1;
reg[4:0] port_cross_in_node_mix_array7_address0;
reg port_cross_in_node_mix_array7_ce0;
reg port_cross_in_node_mix_array7_we0;
reg[31:0] port_cross_in_node_mix_array7_d0;
reg[4:0] port_cross_in_node_mix_array7_address1;
reg port_cross_in_node_mix_array7_ce1;
reg[7:0] graphlevel_o;
reg graphlevel_o_ap_vld;
reg[31:0] ap_return_0;
reg[31:0] ap_return_1;
reg[31:0] ap_return_2;
reg[31:0] ap_return_3;
reg[31:0] ap_return_4;
reg[31:0] ap_return_5;
reg[31:0] ap_return_6;
reg[31:0] ap_return_7;
reg[31:0] ap_return_8;
reg[7:0] ap_return_9;
reg[31:0] ap_return_10;
reg[31:0] ap_return_11;
reg[31:0] ap_return_12;
reg[31:0] ap_return_13;
reg[31:0] ap_return_14;
reg[31:0] ap_return_15;

(* fsm_encoding = "none" *) reg   [154:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] free_index;
reg    buf_dram_manage_blk_n_AR;
wire    ap_CS_fsm_state82;
reg    buf_dram_manage_blk_n_R;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg    buf_dram_manage_blk_n_AW;
wire    ap_CS_fsm_state123;
reg    buf_dram_manage_blk_n_W;
wire    ap_CS_fsm_state124;
reg    buf_dram_manage_blk_n_B;
wire    ap_CS_fsm_state129;
wire    ap_CS_fsm_state114;
wire    ap_CS_fsm_state115;
wire    ap_CS_fsm_state120;
wire    ap_CS_fsm_state75;
wire    ap_CS_fsm_state76;
wire    ap_CS_fsm_state81;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state37;
wire    ap_CS_fsm_state44;
reg   [5:0] idx_reg_1890;
reg   [5:0] idx_reg_1890_pp0_iter1_reg;
wire    ap_block_state89_pp0_stage0_iter0;
reg    ap_block_state90_pp0_stage0_iter1;
wire    ap_block_state91_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
reg   [31:0] reg_2138;
wire    ap_CS_fsm_state93;
wire   [0:0] icmp_ln1196_fu_3361_p2;
wire    ap_CS_fsm_state121;
wire   [31:0] port_cross_in_node_num_read_1_read_fu_394_p2;
wire   [4:0] port_in_op_read_1_read_fu_466_p2;
wire   [7:0] level_next_fu_2148_p2;
reg   [7:0] level_next_reg_4069;
reg   [7:0] graphlevel_load_reg_4079;
reg   [4:0] port_cross_in_node_mix_array3_addr_reg_4093;
wire   [0:0] icmp_ln1436_fu_2172_p2;
reg   [4:0] port_cross_in_node_mix_array7_addr_reg_4098;
wire   [0:0] trunc_ln1430_fu_2220_p1;
reg   [0:0] trunc_ln1430_reg_4106;
wire   [0:0] grp_fu_2044_p2;
reg   [4:0] port_cross_in_node_mix_array3_addr_1_reg_4111;
reg   [4:0] port_cross_in_node_mix_array7_addr_2_reg_4116;
wire   [0:0] icmp_ln1466_fu_2060_p2;
reg   [0:0] icmp_ln1466_reg_4121;
reg   [31:0] grp_load_fu_2070_p1;
reg   [31:0] nodeindex_reg_4125;
reg   [37:0] trunc_ln40_1_reg_4131;
wire   [31:0] checkpos_fu_2296_p2;
wire   [0:0] p_read_read_fu_340_p2;
wire   [8:0] shl_ln_fu_2328_p3;
reg   [8:0] shl_ln_reg_4153;
wire   [2:0] trunc_ln_fu_2352_p3;
reg   [2:0] trunc_ln_reg_4158;
reg   [4:0] port_cross_in_node_mix_array7_addr_4_reg_4162;
wire   [0:0] icmp_ln1101_fu_2439_p2;
reg   [0:0] icmp_ln1101_reg_4167;
wire   [7:0] trunc_ln301_4_fu_2500_p1;
reg   [7:0] trunc_ln301_4_reg_4177;
wire    ap_CS_fsm_state5;
wire   [7:0] add_ln301_6_fu_2504_p2;
reg   [7:0] add_ln301_6_reg_4182;
wire   [31:0] grp_fu_2078_p3;
wire    ap_CS_fsm_state16;
reg   [31:0] trunc_ln8_reg_4198;
wire   [0:0] icmp_ln1477_fu_2567_p2;
reg   [0:0] icmp_ln1477_reg_4207;
wire    ap_CS_fsm_state25;
wire   [7:0] trunc_ln301_1_fu_2573_p1;
reg   [7:0] trunc_ln301_1_reg_4211;
reg   [31:0] new_index_reg_4217;
reg   [37:0] trunc_ln40_3_reg_4224;
wire   [0:0] icmp_ln1482_fu_2617_p2;
reg   [0:0] icmp_ln1482_reg_4229;
wire   [0:0] icmp_ln1485_fu_2633_p2;
reg   [0:0] icmp_ln1485_reg_4236;
wire   [7:0] trunc_ln966_fu_2639_p1;
reg   [7:0] trunc_ln966_reg_4241;
wire   [0:0] icmp_ln999_fu_2643_p2;
reg   [0:0] icmp_ln999_reg_4247;
wire   [0:0] Isinsert_graph_3_fu_2659_p2;
reg   [0:0] Isinsert_graph_3_reg_4253;
wire   [7:0] add_ln301_1_fu_2665_p2;
reg   [7:0] add_ln301_1_reg_4260;
wire    ap_CS_fsm_state26;
wire   [31:0] grp_fu_2090_p3;
wire    ap_CS_fsm_state36;
wire    ap_CS_fsm_state43;
reg   [31:0] new_bro_node_next_free_offset_reg_4296;
wire   [0:0] Isinsert_fu_2696_p2;
reg   [0:0] Isinsert_reg_4301;
wire   [31:0] parent_fb_length_next_4_fu_2709_p3;
reg   [31:0] parent_fb_length_next_4_reg_4307;
wire   [31:0] parent_fb_index_next_4_fu_2723_p3;
reg   [31:0] parent_fb_index_next_4_reg_4312;
wire   [7:0] add_ln301_4_fu_2745_p2;
reg   [7:0] add_ln301_4_reg_4317;
wire    ap_CS_fsm_state45;
reg   [0:0] Isdelete_reg_4322;
wire    ap_CS_fsm_state46;
reg   [0:0] Isdelete_graph_reg_4327;
wire   [5:0] select_ln1008_fu_2766_p3;
reg   [5:0] select_ln1008_reg_4332;
wire    ap_CS_fsm_state47;
wire   [5:0] it_graph_V_fu_2774_p3;
reg   [5:0] it_graph_V_reg_4337;
wire   [7:0] trunc_ln301_fu_2916_p1;
reg   [7:0] trunc_ln301_reg_4342;
wire    ap_CS_fsm_state50;
wire   [7:0] add_ln301_fu_2920_p2;
reg   [7:0] add_ln301_reg_4347;
wire    ap_CS_fsm_state61;
wire   [0:0] grp_fu_2099_p2;
reg   [0:0] icmp_ln1162_reg_4360;
wire    ap_CS_fsm_state62;
wire   [31:0] mul_i_fu_2943_p2;
reg   [31:0] mul_i_reg_4377;
wire   [0:0] icmp_ln1362_fu_2948_p2;
reg   [0:0] icmp_ln1362_reg_4382;
wire    ap_CS_fsm_state70;
reg   [37:0] trunc_ln4_reg_4387;
wire    ap_CS_fsm_state74;
wire   [31:0] grp_fu_2108_p2;
reg   [31:0] add_ln30_reg_4392;
wire   [31:0] nodeindex_next_3_fu_3018_p3;
wire   [4:0] port_cross_in_node_mix_array6_addr_5_gep_fu_946_p3;
wire    ap_CS_fsm_state87;
wire   [4:0] port_cross_in_node_mix_array7_addr_8_gep_fu_955_p3;
wire   [31:0] parent_fb_index_4_fu_3116_p3;
reg   [31:0] parent_fb_index_4_reg_4435;
wire    ap_CS_fsm_state88;
wire   [31:0] parent_fb_length_7_fu_3153_p3;
reg   [31:0] parent_fb_length_7_reg_4441;
wire   [0:0] flag_1_fu_3200_p2;
reg   [0:0] flag_1_reg_4447;
wire   [5:0] add_ln74_fu_3206_p2;
reg   [5:0] add_ln74_reg_4454;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] icmp_ln74_fu_3212_p2;
reg   [0:0] icmp_ln74_reg_4459;
wire   [31:0] readbuf0_fu_3218_p1;
reg   [31:0] readbuf0_reg_4463;
reg   [31:0] readbuf1_reg_4468;
reg   [31:0] readbuf2_reg_4473;
reg   [31:0] readbuf3_reg_4478;
reg   [31:0] readbuf4_reg_4483;
reg   [31:0] readbuf5_reg_4488;
reg   [31:0] readbuf6_reg_4493;
reg   [31:0] readbuf7_reg_4498;
wire   [0:0] icmp_ln87_fu_3292_p2;
reg   [0:0] icmp_ln87_reg_4503;
wire    ap_CS_fsm_state92;
wire   [31:0] new_bro_node_mix_array_2_q0;
reg   [31:0] parent_fb_index_next_6_reg_4523;
wire   [7:0] trunc_ln301_5_fu_3373_p1;
reg   [7:0] trunc_ln301_5_reg_4531;
wire   [7:0] add_ln301_7_fu_3377_p2;
reg   [7:0] add_ln301_7_reg_4536;
reg   [31:0] new_bro_node_num_load_reg_4541;
wire   [0:0] cmp119_fu_3367_p2;
wire   [31:0] new_bro_node_mix_array_0_q0;
reg   [31:0] new_bro_node_mix_array_0_load_reg_4574;
wire    ap_CS_fsm_state94;
wire   [31:0] new_bro_node_mix_array_1_q0;
reg   [31:0] new_bro_node_mix_array_1_load_reg_4579;
wire    ap_CS_fsm_state99;
wire   [31:0] new_bro_node_mix_array_3_q0;
reg   [31:0] parent_fb_length_next_6_reg_4589;
wire    ap_CS_fsm_state100;
wire   [0:0] trunc_ln1224_2_fu_3404_p1;
reg   [0:0] trunc_ln1224_2_reg_4594;
wire    ap_CS_fsm_state103;
wire   [31:0] select_ln1240_fu_3407_p3;
reg   [31:0] select_ln1240_reg_4600;
wire   [31:0] select_ln1241_fu_3416_p3;
reg   [31:0] select_ln1241_reg_4605;
wire    ap_CS_fsm_state108;
wire   [31:0] parent_fb_index_next_5_fu_3452_p3;
reg   [31:0] parent_fb_index_next_5_reg_4630;
wire    ap_CS_fsm_state109;
wire   [31:0] parent_fb_length_next_5_fu_3459_p3;
reg   [31:0] parent_fb_length_next_5_reg_4635;
wire   [7:0] trunc_ln1224_fu_3466_p1;
reg   [7:0] trunc_ln1224_reg_4640;
wire    ap_CS_fsm_state110;
wire   [7:0] add_ln301_8_fu_3470_p2;
reg   [7:0] add_ln301_8_reg_4645;
reg   [37:0] trunc_ln32_2_reg_4650;
wire    ap_CS_fsm_state113;
wire   [31:0] new_bro_node_next_free_offset_2_fu_3520_p2;
reg   [31:0] new_bro_node_next_free_offset_2_reg_4655;
wire   [31:0] add_ln1204_fu_3553_p2;
reg   [31:0] add_ln1204_reg_4666;
reg   [37:0] trunc_ln32_1_reg_4671;
wire    ap_CS_fsm_state122;
reg   [31:0] add_ln30_1_reg_4676;
wire   [7:0] trunc_ln301_2_fu_3620_p1;
reg   [7:0] trunc_ln301_2_reg_4688;
wire    ap_CS_fsm_state131;
wire   [7:0] add_ln301_2_fu_3624_p2;
reg   [7:0] add_ln301_2_reg_4693;
wire   [7:0] trunc_ln301_3_fu_3631_p1;
reg   [7:0] trunc_ln301_3_reg_4698;
wire   [7:0] add_ln301_3_fu_3636_p2;
reg   [7:0] add_ln301_3_reg_4703;
wire   [4:0] opcode_next_fu_3696_p3;
wire    ap_CS_fsm_state142;
reg   [4:0] port_cross_in_node_mix_array7_addr_7_reg_4718;
wire    ap_CS_fsm_state143;
wire   [7:0] trunc_ln301_6_fu_3726_p1;
reg   [7:0] trunc_ln301_6_reg_4723;
wire    ap_CS_fsm_state146;
wire   [7:0] add_ln301_5_fu_3730_p2;
reg   [7:0] add_ln301_5_reg_4728;
wire   [4:0] opcode_next_2_fu_3805_p3;
wire    ap_CS_fsm_state157;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state89;
reg    ap_enable_reg_pp0_iter2;
reg   [5:0] new_bro_node_mix_array_0_address0;
reg    new_bro_node_mix_array_0_ce0;
reg    new_bro_node_mix_array_0_we0;
reg   [5:0] new_bro_node_mix_array_0_address1;
reg    new_bro_node_mix_array_0_ce1;
wire   [31:0] new_bro_node_mix_array_0_q1;
reg   [5:0] new_bro_node_mix_array_1_address0;
reg    new_bro_node_mix_array_1_ce0;
reg    new_bro_node_mix_array_1_we0;
reg   [5:0] new_bro_node_mix_array_1_address1;
reg    new_bro_node_mix_array_1_ce1;
wire   [31:0] new_bro_node_mix_array_1_q1;
reg   [4:0] new_bro_node_mix_array_2_address0;
reg    new_bro_node_mix_array_2_ce0;
reg    new_bro_node_mix_array_2_we0;
reg   [4:0] new_bro_node_mix_array_2_address1;
reg    new_bro_node_mix_array_2_ce1;
wire   [31:0] new_bro_node_mix_array_2_q1;
reg   [4:0] new_bro_node_mix_array_3_address0;
reg    new_bro_node_mix_array_3_ce0;
reg    new_bro_node_mix_array_3_we0;
reg   [4:0] new_bro_node_mix_array_3_address1;
reg    new_bro_node_mix_array_3_ce1;
wire   [31:0] new_bro_node_mix_array_3_q1;
reg   [4:0] new_bro_node_mix_array_4_address0;
reg    new_bro_node_mix_array_4_ce0;
reg    new_bro_node_mix_array_4_we0;
wire   [31:0] new_bro_node_mix_array_4_q0;
reg   [4:0] new_bro_node_mix_array_4_address1;
reg    new_bro_node_mix_array_4_ce1;
wire   [31:0] new_bro_node_mix_array_4_q1;
reg   [4:0] new_bro_node_mix_array_5_address0;
reg    new_bro_node_mix_array_5_ce0;
reg    new_bro_node_mix_array_5_we0;
wire   [31:0] new_bro_node_mix_array_5_q0;
reg   [4:0] new_bro_node_mix_array_5_address1;
reg    new_bro_node_mix_array_5_ce1;
wire   [31:0] new_bro_node_mix_array_5_q1;
reg   [4:0] new_bro_node_mix_array_6_address0;
reg    new_bro_node_mix_array_6_ce0;
reg    new_bro_node_mix_array_6_we0;
wire   [31:0] new_bro_node_mix_array_6_q0;
reg   [4:0] new_bro_node_mix_array_6_address1;
reg    new_bro_node_mix_array_6_ce1;
wire   [31:0] new_bro_node_mix_array_6_q1;
reg   [4:0] new_bro_node_mix_array_7_address0;
reg    new_bro_node_mix_array_7_ce0;
reg    new_bro_node_mix_array_7_we0;
wire   [31:0] new_bro_node_mix_array_7_q0;
reg   [4:0] new_bro_node_mix_array_7_address1;
reg    new_bro_node_mix_array_7_ce1;
wire   [31:0] new_bro_node_mix_array_7_q1;
wire    grp_mergemem_fu_1902_ap_start;
wire    grp_mergemem_fu_1902_ap_done;
wire    grp_mergemem_fu_1902_ap_idle;
wire    grp_mergemem_fu_1902_ap_ready;
wire    grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWVALID;
wire   [63:0] grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWADDR;
wire   [0:0] grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWID;
wire   [31:0] grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWLEN;
wire   [2:0] grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWSIZE;
wire   [1:0] grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWBURST;
wire   [1:0] grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWLOCK;
wire   [3:0] grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWCACHE;
wire   [2:0] grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWPROT;
wire   [3:0] grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWQOS;
wire   [3:0] grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWREGION;
wire   [0:0] grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWUSER;
wire    grp_mergemem_fu_1902_m_axi_buf_dram_manage_WVALID;
wire   [255:0] grp_mergemem_fu_1902_m_axi_buf_dram_manage_WDATA;
wire   [31:0] grp_mergemem_fu_1902_m_axi_buf_dram_manage_WSTRB;
wire    grp_mergemem_fu_1902_m_axi_buf_dram_manage_WLAST;
wire   [0:0] grp_mergemem_fu_1902_m_axi_buf_dram_manage_WID;
wire   [0:0] grp_mergemem_fu_1902_m_axi_buf_dram_manage_WUSER;
wire    grp_mergemem_fu_1902_m_axi_buf_dram_manage_ARVALID;
wire   [63:0] grp_mergemem_fu_1902_m_axi_buf_dram_manage_ARADDR;
wire   [0:0] grp_mergemem_fu_1902_m_axi_buf_dram_manage_ARID;
wire   [31:0] grp_mergemem_fu_1902_m_axi_buf_dram_manage_ARLEN;
wire   [2:0] grp_mergemem_fu_1902_m_axi_buf_dram_manage_ARSIZE;
wire   [1:0] grp_mergemem_fu_1902_m_axi_buf_dram_manage_ARBURST;
wire   [1:0] grp_mergemem_fu_1902_m_axi_buf_dram_manage_ARLOCK;
wire   [3:0] grp_mergemem_fu_1902_m_axi_buf_dram_manage_ARCACHE;
wire   [2:0] grp_mergemem_fu_1902_m_axi_buf_dram_manage_ARPROT;
wire   [3:0] grp_mergemem_fu_1902_m_axi_buf_dram_manage_ARQOS;
wire   [3:0] grp_mergemem_fu_1902_m_axi_buf_dram_manage_ARREGION;
wire   [0:0] grp_mergemem_fu_1902_m_axi_buf_dram_manage_ARUSER;
wire    grp_mergemem_fu_1902_m_axi_buf_dram_manage_RREADY;
wire    grp_mergemem_fu_1902_m_axi_buf_dram_manage_BREADY;
reg   [31:0] grp_mergemem_fu_1902_nodeindex;
reg   [31:0] grp_mergemem_fu_1902_p_read1;
wire   [5:0] grp_mergemem_fu_1902_node_2_address0;
wire    grp_mergemem_fu_1902_node_2_ce0;
reg   [31:0] grp_mergemem_fu_1902_node_2_q0;
wire   [5:0] grp_mergemem_fu_1902_node_2_address1;
wire    grp_mergemem_fu_1902_node_2_ce1;
reg   [31:0] grp_mergemem_fu_1902_node_2_q1;
wire   [5:0] grp_mergemem_fu_1902_node_21_address0;
wire    grp_mergemem_fu_1902_node_21_ce0;
reg   [31:0] grp_mergemem_fu_1902_node_21_q0;
wire   [5:0] grp_mergemem_fu_1902_node_21_address1;
wire    grp_mergemem_fu_1902_node_21_ce1;
reg   [31:0] grp_mergemem_fu_1902_node_21_q1;
wire   [4:0] grp_mergemem_fu_1902_node_22_address0;
wire    grp_mergemem_fu_1902_node_22_ce0;
reg   [31:0] grp_mergemem_fu_1902_node_22_q0;
wire   [4:0] grp_mergemem_fu_1902_node_22_address1;
wire    grp_mergemem_fu_1902_node_22_ce1;
reg   [31:0] grp_mergemem_fu_1902_node_22_q1;
wire   [4:0] grp_mergemem_fu_1902_node_23_address0;
wire    grp_mergemem_fu_1902_node_23_ce0;
reg   [31:0] grp_mergemem_fu_1902_node_23_q0;
wire   [4:0] grp_mergemem_fu_1902_node_23_address1;
wire    grp_mergemem_fu_1902_node_23_ce1;
reg   [31:0] grp_mergemem_fu_1902_node_23_q1;
wire   [4:0] grp_mergemem_fu_1902_node_24_address0;
wire    grp_mergemem_fu_1902_node_24_ce0;
reg   [31:0] grp_mergemem_fu_1902_node_24_q0;
wire   [4:0] grp_mergemem_fu_1902_node_24_address1;
wire    grp_mergemem_fu_1902_node_24_ce1;
reg   [31:0] grp_mergemem_fu_1902_node_24_q1;
wire   [4:0] grp_mergemem_fu_1902_node_25_address0;
wire    grp_mergemem_fu_1902_node_25_ce0;
reg   [31:0] grp_mergemem_fu_1902_node_25_q0;
wire   [4:0] grp_mergemem_fu_1902_node_25_address1;
wire    grp_mergemem_fu_1902_node_25_ce1;
reg   [31:0] grp_mergemem_fu_1902_node_25_q1;
wire   [4:0] grp_mergemem_fu_1902_node_26_address0;
wire    grp_mergemem_fu_1902_node_26_ce0;
reg   [31:0] grp_mergemem_fu_1902_node_26_q0;
wire   [4:0] grp_mergemem_fu_1902_node_26_address1;
wire    grp_mergemem_fu_1902_node_26_ce1;
reg   [31:0] grp_mergemem_fu_1902_node_26_q1;
wire   [4:0] grp_mergemem_fu_1902_node_27_address0;
wire    grp_mergemem_fu_1902_node_27_ce0;
reg   [31:0] grp_mergemem_fu_1902_node_27_q0;
wire   [4:0] grp_mergemem_fu_1902_node_27_address1;
wire    grp_mergemem_fu_1902_node_27_ce1;
reg   [31:0] grp_mergemem_fu_1902_node_27_q1;
wire   [5:0] grp_mergemem_fu_1902_bronode_2_address0;
wire    grp_mergemem_fu_1902_bronode_2_ce0;
reg   [31:0] grp_mergemem_fu_1902_bronode_2_q0;
wire   [5:0] grp_mergemem_fu_1902_bronode_2_address1;
wire    grp_mergemem_fu_1902_bronode_2_ce1;
reg   [31:0] grp_mergemem_fu_1902_bronode_2_q1;
wire   [5:0] grp_mergemem_fu_1902_bronode_28_address0;
wire    grp_mergemem_fu_1902_bronode_28_ce0;
reg   [31:0] grp_mergemem_fu_1902_bronode_28_q0;
wire   [5:0] grp_mergemem_fu_1902_bronode_28_address1;
wire    grp_mergemem_fu_1902_bronode_28_ce1;
reg   [31:0] grp_mergemem_fu_1902_bronode_28_q1;
wire   [4:0] grp_mergemem_fu_1902_bronode_29_address0;
wire    grp_mergemem_fu_1902_bronode_29_ce0;
reg   [31:0] grp_mergemem_fu_1902_bronode_29_q0;
wire   [4:0] grp_mergemem_fu_1902_bronode_29_address1;
wire    grp_mergemem_fu_1902_bronode_29_ce1;
reg   [31:0] grp_mergemem_fu_1902_bronode_29_q1;
wire   [4:0] grp_mergemem_fu_1902_bronode_210_address0;
wire    grp_mergemem_fu_1902_bronode_210_ce0;
reg   [31:0] grp_mergemem_fu_1902_bronode_210_q0;
wire   [4:0] grp_mergemem_fu_1902_bronode_210_address1;
wire    grp_mergemem_fu_1902_bronode_210_ce1;
reg   [31:0] grp_mergemem_fu_1902_bronode_210_q1;
wire   [4:0] grp_mergemem_fu_1902_bronode_211_address0;
wire    grp_mergemem_fu_1902_bronode_211_ce0;
reg   [31:0] grp_mergemem_fu_1902_bronode_211_q0;
wire   [4:0] grp_mergemem_fu_1902_bronode_211_address1;
wire    grp_mergemem_fu_1902_bronode_211_ce1;
reg   [31:0] grp_mergemem_fu_1902_bronode_211_q1;
wire   [4:0] grp_mergemem_fu_1902_bronode_212_address0;
wire    grp_mergemem_fu_1902_bronode_212_ce0;
reg   [31:0] grp_mergemem_fu_1902_bronode_212_q0;
wire   [4:0] grp_mergemem_fu_1902_bronode_212_address1;
wire    grp_mergemem_fu_1902_bronode_212_ce1;
reg   [31:0] grp_mergemem_fu_1902_bronode_212_q1;
wire   [4:0] grp_mergemem_fu_1902_bronode_213_address0;
wire    grp_mergemem_fu_1902_bronode_213_ce0;
reg   [31:0] grp_mergemem_fu_1902_bronode_213_q0;
wire   [4:0] grp_mergemem_fu_1902_bronode_213_address1;
wire    grp_mergemem_fu_1902_bronode_213_ce1;
reg   [31:0] grp_mergemem_fu_1902_bronode_213_q1;
wire   [4:0] grp_mergemem_fu_1902_bronode_214_address0;
wire    grp_mergemem_fu_1902_bronode_214_ce0;
reg   [31:0] grp_mergemem_fu_1902_bronode_214_q0;
wire   [4:0] grp_mergemem_fu_1902_bronode_214_address1;
wire    grp_mergemem_fu_1902_bronode_214_ce1;
reg   [31:0] grp_mergemem_fu_1902_bronode_214_q1;
reg   [31:0] grp_mergemem_fu_1902_checkpos;
wire    grp_writemem_fu_1946_ap_start;
wire    grp_writemem_fu_1946_ap_done;
wire    grp_writemem_fu_1946_ap_idle;
wire    grp_writemem_fu_1946_ap_ready;
wire    grp_writemem_fu_1946_m_axi_buf_dram_manage_AWVALID;
wire   [63:0] grp_writemem_fu_1946_m_axi_buf_dram_manage_AWADDR;
wire   [0:0] grp_writemem_fu_1946_m_axi_buf_dram_manage_AWID;
wire   [31:0] grp_writemem_fu_1946_m_axi_buf_dram_manage_AWLEN;
wire   [2:0] grp_writemem_fu_1946_m_axi_buf_dram_manage_AWSIZE;
wire   [1:0] grp_writemem_fu_1946_m_axi_buf_dram_manage_AWBURST;
wire   [1:0] grp_writemem_fu_1946_m_axi_buf_dram_manage_AWLOCK;
wire   [3:0] grp_writemem_fu_1946_m_axi_buf_dram_manage_AWCACHE;
wire   [2:0] grp_writemem_fu_1946_m_axi_buf_dram_manage_AWPROT;
wire   [3:0] grp_writemem_fu_1946_m_axi_buf_dram_manage_AWQOS;
wire   [3:0] grp_writemem_fu_1946_m_axi_buf_dram_manage_AWREGION;
wire   [0:0] grp_writemem_fu_1946_m_axi_buf_dram_manage_AWUSER;
wire    grp_writemem_fu_1946_m_axi_buf_dram_manage_WVALID;
wire   [255:0] grp_writemem_fu_1946_m_axi_buf_dram_manage_WDATA;
wire   [31:0] grp_writemem_fu_1946_m_axi_buf_dram_manage_WSTRB;
wire    grp_writemem_fu_1946_m_axi_buf_dram_manage_WLAST;
wire   [0:0] grp_writemem_fu_1946_m_axi_buf_dram_manage_WID;
wire   [0:0] grp_writemem_fu_1946_m_axi_buf_dram_manage_WUSER;
wire    grp_writemem_fu_1946_m_axi_buf_dram_manage_ARVALID;
wire   [63:0] grp_writemem_fu_1946_m_axi_buf_dram_manage_ARADDR;
wire   [0:0] grp_writemem_fu_1946_m_axi_buf_dram_manage_ARID;
wire   [31:0] grp_writemem_fu_1946_m_axi_buf_dram_manage_ARLEN;
wire   [2:0] grp_writemem_fu_1946_m_axi_buf_dram_manage_ARSIZE;
wire   [1:0] grp_writemem_fu_1946_m_axi_buf_dram_manage_ARBURST;
wire   [1:0] grp_writemem_fu_1946_m_axi_buf_dram_manage_ARLOCK;
wire   [3:0] grp_writemem_fu_1946_m_axi_buf_dram_manage_ARCACHE;
wire   [2:0] grp_writemem_fu_1946_m_axi_buf_dram_manage_ARPROT;
wire   [3:0] grp_writemem_fu_1946_m_axi_buf_dram_manage_ARQOS;
wire   [3:0] grp_writemem_fu_1946_m_axi_buf_dram_manage_ARREGION;
wire   [0:0] grp_writemem_fu_1946_m_axi_buf_dram_manage_ARUSER;
wire    grp_writemem_fu_1946_m_axi_buf_dram_manage_RREADY;
wire    grp_writemem_fu_1946_m_axi_buf_dram_manage_BREADY;
reg   [31:0] grp_writemem_fu_1946_p_read;
reg   [31:0] grp_writemem_fu_1946_p_read1;
wire   [5:0] grp_writemem_fu_1946_node_mix_array_address0;
wire    grp_writemem_fu_1946_node_mix_array_ce0;
reg   [31:0] grp_writemem_fu_1946_node_mix_array_q0;
wire   [5:0] grp_writemem_fu_1946_node_mix_array_address1;
wire    grp_writemem_fu_1946_node_mix_array_ce1;
reg   [31:0] grp_writemem_fu_1946_node_mix_array_q1;
wire   [5:0] grp_writemem_fu_1946_node_mix_array1_address0;
wire    grp_writemem_fu_1946_node_mix_array1_ce0;
reg   [31:0] grp_writemem_fu_1946_node_mix_array1_q0;
wire   [5:0] grp_writemem_fu_1946_node_mix_array1_address1;
wire    grp_writemem_fu_1946_node_mix_array1_ce1;
reg   [31:0] grp_writemem_fu_1946_node_mix_array1_q1;
wire   [4:0] grp_writemem_fu_1946_node_mix_array2_address0;
wire    grp_writemem_fu_1946_node_mix_array2_ce0;
reg   [31:0] grp_writemem_fu_1946_node_mix_array2_q0;
wire   [4:0] grp_writemem_fu_1946_node_mix_array2_address1;
wire    grp_writemem_fu_1946_node_mix_array2_ce1;
reg   [31:0] grp_writemem_fu_1946_node_mix_array2_q1;
wire   [4:0] grp_writemem_fu_1946_node_mix_array3_address0;
wire    grp_writemem_fu_1946_node_mix_array3_ce0;
reg   [31:0] grp_writemem_fu_1946_node_mix_array3_q0;
wire   [4:0] grp_writemem_fu_1946_node_mix_array3_address1;
wire    grp_writemem_fu_1946_node_mix_array3_ce1;
reg   [31:0] grp_writemem_fu_1946_node_mix_array3_q1;
wire   [4:0] grp_writemem_fu_1946_node_mix_array4_address0;
wire    grp_writemem_fu_1946_node_mix_array4_ce0;
reg   [31:0] grp_writemem_fu_1946_node_mix_array4_q0;
wire   [4:0] grp_writemem_fu_1946_node_mix_array4_address1;
wire    grp_writemem_fu_1946_node_mix_array4_ce1;
reg   [31:0] grp_writemem_fu_1946_node_mix_array4_q1;
wire   [4:0] grp_writemem_fu_1946_node_mix_array5_address0;
wire    grp_writemem_fu_1946_node_mix_array5_ce0;
reg   [31:0] grp_writemem_fu_1946_node_mix_array5_q0;
wire   [4:0] grp_writemem_fu_1946_node_mix_array5_address1;
wire    grp_writemem_fu_1946_node_mix_array5_ce1;
reg   [31:0] grp_writemem_fu_1946_node_mix_array5_q1;
wire   [4:0] grp_writemem_fu_1946_node_mix_array6_address0;
wire    grp_writemem_fu_1946_node_mix_array6_ce0;
reg   [31:0] grp_writemem_fu_1946_node_mix_array6_q0;
wire   [4:0] grp_writemem_fu_1946_node_mix_array6_address1;
wire    grp_writemem_fu_1946_node_mix_array6_ce1;
reg   [31:0] grp_writemem_fu_1946_node_mix_array6_q1;
wire   [4:0] grp_writemem_fu_1946_node_mix_array7_address0;
wire    grp_writemem_fu_1946_node_mix_array7_ce0;
reg   [31:0] grp_writemem_fu_1946_node_mix_array7_q0;
wire   [4:0] grp_writemem_fu_1946_node_mix_array7_address1;
wire    grp_writemem_fu_1946_node_mix_array7_ce1;
reg   [31:0] grp_writemem_fu_1946_node_mix_array7_q1;
reg   [31:0] grp_writemem_fu_1946_nodeindex;
reg   [0:0] grp_writemem_fu_1946_Isinsert;
reg   [0:0] grp_writemem_fu_1946_Isdelete;
reg   [7:0] grp_writemem_fu_1946_pos_node;
reg   [7:0] grp_writemem_fu_1946_pos_graph;
reg   [7:0] grp_writemem_fu_1946_checkpos;
reg   [7:0] grp_writemem_fu_1946_checkpos_graph;
reg   [31:0] grp_writemem_fu_1946_head_index;
reg   [31:0] grp_writemem_fu_1946_fb_length;
reg   [31:0] grp_writemem_fu_1946_subgraph;
reg   [31:0] grp_writemem_fu_1946_maxsubgraph;
wire    grp_split_fu_2003_ap_start;
wire    grp_split_fu_2003_ap_done;
wire    grp_split_fu_2003_ap_idle;
wire    grp_split_fu_2003_ap_ready;
wire    grp_split_fu_2003_m_axi_buf_dram_manage_AWVALID;
wire   [63:0] grp_split_fu_2003_m_axi_buf_dram_manage_AWADDR;
wire   [0:0] grp_split_fu_2003_m_axi_buf_dram_manage_AWID;
wire   [31:0] grp_split_fu_2003_m_axi_buf_dram_manage_AWLEN;
wire   [2:0] grp_split_fu_2003_m_axi_buf_dram_manage_AWSIZE;
wire   [1:0] grp_split_fu_2003_m_axi_buf_dram_manage_AWBURST;
wire   [1:0] grp_split_fu_2003_m_axi_buf_dram_manage_AWLOCK;
wire   [3:0] grp_split_fu_2003_m_axi_buf_dram_manage_AWCACHE;
wire   [2:0] grp_split_fu_2003_m_axi_buf_dram_manage_AWPROT;
wire   [3:0] grp_split_fu_2003_m_axi_buf_dram_manage_AWQOS;
wire   [3:0] grp_split_fu_2003_m_axi_buf_dram_manage_AWREGION;
wire   [0:0] grp_split_fu_2003_m_axi_buf_dram_manage_AWUSER;
wire    grp_split_fu_2003_m_axi_buf_dram_manage_WVALID;
wire   [255:0] grp_split_fu_2003_m_axi_buf_dram_manage_WDATA;
wire   [31:0] grp_split_fu_2003_m_axi_buf_dram_manage_WSTRB;
wire    grp_split_fu_2003_m_axi_buf_dram_manage_WLAST;
wire   [0:0] grp_split_fu_2003_m_axi_buf_dram_manage_WID;
wire   [0:0] grp_split_fu_2003_m_axi_buf_dram_manage_WUSER;
wire    grp_split_fu_2003_m_axi_buf_dram_manage_ARVALID;
wire   [63:0] grp_split_fu_2003_m_axi_buf_dram_manage_ARADDR;
wire   [0:0] grp_split_fu_2003_m_axi_buf_dram_manage_ARID;
wire   [31:0] grp_split_fu_2003_m_axi_buf_dram_manage_ARLEN;
wire   [2:0] grp_split_fu_2003_m_axi_buf_dram_manage_ARSIZE;
wire   [1:0] grp_split_fu_2003_m_axi_buf_dram_manage_ARBURST;
wire   [1:0] grp_split_fu_2003_m_axi_buf_dram_manage_ARLOCK;
wire   [3:0] grp_split_fu_2003_m_axi_buf_dram_manage_ARCACHE;
wire   [2:0] grp_split_fu_2003_m_axi_buf_dram_manage_ARPROT;
wire   [3:0] grp_split_fu_2003_m_axi_buf_dram_manage_ARQOS;
wire   [3:0] grp_split_fu_2003_m_axi_buf_dram_manage_ARREGION;
wire   [0:0] grp_split_fu_2003_m_axi_buf_dram_manage_ARUSER;
wire    grp_split_fu_2003_m_axi_buf_dram_manage_RREADY;
wire    grp_split_fu_2003_m_axi_buf_dram_manage_BREADY;
wire   [5:0] grp_split_fu_2003_node_mix_array_address0;
wire    grp_split_fu_2003_node_mix_array_ce0;
wire   [5:0] grp_split_fu_2003_node_mix_array_address1;
wire    grp_split_fu_2003_node_mix_array_ce1;
wire   [5:0] grp_split_fu_2003_node_mix_array1_address0;
wire    grp_split_fu_2003_node_mix_array1_ce0;
wire   [5:0] grp_split_fu_2003_node_mix_array1_address1;
wire    grp_split_fu_2003_node_mix_array1_ce1;
wire   [4:0] grp_split_fu_2003_node_mix_array2_address0;
wire    grp_split_fu_2003_node_mix_array2_ce0;
wire   [4:0] grp_split_fu_2003_node_mix_array2_address1;
wire    grp_split_fu_2003_node_mix_array2_ce1;
wire   [4:0] grp_split_fu_2003_node_mix_array3_address0;
wire    grp_split_fu_2003_node_mix_array3_ce0;
wire   [4:0] grp_split_fu_2003_node_mix_array3_address1;
wire    grp_split_fu_2003_node_mix_array3_ce1;
wire   [4:0] grp_split_fu_2003_node_mix_array4_address0;
wire    grp_split_fu_2003_node_mix_array4_ce0;
wire   [4:0] grp_split_fu_2003_node_mix_array4_address1;
wire    grp_split_fu_2003_node_mix_array4_ce1;
wire   [4:0] grp_split_fu_2003_node_mix_array5_address0;
wire    grp_split_fu_2003_node_mix_array5_ce0;
wire   [4:0] grp_split_fu_2003_node_mix_array5_address1;
wire    grp_split_fu_2003_node_mix_array5_ce1;
wire   [4:0] grp_split_fu_2003_node_mix_array6_address0;
wire    grp_split_fu_2003_node_mix_array6_ce0;
wire   [4:0] grp_split_fu_2003_node_mix_array6_address1;
wire    grp_split_fu_2003_node_mix_array6_ce1;
wire   [4:0] grp_split_fu_2003_node_mix_array7_address0;
wire    grp_split_fu_2003_node_mix_array7_ce0;
wire   [4:0] grp_split_fu_2003_node_mix_array7_address1;
wire    grp_split_fu_2003_node_mix_array7_ce1;
reg   [31:0] grp_split_fu_2003_nodeindex;
reg   [0:0] grp_split_fu_2003_p_read1;
reg   [0:0] grp_split_fu_2003_p_read2;
reg   [0:0] grp_split_fu_2003_p_read3;
reg   [0:0] grp_split_fu_2003_p_read4;
reg   [5:0] grp_split_fu_2003_p_read5;
reg   [5:0] grp_split_fu_2003_p_read6;
wire   [0:0] grp_split_fu_2003_ap_return_0;
wire   [0:0] grp_split_fu_2003_ap_return_1;
reg   [4:0] opcode_next_1_reg_1173;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state2;
reg   [0:0] write_flag45_0_reg_1202;
reg   [31:0] port_cross_in_node_max_fb_length_0_reg_1215;
reg   [31:0] port_cross_in_node_max_subgraph_length_0_reg_1226;
reg   [31:0] ap_phi_mux_port_cross_in_node_num_0_phi_fu_1240_p4;
reg   [31:0] port_cross_in_node_num_0_reg_1237;
reg   [31:0] port_cross_in_node_next_free_offset_1_reg_1248;
reg   [31:0] nodeindex_2_reg_1258;
reg   [31:0] ap_phi_mux_val_phi_fu_1271_p4;
reg   [31:0] val_reg_1268;
reg   [31:0] port_cross_in_node_next_free_offset_0_reg_1278;
wire    ap_CS_fsm_state111;
wire    ap_CS_fsm_state102;
reg   [31:0] parent_fb_index_next_1_reg_1291;
reg   [31:0] parent_fb_length_next_1_reg_1307;
reg   [0:0] ap_phi_mux_write_flag45_1_phi_fu_1327_p36;
reg   [0:0] write_flag45_1_reg_1323;
wire    ap_CS_fsm_state48;
reg    ap_predicate_op494_call_state48;
reg    ap_block_state48_on_subcall_done;
wire   [0:0] icmp_ln1538_fu_2065_p2;
reg   [31:0] ap_phi_mux_port_cross_in_node_max_fb_length_1_phi_fu_1386_p36;
reg   [31:0] port_cross_in_node_max_fb_length_1_reg_1383;
reg   [31:0] ap_phi_mux_port_cross_in_node_max_subgraph_length_1_phi_fu_1429_p36;
reg   [31:0] port_cross_in_node_max_subgraph_length_1_reg_1426;
reg   [31:0] ap_phi_mux_port_cross_in_node_num_1_phi_fu_1473_p36;
reg   [31:0] port_cross_in_node_num_1_reg_1469;
reg   [31:0] ap_phi_mux_port_cross_in_node_next_free_offset_2_phi_fu_1526_p36;
reg   [31:0] port_cross_in_node_next_free_offset_2_reg_1523;
reg   [4:0] ap_phi_mux_opcode_next_4_phi_fu_1578_p36;
reg   [4:0] opcode_next_4_reg_1570;
wire   [4:0] select_ln1310_fu_2782_p3;
wire   [4:0] select_ln1303_fu_2790_p3;
wire   [4:0] opcode_next_3_fu_2798_p3;
reg   [31:0] ap_phi_mux_nodeindex_next_phi_fu_1627_p36;
reg   [31:0] nodeindex_next_reg_1624;
reg   [31:0] ap_phi_mux_broindex_next_phi_fu_1670_p36;
reg   [31:0] broindex_next_reg_1667;
reg   [31:0] ap_phi_mux_parent_fb_index_next_7_phi_fu_1712_p36;
reg   [31:0] parent_fb_index_next_7_reg_1708;
reg   [31:0] ap_phi_mux_parent_fb_length_next_7_phi_fu_1771_p36;
reg   [31:0] parent_fb_length_next_7_reg_1767;
reg   [31:0] ap_phi_mux_node_max_fb_length_next_1_phi_fu_1830_p36;
reg   [31:0] node_max_fb_length_next_1_reg_1826;
reg   [31:0] checkpos_1_reg_1880;
reg   [5:0] ap_phi_mux_idx_phi_fu_1894_p4;
reg    grp_mergemem_fu_1902_ap_start_reg;
wire    ap_CS_fsm_state112;
reg    grp_writemem_fu_1946_ap_start_reg;
wire    ap_CS_fsm_state101;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state27;
wire    ap_CS_fsm_state51;
wire    ap_CS_fsm_state95;
wire    ap_CS_fsm_state104;
wire    ap_CS_fsm_state132;
wire    ap_CS_fsm_state147;
reg    grp_split_fu_2003_ap_start_reg;
wire   [63:0] zext_ln1443_fu_2160_p1;
wire   [63:0] zext_ln1437_fu_2206_p1;
wire   [63:0] zext_ln1430_fu_2212_p1;
wire   [63:0] zext_ln1542_fu_2276_p1;
wire   [63:0] zext_ln1157_fu_2286_p1;
wire   [63:0] zext_ln1154_fu_2322_p1;
wire   [63:0] zext_ln1098_fu_2360_p1;
wire   [63:0] zext_ln1107_fu_2387_p1;
wire   [63:0] zext_ln1100_fu_2410_p1;
wire   [63:0] zext_ln1101_fu_2433_p1;
wire   [63:0] zext_ln1449_fu_2491_p1;
wire    ap_CS_fsm_state4;
wire   [63:0] zext_ln1474_fu_2557_p1;
wire   [63:0] zext_ln91_fu_3346_p1;
wire   [63:0] idx_cast24_fu_3308_p1;
wire   [0:0] icmp_ln104_fu_3352_p2;
wire   [63:0] zext_ln1240_fu_3396_p1;
wire   [63:0] zext_ln1224_fu_3444_p1;
wire   [63:0] zext_ln1102_fu_3719_p1;
wire  signed [63:0] sext_ln40_2_fu_2511_p1;
wire  signed [63:0] sext_ln40_3_fu_2671_p1;
wire  signed [63:0] sext_ln32_2_fu_2991_p1;
wire  signed [63:0] sext_ln75_fu_3025_p1;
wire  signed [63:0] sext_ln32_5_fu_3531_p1;
wire  signed [63:0] sext_ln32_4_fu_3598_p1;
wire   [255:0] zext_ln32_fu_3008_p1;
wire   [255:0] zext_ln32_2_fu_3548_p1;
wire   [255:0] zext_ln32_1_fu_3615_p1;
wire   [7:0] add_ln1358_fu_2927_p2;
wire   [7:0] add_ln1470_fu_2264_p2;
wire   [31:0] add_ln45_3_fu_2734_p2;
wire   [31:0] add_ln45_1_fu_2536_p2;
reg   [31:0] ap_sig_allocacmp_new_index;
reg   [31:0] new_bro_node_next_free_offset_1_fu_332;
reg   [31:0] new_bro_node_num_fu_336;
wire   [0:0] trunc_ln1443_fu_2168_p1;
wire   [0:0] icmp_ln1437_fu_2456_p2;
wire   [31:0] add_ln1437_1_fu_2470_p2;
wire   [31:0] add_ln1431_fu_2484_p2;
wire    ap_CS_fsm_state144;
wire   [0:0] trunc_ln1542_fu_2282_p1;
wire   [0:0] trunc_ln1157_fu_2292_p1;
wire   [0:0] trunc_ln1154_fu_2308_p1;
wire   [0:0] trunc_ln1449_fu_2497_p1;
wire   [0:0] trunc_ln1474_fu_2563_p1;
wire   [0:0] grp_fu_2074_p2;
wire   [0:0] grp_fu_2084_p2;
wire   [31:0] grp_fu_2103_p2;
wire   [5:0] grp_fu_2050_p4;
wire   [5:0] trunc_ln1437_fu_2178_p1;
wire   [7:0] shl_ln2_fu_2182_p3;
wire   [7:0] add_ln1437_fu_2190_p2;
wire   [4:0] lshr_ln_fu_2196_p4;
wire   [41:0] shl_ln1_fu_2224_p3;
wire   [36:0] shl_ln40_1_fu_2236_p3;
wire  signed [42:0] sext_ln40_fu_2232_p1;
wire  signed [42:0] sext_ln40_1_fu_2244_p1;
wire   [42:0] add_ln40_fu_2248_p2;
wire   [6:0] empty_fu_2144_p1;
wire   [6:0] add_ln1154_1_fu_2302_p2;
wire   [5:0] trunc_ln1154_2_fu_2312_p4;
wire   [5:0] trunc_ln1098_fu_2336_p1;
wire   [0:0] trunc_ln1098_3_fu_2348_p1;
wire   [8:0] add_ln1107_fu_2371_p2;
wire   [5:0] lshr_ln2_fu_2377_p4;
wire   [7:0] trunc_ln1098_1_fu_2340_p3;
wire   [7:0] add_ln1100_fu_2394_p2;
wire   [4:0] lshr_ln1_fu_2400_p4;
wire   [7:0] add_ln1101_fu_2417_p2;
wire   [4:0] lshr_ln3_fu_2423_p4;
wire   [0:0] trunc_ln1437_1_fu_2445_p1;
wire   [2:0] trunc_ln2_fu_2448_p3;
wire   [31:0] select_ln1437_fu_2462_p3;
wire   [31:0] select_ln1431_fu_2477_p3;
wire   [31:0] add_ln45_fu_2531_p2;
wire   [5:0] trunc_ln1474_1_fu_2547_p4;
wire   [41:0] shl_ln40_2_fu_2577_p3;
wire   [36:0] shl_ln40_3_fu_2589_p3;
wire  signed [42:0] sext_ln40_4_fu_2585_p1;
wire  signed [42:0] sext_ln40_5_fu_2597_p1;
wire   [42:0] add_ln40_1_fu_2601_p2;
wire   [26:0] tmp_fu_2623_p4;
wire   [26:0] tmp_1_fu_2649_p4;
wire   [0:0] xor_ln1482_fu_2691_p2;
wire   [31:0] parent_fb_length_next_3_fu_2701_p3;
wire   [31:0] parent_fb_index_next_3_fu_2715_p3;
wire   [31:0] add_ln45_2_fu_2729_p2;
wire   [5:0] select_ln999_fu_2759_p3;
wire   [31:0] zext_ln1079_fu_2806_p1;
wire   [31:0] select_ln1578_fu_2810_p3;
wire   [31:0] select_ln1578_1_fu_2817_p3;
wire   [31:0] empty_32_fu_2938_p2;
wire   [41:0] shl_ln32_3_fu_2953_p3;
wire   [36:0] shl_ln32_4_fu_2964_p3;
wire  signed [42:0] sext_ln32_fu_2960_p1;
wire  signed [42:0] sext_ln32_1_fu_2971_p1;
wire   [42:0] add_ln32_fu_2975_p2;
wire   [63:0] shl_ln3_fu_3001_p3;
wire   [0:0] grp_fu_2119_p2;
wire   [31:0] nodeindex_next_2_fu_3013_p3;
wire   [31:0] add_ln1177_fu_3039_p2;
wire   [0:0] flag_fu_3043_p2;
wire   [31:0] add_ln1178_fu_3048_p2;
wire   [0:0] grp_fu_2124_p2;
wire   [0:0] icmp_ln1183_fu_3035_p2;
wire   [0:0] and_ln1170_fu_3064_p2;
wire   [0:0] grp_fu_2129_p2;
wire   [0:0] and_ln1183_fu_3077_p2;
wire   [31:0] parent_fb_index_1_fu_3070_p3;
wire   [0:0] xor_ln1170_fu_3091_p2;
wire   [0:0] and_ln1170_1_fu_3097_p2;
wire   [31:0] parent_fb_index_2_fu_3083_p3;
wire   [0:0] and_ln1183_1_fu_3110_p2;
wire   [31:0] parent_fb_index_3_fu_3103_p3;
wire   [31:0] parent_fb_length_fu_3052_p3;
wire   [31:0] parent_fb_length_2_fu_3059_p2;
wire   [31:0] parent_fb_length_3_fu_3123_p3;
wire   [31:0] parent_fb_length_4_fu_3130_p3;
wire   [31:0] parent_fb_length_5_fu_3138_p3;
wire   [31:0] parent_fb_length_6_fu_3146_p3;
wire   [0:0] and_ln1166_fu_3160_p2;
wire   [0:0] or_ln1183_fu_3166_p2;
wire   [0:0] icmp_ln1170_fu_3178_p2;
wire   [0:0] icmp_ln1183_1_fu_3183_p2;
wire   [0:0] and_ln1183_2_fu_3188_p2;
wire   [0:0] or_ln1183_2_fu_3194_p2;
wire   [0:0] or_ln1183_1_fu_3172_p2;
wire   [4:0] trunc_ln100_fu_3318_p1;
wire   [7:0] shl_ln4_fu_3322_p3;
wire   [7:0] add_ln91_fu_3330_p2;
wire   [4:0] lshr_ln5_fu_3336_p4;
wire   [5:0] trunc_ln5_fu_3386_p4;
wire   [5:0] trunc_ln1224_1_fu_3425_p1;
wire   [5:0] add_ln1224_fu_3428_p2;
wire   [4:0] lshr_ln6_fu_3434_p4;
wire   [41:0] shl_ln32_7_fu_3477_p3;
wire   [36:0] shl_ln32_8_fu_3488_p3;
wire  signed [42:0] sext_ln32_7_fu_3484_p1;
wire  signed [42:0] sext_ln32_8_fu_3495_p1;
wire   [42:0] add_ln32_2_fu_3499_p2;
wire   [31:0] sub_ln30_2_fu_3515_p2;
wire   [63:0] shl_ln32_2_fu_3541_p3;
wire   [41:0] shl_ln32_5_fu_3560_p3;
wire   [36:0] shl_ln32_6_fu_3571_p3;
wire  signed [42:0] sext_ln32_3_fu_3567_p1;
wire  signed [42:0] sext_ln32_6_fu_3578_p1;
wire   [42:0] add_ln32_1_fu_3582_p2;
wire   [63:0] shl_ln32_1_fu_3608_p3;
wire   [0:0] icmp_ln1401_fu_3643_p2;
wire   [0:0] or_ln1401_fu_3663_p2;
wire   [4:0] select_ln1401_1_fu_3655_p3;
wire   [4:0] select_ln1401_fu_3648_p3;
wire   [0:0] icmp_ln1401_3_fu_3677_p2;
wire   [0:0] empty_41_fu_3690_p2;
wire   [4:0] empty_40_fu_3682_p3;
wire   [4:0] select_ln1401_2_fu_3669_p3;
wire   [8:0] add_ln1102_fu_3704_p2;
wire   [5:0] lshr_ln4_fu_3709_p4;
wire   [0:0] icmp_ln1109_fu_3737_p2;
wire   [0:0] icmp_ln1109_2_fu_3754_p2;
wire   [0:0] icmp_ln1109_1_fu_3749_p2;
wire   [0:0] or_ln1109_fu_3767_p2;
wire   [4:0] select_ln1109_1_fu_3759_p3;
wire   [4:0] select_ln1109_fu_3742_p3;
wire   [0:0] icmp_ln1109_4_fu_3786_p2;
wire   [0:0] icmp_ln1109_3_fu_3781_p2;
wire   [0:0] empty_31_fu_3799_p2;
wire   [4:0] empty_30_fu_3791_p3;
wire   [4:0] select_ln1109_2_fu_3773_p3;
reg   [31:0] ap_return_0_preg;
reg   [31:0] ap_return_1_preg;
reg   [31:0] ap_return_2_preg;
reg   [31:0] ap_return_3_preg;
reg   [31:0] ap_return_4_preg;
reg   [31:0] ap_return_5_preg;
reg   [31:0] ap_return_6_preg;
reg   [31:0] ap_return_7_preg;
reg   [31:0] ap_return_8_preg;
reg   [7:0] ap_return_9_preg;
reg   [31:0] ap_return_10_preg;
reg   [31:0] ap_return_11_preg;
reg   [31:0] ap_return_12_preg;
reg   [31:0] ap_return_13_preg;
reg   [31:0] ap_return_14_preg;
reg   [31:0] ap_return_15_preg;
reg   [154:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_1643;
reg    ap_condition_1648;
reg    ap_condition_1654;
reg    ap_condition_1660;
reg    ap_condition_590;
reg    ap_condition_1779;
reg    ap_condition_2274;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 155'd1;
#0 free_index = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 grp_mergemem_fu_1902_ap_start_reg = 1'b0;
#0 grp_writemem_fu_1946_ap_start_reg = 1'b0;
#0 grp_split_fu_2003_ap_start_reg = 1'b0;
#0 ap_return_0_preg = 32'd0;
#0 ap_return_1_preg = 32'd0;
#0 ap_return_2_preg = 32'd0;
#0 ap_return_3_preg = 32'd0;
#0 ap_return_4_preg = 32'd0;
#0 ap_return_5_preg = 32'd0;
#0 ap_return_6_preg = 32'd0;
#0 ap_return_7_preg = 32'd0;
#0 ap_return_8_preg = 32'd0;
#0 ap_return_9_preg = 8'd0;
#0 ap_return_10_preg = 32'd0;
#0 ap_return_11_preg = 32'd0;
#0 ap_return_12_preg = 32'd0;
#0 ap_return_13_preg = 32'd0;
#0 ap_return_14_preg = 32'd0;
#0 ap_return_15_preg = 32'd0;
end

execute_upwards_new_bro_node_mix_array_0 #(
    .DataWidth( 32 ),
    .AddressRange( 33 ),
    .AddressWidth( 6 ))
new_bro_node_mix_array_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(new_bro_node_mix_array_0_address0),
    .ce0(new_bro_node_mix_array_0_ce0),
    .we0(new_bro_node_mix_array_0_we0),
    .d0(readbuf2_reg_4473),
    .q0(new_bro_node_mix_array_0_q0),
    .address1(new_bro_node_mix_array_0_address1),
    .ce1(new_bro_node_mix_array_0_ce1),
    .q1(new_bro_node_mix_array_0_q1)
);

execute_upwards_new_bro_node_mix_array_0 #(
    .DataWidth( 32 ),
    .AddressRange( 33 ),
    .AddressWidth( 6 ))
new_bro_node_mix_array_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(new_bro_node_mix_array_1_address0),
    .ce0(new_bro_node_mix_array_1_ce0),
    .we0(new_bro_node_mix_array_1_we0),
    .d0(readbuf3_reg_4478),
    .q0(new_bro_node_mix_array_1_q0),
    .address1(new_bro_node_mix_array_1_address1),
    .ce1(new_bro_node_mix_array_1_ce1),
    .q1(new_bro_node_mix_array_1_q1)
);

execute_upwards_new_bro_node_mix_array_2 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
new_bro_node_mix_array_2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(new_bro_node_mix_array_2_address0),
    .ce0(new_bro_node_mix_array_2_ce0),
    .we0(new_bro_node_mix_array_2_we0),
    .d0(readbuf4_reg_4483),
    .q0(new_bro_node_mix_array_2_q0),
    .address1(new_bro_node_mix_array_2_address1),
    .ce1(new_bro_node_mix_array_2_ce1),
    .q1(new_bro_node_mix_array_2_q1)
);

execute_upwards_new_bro_node_mix_array_2 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
new_bro_node_mix_array_3_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(new_bro_node_mix_array_3_address0),
    .ce0(new_bro_node_mix_array_3_ce0),
    .we0(new_bro_node_mix_array_3_we0),
    .d0(readbuf5_reg_4488),
    .q0(new_bro_node_mix_array_3_q0),
    .address1(new_bro_node_mix_array_3_address1),
    .ce1(new_bro_node_mix_array_3_ce1),
    .q1(new_bro_node_mix_array_3_q1)
);

execute_upwards_new_bro_node_mix_array_2 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
new_bro_node_mix_array_4_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(new_bro_node_mix_array_4_address0),
    .ce0(new_bro_node_mix_array_4_ce0),
    .we0(new_bro_node_mix_array_4_we0),
    .d0(readbuf6_reg_4493),
    .q0(new_bro_node_mix_array_4_q0),
    .address1(new_bro_node_mix_array_4_address1),
    .ce1(new_bro_node_mix_array_4_ce1),
    .q1(new_bro_node_mix_array_4_q1)
);

execute_upwards_new_bro_node_mix_array_2 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
new_bro_node_mix_array_5_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(new_bro_node_mix_array_5_address0),
    .ce0(new_bro_node_mix_array_5_ce0),
    .we0(new_bro_node_mix_array_5_we0),
    .d0(readbuf7_reg_4498),
    .q0(new_bro_node_mix_array_5_q0),
    .address1(new_bro_node_mix_array_5_address1),
    .ce1(new_bro_node_mix_array_5_ce1),
    .q1(new_bro_node_mix_array_5_q1)
);

execute_upwards_new_bro_node_mix_array_2 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
new_bro_node_mix_array_6_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(new_bro_node_mix_array_6_address0),
    .ce0(new_bro_node_mix_array_6_ce0),
    .we0(new_bro_node_mix_array_6_we0),
    .d0(readbuf0_reg_4463),
    .q0(new_bro_node_mix_array_6_q0),
    .address1(new_bro_node_mix_array_6_address1),
    .ce1(new_bro_node_mix_array_6_ce1),
    .q1(new_bro_node_mix_array_6_q1)
);

execute_upwards_new_bro_node_mix_array_2 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
new_bro_node_mix_array_7_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(new_bro_node_mix_array_7_address0),
    .ce0(new_bro_node_mix_array_7_ce0),
    .we0(new_bro_node_mix_array_7_we0),
    .d0(readbuf1_reg_4468),
    .q0(new_bro_node_mix_array_7_q0),
    .address1(new_bro_node_mix_array_7_address1),
    .ce1(new_bro_node_mix_array_7_ce1),
    .q1(new_bro_node_mix_array_7_q1)
);

execute_mergemem grp_mergemem_fu_1902(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_mergemem_fu_1902_ap_start),
    .ap_done(grp_mergemem_fu_1902_ap_done),
    .ap_idle(grp_mergemem_fu_1902_ap_idle),
    .ap_ready(grp_mergemem_fu_1902_ap_ready),
    .m_axi_buf_dram_manage_AWVALID(grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWVALID),
    .m_axi_buf_dram_manage_AWREADY(m_axi_buf_dram_manage_AWREADY),
    .m_axi_buf_dram_manage_AWADDR(grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWADDR),
    .m_axi_buf_dram_manage_AWID(grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWID),
    .m_axi_buf_dram_manage_AWLEN(grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWLEN),
    .m_axi_buf_dram_manage_AWSIZE(grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWSIZE),
    .m_axi_buf_dram_manage_AWBURST(grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWBURST),
    .m_axi_buf_dram_manage_AWLOCK(grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWLOCK),
    .m_axi_buf_dram_manage_AWCACHE(grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWCACHE),
    .m_axi_buf_dram_manage_AWPROT(grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWPROT),
    .m_axi_buf_dram_manage_AWQOS(grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWQOS),
    .m_axi_buf_dram_manage_AWREGION(grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWREGION),
    .m_axi_buf_dram_manage_AWUSER(grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWUSER),
    .m_axi_buf_dram_manage_WVALID(grp_mergemem_fu_1902_m_axi_buf_dram_manage_WVALID),
    .m_axi_buf_dram_manage_WREADY(m_axi_buf_dram_manage_WREADY),
    .m_axi_buf_dram_manage_WDATA(grp_mergemem_fu_1902_m_axi_buf_dram_manage_WDATA),
    .m_axi_buf_dram_manage_WSTRB(grp_mergemem_fu_1902_m_axi_buf_dram_manage_WSTRB),
    .m_axi_buf_dram_manage_WLAST(grp_mergemem_fu_1902_m_axi_buf_dram_manage_WLAST),
    .m_axi_buf_dram_manage_WID(grp_mergemem_fu_1902_m_axi_buf_dram_manage_WID),
    .m_axi_buf_dram_manage_WUSER(grp_mergemem_fu_1902_m_axi_buf_dram_manage_WUSER),
    .m_axi_buf_dram_manage_ARVALID(grp_mergemem_fu_1902_m_axi_buf_dram_manage_ARVALID),
    .m_axi_buf_dram_manage_ARREADY(1'b0),
    .m_axi_buf_dram_manage_ARADDR(grp_mergemem_fu_1902_m_axi_buf_dram_manage_ARADDR),
    .m_axi_buf_dram_manage_ARID(grp_mergemem_fu_1902_m_axi_buf_dram_manage_ARID),
    .m_axi_buf_dram_manage_ARLEN(grp_mergemem_fu_1902_m_axi_buf_dram_manage_ARLEN),
    .m_axi_buf_dram_manage_ARSIZE(grp_mergemem_fu_1902_m_axi_buf_dram_manage_ARSIZE),
    .m_axi_buf_dram_manage_ARBURST(grp_mergemem_fu_1902_m_axi_buf_dram_manage_ARBURST),
    .m_axi_buf_dram_manage_ARLOCK(grp_mergemem_fu_1902_m_axi_buf_dram_manage_ARLOCK),
    .m_axi_buf_dram_manage_ARCACHE(grp_mergemem_fu_1902_m_axi_buf_dram_manage_ARCACHE),
    .m_axi_buf_dram_manage_ARPROT(grp_mergemem_fu_1902_m_axi_buf_dram_manage_ARPROT),
    .m_axi_buf_dram_manage_ARQOS(grp_mergemem_fu_1902_m_axi_buf_dram_manage_ARQOS),
    .m_axi_buf_dram_manage_ARREGION(grp_mergemem_fu_1902_m_axi_buf_dram_manage_ARREGION),
    .m_axi_buf_dram_manage_ARUSER(grp_mergemem_fu_1902_m_axi_buf_dram_manage_ARUSER),
    .m_axi_buf_dram_manage_RVALID(1'b0),
    .m_axi_buf_dram_manage_RREADY(grp_mergemem_fu_1902_m_axi_buf_dram_manage_RREADY),
    .m_axi_buf_dram_manage_RDATA(256'd0),
    .m_axi_buf_dram_manage_RLAST(1'b0),
    .m_axi_buf_dram_manage_RID(1'd0),
    .m_axi_buf_dram_manage_RUSER(1'd0),
    .m_axi_buf_dram_manage_RRESP(2'd0),
    .m_axi_buf_dram_manage_BVALID(m_axi_buf_dram_manage_BVALID),
    .m_axi_buf_dram_manage_BREADY(grp_mergemem_fu_1902_m_axi_buf_dram_manage_BREADY),
    .m_axi_buf_dram_manage_BRESP(m_axi_buf_dram_manage_BRESP),
    .m_axi_buf_dram_manage_BID(m_axi_buf_dram_manage_BID),
    .m_axi_buf_dram_manage_BUSER(m_axi_buf_dram_manage_BUSER),
    .nodeindex(grp_mergemem_fu_1902_nodeindex),
    .p_read1(grp_mergemem_fu_1902_p_read1),
    .node_2_address0(grp_mergemem_fu_1902_node_2_address0),
    .node_2_ce0(grp_mergemem_fu_1902_node_2_ce0),
    .node_2_q0(grp_mergemem_fu_1902_node_2_q0),
    .node_2_address1(grp_mergemem_fu_1902_node_2_address1),
    .node_2_ce1(grp_mergemem_fu_1902_node_2_ce1),
    .node_2_q1(grp_mergemem_fu_1902_node_2_q1),
    .node_21_address0(grp_mergemem_fu_1902_node_21_address0),
    .node_21_ce0(grp_mergemem_fu_1902_node_21_ce0),
    .node_21_q0(grp_mergemem_fu_1902_node_21_q0),
    .node_21_address1(grp_mergemem_fu_1902_node_21_address1),
    .node_21_ce1(grp_mergemem_fu_1902_node_21_ce1),
    .node_21_q1(grp_mergemem_fu_1902_node_21_q1),
    .node_22_address0(grp_mergemem_fu_1902_node_22_address0),
    .node_22_ce0(grp_mergemem_fu_1902_node_22_ce0),
    .node_22_q0(grp_mergemem_fu_1902_node_22_q0),
    .node_22_address1(grp_mergemem_fu_1902_node_22_address1),
    .node_22_ce1(grp_mergemem_fu_1902_node_22_ce1),
    .node_22_q1(grp_mergemem_fu_1902_node_22_q1),
    .node_23_address0(grp_mergemem_fu_1902_node_23_address0),
    .node_23_ce0(grp_mergemem_fu_1902_node_23_ce0),
    .node_23_q0(grp_mergemem_fu_1902_node_23_q0),
    .node_23_address1(grp_mergemem_fu_1902_node_23_address1),
    .node_23_ce1(grp_mergemem_fu_1902_node_23_ce1),
    .node_23_q1(grp_mergemem_fu_1902_node_23_q1),
    .node_24_address0(grp_mergemem_fu_1902_node_24_address0),
    .node_24_ce0(grp_mergemem_fu_1902_node_24_ce0),
    .node_24_q0(grp_mergemem_fu_1902_node_24_q0),
    .node_24_address1(grp_mergemem_fu_1902_node_24_address1),
    .node_24_ce1(grp_mergemem_fu_1902_node_24_ce1),
    .node_24_q1(grp_mergemem_fu_1902_node_24_q1),
    .node_25_address0(grp_mergemem_fu_1902_node_25_address0),
    .node_25_ce0(grp_mergemem_fu_1902_node_25_ce0),
    .node_25_q0(grp_mergemem_fu_1902_node_25_q0),
    .node_25_address1(grp_mergemem_fu_1902_node_25_address1),
    .node_25_ce1(grp_mergemem_fu_1902_node_25_ce1),
    .node_25_q1(grp_mergemem_fu_1902_node_25_q1),
    .node_26_address0(grp_mergemem_fu_1902_node_26_address0),
    .node_26_ce0(grp_mergemem_fu_1902_node_26_ce0),
    .node_26_q0(grp_mergemem_fu_1902_node_26_q0),
    .node_26_address1(grp_mergemem_fu_1902_node_26_address1),
    .node_26_ce1(grp_mergemem_fu_1902_node_26_ce1),
    .node_26_q1(grp_mergemem_fu_1902_node_26_q1),
    .node_27_address0(grp_mergemem_fu_1902_node_27_address0),
    .node_27_ce0(grp_mergemem_fu_1902_node_27_ce0),
    .node_27_q0(grp_mergemem_fu_1902_node_27_q0),
    .node_27_address1(grp_mergemem_fu_1902_node_27_address1),
    .node_27_ce1(grp_mergemem_fu_1902_node_27_ce1),
    .node_27_q1(grp_mergemem_fu_1902_node_27_q1),
    .bronode_2_address0(grp_mergemem_fu_1902_bronode_2_address0),
    .bronode_2_ce0(grp_mergemem_fu_1902_bronode_2_ce0),
    .bronode_2_q0(grp_mergemem_fu_1902_bronode_2_q0),
    .bronode_2_address1(grp_mergemem_fu_1902_bronode_2_address1),
    .bronode_2_ce1(grp_mergemem_fu_1902_bronode_2_ce1),
    .bronode_2_q1(grp_mergemem_fu_1902_bronode_2_q1),
    .bronode_28_address0(grp_mergemem_fu_1902_bronode_28_address0),
    .bronode_28_ce0(grp_mergemem_fu_1902_bronode_28_ce0),
    .bronode_28_q0(grp_mergemem_fu_1902_bronode_28_q0),
    .bronode_28_address1(grp_mergemem_fu_1902_bronode_28_address1),
    .bronode_28_ce1(grp_mergemem_fu_1902_bronode_28_ce1),
    .bronode_28_q1(grp_mergemem_fu_1902_bronode_28_q1),
    .bronode_29_address0(grp_mergemem_fu_1902_bronode_29_address0),
    .bronode_29_ce0(grp_mergemem_fu_1902_bronode_29_ce0),
    .bronode_29_q0(grp_mergemem_fu_1902_bronode_29_q0),
    .bronode_29_address1(grp_mergemem_fu_1902_bronode_29_address1),
    .bronode_29_ce1(grp_mergemem_fu_1902_bronode_29_ce1),
    .bronode_29_q1(grp_mergemem_fu_1902_bronode_29_q1),
    .bronode_210_address0(grp_mergemem_fu_1902_bronode_210_address0),
    .bronode_210_ce0(grp_mergemem_fu_1902_bronode_210_ce0),
    .bronode_210_q0(grp_mergemem_fu_1902_bronode_210_q0),
    .bronode_210_address1(grp_mergemem_fu_1902_bronode_210_address1),
    .bronode_210_ce1(grp_mergemem_fu_1902_bronode_210_ce1),
    .bronode_210_q1(grp_mergemem_fu_1902_bronode_210_q1),
    .bronode_211_address0(grp_mergemem_fu_1902_bronode_211_address0),
    .bronode_211_ce0(grp_mergemem_fu_1902_bronode_211_ce0),
    .bronode_211_q0(grp_mergemem_fu_1902_bronode_211_q0),
    .bronode_211_address1(grp_mergemem_fu_1902_bronode_211_address1),
    .bronode_211_ce1(grp_mergemem_fu_1902_bronode_211_ce1),
    .bronode_211_q1(grp_mergemem_fu_1902_bronode_211_q1),
    .bronode_212_address0(grp_mergemem_fu_1902_bronode_212_address0),
    .bronode_212_ce0(grp_mergemem_fu_1902_bronode_212_ce0),
    .bronode_212_q0(grp_mergemem_fu_1902_bronode_212_q0),
    .bronode_212_address1(grp_mergemem_fu_1902_bronode_212_address1),
    .bronode_212_ce1(grp_mergemem_fu_1902_bronode_212_ce1),
    .bronode_212_q1(grp_mergemem_fu_1902_bronode_212_q1),
    .bronode_213_address0(grp_mergemem_fu_1902_bronode_213_address0),
    .bronode_213_ce0(grp_mergemem_fu_1902_bronode_213_ce0),
    .bronode_213_q0(grp_mergemem_fu_1902_bronode_213_q0),
    .bronode_213_address1(grp_mergemem_fu_1902_bronode_213_address1),
    .bronode_213_ce1(grp_mergemem_fu_1902_bronode_213_ce1),
    .bronode_213_q1(grp_mergemem_fu_1902_bronode_213_q1),
    .bronode_214_address0(grp_mergemem_fu_1902_bronode_214_address0),
    .bronode_214_ce0(grp_mergemem_fu_1902_bronode_214_ce0),
    .bronode_214_q0(grp_mergemem_fu_1902_bronode_214_q0),
    .bronode_214_address1(grp_mergemem_fu_1902_bronode_214_address1),
    .bronode_214_ce1(grp_mergemem_fu_1902_bronode_214_ce1),
    .bronode_214_q1(grp_mergemem_fu_1902_bronode_214_q1),
    .checkpos(grp_mergemem_fu_1902_checkpos),
    .head_index(parent_fb_index_4_reg_4435),
    .fb_length(parent_fb_length_7_reg_4441)
);

execute_writemem grp_writemem_fu_1946(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_writemem_fu_1946_ap_start),
    .ap_done(grp_writemem_fu_1946_ap_done),
    .ap_idle(grp_writemem_fu_1946_ap_idle),
    .ap_ready(grp_writemem_fu_1946_ap_ready),
    .m_axi_buf_dram_manage_AWVALID(grp_writemem_fu_1946_m_axi_buf_dram_manage_AWVALID),
    .m_axi_buf_dram_manage_AWREADY(m_axi_buf_dram_manage_AWREADY),
    .m_axi_buf_dram_manage_AWADDR(grp_writemem_fu_1946_m_axi_buf_dram_manage_AWADDR),
    .m_axi_buf_dram_manage_AWID(grp_writemem_fu_1946_m_axi_buf_dram_manage_AWID),
    .m_axi_buf_dram_manage_AWLEN(grp_writemem_fu_1946_m_axi_buf_dram_manage_AWLEN),
    .m_axi_buf_dram_manage_AWSIZE(grp_writemem_fu_1946_m_axi_buf_dram_manage_AWSIZE),
    .m_axi_buf_dram_manage_AWBURST(grp_writemem_fu_1946_m_axi_buf_dram_manage_AWBURST),
    .m_axi_buf_dram_manage_AWLOCK(grp_writemem_fu_1946_m_axi_buf_dram_manage_AWLOCK),
    .m_axi_buf_dram_manage_AWCACHE(grp_writemem_fu_1946_m_axi_buf_dram_manage_AWCACHE),
    .m_axi_buf_dram_manage_AWPROT(grp_writemem_fu_1946_m_axi_buf_dram_manage_AWPROT),
    .m_axi_buf_dram_manage_AWQOS(grp_writemem_fu_1946_m_axi_buf_dram_manage_AWQOS),
    .m_axi_buf_dram_manage_AWREGION(grp_writemem_fu_1946_m_axi_buf_dram_manage_AWREGION),
    .m_axi_buf_dram_manage_AWUSER(grp_writemem_fu_1946_m_axi_buf_dram_manage_AWUSER),
    .m_axi_buf_dram_manage_WVALID(grp_writemem_fu_1946_m_axi_buf_dram_manage_WVALID),
    .m_axi_buf_dram_manage_WREADY(m_axi_buf_dram_manage_WREADY),
    .m_axi_buf_dram_manage_WDATA(grp_writemem_fu_1946_m_axi_buf_dram_manage_WDATA),
    .m_axi_buf_dram_manage_WSTRB(grp_writemem_fu_1946_m_axi_buf_dram_manage_WSTRB),
    .m_axi_buf_dram_manage_WLAST(grp_writemem_fu_1946_m_axi_buf_dram_manage_WLAST),
    .m_axi_buf_dram_manage_WID(grp_writemem_fu_1946_m_axi_buf_dram_manage_WID),
    .m_axi_buf_dram_manage_WUSER(grp_writemem_fu_1946_m_axi_buf_dram_manage_WUSER),
    .m_axi_buf_dram_manage_ARVALID(grp_writemem_fu_1946_m_axi_buf_dram_manage_ARVALID),
    .m_axi_buf_dram_manage_ARREADY(1'b0),
    .m_axi_buf_dram_manage_ARADDR(grp_writemem_fu_1946_m_axi_buf_dram_manage_ARADDR),
    .m_axi_buf_dram_manage_ARID(grp_writemem_fu_1946_m_axi_buf_dram_manage_ARID),
    .m_axi_buf_dram_manage_ARLEN(grp_writemem_fu_1946_m_axi_buf_dram_manage_ARLEN),
    .m_axi_buf_dram_manage_ARSIZE(grp_writemem_fu_1946_m_axi_buf_dram_manage_ARSIZE),
    .m_axi_buf_dram_manage_ARBURST(grp_writemem_fu_1946_m_axi_buf_dram_manage_ARBURST),
    .m_axi_buf_dram_manage_ARLOCK(grp_writemem_fu_1946_m_axi_buf_dram_manage_ARLOCK),
    .m_axi_buf_dram_manage_ARCACHE(grp_writemem_fu_1946_m_axi_buf_dram_manage_ARCACHE),
    .m_axi_buf_dram_manage_ARPROT(grp_writemem_fu_1946_m_axi_buf_dram_manage_ARPROT),
    .m_axi_buf_dram_manage_ARQOS(grp_writemem_fu_1946_m_axi_buf_dram_manage_ARQOS),
    .m_axi_buf_dram_manage_ARREGION(grp_writemem_fu_1946_m_axi_buf_dram_manage_ARREGION),
    .m_axi_buf_dram_manage_ARUSER(grp_writemem_fu_1946_m_axi_buf_dram_manage_ARUSER),
    .m_axi_buf_dram_manage_RVALID(1'b0),
    .m_axi_buf_dram_manage_RREADY(grp_writemem_fu_1946_m_axi_buf_dram_manage_RREADY),
    .m_axi_buf_dram_manage_RDATA(256'd0),
    .m_axi_buf_dram_manage_RLAST(1'b0),
    .m_axi_buf_dram_manage_RID(1'd0),
    .m_axi_buf_dram_manage_RUSER(1'd0),
    .m_axi_buf_dram_manage_RRESP(2'd0),
    .m_axi_buf_dram_manage_BVALID(m_axi_buf_dram_manage_BVALID),
    .m_axi_buf_dram_manage_BREADY(grp_writemem_fu_1946_m_axi_buf_dram_manage_BREADY),
    .m_axi_buf_dram_manage_BRESP(m_axi_buf_dram_manage_BRESP),
    .m_axi_buf_dram_manage_BID(m_axi_buf_dram_manage_BID),
    .m_axi_buf_dram_manage_BUSER(m_axi_buf_dram_manage_BUSER),
    .p_read(grp_writemem_fu_1946_p_read),
    .p_read1(grp_writemem_fu_1946_p_read1),
    .node_mix_array_address0(grp_writemem_fu_1946_node_mix_array_address0),
    .node_mix_array_ce0(grp_writemem_fu_1946_node_mix_array_ce0),
    .node_mix_array_q0(grp_writemem_fu_1946_node_mix_array_q0),
    .node_mix_array_address1(grp_writemem_fu_1946_node_mix_array_address1),
    .node_mix_array_ce1(grp_writemem_fu_1946_node_mix_array_ce1),
    .node_mix_array_q1(grp_writemem_fu_1946_node_mix_array_q1),
    .node_mix_array1_address0(grp_writemem_fu_1946_node_mix_array1_address0),
    .node_mix_array1_ce0(grp_writemem_fu_1946_node_mix_array1_ce0),
    .node_mix_array1_q0(grp_writemem_fu_1946_node_mix_array1_q0),
    .node_mix_array1_address1(grp_writemem_fu_1946_node_mix_array1_address1),
    .node_mix_array1_ce1(grp_writemem_fu_1946_node_mix_array1_ce1),
    .node_mix_array1_q1(grp_writemem_fu_1946_node_mix_array1_q1),
    .node_mix_array2_address0(grp_writemem_fu_1946_node_mix_array2_address0),
    .node_mix_array2_ce0(grp_writemem_fu_1946_node_mix_array2_ce0),
    .node_mix_array2_q0(grp_writemem_fu_1946_node_mix_array2_q0),
    .node_mix_array2_address1(grp_writemem_fu_1946_node_mix_array2_address1),
    .node_mix_array2_ce1(grp_writemem_fu_1946_node_mix_array2_ce1),
    .node_mix_array2_q1(grp_writemem_fu_1946_node_mix_array2_q1),
    .node_mix_array3_address0(grp_writemem_fu_1946_node_mix_array3_address0),
    .node_mix_array3_ce0(grp_writemem_fu_1946_node_mix_array3_ce0),
    .node_mix_array3_q0(grp_writemem_fu_1946_node_mix_array3_q0),
    .node_mix_array3_address1(grp_writemem_fu_1946_node_mix_array3_address1),
    .node_mix_array3_ce1(grp_writemem_fu_1946_node_mix_array3_ce1),
    .node_mix_array3_q1(grp_writemem_fu_1946_node_mix_array3_q1),
    .node_mix_array4_address0(grp_writemem_fu_1946_node_mix_array4_address0),
    .node_mix_array4_ce0(grp_writemem_fu_1946_node_mix_array4_ce0),
    .node_mix_array4_q0(grp_writemem_fu_1946_node_mix_array4_q0),
    .node_mix_array4_address1(grp_writemem_fu_1946_node_mix_array4_address1),
    .node_mix_array4_ce1(grp_writemem_fu_1946_node_mix_array4_ce1),
    .node_mix_array4_q1(grp_writemem_fu_1946_node_mix_array4_q1),
    .node_mix_array5_address0(grp_writemem_fu_1946_node_mix_array5_address0),
    .node_mix_array5_ce0(grp_writemem_fu_1946_node_mix_array5_ce0),
    .node_mix_array5_q0(grp_writemem_fu_1946_node_mix_array5_q0),
    .node_mix_array5_address1(grp_writemem_fu_1946_node_mix_array5_address1),
    .node_mix_array5_ce1(grp_writemem_fu_1946_node_mix_array5_ce1),
    .node_mix_array5_q1(grp_writemem_fu_1946_node_mix_array5_q1),
    .node_mix_array6_address0(grp_writemem_fu_1946_node_mix_array6_address0),
    .node_mix_array6_ce0(grp_writemem_fu_1946_node_mix_array6_ce0),
    .node_mix_array6_q0(grp_writemem_fu_1946_node_mix_array6_q0),
    .node_mix_array6_address1(grp_writemem_fu_1946_node_mix_array6_address1),
    .node_mix_array6_ce1(grp_writemem_fu_1946_node_mix_array6_ce1),
    .node_mix_array6_q1(grp_writemem_fu_1946_node_mix_array6_q1),
    .node_mix_array7_address0(grp_writemem_fu_1946_node_mix_array7_address0),
    .node_mix_array7_ce0(grp_writemem_fu_1946_node_mix_array7_ce0),
    .node_mix_array7_q0(grp_writemem_fu_1946_node_mix_array7_q0),
    .node_mix_array7_address1(grp_writemem_fu_1946_node_mix_array7_address1),
    .node_mix_array7_ce1(grp_writemem_fu_1946_node_mix_array7_ce1),
    .node_mix_array7_q1(grp_writemem_fu_1946_node_mix_array7_q1),
    .nodeindex(grp_writemem_fu_1946_nodeindex),
    .Isinsert(grp_writemem_fu_1946_Isinsert),
    .Isdelete(grp_writemem_fu_1946_Isdelete),
    .pos_node(grp_writemem_fu_1946_pos_node),
    .pos_graph(grp_writemem_fu_1946_pos_graph),
    .checkpos(grp_writemem_fu_1946_checkpos),
    .checkpos_graph(grp_writemem_fu_1946_checkpos_graph),
    .head_index(grp_writemem_fu_1946_head_index),
    .fb_length(grp_writemem_fu_1946_fb_length),
    .subgraph(grp_writemem_fu_1946_subgraph),
    .maxsubgraph(grp_writemem_fu_1946_maxsubgraph)
);

execute_split grp_split_fu_2003(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_split_fu_2003_ap_start),
    .ap_done(grp_split_fu_2003_ap_done),
    .ap_idle(grp_split_fu_2003_ap_idle),
    .ap_ready(grp_split_fu_2003_ap_ready),
    .m_axi_buf_dram_manage_AWVALID(grp_split_fu_2003_m_axi_buf_dram_manage_AWVALID),
    .m_axi_buf_dram_manage_AWREADY(m_axi_buf_dram_manage_AWREADY),
    .m_axi_buf_dram_manage_AWADDR(grp_split_fu_2003_m_axi_buf_dram_manage_AWADDR),
    .m_axi_buf_dram_manage_AWID(grp_split_fu_2003_m_axi_buf_dram_manage_AWID),
    .m_axi_buf_dram_manage_AWLEN(grp_split_fu_2003_m_axi_buf_dram_manage_AWLEN),
    .m_axi_buf_dram_manage_AWSIZE(grp_split_fu_2003_m_axi_buf_dram_manage_AWSIZE),
    .m_axi_buf_dram_manage_AWBURST(grp_split_fu_2003_m_axi_buf_dram_manage_AWBURST),
    .m_axi_buf_dram_manage_AWLOCK(grp_split_fu_2003_m_axi_buf_dram_manage_AWLOCK),
    .m_axi_buf_dram_manage_AWCACHE(grp_split_fu_2003_m_axi_buf_dram_manage_AWCACHE),
    .m_axi_buf_dram_manage_AWPROT(grp_split_fu_2003_m_axi_buf_dram_manage_AWPROT),
    .m_axi_buf_dram_manage_AWQOS(grp_split_fu_2003_m_axi_buf_dram_manage_AWQOS),
    .m_axi_buf_dram_manage_AWREGION(grp_split_fu_2003_m_axi_buf_dram_manage_AWREGION),
    .m_axi_buf_dram_manage_AWUSER(grp_split_fu_2003_m_axi_buf_dram_manage_AWUSER),
    .m_axi_buf_dram_manage_WVALID(grp_split_fu_2003_m_axi_buf_dram_manage_WVALID),
    .m_axi_buf_dram_manage_WREADY(m_axi_buf_dram_manage_WREADY),
    .m_axi_buf_dram_manage_WDATA(grp_split_fu_2003_m_axi_buf_dram_manage_WDATA),
    .m_axi_buf_dram_manage_WSTRB(grp_split_fu_2003_m_axi_buf_dram_manage_WSTRB),
    .m_axi_buf_dram_manage_WLAST(grp_split_fu_2003_m_axi_buf_dram_manage_WLAST),
    .m_axi_buf_dram_manage_WID(grp_split_fu_2003_m_axi_buf_dram_manage_WID),
    .m_axi_buf_dram_manage_WUSER(grp_split_fu_2003_m_axi_buf_dram_manage_WUSER),
    .m_axi_buf_dram_manage_ARVALID(grp_split_fu_2003_m_axi_buf_dram_manage_ARVALID),
    .m_axi_buf_dram_manage_ARREADY(1'b0),
    .m_axi_buf_dram_manage_ARADDR(grp_split_fu_2003_m_axi_buf_dram_manage_ARADDR),
    .m_axi_buf_dram_manage_ARID(grp_split_fu_2003_m_axi_buf_dram_manage_ARID),
    .m_axi_buf_dram_manage_ARLEN(grp_split_fu_2003_m_axi_buf_dram_manage_ARLEN),
    .m_axi_buf_dram_manage_ARSIZE(grp_split_fu_2003_m_axi_buf_dram_manage_ARSIZE),
    .m_axi_buf_dram_manage_ARBURST(grp_split_fu_2003_m_axi_buf_dram_manage_ARBURST),
    .m_axi_buf_dram_manage_ARLOCK(grp_split_fu_2003_m_axi_buf_dram_manage_ARLOCK),
    .m_axi_buf_dram_manage_ARCACHE(grp_split_fu_2003_m_axi_buf_dram_manage_ARCACHE),
    .m_axi_buf_dram_manage_ARPROT(grp_split_fu_2003_m_axi_buf_dram_manage_ARPROT),
    .m_axi_buf_dram_manage_ARQOS(grp_split_fu_2003_m_axi_buf_dram_manage_ARQOS),
    .m_axi_buf_dram_manage_ARREGION(grp_split_fu_2003_m_axi_buf_dram_manage_ARREGION),
    .m_axi_buf_dram_manage_ARUSER(grp_split_fu_2003_m_axi_buf_dram_manage_ARUSER),
    .m_axi_buf_dram_manage_RVALID(1'b0),
    .m_axi_buf_dram_manage_RREADY(grp_split_fu_2003_m_axi_buf_dram_manage_RREADY),
    .m_axi_buf_dram_manage_RDATA(256'd0),
    .m_axi_buf_dram_manage_RLAST(1'b0),
    .m_axi_buf_dram_manage_RID(1'd0),
    .m_axi_buf_dram_manage_RUSER(1'd0),
    .m_axi_buf_dram_manage_RRESP(2'd0),
    .m_axi_buf_dram_manage_BVALID(m_axi_buf_dram_manage_BVALID),
    .m_axi_buf_dram_manage_BREADY(grp_split_fu_2003_m_axi_buf_dram_manage_BREADY),
    .m_axi_buf_dram_manage_BRESP(m_axi_buf_dram_manage_BRESP),
    .m_axi_buf_dram_manage_BID(m_axi_buf_dram_manage_BID),
    .m_axi_buf_dram_manage_BUSER(m_axi_buf_dram_manage_BUSER),
    .p_read(port_cross_in_node_next_free_offset_1_reg_1248),
    .node_mix_array_address0(grp_split_fu_2003_node_mix_array_address0),
    .node_mix_array_ce0(grp_split_fu_2003_node_mix_array_ce0),
    .node_mix_array_q0(port_cross_in_node_mix_array_q0),
    .node_mix_array_address1(grp_split_fu_2003_node_mix_array_address1),
    .node_mix_array_ce1(grp_split_fu_2003_node_mix_array_ce1),
    .node_mix_array_q1(port_cross_in_node_mix_array_q1),
    .node_mix_array1_address0(grp_split_fu_2003_node_mix_array1_address0),
    .node_mix_array1_ce0(grp_split_fu_2003_node_mix_array1_ce0),
    .node_mix_array1_q0(port_cross_in_node_mix_array1_q0),
    .node_mix_array1_address1(grp_split_fu_2003_node_mix_array1_address1),
    .node_mix_array1_ce1(grp_split_fu_2003_node_mix_array1_ce1),
    .node_mix_array1_q1(port_cross_in_node_mix_array1_q1),
    .node_mix_array2_address0(grp_split_fu_2003_node_mix_array2_address0),
    .node_mix_array2_ce0(grp_split_fu_2003_node_mix_array2_ce0),
    .node_mix_array2_q0(port_cross_in_node_mix_array2_q0),
    .node_mix_array2_address1(grp_split_fu_2003_node_mix_array2_address1),
    .node_mix_array2_ce1(grp_split_fu_2003_node_mix_array2_ce1),
    .node_mix_array2_q1(port_cross_in_node_mix_array2_q1),
    .node_mix_array3_address0(grp_split_fu_2003_node_mix_array3_address0),
    .node_mix_array3_ce0(grp_split_fu_2003_node_mix_array3_ce0),
    .node_mix_array3_q0(port_cross_in_node_mix_array3_q0),
    .node_mix_array3_address1(grp_split_fu_2003_node_mix_array3_address1),
    .node_mix_array3_ce1(grp_split_fu_2003_node_mix_array3_ce1),
    .node_mix_array3_q1(port_cross_in_node_mix_array3_q1),
    .node_mix_array4_address0(grp_split_fu_2003_node_mix_array4_address0),
    .node_mix_array4_ce0(grp_split_fu_2003_node_mix_array4_ce0),
    .node_mix_array4_q0(port_cross_in_node_mix_array4_q0),
    .node_mix_array4_address1(grp_split_fu_2003_node_mix_array4_address1),
    .node_mix_array4_ce1(grp_split_fu_2003_node_mix_array4_ce1),
    .node_mix_array4_q1(port_cross_in_node_mix_array4_q1),
    .node_mix_array5_address0(grp_split_fu_2003_node_mix_array5_address0),
    .node_mix_array5_ce0(grp_split_fu_2003_node_mix_array5_ce0),
    .node_mix_array5_q0(port_cross_in_node_mix_array5_q0),
    .node_mix_array5_address1(grp_split_fu_2003_node_mix_array5_address1),
    .node_mix_array5_ce1(grp_split_fu_2003_node_mix_array5_ce1),
    .node_mix_array5_q1(port_cross_in_node_mix_array5_q1),
    .node_mix_array6_address0(grp_split_fu_2003_node_mix_array6_address0),
    .node_mix_array6_ce0(grp_split_fu_2003_node_mix_array6_ce0),
    .node_mix_array6_q0(port_cross_in_node_mix_array6_q0),
    .node_mix_array6_address1(grp_split_fu_2003_node_mix_array6_address1),
    .node_mix_array6_ce1(grp_split_fu_2003_node_mix_array6_ce1),
    .node_mix_array6_q1(port_cross_in_node_mix_array6_q1),
    .node_mix_array7_address0(grp_split_fu_2003_node_mix_array7_address0),
    .node_mix_array7_ce0(grp_split_fu_2003_node_mix_array7_ce0),
    .node_mix_array7_q0(port_cross_in_node_mix_array7_q0),
    .node_mix_array7_address1(grp_split_fu_2003_node_mix_array7_address1),
    .node_mix_array7_ce1(grp_split_fu_2003_node_mix_array7_ce1),
    .node_mix_array7_q1(port_cross_in_node_mix_array7_q1),
    .nodeindex(grp_split_fu_2003_nodeindex),
    .p_read1(grp_split_fu_2003_p_read1),
    .p_read2(grp_split_fu_2003_p_read2),
    .p_read3(grp_split_fu_2003_p_read3),
    .p_read4(grp_split_fu_2003_p_read4),
    .p_read5(grp_split_fu_2003_p_read5),
    .p_read6(grp_split_fu_2003_p_read6),
    .pos_node(trunc_ln966_reg_4241),
    .pos_graph(add_ln301_4_reg_4317),
    .head_index(port_in_fb_index_read),
    .fb_length(port_in_fb_length_read),
    .subgraph(port_in_broindex_read),
    .ap_return_0(grp_split_fu_2003_ap_return_0),
    .ap_return_1(grp_split_fu_2003_ap_return_1)
);

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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state89))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state88)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state89)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state89);
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
        end else if ((1'b1 == ap_CS_fsm_state88)) begin
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
        if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
                        ap_return_0_preg[4 : 0] <= zext_ln1079_fu_2806_p1[4 : 0];
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_10_preg <= 32'd0;
    end else begin
        if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
            ap_return_10_preg <= select_ln1578_fu_2810_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_11_preg <= 32'd0;
    end else begin
        if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
            ap_return_11_preg <= ap_phi_mux_port_cross_in_node_max_fb_length_1_phi_fu_1386_p36;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_12_preg <= 32'd0;
    end else begin
        if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
            ap_return_12_preg <= select_ln1578_1_fu_2817_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_13_preg <= 32'd0;
    end else begin
        if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
            ap_return_13_preg <= ap_phi_mux_port_cross_in_node_max_subgraph_length_1_phi_fu_1429_p36;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_14_preg <= 32'd0;
    end else begin
        if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
            ap_return_14_preg <= ap_phi_mux_port_cross_in_node_num_1_phi_fu_1473_p36;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_15_preg <= 32'd0;
    end else begin
        if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
            ap_return_15_preg <= ap_phi_mux_port_cross_in_node_next_free_offset_2_phi_fu_1526_p36;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= 32'd0;
    end else begin
        if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
            ap_return_1_preg <= port_in_address_read;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_2_preg <= 32'd0;
    end else begin
        if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
            ap_return_2_preg <= ap_phi_mux_nodeindex_next_phi_fu_1627_p36;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_3_preg <= 32'd0;
    end else begin
        if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
            ap_return_3_preg <= ap_phi_mux_broindex_next_phi_fu_1670_p36;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_4_preg <= 32'd0;
    end else begin
        if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
            ap_return_4_preg <= port_in_merge_index_read;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_5_preg <= 32'd0;
    end else begin
        if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
            ap_return_5_preg <= port_in_merge_length_read;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_6_preg <= 32'd0;
    end else begin
        if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
            ap_return_6_preg <= ap_phi_mux_parent_fb_index_next_7_phi_fu_1712_p36;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_7_preg <= 32'd0;
    end else begin
        if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
            ap_return_7_preg <= ap_phi_mux_parent_fb_length_next_7_phi_fu_1771_p36;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_8_preg <= 32'd0;
    end else begin
        if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
            ap_return_8_preg <= ap_phi_mux_node_max_fb_length_next_1_phi_fu_1830_p36;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_9_preg <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
            ap_return_9_preg <= level_next_reg_4069;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_mergemem_fu_1902_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state121) | (1'b1 == ap_CS_fsm_state112))) begin
            grp_mergemem_fu_1902_ap_start_reg <= 1'b1;
        end else if ((grp_mergemem_fu_1902_ap_ready == 1'b1)) begin
            grp_mergemem_fu_1902_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_split_fu_2003_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state45))) begin
            grp_split_fu_2003_ap_start_reg <= 1'b1;
        end else if ((grp_split_fu_2003_ap_ready == 1'b1)) begin
            grp_split_fu_2003_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_writemem_fu_1946_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state146) | (1'b1 == ap_CS_fsm_state131) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state101))) begin
            grp_writemem_fu_1946_ap_start_reg <= 1'b1;
        end else if ((grp_writemem_fu_1946_ap_ready == 1'b1)) begin
            grp_writemem_fu_1946_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1477_reg_4207 == 1'd1) & (port_in_op_read == 5'd13) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
        broindex_next_reg_1667 <= new_index_reg_4217;
    end else if (((1'b1 == ap_CS_fsm_state142) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state157) | ((port_in_op_read_1_read_fu_466_p2 == 5'd10) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd6) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd9) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd21) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd19) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((((port_in_op_read_1_read_fu_466_p2 == 5'd22) & (icmp_ln1538_fu_2065_p2 == 1'd1)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd12) & (icmp_ln1538_fu_2065_p2 == 1'd1))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd15) & (icmp_ln1538_fu_2065_p2 == 1'd1))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd1) & (icmp_ln1538_fu_2065_p2 == 1'd1)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((port_in_op_read_1_read_fu_466_p2 == 5'd0) | ((port_in_op_read_1_read_fu_466_p2 == 5'd2) | ((port_in_op_read_1_read_fu_466_p2 == 5'd3) | ((port_in_op_read_1_read_fu_466_p2 == 5'd14) | ((port_in_op_read_1_read_fu_466_p2 == 5'd16) | ((port_in_op_read_1_read_fu_466_p2 == 5'd23) | ((port_in_op_read_1_read_fu_466_p2 == 5'd24) | ((port_in_op_read_1_read_fu_466_p2 == 5'd25) | ((port_in_op_read_1_read_fu_466_p2 == 5'd26) | ((port_in_op_read_1_read_fu_466_p2 == 5'd27) | ((port_in_op_read_1_read_fu_466_p2 == 5'd28) | ((port_in_op_read_1_read_fu_466_p2 == 5'd29) | ((port_in_op_read_1_read_fu_466_p2 == 5'd30) | (port_in_op_read_1_read_fu_466_p2 == 5'd31))))))))))))))) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48) & (((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)))) | (~(port_in_op_read_1_read_fu_466_p2 == 5'd10) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd6) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd9) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd21) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd19) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)))) begin
        broindex_next_reg_1667 <= port_cross_in_broindex_read;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        if ((1'b1 == ap_condition_1779)) begin
            checkpos_1_reg_1880 <= port_cross_in_pos_read;
        end else if ((1'b1 == ap_condition_590)) begin
            checkpos_1_reg_1880 <= checkpos_fu_2296_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1466_reg_4121 == 1'd1) & (1'b1 == ap_CS_fsm_state25))) begin
        free_index <= add_ln45_1_fu_2536_p2;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        free_index <= add_ln45_3_fu_2734_p2;
    end else if (((1'b1 == ap_CS_fsm_state114) & (m_axi_buf_dram_manage_AWREADY == 1'b1))) begin
        free_index <= port_cross_in_broindex_read;
    end else if ((((1'b1 == ap_CS_fsm_state75) & (m_axi_buf_dram_manage_AWREADY == 1'b1)) | ((1'b1 == ap_CS_fsm_state123) & (m_axi_buf_dram_manage_AWREADY == 1'b1)))) begin
        free_index <= port_cross_in_nodeindex_read;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln74_reg_4459 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        idx_reg_1890 <= add_ln74_reg_4454;
    end else if ((1'b1 == ap_CS_fsm_state88)) begin
        idx_reg_1890 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state36) | ((icmp_ln1477_reg_4207 == 1'd1) & (port_in_op_read == 5'd13) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)))) begin
        node_max_fb_length_next_1_reg_1826 <= grp_fu_2090_p3;
    end else if (((1'b1 == ap_CS_fsm_state142) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state157))) begin
        node_max_fb_length_next_1_reg_1826 <= grp_fu_2078_p3;
    end else if ((((port_in_op_read_1_read_fu_466_p2 == 5'd10) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd6) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd9) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd21) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd19) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((((port_in_op_read_1_read_fu_466_p2 == 5'd22) & (icmp_ln1538_fu_2065_p2 == 1'd1)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd12) & (icmp_ln1538_fu_2065_p2 == 1'd1))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd15) & (icmp_ln1538_fu_2065_p2 == 1'd1))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd1) & (icmp_ln1538_fu_2065_p2 == 1'd1)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((port_in_op_read_1_read_fu_466_p2 == 5'd0) | ((port_in_op_read_1_read_fu_466_p2 == 5'd2) | ((port_in_op_read_1_read_fu_466_p2 == 5'd3) | ((port_in_op_read_1_read_fu_466_p2 == 5'd14) | ((port_in_op_read_1_read_fu_466_p2 == 5'd16) | ((port_in_op_read_1_read_fu_466_p2 == 5'd23) | ((port_in_op_read_1_read_fu_466_p2 == 5'd24) | ((port_in_op_read_1_read_fu_466_p2 == 5'd25) | ((port_in_op_read_1_read_fu_466_p2 == 5'd26) | ((port_in_op_read_1_read_fu_466_p2 == 5'd27) | ((port_in_op_read_1_read_fu_466_p2 == 5'd28) | ((port_in_op_read_1_read_fu_466_p2 == 5'd29) | ((port_in_op_read_1_read_fu_466_p2 == 5'd30) | (port_in_op_read_1_read_fu_466_p2 == 5'd31))))))))))))))) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48) & (((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)))) | (~(port_in_op_read_1_read_fu_466_p2 == 5'd10) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd6) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd9) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd21) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd19) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)))) begin
        node_max_fb_length_next_1_reg_1826 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1466_fu_2060_p2 == 1'd0) & (port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        nodeindex_2_reg_1258 <= port_cross_in_nodeindex_read;
    end else if (((icmp_ln1466_reg_4121 == 1'd1) & (1'b1 == ap_CS_fsm_state25))) begin
        nodeindex_2_reg_1258 <= nodeindex_reg_4125;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((((port_in_op_read_1_read_fu_466_p2 == 5'd22) & (icmp_ln1538_fu_2065_p2 == 1'd1)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd12) & (icmp_ln1538_fu_2065_p2 == 1'd1))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd15) & (icmp_ln1538_fu_2065_p2 == 1'd1))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd1) & (icmp_ln1538_fu_2065_p2 == 1'd1))))) begin
        nodeindex_next_reg_1624 <= port_in_nodeindex_read;
    end else if (((1'b1 == ap_CS_fsm_state36) | ((icmp_ln1477_reg_4207 == 1'd1) & (port_in_op_read == 5'd13) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)))) begin
        nodeindex_next_reg_1624 <= nodeindex_2_reg_1258;
    end else if ((((port_in_op_read_1_read_fu_466_p2 == 5'd10) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd6) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd9) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd21) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd19) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | (~(port_in_op_read_1_read_fu_466_p2 == 5'd10) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd6) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd9) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd21) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd19) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)))) begin
        nodeindex_next_reg_1624 <= nodeindex_next_3_fu_3018_p3;
    end else if (((1'b1 == ap_CS_fsm_state142) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state157) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((port_in_op_read_1_read_fu_466_p2 == 5'd0) | ((port_in_op_read_1_read_fu_466_p2 == 5'd2) | ((port_in_op_read_1_read_fu_466_p2 == 5'd3) | ((port_in_op_read_1_read_fu_466_p2 == 5'd14) | ((port_in_op_read_1_read_fu_466_p2 == 5'd16) | ((port_in_op_read_1_read_fu_466_p2 == 5'd23) | ((port_in_op_read_1_read_fu_466_p2 == 5'd24) | ((port_in_op_read_1_read_fu_466_p2 == 5'd25) | ((port_in_op_read_1_read_fu_466_p2 == 5'd26) | ((port_in_op_read_1_read_fu_466_p2 == 5'd27) | ((port_in_op_read_1_read_fu_466_p2 == 5'd28) | ((port_in_op_read_1_read_fu_466_p2 == 5'd29) | ((port_in_op_read_1_read_fu_466_p2 == 5'd30) | (port_in_op_read_1_read_fu_466_p2 == 5'd31))))))))))))))) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48) & (((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)))))) begin
        nodeindex_next_reg_1624 <= port_cross_in_nodeindex_read;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_fu_2044_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd17) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        opcode_next_1_reg_1173 <= 5'd15;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3))) begin
        opcode_next_1_reg_1173 <= 5'd12;
    end else if (((grp_fu_2044_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd17) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        opcode_next_1_reg_1173 <= 5'd17;
    end else if (((icmp_ln1436_fu_2172_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd7) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        opcode_next_1_reg_1173 <= 5'd7;
    end else if (((grp_fu_2044_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd4) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        opcode_next_1_reg_1173 <= 5'd4;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state157)) begin
        opcode_next_4_reg_1570 <= opcode_next_2_fu_3805_p3;
    end else if ((1'b1 == ap_CS_fsm_state142)) begin
        opcode_next_4_reg_1570 <= opcode_next_fu_3696_p3;
    end else if (((icmp_ln1477_reg_4207 == 1'd1) & (port_in_op_read == 5'd13) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
        opcode_next_4_reg_1570 <= 5'd13;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        opcode_next_4_reg_1570 <= opcode_next_1_reg_1173;
    end else if (((1'b1 == ap_CS_fsm_state36) | ((port_in_op_read_1_read_fu_466_p2 == 5'd10) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)))) begin
        opcode_next_4_reg_1570 <= 5'd12;
    end else if (((port_in_op_read_1_read_fu_466_p2 == 5'd6) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81))) begin
        opcode_next_4_reg_1570 <= 5'd4;
    end else if (((port_in_op_read_1_read_fu_466_p2 == 5'd9) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81))) begin
        opcode_next_4_reg_1570 <= 5'd7;
    end else if (((port_in_op_read_1_read_fu_466_p2 == 5'd21) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81))) begin
        opcode_next_4_reg_1570 <= 5'd15;
    end else if (((port_in_op_read_1_read_fu_466_p2 == 5'd19) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81))) begin
        opcode_next_4_reg_1570 <= 5'd17;
    end else if (((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
        opcode_next_4_reg_1570 <= opcode_next_3_fu_2798_p3;
    end else if (((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
        opcode_next_4_reg_1570 <= select_ln1303_fu_2790_p3;
    end else if (((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
        opcode_next_4_reg_1570 <= select_ln1310_fu_2782_p3;
    end else if (((1'b1 == ap_CS_fsm_state61) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((((port_in_op_read_1_read_fu_466_p2 == 5'd22) & (icmp_ln1538_fu_2065_p2 == 1'd1)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd12) & (icmp_ln1538_fu_2065_p2 == 1'd1))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd15) & (icmp_ln1538_fu_2065_p2 == 1'd1))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd1) & (icmp_ln1538_fu_2065_p2 == 1'd1)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((port_in_op_read_1_read_fu_466_p2 == 5'd0) | ((port_in_op_read_1_read_fu_466_p2 == 5'd2) | ((port_in_op_read_1_read_fu_466_p2 == 5'd3) | ((port_in_op_read_1_read_fu_466_p2 == 5'd14) | ((port_in_op_read_1_read_fu_466_p2 == 5'd16) | ((port_in_op_read_1_read_fu_466_p2 == 5'd23) | ((port_in_op_read_1_read_fu_466_p2 == 5'd24) | ((port_in_op_read_1_read_fu_466_p2 == 5'd25) | ((port_in_op_read_1_read_fu_466_p2 == 5'd26) | ((port_in_op_read_1_read_fu_466_p2 == 5'd27) | ((port_in_op_read_1_read_fu_466_p2 == 5'd28) | ((port_in_op_read_1_read_fu_466_p2 == 5'd29) | ((port_in_op_read_1_read_fu_466_p2 == 5'd30) | (port_in_op_read_1_read_fu_466_p2 == 5'd31))))))))))))))) | ((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48) & (((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)))) | (~(port_in_op_read_1_read_fu_466_p2 == 5'd10) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd6) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd9) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd21) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd19) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)))) begin
        opcode_next_4_reg_1570 <= port_in_op_read;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state102) & (grp_writemem_fu_1946_ap_done == 1'b1))) begin
        parent_fb_index_next_1_reg_1291 <= parent_fb_index_next_6_reg_4523;
    end else if (((1'b1 == ap_CS_fsm_state111) & (grp_writemem_fu_1946_ap_done == 1'b1))) begin
        parent_fb_index_next_1_reg_1291 <= parent_fb_index_next_5_reg_4630;
    end else if ((((m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state120)) | ((m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state129)))) begin
        parent_fb_index_next_1_reg_1291 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1477_reg_4207 == 1'd1) & (port_in_op_read == 5'd13) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
        parent_fb_index_next_7_reg_1708 <= parent_fb_index_next_4_reg_4312;
    end else if ((((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48) & (((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)))))) begin
        parent_fb_index_next_7_reg_1708 <= parent_fb_index_next_1_reg_1291;
    end else if (((1'b1 == ap_CS_fsm_state142) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state157) | ((port_in_op_read_1_read_fu_466_p2 == 5'd10) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd6) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd9) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd21) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd19) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((((port_in_op_read_1_read_fu_466_p2 == 5'd22) & (icmp_ln1538_fu_2065_p2 == 1'd1)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd12) & (icmp_ln1538_fu_2065_p2 == 1'd1))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd15) & (icmp_ln1538_fu_2065_p2 == 1'd1))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd1) & (icmp_ln1538_fu_2065_p2 == 1'd1)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((port_in_op_read_1_read_fu_466_p2 == 5'd0) | ((port_in_op_read_1_read_fu_466_p2 == 5'd2) | ((port_in_op_read_1_read_fu_466_p2 == 5'd3) | ((port_in_op_read_1_read_fu_466_p2 == 5'd14) | ((port_in_op_read_1_read_fu_466_p2 == 5'd16) | ((port_in_op_read_1_read_fu_466_p2 == 5'd23) | ((port_in_op_read_1_read_fu_466_p2 == 5'd24) | ((port_in_op_read_1_read_fu_466_p2 == 5'd25) | ((port_in_op_read_1_read_fu_466_p2 == 5'd26) | ((port_in_op_read_1_read_fu_466_p2 == 5'd27) | ((port_in_op_read_1_read_fu_466_p2 == 5'd28) | ((port_in_op_read_1_read_fu_466_p2 == 5'd29) | ((port_in_op_read_1_read_fu_466_p2 == 5'd30) | (port_in_op_read_1_read_fu_466_p2 == 5'd31))))))))))))))) | (~(port_in_op_read_1_read_fu_466_p2 == 5'd10) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd6) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd9) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd21) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd19) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)))) begin
        parent_fb_index_next_7_reg_1708 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state102) & (grp_writemem_fu_1946_ap_done == 1'b1))) begin
        parent_fb_length_next_1_reg_1307 <= parent_fb_length_next_6_reg_4589;
    end else if (((1'b1 == ap_CS_fsm_state111) & (grp_writemem_fu_1946_ap_done == 1'b1))) begin
        parent_fb_length_next_1_reg_1307 <= parent_fb_length_next_5_reg_4635;
    end else if ((((m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state120)) | ((m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state129)))) begin
        parent_fb_length_next_1_reg_1307 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1477_reg_4207 == 1'd1) & (port_in_op_read == 5'd13) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
        parent_fb_length_next_7_reg_1767 <= parent_fb_length_next_4_reg_4307;
    end else if ((((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48) & (((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)))))) begin
        parent_fb_length_next_7_reg_1767 <= parent_fb_length_next_1_reg_1307;
    end else if (((1'b1 == ap_CS_fsm_state142) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state157) | ((port_in_op_read_1_read_fu_466_p2 == 5'd10) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd6) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd9) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd21) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd19) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((((port_in_op_read_1_read_fu_466_p2 == 5'd22) & (icmp_ln1538_fu_2065_p2 == 1'd1)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd12) & (icmp_ln1538_fu_2065_p2 == 1'd1))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd15) & (icmp_ln1538_fu_2065_p2 == 1'd1))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd1) & (icmp_ln1538_fu_2065_p2 == 1'd1)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((port_in_op_read_1_read_fu_466_p2 == 5'd0) | ((port_in_op_read_1_read_fu_466_p2 == 5'd2) | ((port_in_op_read_1_read_fu_466_p2 == 5'd3) | ((port_in_op_read_1_read_fu_466_p2 == 5'd14) | ((port_in_op_read_1_read_fu_466_p2 == 5'd16) | ((port_in_op_read_1_read_fu_466_p2 == 5'd23) | ((port_in_op_read_1_read_fu_466_p2 == 5'd24) | ((port_in_op_read_1_read_fu_466_p2 == 5'd25) | ((port_in_op_read_1_read_fu_466_p2 == 5'd26) | ((port_in_op_read_1_read_fu_466_p2 == 5'd27) | ((port_in_op_read_1_read_fu_466_p2 == 5'd28) | ((port_in_op_read_1_read_fu_466_p2 == 5'd29) | ((port_in_op_read_1_read_fu_466_p2 == 5'd30) | (port_in_op_read_1_read_fu_466_p2 == 5'd31))))))))))))))) | (~(port_in_op_read_1_read_fu_466_p2 == 5'd10) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd6) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd9) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd21) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd19) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)))) begin
        parent_fb_length_next_7_reg_1767 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1466_fu_2060_p2 == 1'd0) & (port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        port_cross_in_node_max_fb_length_0_reg_1215 <= port_cross_in_node_max_fb_length_read;
    end else if (((icmp_ln1466_reg_4121 == 1'd1) & (1'b1 == ap_CS_fsm_state25))) begin
        port_cross_in_node_max_fb_length_0_reg_1215 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state36) | ((icmp_ln1477_reg_4207 == 1'd1) & (port_in_op_read == 5'd13) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)))) begin
        port_cross_in_node_max_fb_length_1_reg_1383 <= port_cross_in_node_max_fb_length_0_reg_1215;
    end else if (((1'b1 == ap_CS_fsm_state142) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state157) | ((port_in_op_read_1_read_fu_466_p2 == 5'd10) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd6) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd9) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd21) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd19) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((((port_in_op_read_1_read_fu_466_p2 == 5'd22) & (icmp_ln1538_fu_2065_p2 == 1'd1)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd12) & (icmp_ln1538_fu_2065_p2 == 1'd1))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd15) & (icmp_ln1538_fu_2065_p2 == 1'd1))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd1) & (icmp_ln1538_fu_2065_p2 == 1'd1)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((port_in_op_read_1_read_fu_466_p2 == 5'd0) | ((port_in_op_read_1_read_fu_466_p2 == 5'd2) | ((port_in_op_read_1_read_fu_466_p2 == 5'd3) | ((port_in_op_read_1_read_fu_466_p2 == 5'd14) | ((port_in_op_read_1_read_fu_466_p2 == 5'd16) | ((port_in_op_read_1_read_fu_466_p2 == 5'd23) | ((port_in_op_read_1_read_fu_466_p2 == 5'd24) | ((port_in_op_read_1_read_fu_466_p2 == 5'd25) | ((port_in_op_read_1_read_fu_466_p2 == 5'd26) | ((port_in_op_read_1_read_fu_466_p2 == 5'd27) | ((port_in_op_read_1_read_fu_466_p2 == 5'd28) | ((port_in_op_read_1_read_fu_466_p2 == 5'd29) | ((port_in_op_read_1_read_fu_466_p2 == 5'd30) | (port_in_op_read_1_read_fu_466_p2 == 5'd31))))))))))))))) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48) & (((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)))) | (~(port_in_op_read_1_read_fu_466_p2 == 5'd10) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd6) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd9) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd21) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd19) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)))) begin
        port_cross_in_node_max_fb_length_1_reg_1383 <= port_cross_in_node_max_fb_length_read;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1466_fu_2060_p2 == 1'd0) & (port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        port_cross_in_node_max_subgraph_length_0_reg_1226 <= port_cross_in_node_max_subgraph_length_read;
    end else if (((icmp_ln1466_reg_4121 == 1'd1) & (1'b1 == ap_CS_fsm_state25))) begin
        port_cross_in_node_max_subgraph_length_0_reg_1226 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state36) | ((icmp_ln1477_reg_4207 == 1'd1) & (port_in_op_read == 5'd13) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)))) begin
        port_cross_in_node_max_subgraph_length_1_reg_1426 <= port_cross_in_node_max_subgraph_length_0_reg_1226;
    end else if (((1'b1 == ap_CS_fsm_state142) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state157) | ((port_in_op_read_1_read_fu_466_p2 == 5'd10) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd6) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd9) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd21) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd19) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((((port_in_op_read_1_read_fu_466_p2 == 5'd22) & (icmp_ln1538_fu_2065_p2 == 1'd1)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd12) & (icmp_ln1538_fu_2065_p2 == 1'd1))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd15) & (icmp_ln1538_fu_2065_p2 == 1'd1))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd1) & (icmp_ln1538_fu_2065_p2 == 1'd1)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((port_in_op_read_1_read_fu_466_p2 == 5'd0) | ((port_in_op_read_1_read_fu_466_p2 == 5'd2) | ((port_in_op_read_1_read_fu_466_p2 == 5'd3) | ((port_in_op_read_1_read_fu_466_p2 == 5'd14) | ((port_in_op_read_1_read_fu_466_p2 == 5'd16) | ((port_in_op_read_1_read_fu_466_p2 == 5'd23) | ((port_in_op_read_1_read_fu_466_p2 == 5'd24) | ((port_in_op_read_1_read_fu_466_p2 == 5'd25) | ((port_in_op_read_1_read_fu_466_p2 == 5'd26) | ((port_in_op_read_1_read_fu_466_p2 == 5'd27) | ((port_in_op_read_1_read_fu_466_p2 == 5'd28) | ((port_in_op_read_1_read_fu_466_p2 == 5'd29) | ((port_in_op_read_1_read_fu_466_p2 == 5'd30) | (port_in_op_read_1_read_fu_466_p2 == 5'd31))))))))))))))) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48) & (((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)))) | (~(port_in_op_read_1_read_fu_466_p2 == 5'd10) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd6) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd9) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd21) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd19) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)))) begin
        port_cross_in_node_max_subgraph_length_1_reg_1426 <= port_cross_in_node_max_subgraph_length_read;
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_state102) & (grp_writemem_fu_1946_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state111) & (grp_writemem_fu_1946_ap_done == 1'b1)) | ((m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state120)))) begin
        port_cross_in_node_next_free_offset_0_reg_1278 <= port_cross_in_node_next_free_offset_read;
    end else if (((m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state129))) begin
        port_cross_in_node_next_free_offset_0_reg_1278 <= add_ln30_1_reg_4676;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1466_fu_2060_p2 == 1'd0) & (port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        port_cross_in_node_next_free_offset_1_reg_1248 <= port_cross_in_node_next_free_offset_read;
    end else if (((icmp_ln1466_reg_4121 == 1'd1) & (1'b1 == ap_CS_fsm_state25))) begin
        port_cross_in_node_next_free_offset_1_reg_1248 <= trunc_ln8_reg_4198;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state36) | ((icmp_ln1477_reg_4207 == 1'd1) & (port_in_op_read == 5'd13) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)))) begin
        port_cross_in_node_next_free_offset_2_reg_1523 <= port_cross_in_node_next_free_offset_1_reg_1248;
    end else if ((((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48) & (((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)))))) begin
        port_cross_in_node_next_free_offset_2_reg_1523 <= port_cross_in_node_next_free_offset_0_reg_1278;
    end else if ((((port_in_op_read_1_read_fu_466_p2 == 5'd10) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd6) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd9) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd21) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd19) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | (~(port_in_op_read_1_read_fu_466_p2 == 5'd10) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd6) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd9) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd21) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd19) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)))) begin
        port_cross_in_node_next_free_offset_2_reg_1523 <= add_ln30_reg_4392;
    end else if (((1'b1 == ap_CS_fsm_state142) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state157) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((((port_in_op_read_1_read_fu_466_p2 == 5'd22) & (icmp_ln1538_fu_2065_p2 == 1'd1)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd12) & (icmp_ln1538_fu_2065_p2 == 1'd1))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd15) & (icmp_ln1538_fu_2065_p2 == 1'd1))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd1) & (icmp_ln1538_fu_2065_p2 == 1'd1)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((port_in_op_read_1_read_fu_466_p2 == 5'd0) | ((port_in_op_read_1_read_fu_466_p2 == 5'd2) | ((port_in_op_read_1_read_fu_466_p2 == 5'd3) | ((port_in_op_read_1_read_fu_466_p2 == 5'd14) | ((port_in_op_read_1_read_fu_466_p2 == 5'd16) | ((port_in_op_read_1_read_fu_466_p2 == 5'd23) | ((port_in_op_read_1_read_fu_466_p2 == 5'd24) | ((port_in_op_read_1_read_fu_466_p2 == 5'd25) | ((port_in_op_read_1_read_fu_466_p2 == 5'd26) | ((port_in_op_read_1_read_fu_466_p2 == 5'd27) | ((port_in_op_read_1_read_fu_466_p2 == 5'd28) | ((port_in_op_read_1_read_fu_466_p2 == 5'd29) | ((port_in_op_read_1_read_fu_466_p2 == 5'd30) | (port_in_op_read_1_read_fu_466_p2 == 5'd31))))))))))))))))) begin
        port_cross_in_node_next_free_offset_2_reg_1523 <= port_cross_in_node_next_free_offset_read;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1466_fu_2060_p2 == 1'd0) & (port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        port_cross_in_node_num_0_reg_1237 <= port_cross_in_node_num_read;
    end else if (((icmp_ln1466_reg_4121 == 1'd1) & (1'b1 == ap_CS_fsm_state25))) begin
        port_cross_in_node_num_0_reg_1237 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        port_cross_in_node_num_1_reg_1469 <= port_cross_in_node_num_0_reg_1237;
    end else if (((icmp_ln1477_reg_4207 == 1'd1) & (port_in_op_read == 5'd13) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
        port_cross_in_node_num_1_reg_1469 <= 32'd64;
    end else if ((((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48) & (((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)))))) begin
        port_cross_in_node_num_1_reg_1469 <= 32'd32;
    end else if ((((port_in_op_read_1_read_fu_466_p2 == 5'd10) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd6) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd9) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd21) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd19) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | (~(port_in_op_read_1_read_fu_466_p2 == 5'd10) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd6) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd9) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd21) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd19) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)))) begin
        port_cross_in_node_num_1_reg_1469 <= 32'd1;
    end else if (((1'b1 == ap_CS_fsm_state142) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state157) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((((port_in_op_read_1_read_fu_466_p2 == 5'd22) & (icmp_ln1538_fu_2065_p2 == 1'd1)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd12) & (icmp_ln1538_fu_2065_p2 == 1'd1))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd15) & (icmp_ln1538_fu_2065_p2 == 1'd1))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd1) & (icmp_ln1538_fu_2065_p2 == 1'd1)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((port_in_op_read_1_read_fu_466_p2 == 5'd0) | ((port_in_op_read_1_read_fu_466_p2 == 5'd2) | ((port_in_op_read_1_read_fu_466_p2 == 5'd3) | ((port_in_op_read_1_read_fu_466_p2 == 5'd14) | ((port_in_op_read_1_read_fu_466_p2 == 5'd16) | ((port_in_op_read_1_read_fu_466_p2 == 5'd23) | ((port_in_op_read_1_read_fu_466_p2 == 5'd24) | ((port_in_op_read_1_read_fu_466_p2 == 5'd25) | ((port_in_op_read_1_read_fu_466_p2 == 5'd26) | ((port_in_op_read_1_read_fu_466_p2 == 5'd27) | ((port_in_op_read_1_read_fu_466_p2 == 5'd28) | ((port_in_op_read_1_read_fu_466_p2 == 5'd29) | ((port_in_op_read_1_read_fu_466_p2 == 5'd30) | (port_in_op_read_1_read_fu_466_p2 == 5'd31))))))))))))))))) begin
        port_cross_in_node_num_1_reg_1469 <= port_cross_in_node_num_read;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1466_fu_2060_p2 == 1'd0) & (port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        val_reg_1268 <= port_cross_in_pos_read;
    end else if (((icmp_ln1466_reg_4121 == 1'd1) & (1'b1 == ap_CS_fsm_state25))) begin
        val_reg_1268 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1466_fu_2060_p2 == 1'd0) & (port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        write_flag45_0_reg_1202 <= 1'd0;
    end else if (((icmp_ln1466_reg_4121 == 1'd1) & (1'b1 == ap_CS_fsm_state25))) begin
        write_flag45_0_reg_1202 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state36) | ((icmp_ln1477_reg_4207 == 1'd1) & (port_in_op_read == 5'd13) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)))) begin
        write_flag45_1_reg_1323 <= write_flag45_0_reg_1202;
    end else if (((1'b1 == ap_CS_fsm_state142) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state157) | ((port_in_op_read_1_read_fu_466_p2 == 5'd10) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd6) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd9) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd21) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd19) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((((port_in_op_read_1_read_fu_466_p2 == 5'd22) & (icmp_ln1538_fu_2065_p2 == 1'd1)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd12) & (icmp_ln1538_fu_2065_p2 == 1'd1))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd15) & (icmp_ln1538_fu_2065_p2 == 1'd1))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd1) & (icmp_ln1538_fu_2065_p2 == 1'd1)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((port_in_op_read_1_read_fu_466_p2 == 5'd0) | ((port_in_op_read_1_read_fu_466_p2 == 5'd2) | ((port_in_op_read_1_read_fu_466_p2 == 5'd3) | ((port_in_op_read_1_read_fu_466_p2 == 5'd14) | ((port_in_op_read_1_read_fu_466_p2 == 5'd16) | ((port_in_op_read_1_read_fu_466_p2 == 5'd23) | ((port_in_op_read_1_read_fu_466_p2 == 5'd24) | ((port_in_op_read_1_read_fu_466_p2 == 5'd25) | ((port_in_op_read_1_read_fu_466_p2 == 5'd26) | ((port_in_op_read_1_read_fu_466_p2 == 5'd27) | ((port_in_op_read_1_read_fu_466_p2 == 5'd28) | ((port_in_op_read_1_read_fu_466_p2 == 5'd29) | ((port_in_op_read_1_read_fu_466_p2 == 5'd30) | (port_in_op_read_1_read_fu_466_p2 == 5'd31))))))))))))))) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)) | ((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48) & (((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)))) | (~(port_in_op_read_1_read_fu_466_p2 == 5'd10) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd6) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd9) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd21) & ~(port_in_op_read_1_read_fu_466_p2 == 5'd19) & (m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)))) begin
        write_flag45_1_reg_1323 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state46)) begin
        Isdelete_reg_4322 <= grp_split_fu_2003_ap_return_0;
        Isdelete_graph_reg_4327 <= grp_split_fu_2003_ap_return_1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        Isinsert_reg_4301 <= Isinsert_fu_2696_p2;
        new_bro_node_next_free_offset_reg_4296 <= {{m_axi_buf_dram_manage_RDATA[63:32]}};
        parent_fb_index_next_4_reg_4312 <= parent_fb_index_next_4_fu_2723_p3;
        parent_fb_length_next_4_reg_4307 <= parent_fb_length_next_4_fu_2709_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1477_fu_2567_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state25))) begin
        Isinsert_graph_3_reg_4253 <= Isinsert_graph_3_fu_2659_p2;
        icmp_ln1482_reg_4229 <= icmp_ln1482_fu_2617_p2;
        icmp_ln1485_reg_4236 <= icmp_ln1485_fu_2633_p2;
        icmp_ln999_reg_4247 <= icmp_ln999_fu_2643_p2;
        new_index_reg_4217 <= grp_load_fu_2070_p1;
        trunc_ln40_3_reg_4224 <= {{add_ln40_1_fu_2601_p2[42:5]}};
        trunc_ln966_reg_4241 <= trunc_ln966_fu_2639_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state121)) begin
        add_ln1204_reg_4666 <= add_ln1204_fu_3553_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        add_ln301_1_reg_4260 <= add_ln301_1_fu_2665_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state131)) begin
        add_ln301_2_reg_4693 <= add_ln301_2_fu_3624_p2;
        add_ln301_3_reg_4703 <= add_ln301_3_fu_3636_p2;
        trunc_ln301_2_reg_4688 <= trunc_ln301_2_fu_3620_p1;
        trunc_ln301_3_reg_4698 <= trunc_ln301_3_fu_3631_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        add_ln301_4_reg_4317 <= add_ln301_4_fu_2745_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state146)) begin
        add_ln301_5_reg_4728 <= add_ln301_5_fu_3730_p2;
        trunc_ln301_6_reg_4723 <= trunc_ln301_6_fu_3726_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        add_ln301_6_reg_4182 <= add_ln301_6_fu_2504_p2;
        trunc_ln301_4_reg_4177 <= trunc_ln301_4_fu_2500_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1196_fu_3361_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state93))) begin
        add_ln301_7_reg_4536 <= add_ln301_7_fu_3377_p2;
        new_bro_node_num_load_reg_4541 <= new_bro_node_num_fu_336;
        trunc_ln301_5_reg_4531 <= trunc_ln301_5_fu_3373_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state110)) begin
        add_ln301_8_reg_4645 <= add_ln301_8_fu_3470_p2;
        trunc_ln1224_reg_4640 <= trunc_ln1224_fu_3466_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        add_ln301_reg_4347 <= add_ln301_fu_2920_p2;
        trunc_ln301_reg_4342 <= trunc_ln301_fu_2916_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state123)) begin
        add_ln30_1_reg_4676 <= grp_fu_2108_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state75)) begin
        add_ln30_reg_4392 <= grp_fu_2108_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln74_reg_4454 <= add_ln74_fu_3206_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state88)) begin
        flag_1_reg_4447 <= flag_1_fu_3200_p2;
        parent_fb_index_4_reg_4435 <= parent_fb_index_4_fu_3116_p3;
        parent_fb_length_7_reg_4441 <= parent_fb_length_7_fu_3153_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & ((((((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd11))))) begin
        icmp_ln1101_reg_4167 <= icmp_ln1101_fu_2439_p2;
        port_cross_in_node_mix_array7_addr_4_reg_4162 <= zext_ln1101_fu_2433_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state62))) begin
        icmp_ln1162_reg_4360 <= grp_fu_2099_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state70)) begin
        icmp_ln1362_reg_4382 <= icmp_ln1362_fu_2948_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state1))) begin
        icmp_ln1466_reg_4121 <= icmp_ln1466_fu_2060_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        icmp_ln1477_reg_4207 <= icmp_ln1477_fu_2567_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln74_reg_4459 <= icmp_ln74_fu_3212_p2;
        icmp_ln87_reg_4503 <= icmp_ln87_fu_3292_p2;
        idx_reg_1890_pp0_iter1_reg <= idx_reg_1890;
        readbuf0_reg_4463 <= readbuf0_fu_3218_p1;
        readbuf1_reg_4468 <= {{m_axi_buf_dram_manage_RDATA[63:32]}};
        readbuf2_reg_4473 <= {{m_axi_buf_dram_manage_RDATA[95:64]}};
        readbuf3_reg_4478 <= {{m_axi_buf_dram_manage_RDATA[127:96]}};
        readbuf4_reg_4483 <= {{m_axi_buf_dram_manage_RDATA[159:128]}};
        readbuf5_reg_4488 <= {{m_axi_buf_dram_manage_RDATA[191:160]}};
        readbuf6_reg_4493 <= {{m_axi_buf_dram_manage_RDATA[223:192]}};
        readbuf7_reg_4498 <= {{m_axi_buf_dram_manage_RDATA[255:224]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        it_graph_V_reg_4337[0] <= it_graph_V_fu_2774_p3[0];
        select_ln1008_reg_4332[0] <= select_ln1008_fu_2766_p3[0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        level_next_reg_4069 <= level_next_fu_2148_p2;
        graphlevel_load_reg_4079 <= graphlevel_i;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_fu_2099_p2 == 1'd0) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state62))) begin
        mul_i_reg_4377 <= mul_i_fu_2943_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state94)) begin
        new_bro_node_mix_array_0_load_reg_4574 <= new_bro_node_mix_array_0_q0;
        new_bro_node_mix_array_1_load_reg_4579 <= new_bro_node_mix_array_1_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln87_fu_3292_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        new_bro_node_next_free_offset_1_fu_332 <= {{m_axi_buf_dram_manage_RDATA[63:32]}};
        new_bro_node_num_fu_336 <= readbuf0_fu_3218_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state114)) begin
        new_bro_node_next_free_offset_2_reg_4655 <= new_bro_node_next_free_offset_2_fu_3520_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1466_fu_2060_p2 == 1'd1) & (port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state1))) begin
        nodeindex_reg_4125 <= grp_load_fu_2070_p1;
        trunc_ln40_1_reg_4131 <= {{add_ln40_fu_2248_p2[42:5]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state109)) begin
        parent_fb_index_next_5_reg_4630 <= parent_fb_index_next_5_fu_3452_p3;
        parent_fb_length_next_5_reg_4635 <= parent_fb_length_next_5_fu_3459_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state93)) begin
        parent_fb_index_next_6_reg_4523 <= new_bro_node_mix_array_2_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state100)) begin
        parent_fb_length_next_6_reg_4589 <= new_bro_node_mix_array_3_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_fu_2044_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd4) & (1'b1 == ap_CS_fsm_state1))) begin
        port_cross_in_node_mix_array3_addr_1_reg_4111 <= zext_ln1430_fu_2212_p1;
        port_cross_in_node_mix_array7_addr_2_reg_4116 <= zext_ln1430_fu_2212_p1;
        trunc_ln1430_reg_4106 <= trunc_ln1430_fu_2220_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1436_fu_2172_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd7) & (1'b1 == ap_CS_fsm_state1))) begin
        port_cross_in_node_mix_array3_addr_reg_4093 <= zext_ln1437_fu_2206_p1;
        port_cross_in_node_mix_array7_addr_reg_4098 <= zext_ln1437_fu_2206_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state143)) begin
        port_cross_in_node_mix_array7_addr_7_reg_4718 <= zext_ln1102_fu_3719_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state121) | ((icmp_ln1196_fu_3361_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state93)))) begin
        reg_2138 <= new_bro_node_next_free_offset_1_fu_332;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state103)) begin
        select_ln1240_reg_4600 <= select_ln1240_fu_3407_p3;
        select_ln1241_reg_4605 <= select_ln1241_fu_3416_p3;
        trunc_ln1224_2_reg_4594 <= trunc_ln1224_2_fu_3404_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & ((port_in_op_read_1_read_fu_466_p2 == 5'd11) | ((port_in_op_read_1_read_fu_466_p2 == 5'd5) | ((port_in_op_read_1_read_fu_466_p2 == 5'd8) | ((port_in_op_read_1_read_fu_466_p2 == 5'd20) | (port_in_op_read_1_read_fu_466_p2 == 5'd18))))))) begin
        shl_ln_reg_4153[8 : 2] <= shl_ln_fu_2328_p3[8 : 2];
        trunc_ln_reg_4158[2] <= trunc_ln_fu_2352_p3[2];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1477_fu_2567_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state25))) begin
        trunc_ln301_1_reg_4211 <= trunc_ln301_1_fu_2573_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        trunc_ln32_1_reg_4671 <= {{add_ln32_1_fu_3582_p2[42:5]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state113)) begin
        trunc_ln32_2_reg_4650 <= {{add_ln32_2_fu_3499_p2[42:5]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state74)) begin
        trunc_ln4_reg_4387 <= {{add_ln32_fu_2975_p2[42:5]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        trunc_ln8_reg_4198 <= {{m_axi_buf_dram_manage_RDATA[63:32]}};
    end
end

always @ (*) begin
    if ((icmp_ln74_fu_3212_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state89 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state89 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48)))) begin
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
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1477_reg_4207 == 1'd1) & (port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_phi_mux_broindex_next_phi_fu_1670_p36 = new_index_reg_4217;
    end else if ((((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((1'b1 == ap_CS_fsm_state48) & (((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)))))) begin
        ap_phi_mux_broindex_next_phi_fu_1670_p36 = port_cross_in_broindex_read;
    end else begin
        ap_phi_mux_broindex_next_phi_fu_1670_p36 = broindex_next_reg_1667;
    end
end

always @ (*) begin
    if (((icmp_ln74_reg_4459 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_idx_phi_fu_1894_p4 = add_ln74_reg_4454;
    end else begin
        ap_phi_mux_idx_phi_fu_1894_p4 = idx_reg_1890;
    end
end

always @ (*) begin
    if (((icmp_ln1477_reg_4207 == 1'd1) & (port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_phi_mux_node_max_fb_length_next_1_phi_fu_1830_p36 = grp_fu_2090_p3;
    end else if ((((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((1'b1 == ap_CS_fsm_state48) & (((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)))))) begin
        ap_phi_mux_node_max_fb_length_next_1_phi_fu_1830_p36 = 32'd0;
    end else begin
        ap_phi_mux_node_max_fb_length_next_1_phi_fu_1830_p36 = node_max_fb_length_next_1_reg_1826;
    end
end

always @ (*) begin
    if (((icmp_ln1477_reg_4207 == 1'd1) & (port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_phi_mux_nodeindex_next_phi_fu_1627_p36 = nodeindex_2_reg_1258;
    end else if ((((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((1'b1 == ap_CS_fsm_state48) & (((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)))))) begin
        ap_phi_mux_nodeindex_next_phi_fu_1627_p36 = port_cross_in_nodeindex_read;
    end else begin
        ap_phi_mux_nodeindex_next_phi_fu_1627_p36 = nodeindex_next_reg_1624;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        if (((icmp_ln1477_reg_4207 == 1'd1) & (port_in_op_read == 5'd13))) begin
            ap_phi_mux_opcode_next_4_phi_fu_1578_p36 = 5'd13;
        end else if ((1'b1 == ap_condition_1660)) begin
            ap_phi_mux_opcode_next_4_phi_fu_1578_p36 = opcode_next_3_fu_2798_p3;
        end else if ((1'b1 == ap_condition_1654)) begin
            ap_phi_mux_opcode_next_4_phi_fu_1578_p36 = select_ln1303_fu_2790_p3;
        end else if ((1'b1 == ap_condition_1648)) begin
            ap_phi_mux_opcode_next_4_phi_fu_1578_p36 = select_ln1310_fu_2782_p3;
        end else if ((1'b1 == ap_condition_1643)) begin
            ap_phi_mux_opcode_next_4_phi_fu_1578_p36 = port_in_op_read;
        end else begin
            ap_phi_mux_opcode_next_4_phi_fu_1578_p36 = opcode_next_4_reg_1570;
        end
    end else begin
        ap_phi_mux_opcode_next_4_phi_fu_1578_p36 = opcode_next_4_reg_1570;
    end
end

always @ (*) begin
    if (((icmp_ln1477_reg_4207 == 1'd1) & (port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_phi_mux_parent_fb_index_next_7_phi_fu_1712_p36 = parent_fb_index_next_4_reg_4312;
    end else if ((((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((1'b1 == ap_CS_fsm_state48) & (((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)))))) begin
        ap_phi_mux_parent_fb_index_next_7_phi_fu_1712_p36 = parent_fb_index_next_1_reg_1291;
    end else begin
        ap_phi_mux_parent_fb_index_next_7_phi_fu_1712_p36 = parent_fb_index_next_7_reg_1708;
    end
end

always @ (*) begin
    if (((icmp_ln1477_reg_4207 == 1'd1) & (port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_phi_mux_parent_fb_length_next_7_phi_fu_1771_p36 = parent_fb_length_next_4_reg_4307;
    end else if ((((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((1'b1 == ap_CS_fsm_state48) & (((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)))))) begin
        ap_phi_mux_parent_fb_length_next_7_phi_fu_1771_p36 = parent_fb_length_next_1_reg_1307;
    end else begin
        ap_phi_mux_parent_fb_length_next_7_phi_fu_1771_p36 = parent_fb_length_next_7_reg_1767;
    end
end

always @ (*) begin
    if (((icmp_ln1477_reg_4207 == 1'd1) & (port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_phi_mux_port_cross_in_node_max_fb_length_1_phi_fu_1386_p36 = port_cross_in_node_max_fb_length_0_reg_1215;
    end else if ((((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((1'b1 == ap_CS_fsm_state48) & (((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)))))) begin
        ap_phi_mux_port_cross_in_node_max_fb_length_1_phi_fu_1386_p36 = port_cross_in_node_max_fb_length_read;
    end else begin
        ap_phi_mux_port_cross_in_node_max_fb_length_1_phi_fu_1386_p36 = port_cross_in_node_max_fb_length_1_reg_1383;
    end
end

always @ (*) begin
    if (((icmp_ln1477_reg_4207 == 1'd1) & (port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_phi_mux_port_cross_in_node_max_subgraph_length_1_phi_fu_1429_p36 = port_cross_in_node_max_subgraph_length_0_reg_1226;
    end else if ((((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((1'b1 == ap_CS_fsm_state48) & (((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)))))) begin
        ap_phi_mux_port_cross_in_node_max_subgraph_length_1_phi_fu_1429_p36 = port_cross_in_node_max_subgraph_length_read;
    end else begin
        ap_phi_mux_port_cross_in_node_max_subgraph_length_1_phi_fu_1429_p36 = port_cross_in_node_max_subgraph_length_1_reg_1426;
    end
end

always @ (*) begin
    if (((icmp_ln1477_reg_4207 == 1'd1) & (port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_phi_mux_port_cross_in_node_next_free_offset_2_phi_fu_1526_p36 = port_cross_in_node_next_free_offset_1_reg_1248;
    end else if ((((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((1'b1 == ap_CS_fsm_state48) & (((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)))))) begin
        ap_phi_mux_port_cross_in_node_next_free_offset_2_phi_fu_1526_p36 = port_cross_in_node_next_free_offset_0_reg_1278;
    end else begin
        ap_phi_mux_port_cross_in_node_next_free_offset_2_phi_fu_1526_p36 = port_cross_in_node_next_free_offset_2_reg_1523;
    end
end

always @ (*) begin
    if (((icmp_ln1466_reg_4121 == 1'd1) & (1'b1 == ap_CS_fsm_state25))) begin
        ap_phi_mux_port_cross_in_node_num_0_phi_fu_1240_p4 = 32'd0;
    end else begin
        ap_phi_mux_port_cross_in_node_num_0_phi_fu_1240_p4 = port_cross_in_node_num_0_reg_1237;
    end
end

always @ (*) begin
    if (((icmp_ln1477_reg_4207 == 1'd1) & (port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_phi_mux_port_cross_in_node_num_1_phi_fu_1473_p36 = 32'd64;
    end else if ((((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((1'b1 == ap_CS_fsm_state48) & (((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)))))) begin
        ap_phi_mux_port_cross_in_node_num_1_phi_fu_1473_p36 = 32'd32;
    end else begin
        ap_phi_mux_port_cross_in_node_num_1_phi_fu_1473_p36 = port_cross_in_node_num_1_reg_1469;
    end
end

always @ (*) begin
    if (((icmp_ln1466_reg_4121 == 1'd1) & (1'b1 == ap_CS_fsm_state25))) begin
        ap_phi_mux_val_phi_fu_1271_p4 = 32'd0;
    end else begin
        ap_phi_mux_val_phi_fu_1271_p4 = val_reg_1268;
    end
end

always @ (*) begin
    if (((icmp_ln1477_reg_4207 == 1'd1) & (port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_phi_mux_write_flag45_1_phi_fu_1327_p36 = write_flag45_0_reg_1202;
    end else if ((((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state48)) | ((1'b1 == ap_CS_fsm_state48) & (((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)))))) begin
        ap_phi_mux_write_flag45_1_phi_fu_1327_p36 = 1'd0;
    end else begin
        ap_phi_mux_write_flag45_1_phi_fu_1327_p36 = write_flag45_1_reg_1323;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_return_0 = zext_ln1079_fu_2806_p1;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_return_1 = port_in_address_read;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_return_10 = select_ln1578_fu_2810_p3;
    end else begin
        ap_return_10 = ap_return_10_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_return_11 = ap_phi_mux_port_cross_in_node_max_fb_length_1_phi_fu_1386_p36;
    end else begin
        ap_return_11 = ap_return_11_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_return_12 = select_ln1578_1_fu_2817_p3;
    end else begin
        ap_return_12 = ap_return_12_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_return_13 = ap_phi_mux_port_cross_in_node_max_subgraph_length_1_phi_fu_1429_p36;
    end else begin
        ap_return_13 = ap_return_13_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_return_14 = ap_phi_mux_port_cross_in_node_num_1_phi_fu_1473_p36;
    end else begin
        ap_return_14 = ap_return_14_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_return_15 = ap_phi_mux_port_cross_in_node_next_free_offset_2_phi_fu_1526_p36;
    end else begin
        ap_return_15 = ap_return_15_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_return_2 = ap_phi_mux_nodeindex_next_phi_fu_1627_p36;
    end else begin
        ap_return_2 = ap_return_2_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_return_3 = ap_phi_mux_broindex_next_phi_fu_1670_p36;
    end else begin
        ap_return_3 = ap_return_3_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_return_4 = port_in_merge_index_read;
    end else begin
        ap_return_4 = ap_return_4_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_return_5 = port_in_merge_length_read;
    end else begin
        ap_return_5 = ap_return_5_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_return_6 = ap_phi_mux_parent_fb_index_next_7_phi_fu_1712_p36;
    end else begin
        ap_return_6 = ap_return_6_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_return_7 = ap_phi_mux_parent_fb_length_next_7_phi_fu_1771_p36;
    end else begin
        ap_return_7 = ap_return_7_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_return_8 = ap_phi_mux_node_max_fb_length_next_1_phi_fu_1830_p36;
    end else begin
        ap_return_8 = ap_return_8_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
        ap_return_9 = level_next_reg_4069;
    end else begin
        ap_return_9 = ap_return_9_preg;
    end
end

always @ (*) begin
    if (((icmp_ln1466_reg_4121 == 1'd1) & (1'b1 == ap_CS_fsm_state25))) begin
        ap_sig_allocacmp_new_index = add_ln45_1_fu_2536_p2;
    end else begin
        ap_sig_allocacmp_new_index = free_index;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state82))) begin
        buf_dram_manage_blk_n_AR = m_axi_buf_dram_manage_ARREADY;
    end else begin
        buf_dram_manage_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state75) | (1'b1 == ap_CS_fsm_state114) | (1'b1 == ap_CS_fsm_state123))) begin
        buf_dram_manage_blk_n_AW = m_axi_buf_dram_manage_AWREADY;
    end else begin
        buf_dram_manage_blk_n_AW = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state120) | (1'b1 == ap_CS_fsm_state129))) begin
        buf_dram_manage_blk_n_B = m_axi_buf_dram_manage_BVALID;
    end else begin
        buf_dram_manage_blk_n_B = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state24) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buf_dram_manage_blk_n_R = m_axi_buf_dram_manage_RVALID;
    end else begin
        buf_dram_manage_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state115) | (1'b1 == ap_CS_fsm_state124))) begin
        buf_dram_manage_blk_n_W = m_axi_buf_dram_manage_WREADY;
    end else begin
        buf_dram_manage_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln1477_fu_2567_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state25))) begin
        grp_load_fu_2070_p1 = ap_sig_allocacmp_new_index;
    end else if (((1'b1 == ap_CS_fsm_state75) | (1'b1 == ap_CS_fsm_state114) | (1'b1 == ap_CS_fsm_state123) | ((icmp_ln1466_fu_2060_p2 == 1'd1) & (port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state1)))) begin
        grp_load_fu_2070_p1 = free_index;
    end else begin
        grp_load_fu_2070_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_bronode_210_q0 = port_cross_in_node_mix_array3_q0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_bronode_210_q0 = new_bro_node_mix_array_3_q0;
    end else begin
        grp_mergemem_fu_1902_bronode_210_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_bronode_210_q1 = port_cross_in_node_mix_array3_q1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_bronode_210_q1 = new_bro_node_mix_array_3_q1;
    end else begin
        grp_mergemem_fu_1902_bronode_210_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_bronode_211_q0 = port_cross_in_node_mix_array4_q0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_bronode_211_q0 = new_bro_node_mix_array_4_q0;
    end else begin
        grp_mergemem_fu_1902_bronode_211_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_bronode_211_q1 = port_cross_in_node_mix_array4_q1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_bronode_211_q1 = new_bro_node_mix_array_4_q1;
    end else begin
        grp_mergemem_fu_1902_bronode_211_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_bronode_212_q0 = port_cross_in_node_mix_array5_q0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_bronode_212_q0 = new_bro_node_mix_array_5_q0;
    end else begin
        grp_mergemem_fu_1902_bronode_212_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_bronode_212_q1 = port_cross_in_node_mix_array5_q1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_bronode_212_q1 = new_bro_node_mix_array_5_q1;
    end else begin
        grp_mergemem_fu_1902_bronode_212_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_bronode_213_q0 = port_cross_in_node_mix_array6_q0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_bronode_213_q0 = new_bro_node_mix_array_6_q0;
    end else begin
        grp_mergemem_fu_1902_bronode_213_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_bronode_213_q1 = port_cross_in_node_mix_array6_q1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_bronode_213_q1 = new_bro_node_mix_array_6_q1;
    end else begin
        grp_mergemem_fu_1902_bronode_213_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_bronode_214_q0 = port_cross_in_node_mix_array7_q0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_bronode_214_q0 = new_bro_node_mix_array_7_q0;
    end else begin
        grp_mergemem_fu_1902_bronode_214_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_bronode_214_q1 = port_cross_in_node_mix_array7_q1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_bronode_214_q1 = new_bro_node_mix_array_7_q1;
    end else begin
        grp_mergemem_fu_1902_bronode_214_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_bronode_28_q0 = port_cross_in_node_mix_array1_q0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_bronode_28_q0 = new_bro_node_mix_array_1_q0;
    end else begin
        grp_mergemem_fu_1902_bronode_28_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_bronode_28_q1 = port_cross_in_node_mix_array1_q1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_bronode_28_q1 = new_bro_node_mix_array_1_q1;
    end else begin
        grp_mergemem_fu_1902_bronode_28_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_bronode_29_q0 = port_cross_in_node_mix_array2_q0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_bronode_29_q0 = new_bro_node_mix_array_2_q0;
    end else begin
        grp_mergemem_fu_1902_bronode_29_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_bronode_29_q1 = port_cross_in_node_mix_array2_q1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_bronode_29_q1 = new_bro_node_mix_array_2_q1;
    end else begin
        grp_mergemem_fu_1902_bronode_29_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_bronode_2_q0 = port_cross_in_node_mix_array_q0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_bronode_2_q0 = new_bro_node_mix_array_0_q0;
    end else begin
        grp_mergemem_fu_1902_bronode_2_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_bronode_2_q1 = port_cross_in_node_mix_array_q1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_bronode_2_q1 = new_bro_node_mix_array_0_q1;
    end else begin
        grp_mergemem_fu_1902_bronode_2_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_checkpos = add_ln1204_reg_4666;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_checkpos = checkpos_1_reg_1880;
    end else begin
        grp_mergemem_fu_1902_checkpos = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_node_21_q0 = new_bro_node_mix_array_1_q0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_node_21_q0 = port_cross_in_node_mix_array1_q0;
    end else begin
        grp_mergemem_fu_1902_node_21_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_node_21_q1 = new_bro_node_mix_array_1_q1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_node_21_q1 = port_cross_in_node_mix_array1_q1;
    end else begin
        grp_mergemem_fu_1902_node_21_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_node_22_q0 = new_bro_node_mix_array_2_q0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_node_22_q0 = port_cross_in_node_mix_array2_q0;
    end else begin
        grp_mergemem_fu_1902_node_22_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_node_22_q1 = new_bro_node_mix_array_2_q1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_node_22_q1 = port_cross_in_node_mix_array2_q1;
    end else begin
        grp_mergemem_fu_1902_node_22_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_node_23_q0 = new_bro_node_mix_array_3_q0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_node_23_q0 = port_cross_in_node_mix_array3_q0;
    end else begin
        grp_mergemem_fu_1902_node_23_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_node_23_q1 = new_bro_node_mix_array_3_q1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_node_23_q1 = port_cross_in_node_mix_array3_q1;
    end else begin
        grp_mergemem_fu_1902_node_23_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_node_24_q0 = new_bro_node_mix_array_4_q0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_node_24_q0 = port_cross_in_node_mix_array4_q0;
    end else begin
        grp_mergemem_fu_1902_node_24_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_node_24_q1 = new_bro_node_mix_array_4_q1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_node_24_q1 = port_cross_in_node_mix_array4_q1;
    end else begin
        grp_mergemem_fu_1902_node_24_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_node_25_q0 = new_bro_node_mix_array_5_q0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_node_25_q0 = port_cross_in_node_mix_array5_q0;
    end else begin
        grp_mergemem_fu_1902_node_25_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_node_25_q1 = new_bro_node_mix_array_5_q1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_node_25_q1 = port_cross_in_node_mix_array5_q1;
    end else begin
        grp_mergemem_fu_1902_node_25_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_node_26_q0 = new_bro_node_mix_array_6_q0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_node_26_q0 = port_cross_in_node_mix_array6_q0;
    end else begin
        grp_mergemem_fu_1902_node_26_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_node_26_q1 = new_bro_node_mix_array_6_q1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_node_26_q1 = port_cross_in_node_mix_array6_q1;
    end else begin
        grp_mergemem_fu_1902_node_26_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_node_27_q0 = new_bro_node_mix_array_7_q0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_node_27_q0 = port_cross_in_node_mix_array7_q0;
    end else begin
        grp_mergemem_fu_1902_node_27_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_node_27_q1 = new_bro_node_mix_array_7_q1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_node_27_q1 = port_cross_in_node_mix_array7_q1;
    end else begin
        grp_mergemem_fu_1902_node_27_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_node_2_q0 = new_bro_node_mix_array_0_q0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_node_2_q0 = port_cross_in_node_mix_array_q0;
    end else begin
        grp_mergemem_fu_1902_node_2_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_node_2_q1 = new_bro_node_mix_array_0_q1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_node_2_q1 = port_cross_in_node_mix_array_q1;
    end else begin
        grp_mergemem_fu_1902_node_2_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_nodeindex = port_cross_in_broindex_read;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_nodeindex = port_cross_in_nodeindex_read;
    end else begin
        grp_mergemem_fu_1902_nodeindex = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        grp_mergemem_fu_1902_p_read1 = reg_2138;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_mergemem_fu_1902_p_read1 = port_cross_in_node_next_free_offset_read;
    end else begin
        grp_mergemem_fu_1902_p_read1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1))) begin
        grp_split_fu_2003_nodeindex = new_index_reg_4217;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        grp_split_fu_2003_nodeindex = nodeindex_2_reg_1258;
    end else begin
        grp_split_fu_2003_nodeindex = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1))) begin
        grp_split_fu_2003_p_read1 = icmp_ln999_reg_4247;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        grp_split_fu_2003_p_read1 = Isinsert_reg_4301;
    end else begin
        grp_split_fu_2003_p_read1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1))) begin
        grp_split_fu_2003_p_read2 = Isdelete_reg_4322;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        grp_split_fu_2003_p_read2 = 1'd0;
    end else begin
        grp_split_fu_2003_p_read2 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1))) begin
        grp_split_fu_2003_p_read3 = Isinsert_graph_3_reg_4253;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        grp_split_fu_2003_p_read3 = Isinsert_reg_4301;
    end else begin
        grp_split_fu_2003_p_read3 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1))) begin
        grp_split_fu_2003_p_read4 = Isdelete_graph_reg_4327;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        grp_split_fu_2003_p_read4 = 1'd0;
    end else begin
        grp_split_fu_2003_p_read4 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1))) begin
        grp_split_fu_2003_p_read5 = select_ln1008_reg_4332;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        grp_split_fu_2003_p_read5 = 6'd0;
    end else begin
        grp_split_fu_2003_p_read5 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1))) begin
        grp_split_fu_2003_p_read6 = it_graph_V_reg_4337;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        grp_split_fu_2003_p_read6 = 6'd0;
    end else begin
        grp_split_fu_2003_p_read6 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_Isdelete = 1'd1;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_writemem_fu_1946_Isdelete = 1'd0;
    end else begin
        grp_writemem_fu_1946_Isdelete = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state27))) begin
        grp_writemem_fu_1946_Isinsert = 1'd1;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_Isinsert = 1'd0;
    end else begin
        grp_writemem_fu_1946_Isinsert = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state132)) begin
        grp_writemem_fu_1946_checkpos = trunc_ln301_3_reg_4698;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_writemem_fu_1946_checkpos = add_ln301_8_reg_4645;
    end else if (((1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95))) begin
        grp_writemem_fu_1946_checkpos = trunc_ln301_5_reg_4531;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state102))) begin
        grp_writemem_fu_1946_checkpos = 8'd0;
    end else begin
        grp_writemem_fu_1946_checkpos = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state132)) begin
        grp_writemem_fu_1946_checkpos_graph = add_ln301_3_reg_4703;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_writemem_fu_1946_checkpos_graph = trunc_ln1224_reg_4640;
    end else if (((1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95))) begin
        grp_writemem_fu_1946_checkpos_graph = add_ln301_7_reg_4536;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state102))) begin
        grp_writemem_fu_1946_checkpos_graph = 8'd0;
    end else begin
        grp_writemem_fu_1946_checkpos_graph = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95))) begin
        grp_writemem_fu_1946_fb_length = parent_fb_length_7_reg_4441;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_writemem_fu_1946_fb_length = port_in_fb_length_read;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_fb_length = 32'd0;
    end else begin
        grp_writemem_fu_1946_fb_length = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95))) begin
        grp_writemem_fu_1946_head_index = parent_fb_index_4_reg_4435;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_writemem_fu_1946_head_index = port_in_fb_index_read;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_head_index = 32'd0;
    end else begin
        grp_writemem_fu_1946_head_index = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state104)) begin
        grp_writemem_fu_1946_maxsubgraph = select_ln1241_reg_4605;
    end else if ((1'b1 == ap_CS_fsm_state95)) begin
        grp_writemem_fu_1946_maxsubgraph = new_bro_node_mix_array_1_load_reg_4579;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_maxsubgraph = 32'd0;
    end else begin
        grp_writemem_fu_1946_maxsubgraph = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_node_mix_array1_q0 = new_bro_node_mix_array_1_q0;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_writemem_fu_1946_node_mix_array1_q0 = port_cross_in_node_mix_array1_q0;
    end else begin
        grp_writemem_fu_1946_node_mix_array1_q0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_node_mix_array1_q1 = new_bro_node_mix_array_1_q1;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_writemem_fu_1946_node_mix_array1_q1 = port_cross_in_node_mix_array1_q1;
    end else begin
        grp_writemem_fu_1946_node_mix_array1_q1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_node_mix_array2_q0 = new_bro_node_mix_array_2_q0;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_writemem_fu_1946_node_mix_array2_q0 = port_cross_in_node_mix_array2_q0;
    end else begin
        grp_writemem_fu_1946_node_mix_array2_q0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_node_mix_array2_q1 = new_bro_node_mix_array_2_q1;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_writemem_fu_1946_node_mix_array2_q1 = port_cross_in_node_mix_array2_q1;
    end else begin
        grp_writemem_fu_1946_node_mix_array2_q1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_node_mix_array3_q0 = new_bro_node_mix_array_3_q0;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_writemem_fu_1946_node_mix_array3_q0 = port_cross_in_node_mix_array3_q0;
    end else begin
        grp_writemem_fu_1946_node_mix_array3_q0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_node_mix_array3_q1 = new_bro_node_mix_array_3_q1;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_writemem_fu_1946_node_mix_array3_q1 = port_cross_in_node_mix_array3_q1;
    end else begin
        grp_writemem_fu_1946_node_mix_array3_q1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_node_mix_array4_q0 = new_bro_node_mix_array_4_q0;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_writemem_fu_1946_node_mix_array4_q0 = port_cross_in_node_mix_array4_q0;
    end else begin
        grp_writemem_fu_1946_node_mix_array4_q0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_node_mix_array4_q1 = new_bro_node_mix_array_4_q1;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_writemem_fu_1946_node_mix_array4_q1 = port_cross_in_node_mix_array4_q1;
    end else begin
        grp_writemem_fu_1946_node_mix_array4_q1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_node_mix_array5_q0 = new_bro_node_mix_array_5_q0;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_writemem_fu_1946_node_mix_array5_q0 = port_cross_in_node_mix_array5_q0;
    end else begin
        grp_writemem_fu_1946_node_mix_array5_q0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_node_mix_array5_q1 = new_bro_node_mix_array_5_q1;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_writemem_fu_1946_node_mix_array5_q1 = port_cross_in_node_mix_array5_q1;
    end else begin
        grp_writemem_fu_1946_node_mix_array5_q1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_node_mix_array6_q0 = new_bro_node_mix_array_6_q0;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_writemem_fu_1946_node_mix_array6_q0 = port_cross_in_node_mix_array6_q0;
    end else begin
        grp_writemem_fu_1946_node_mix_array6_q0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_node_mix_array6_q1 = new_bro_node_mix_array_6_q1;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_writemem_fu_1946_node_mix_array6_q1 = port_cross_in_node_mix_array6_q1;
    end else begin
        grp_writemem_fu_1946_node_mix_array6_q1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_node_mix_array7_q0 = new_bro_node_mix_array_7_q0;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_writemem_fu_1946_node_mix_array7_q0 = port_cross_in_node_mix_array7_q0;
    end else begin
        grp_writemem_fu_1946_node_mix_array7_q0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_node_mix_array7_q1 = new_bro_node_mix_array_7_q1;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_writemem_fu_1946_node_mix_array7_q1 = port_cross_in_node_mix_array7_q1;
    end else begin
        grp_writemem_fu_1946_node_mix_array7_q1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_node_mix_array_q0 = new_bro_node_mix_array_0_q0;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_writemem_fu_1946_node_mix_array_q0 = port_cross_in_node_mix_array_q0;
    end else begin
        grp_writemem_fu_1946_node_mix_array_q0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_node_mix_array_q1 = new_bro_node_mix_array_0_q1;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_writemem_fu_1946_node_mix_array_q1 = port_cross_in_node_mix_array_q1;
    end else begin
        grp_writemem_fu_1946_node_mix_array_q1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_nodeindex = port_cross_in_broindex_read;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_writemem_fu_1946_nodeindex = nodeindex_2_reg_1258;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_writemem_fu_1946_nodeindex = port_cross_in_nodeindex_read;
    end else begin
        grp_writemem_fu_1946_nodeindex = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_p_read = new_bro_node_num_load_reg_4541;
    end else if (((1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95))) begin
        grp_writemem_fu_1946_p_read = 32'd32;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_writemem_fu_1946_p_read = port_cross_in_node_num_0_reg_1237;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_writemem_fu_1946_p_read = port_cross_in_node_num_read;
    end else begin
        grp_writemem_fu_1946_p_read = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_p_read1 = reg_2138;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_writemem_fu_1946_p_read1 = port_cross_in_node_next_free_offset_1_reg_1248;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_writemem_fu_1946_p_read1 = port_cross_in_node_next_free_offset_read;
    end else begin
        grp_writemem_fu_1946_p_read1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state147)) begin
        grp_writemem_fu_1946_pos_node = trunc_ln301_6_reg_4723;
    end else if ((1'b1 == ap_CS_fsm_state132)) begin
        grp_writemem_fu_1946_pos_node = trunc_ln301_2_reg_4688;
    end else if (((1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_pos_node = 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state95)) begin
        grp_writemem_fu_1946_pos_node = 8'd32;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_writemem_fu_1946_pos_node = trunc_ln301_reg_4342;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_writemem_fu_1946_pos_node = trunc_ln301_1_reg_4211;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_writemem_fu_1946_pos_node = trunc_ln301_4_reg_4177;
    end else begin
        grp_writemem_fu_1946_pos_node = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state147)) begin
        grp_writemem_fu_1946_pos_graph = add_ln301_5_reg_4728;
    end else if ((1'b1 == ap_CS_fsm_state132)) begin
        grp_writemem_fu_1946_pos_graph = add_ln301_2_reg_4693;
    end else if (((1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_pos_graph = 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state95)) begin
        grp_writemem_fu_1946_pos_graph = 8'd33;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_writemem_fu_1946_pos_graph = add_ln301_reg_4347;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_writemem_fu_1946_pos_graph = add_ln301_1_reg_4260;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_writemem_fu_1946_pos_graph = add_ln301_6_reg_4182;
    end else begin
        grp_writemem_fu_1946_pos_graph = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state104)) begin
        grp_writemem_fu_1946_subgraph = select_ln1240_reg_4600;
    end else if ((1'b1 == ap_CS_fsm_state95)) begin
        grp_writemem_fu_1946_subgraph = new_bro_node_mix_array_0_load_reg_4574;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_writemem_fu_1946_subgraph = port_in_broindex_read;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        grp_writemem_fu_1946_subgraph = 32'd0;
    end else begin
        grp_writemem_fu_1946_subgraph = 'bx;
    end
end

always @ (*) begin
    if ((m_axi_buf_dram_manage_ARREADY == 1'b1)) begin
        if ((1'b1 == ap_CS_fsm_state82)) begin
            m_axi_buf_dram_manage_ARADDR = sext_ln75_fu_3025_p1;
        end else if ((1'b1 == ap_CS_fsm_state37)) begin
            m_axi_buf_dram_manage_ARADDR = sext_ln40_3_fu_2671_p1;
        end else if ((1'b1 == ap_CS_fsm_state17)) begin
            m_axi_buf_dram_manage_ARADDR = sext_ln40_2_fu_2511_p1;
        end else begin
            m_axi_buf_dram_manage_ARADDR = 'bx;
        end
    end else begin
        m_axi_buf_dram_manage_ARADDR = 'bx;
    end
end

always @ (*) begin
    if (((m_axi_buf_dram_manage_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state82))) begin
        m_axi_buf_dram_manage_ARLEN = 32'd33;
    end else if ((((m_axi_buf_dram_manage_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state37)) | ((m_axi_buf_dram_manage_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        m_axi_buf_dram_manage_ARLEN = 32'd1;
    end else begin
        m_axi_buf_dram_manage_ARLEN = 'bx;
    end
end

always @ (*) begin
    if ((((m_axi_buf_dram_manage_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state37)) | ((m_axi_buf_dram_manage_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((m_axi_buf_dram_manage_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state82)))) begin
        m_axi_buf_dram_manage_ARVALID = 1'b1;
    end else begin
        m_axi_buf_dram_manage_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state123) & (m_axi_buf_dram_manage_AWREADY == 1'b1))) begin
        m_axi_buf_dram_manage_AWADDR = sext_ln32_4_fu_3598_p1;
    end else if (((1'b1 == ap_CS_fsm_state114) & (m_axi_buf_dram_manage_AWREADY == 1'b1))) begin
        m_axi_buf_dram_manage_AWADDR = sext_ln32_5_fu_3531_p1;
    end else if (((1'b1 == ap_CS_fsm_state75) & (m_axi_buf_dram_manage_AWREADY == 1'b1))) begin
        m_axi_buf_dram_manage_AWADDR = sext_ln32_2_fu_2991_p1;
    end else if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        m_axi_buf_dram_manage_AWADDR = grp_split_fu_2003_m_axi_buf_dram_manage_AWADDR;
    end else if (((1'b1 == ap_CS_fsm_state146) | (1'b1 == ap_CS_fsm_state131) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        m_axi_buf_dram_manage_AWADDR = grp_writemem_fu_1946_m_axi_buf_dram_manage_AWADDR;
    end else if (((1'b1 == ap_CS_fsm_state122) | (1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state121) | (1'b1 == ap_CS_fsm_state112))) begin
        m_axi_buf_dram_manage_AWADDR = grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWADDR;
    end else begin
        m_axi_buf_dram_manage_AWADDR = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        m_axi_buf_dram_manage_AWBURST = grp_split_fu_2003_m_axi_buf_dram_manage_AWBURST;
    end else if (((1'b1 == ap_CS_fsm_state146) | (1'b1 == ap_CS_fsm_state131) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        m_axi_buf_dram_manage_AWBURST = grp_writemem_fu_1946_m_axi_buf_dram_manage_AWBURST;
    end else if (((1'b1 == ap_CS_fsm_state122) | (1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state121) | (1'b1 == ap_CS_fsm_state112))) begin
        m_axi_buf_dram_manage_AWBURST = grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWBURST;
    end else begin
        m_axi_buf_dram_manage_AWBURST = 2'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        m_axi_buf_dram_manage_AWCACHE = grp_split_fu_2003_m_axi_buf_dram_manage_AWCACHE;
    end else if (((1'b1 == ap_CS_fsm_state146) | (1'b1 == ap_CS_fsm_state131) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        m_axi_buf_dram_manage_AWCACHE = grp_writemem_fu_1946_m_axi_buf_dram_manage_AWCACHE;
    end else if (((1'b1 == ap_CS_fsm_state122) | (1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state121) | (1'b1 == ap_CS_fsm_state112))) begin
        m_axi_buf_dram_manage_AWCACHE = grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWCACHE;
    end else begin
        m_axi_buf_dram_manage_AWCACHE = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        m_axi_buf_dram_manage_AWID = grp_split_fu_2003_m_axi_buf_dram_manage_AWID;
    end else if (((1'b1 == ap_CS_fsm_state146) | (1'b1 == ap_CS_fsm_state131) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        m_axi_buf_dram_manage_AWID = grp_writemem_fu_1946_m_axi_buf_dram_manage_AWID;
    end else if (((1'b1 == ap_CS_fsm_state122) | (1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state121) | (1'b1 == ap_CS_fsm_state112))) begin
        m_axi_buf_dram_manage_AWID = grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWID;
    end else begin
        m_axi_buf_dram_manage_AWID = 1'd0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state75) & (m_axi_buf_dram_manage_AWREADY == 1'b1)) | ((1'b1 == ap_CS_fsm_state114) & (m_axi_buf_dram_manage_AWREADY == 1'b1)) | ((1'b1 == ap_CS_fsm_state123) & (m_axi_buf_dram_manage_AWREADY == 1'b1)))) begin
        m_axi_buf_dram_manage_AWLEN = 32'd1;
    end else if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        m_axi_buf_dram_manage_AWLEN = grp_split_fu_2003_m_axi_buf_dram_manage_AWLEN;
    end else if (((1'b1 == ap_CS_fsm_state146) | (1'b1 == ap_CS_fsm_state131) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        m_axi_buf_dram_manage_AWLEN = grp_writemem_fu_1946_m_axi_buf_dram_manage_AWLEN;
    end else if (((1'b1 == ap_CS_fsm_state122) | (1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state121) | (1'b1 == ap_CS_fsm_state112))) begin
        m_axi_buf_dram_manage_AWLEN = grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWLEN;
    end else begin
        m_axi_buf_dram_manage_AWLEN = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        m_axi_buf_dram_manage_AWLOCK = grp_split_fu_2003_m_axi_buf_dram_manage_AWLOCK;
    end else if (((1'b1 == ap_CS_fsm_state146) | (1'b1 == ap_CS_fsm_state131) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        m_axi_buf_dram_manage_AWLOCK = grp_writemem_fu_1946_m_axi_buf_dram_manage_AWLOCK;
    end else if (((1'b1 == ap_CS_fsm_state122) | (1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state121) | (1'b1 == ap_CS_fsm_state112))) begin
        m_axi_buf_dram_manage_AWLOCK = grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWLOCK;
    end else begin
        m_axi_buf_dram_manage_AWLOCK = 2'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        m_axi_buf_dram_manage_AWPROT = grp_split_fu_2003_m_axi_buf_dram_manage_AWPROT;
    end else if (((1'b1 == ap_CS_fsm_state146) | (1'b1 == ap_CS_fsm_state131) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        m_axi_buf_dram_manage_AWPROT = grp_writemem_fu_1946_m_axi_buf_dram_manage_AWPROT;
    end else if (((1'b1 == ap_CS_fsm_state122) | (1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state121) | (1'b1 == ap_CS_fsm_state112))) begin
        m_axi_buf_dram_manage_AWPROT = grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWPROT;
    end else begin
        m_axi_buf_dram_manage_AWPROT = 3'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        m_axi_buf_dram_manage_AWQOS = grp_split_fu_2003_m_axi_buf_dram_manage_AWQOS;
    end else if (((1'b1 == ap_CS_fsm_state146) | (1'b1 == ap_CS_fsm_state131) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        m_axi_buf_dram_manage_AWQOS = grp_writemem_fu_1946_m_axi_buf_dram_manage_AWQOS;
    end else if (((1'b1 == ap_CS_fsm_state122) | (1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state121) | (1'b1 == ap_CS_fsm_state112))) begin
        m_axi_buf_dram_manage_AWQOS = grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWQOS;
    end else begin
        m_axi_buf_dram_manage_AWQOS = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        m_axi_buf_dram_manage_AWREGION = grp_split_fu_2003_m_axi_buf_dram_manage_AWREGION;
    end else if (((1'b1 == ap_CS_fsm_state146) | (1'b1 == ap_CS_fsm_state131) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        m_axi_buf_dram_manage_AWREGION = grp_writemem_fu_1946_m_axi_buf_dram_manage_AWREGION;
    end else if (((1'b1 == ap_CS_fsm_state122) | (1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state121) | (1'b1 == ap_CS_fsm_state112))) begin
        m_axi_buf_dram_manage_AWREGION = grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWREGION;
    end else begin
        m_axi_buf_dram_manage_AWREGION = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        m_axi_buf_dram_manage_AWSIZE = grp_split_fu_2003_m_axi_buf_dram_manage_AWSIZE;
    end else if (((1'b1 == ap_CS_fsm_state146) | (1'b1 == ap_CS_fsm_state131) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        m_axi_buf_dram_manage_AWSIZE = grp_writemem_fu_1946_m_axi_buf_dram_manage_AWSIZE;
    end else if (((1'b1 == ap_CS_fsm_state122) | (1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state121) | (1'b1 == ap_CS_fsm_state112))) begin
        m_axi_buf_dram_manage_AWSIZE = grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWSIZE;
    end else begin
        m_axi_buf_dram_manage_AWSIZE = 3'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        m_axi_buf_dram_manage_AWUSER = grp_split_fu_2003_m_axi_buf_dram_manage_AWUSER;
    end else if (((1'b1 == ap_CS_fsm_state146) | (1'b1 == ap_CS_fsm_state131) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        m_axi_buf_dram_manage_AWUSER = grp_writemem_fu_1946_m_axi_buf_dram_manage_AWUSER;
    end else if (((1'b1 == ap_CS_fsm_state122) | (1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state121) | (1'b1 == ap_CS_fsm_state112))) begin
        m_axi_buf_dram_manage_AWUSER = grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWUSER;
    end else begin
        m_axi_buf_dram_manage_AWUSER = 1'd0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state75) & (m_axi_buf_dram_manage_AWREADY == 1'b1)) | ((1'b1 == ap_CS_fsm_state114) & (m_axi_buf_dram_manage_AWREADY == 1'b1)) | ((1'b1 == ap_CS_fsm_state123) & (m_axi_buf_dram_manage_AWREADY == 1'b1)))) begin
        m_axi_buf_dram_manage_AWVALID = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        m_axi_buf_dram_manage_AWVALID = grp_split_fu_2003_m_axi_buf_dram_manage_AWVALID;
    end else if (((1'b1 == ap_CS_fsm_state146) | (1'b1 == ap_CS_fsm_state131) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        m_axi_buf_dram_manage_AWVALID = grp_writemem_fu_1946_m_axi_buf_dram_manage_AWVALID;
    end else if (((1'b1 == ap_CS_fsm_state122) | (1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state121) | (1'b1 == ap_CS_fsm_state112))) begin
        m_axi_buf_dram_manage_AWVALID = grp_mergemem_fu_1902_m_axi_buf_dram_manage_AWVALID;
    end else begin
        m_axi_buf_dram_manage_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if ((((m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81)) | ((m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state120)) | ((m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state129)))) begin
        m_axi_buf_dram_manage_BREADY = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        m_axi_buf_dram_manage_BREADY = grp_split_fu_2003_m_axi_buf_dram_manage_BREADY;
    end else if (((1'b1 == ap_CS_fsm_state146) | (1'b1 == ap_CS_fsm_state131) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        m_axi_buf_dram_manage_BREADY = grp_writemem_fu_1946_m_axi_buf_dram_manage_BREADY;
    end else if (((1'b1 == ap_CS_fsm_state122) | (1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state121) | (1'b1 == ap_CS_fsm_state112))) begin
        m_axi_buf_dram_manage_BREADY = grp_mergemem_fu_1902_m_axi_buf_dram_manage_BREADY;
    end else begin
        m_axi_buf_dram_manage_BREADY = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((m_axi_buf_dram_manage_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state44)) | ((m_axi_buf_dram_manage_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state24)))) begin
        m_axi_buf_dram_manage_RREADY = 1'b1;
    end else begin
        m_axi_buf_dram_manage_RREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state124)) begin
        m_axi_buf_dram_manage_WDATA = zext_ln32_1_fu_3615_p1;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        m_axi_buf_dram_manage_WDATA = zext_ln32_2_fu_3548_p1;
    end else if ((1'b1 == ap_CS_fsm_state76)) begin
        m_axi_buf_dram_manage_WDATA = zext_ln32_fu_3008_p1;
    end else if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        m_axi_buf_dram_manage_WDATA = grp_split_fu_2003_m_axi_buf_dram_manage_WDATA;
    end else if (((1'b1 == ap_CS_fsm_state146) | (1'b1 == ap_CS_fsm_state131) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        m_axi_buf_dram_manage_WDATA = grp_writemem_fu_1946_m_axi_buf_dram_manage_WDATA;
    end else if (((1'b1 == ap_CS_fsm_state122) | (1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state121) | (1'b1 == ap_CS_fsm_state112))) begin
        m_axi_buf_dram_manage_WDATA = grp_mergemem_fu_1902_m_axi_buf_dram_manage_WDATA;
    end else begin
        m_axi_buf_dram_manage_WDATA = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        m_axi_buf_dram_manage_WID = grp_split_fu_2003_m_axi_buf_dram_manage_WID;
    end else if (((1'b1 == ap_CS_fsm_state146) | (1'b1 == ap_CS_fsm_state131) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        m_axi_buf_dram_manage_WID = grp_writemem_fu_1946_m_axi_buf_dram_manage_WID;
    end else if (((1'b1 == ap_CS_fsm_state122) | (1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state121) | (1'b1 == ap_CS_fsm_state112))) begin
        m_axi_buf_dram_manage_WID = grp_mergemem_fu_1902_m_axi_buf_dram_manage_WID;
    end else begin
        m_axi_buf_dram_manage_WID = 1'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        m_axi_buf_dram_manage_WLAST = grp_split_fu_2003_m_axi_buf_dram_manage_WLAST;
    end else if (((1'b1 == ap_CS_fsm_state146) | (1'b1 == ap_CS_fsm_state131) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        m_axi_buf_dram_manage_WLAST = grp_writemem_fu_1946_m_axi_buf_dram_manage_WLAST;
    end else if (((1'b1 == ap_CS_fsm_state122) | (1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state121) | (1'b1 == ap_CS_fsm_state112))) begin
        m_axi_buf_dram_manage_WLAST = grp_mergemem_fu_1902_m_axi_buf_dram_manage_WLAST;
    end else begin
        m_axi_buf_dram_manage_WLAST = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state115) | (1'b1 == ap_CS_fsm_state124))) begin
        m_axi_buf_dram_manage_WSTRB = 32'd240;
    end else if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        m_axi_buf_dram_manage_WSTRB = grp_split_fu_2003_m_axi_buf_dram_manage_WSTRB;
    end else if (((1'b1 == ap_CS_fsm_state146) | (1'b1 == ap_CS_fsm_state131) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        m_axi_buf_dram_manage_WSTRB = grp_writemem_fu_1946_m_axi_buf_dram_manage_WSTRB;
    end else if (((1'b1 == ap_CS_fsm_state122) | (1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state121) | (1'b1 == ap_CS_fsm_state112))) begin
        m_axi_buf_dram_manage_WSTRB = grp_mergemem_fu_1902_m_axi_buf_dram_manage_WSTRB;
    end else begin
        m_axi_buf_dram_manage_WSTRB = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        m_axi_buf_dram_manage_WUSER = grp_split_fu_2003_m_axi_buf_dram_manage_WUSER;
    end else if (((1'b1 == ap_CS_fsm_state146) | (1'b1 == ap_CS_fsm_state131) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        m_axi_buf_dram_manage_WUSER = grp_writemem_fu_1946_m_axi_buf_dram_manage_WUSER;
    end else if (((1'b1 == ap_CS_fsm_state122) | (1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state121) | (1'b1 == ap_CS_fsm_state112))) begin
        m_axi_buf_dram_manage_WUSER = grp_mergemem_fu_1902_m_axi_buf_dram_manage_WUSER;
    end else begin
        m_axi_buf_dram_manage_WUSER = 1'd0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state76) & (m_axi_buf_dram_manage_WREADY == 1'b1)) | ((1'b1 == ap_CS_fsm_state115) & (m_axi_buf_dram_manage_WREADY == 1'b1)) | ((1'b1 == ap_CS_fsm_state124) & (m_axi_buf_dram_manage_WREADY == 1'b1)))) begin
        m_axi_buf_dram_manage_WVALID = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        m_axi_buf_dram_manage_WVALID = grp_split_fu_2003_m_axi_buf_dram_manage_WVALID;
    end else if (((1'b1 == ap_CS_fsm_state146) | (1'b1 == ap_CS_fsm_state131) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        m_axi_buf_dram_manage_WVALID = grp_writemem_fu_1946_m_axi_buf_dram_manage_WVALID;
    end else if (((1'b1 == ap_CS_fsm_state122) | (1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state121) | (1'b1 == ap_CS_fsm_state112))) begin
        m_axi_buf_dram_manage_WVALID = grp_mergemem_fu_1902_m_axi_buf_dram_manage_WVALID;
    end else begin
        m_axi_buf_dram_manage_WVALID = 1'b0;
    end
end

always @ (*) begin
    if (((cmp119_fu_3367_p2 == 1'd1) & (icmp_ln1196_fu_3361_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state93))) begin
        new_bro_node_mix_array_0_address0 = zext_ln1240_fu_3396_p1;
    end else if (((cmp119_fu_3367_p2 == 1'd0) & (icmp_ln1196_fu_3361_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state93))) begin
        new_bro_node_mix_array_0_address0 = 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        new_bro_node_mix_array_0_address0 = idx_cast24_fu_3308_p1;
    end else if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_0_address0 = grp_writemem_fu_1946_node_mix_array_address0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_0_address0 = grp_mergemem_fu_1902_bronode_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_0_address0 = grp_mergemem_fu_1902_node_2_address0;
    end else begin
        new_bro_node_mix_array_0_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_0_address1 = grp_writemem_fu_1946_node_mix_array_address1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_0_address1 = grp_mergemem_fu_1902_bronode_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_0_address1 = grp_mergemem_fu_1902_node_2_address1;
    end else begin
        new_bro_node_mix_array_0_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((cmp119_fu_3367_p2 == 1'd1) & (icmp_ln1196_fu_3361_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state93)) | ((cmp119_fu_3367_p2 == 1'd0) & (icmp_ln1196_fu_3361_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state93)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        new_bro_node_mix_array_0_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_0_ce0 = grp_writemem_fu_1946_node_mix_array_ce0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_0_ce0 = grp_mergemem_fu_1902_bronode_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_0_ce0 = grp_mergemem_fu_1902_node_2_ce0;
    end else begin
        new_bro_node_mix_array_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_0_ce1 = grp_writemem_fu_1946_node_mix_array_ce1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_0_ce1 = grp_mergemem_fu_1902_bronode_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_0_ce1 = grp_mergemem_fu_1902_node_2_ce1;
    end else begin
        new_bro_node_mix_array_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        new_bro_node_mix_array_0_we0 = 1'b1;
    end else begin
        new_bro_node_mix_array_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((cmp119_fu_3367_p2 == 1'd1) & (icmp_ln1196_fu_3361_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state93))) begin
        new_bro_node_mix_array_1_address0 = zext_ln1240_fu_3396_p1;
    end else if (((cmp119_fu_3367_p2 == 1'd0) & (icmp_ln1196_fu_3361_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state93))) begin
        new_bro_node_mix_array_1_address0 = 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        new_bro_node_mix_array_1_address0 = idx_cast24_fu_3308_p1;
    end else if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_1_address0 = grp_writemem_fu_1946_node_mix_array1_address0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_1_address0 = grp_mergemem_fu_1902_bronode_28_address0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_1_address0 = grp_mergemem_fu_1902_node_21_address0;
    end else begin
        new_bro_node_mix_array_1_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_1_address1 = grp_writemem_fu_1946_node_mix_array1_address1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_1_address1 = grp_mergemem_fu_1902_bronode_28_address1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_1_address1 = grp_mergemem_fu_1902_node_21_address1;
    end else begin
        new_bro_node_mix_array_1_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((cmp119_fu_3367_p2 == 1'd1) & (icmp_ln1196_fu_3361_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state93)) | ((cmp119_fu_3367_p2 == 1'd0) & (icmp_ln1196_fu_3361_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state93)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        new_bro_node_mix_array_1_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_1_ce0 = grp_writemem_fu_1946_node_mix_array1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_1_ce0 = grp_mergemem_fu_1902_bronode_28_ce0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_1_ce0 = grp_mergemem_fu_1902_node_21_ce0;
    end else begin
        new_bro_node_mix_array_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_1_ce1 = grp_writemem_fu_1946_node_mix_array1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_1_ce1 = grp_mergemem_fu_1902_bronode_28_ce1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_1_ce1 = grp_mergemem_fu_1902_node_21_ce1;
    end else begin
        new_bro_node_mix_array_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        new_bro_node_mix_array_1_we0 = 1'b1;
    end else begin
        new_bro_node_mix_array_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state108)) begin
        new_bro_node_mix_array_2_address0 = zext_ln1224_fu_3444_p1;
    end else if ((1'b1 == ap_CS_fsm_state92)) begin
        new_bro_node_mix_array_2_address0 = 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        new_bro_node_mix_array_2_address0 = idx_cast24_fu_3308_p1;
    end else if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_2_address0 = grp_writemem_fu_1946_node_mix_array2_address0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_2_address0 = grp_mergemem_fu_1902_bronode_29_address0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_2_address0 = grp_mergemem_fu_1902_node_22_address0;
    end else begin
        new_bro_node_mix_array_2_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_2_address1 = grp_writemem_fu_1946_node_mix_array2_address1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_2_address1 = grp_mergemem_fu_1902_bronode_29_address1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_2_address1 = grp_mergemem_fu_1902_node_22_address1;
    end else begin
        new_bro_node_mix_array_2_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state108) | (1'b1 == ap_CS_fsm_state92) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        new_bro_node_mix_array_2_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_2_ce0 = grp_writemem_fu_1946_node_mix_array2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_2_ce0 = grp_mergemem_fu_1902_bronode_29_ce0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_2_ce0 = grp_mergemem_fu_1902_node_22_ce0;
    end else begin
        new_bro_node_mix_array_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_2_ce1 = grp_writemem_fu_1946_node_mix_array2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_2_ce1 = grp_mergemem_fu_1902_bronode_29_ce1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_2_ce1 = grp_mergemem_fu_1902_node_22_ce1;
    end else begin
        new_bro_node_mix_array_2_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln104_fu_3352_p2 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        new_bro_node_mix_array_2_we0 = 1'b1;
    end else begin
        new_bro_node_mix_array_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state108)) begin
        new_bro_node_mix_array_3_address0 = zext_ln1224_fu_3444_p1;
    end else if ((1'b1 == ap_CS_fsm_state99)) begin
        new_bro_node_mix_array_3_address0 = 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        new_bro_node_mix_array_3_address0 = idx_cast24_fu_3308_p1;
    end else if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_3_address0 = grp_writemem_fu_1946_node_mix_array3_address0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_3_address0 = grp_mergemem_fu_1902_bronode_210_address0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_3_address0 = grp_mergemem_fu_1902_node_23_address0;
    end else begin
        new_bro_node_mix_array_3_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_3_address1 = grp_writemem_fu_1946_node_mix_array3_address1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_3_address1 = grp_mergemem_fu_1902_bronode_210_address1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_3_address1 = grp_mergemem_fu_1902_node_23_address1;
    end else begin
        new_bro_node_mix_array_3_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state108) | (1'b1 == ap_CS_fsm_state99) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        new_bro_node_mix_array_3_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_3_ce0 = grp_writemem_fu_1946_node_mix_array3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_3_ce0 = grp_mergemem_fu_1902_bronode_210_ce0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_3_ce0 = grp_mergemem_fu_1902_node_23_ce0;
    end else begin
        new_bro_node_mix_array_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_3_ce1 = grp_writemem_fu_1946_node_mix_array3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_3_ce1 = grp_mergemem_fu_1902_bronode_210_ce1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_3_ce1 = grp_mergemem_fu_1902_node_23_ce1;
    end else begin
        new_bro_node_mix_array_3_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln104_fu_3352_p2 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        new_bro_node_mix_array_3_we0 = 1'b1;
    end else begin
        new_bro_node_mix_array_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state93)) begin
        new_bro_node_mix_array_4_address0 = zext_ln1240_fu_3396_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        new_bro_node_mix_array_4_address0 = idx_cast24_fu_3308_p1;
    end else if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_4_address0 = grp_writemem_fu_1946_node_mix_array4_address0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_4_address0 = grp_mergemem_fu_1902_bronode_211_address0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_4_address0 = grp_mergemem_fu_1902_node_24_address0;
    end else begin
        new_bro_node_mix_array_4_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_4_address1 = grp_writemem_fu_1946_node_mix_array4_address1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_4_address1 = grp_mergemem_fu_1902_bronode_211_address1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_4_address1 = grp_mergemem_fu_1902_node_24_address1;
    end else begin
        new_bro_node_mix_array_4_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state93) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        new_bro_node_mix_array_4_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_4_ce0 = grp_writemem_fu_1946_node_mix_array4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_4_ce0 = grp_mergemem_fu_1902_bronode_211_ce0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_4_ce0 = grp_mergemem_fu_1902_node_24_ce0;
    end else begin
        new_bro_node_mix_array_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_4_ce1 = grp_writemem_fu_1946_node_mix_array4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_4_ce1 = grp_mergemem_fu_1902_bronode_211_ce1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_4_ce1 = grp_mergemem_fu_1902_node_24_ce1;
    end else begin
        new_bro_node_mix_array_4_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln104_fu_3352_p2 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        new_bro_node_mix_array_4_we0 = 1'b1;
    end else begin
        new_bro_node_mix_array_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state93)) begin
        new_bro_node_mix_array_5_address0 = zext_ln1240_fu_3396_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        new_bro_node_mix_array_5_address0 = idx_cast24_fu_3308_p1;
    end else if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_5_address0 = grp_writemem_fu_1946_node_mix_array5_address0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_5_address0 = grp_mergemem_fu_1902_bronode_212_address0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_5_address0 = grp_mergemem_fu_1902_node_25_address0;
    end else begin
        new_bro_node_mix_array_5_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_5_address1 = grp_writemem_fu_1946_node_mix_array5_address1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_5_address1 = grp_mergemem_fu_1902_bronode_212_address1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_5_address1 = grp_mergemem_fu_1902_node_25_address1;
    end else begin
        new_bro_node_mix_array_5_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state93) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        new_bro_node_mix_array_5_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_5_ce0 = grp_writemem_fu_1946_node_mix_array5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_5_ce0 = grp_mergemem_fu_1902_bronode_212_ce0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_5_ce0 = grp_mergemem_fu_1902_node_25_ce0;
    end else begin
        new_bro_node_mix_array_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_5_ce1 = grp_writemem_fu_1946_node_mix_array5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_5_ce1 = grp_mergemem_fu_1902_bronode_212_ce1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_5_ce1 = grp_mergemem_fu_1902_node_25_ce1;
    end else begin
        new_bro_node_mix_array_5_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln104_fu_3352_p2 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        new_bro_node_mix_array_5_we0 = 1'b1;
    end else begin
        new_bro_node_mix_array_5_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state108)) begin
        new_bro_node_mix_array_6_address0 = zext_ln1224_fu_3444_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        new_bro_node_mix_array_6_address0 = zext_ln91_fu_3346_p1;
    end else if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_6_address0 = grp_writemem_fu_1946_node_mix_array6_address0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_6_address0 = grp_mergemem_fu_1902_bronode_213_address0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_6_address0 = grp_mergemem_fu_1902_node_26_address0;
    end else begin
        new_bro_node_mix_array_6_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_6_address1 = grp_writemem_fu_1946_node_mix_array6_address1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_6_address1 = grp_mergemem_fu_1902_bronode_213_address1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_6_address1 = grp_mergemem_fu_1902_node_26_address1;
    end else begin
        new_bro_node_mix_array_6_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state108) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        new_bro_node_mix_array_6_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_6_ce0 = grp_writemem_fu_1946_node_mix_array6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_6_ce0 = grp_mergemem_fu_1902_bronode_213_ce0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_6_ce0 = grp_mergemem_fu_1902_node_26_ce0;
    end else begin
        new_bro_node_mix_array_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_6_ce1 = grp_writemem_fu_1946_node_mix_array6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_6_ce1 = grp_mergemem_fu_1902_bronode_213_ce1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_6_ce1 = grp_mergemem_fu_1902_node_26_ce1;
    end else begin
        new_bro_node_mix_array_6_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln87_reg_4503 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        new_bro_node_mix_array_6_we0 = 1'b1;
    end else begin
        new_bro_node_mix_array_6_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state108)) begin
        new_bro_node_mix_array_7_address0 = zext_ln1224_fu_3444_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        new_bro_node_mix_array_7_address0 = zext_ln91_fu_3346_p1;
    end else if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_7_address0 = grp_writemem_fu_1946_node_mix_array7_address0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_7_address0 = grp_mergemem_fu_1902_bronode_214_address0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_7_address0 = grp_mergemem_fu_1902_node_27_address0;
    end else begin
        new_bro_node_mix_array_7_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_7_address1 = grp_writemem_fu_1946_node_mix_array7_address1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_7_address1 = grp_mergemem_fu_1902_bronode_214_address1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_7_address1 = grp_mergemem_fu_1902_node_27_address1;
    end else begin
        new_bro_node_mix_array_7_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state108) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        new_bro_node_mix_array_7_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_7_ce0 = grp_writemem_fu_1946_node_mix_array7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_7_ce0 = grp_mergemem_fu_1902_bronode_214_ce0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_7_ce0 = grp_mergemem_fu_1902_node_27_ce0;
    end else begin
        new_bro_node_mix_array_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state111))) begin
        new_bro_node_mix_array_7_ce1 = grp_writemem_fu_1946_node_mix_array7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        new_bro_node_mix_array_7_ce1 = grp_mergemem_fu_1902_bronode_214_ce1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        new_bro_node_mix_array_7_ce1 = grp_mergemem_fu_1902_node_27_ce1;
    end else begin
        new_bro_node_mix_array_7_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln87_reg_4503 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        new_bro_node_mix_array_7_we0 = 1'b1;
    end else begin
        new_bro_node_mix_array_7_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state143)) begin
        port_cross_in_node_mix_array1_address0 = zext_ln1102_fu_3719_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        port_cross_in_node_mix_array1_address0 = zext_ln1474_fu_2557_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        port_cross_in_node_mix_array1_address0 = zext_ln1449_fu_2491_p1;
    end else if (((1'b1 == ap_CS_fsm_state1) & ((((((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11))))) begin
        port_cross_in_node_mix_array1_address0 = zext_ln1107_fu_2387_p1;
    end else if ((((1'b1 == ap_CS_fsm_state1) & ((((((trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))) | ((1'b1 == ap_CS_fsm_state1) & (((((~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))))) begin
        port_cross_in_node_mix_array1_address0 = zext_ln1098_fu_2360_p1;
    end else if (((1'b1 == ap_CS_fsm_state1) & ((((((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (trunc_ln1154_fu_2308_p1 == 1'd1)) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (trunc_ln1154_fu_2308_p1 == 1'd1))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (trunc_ln1154_fu_2308_p1 == 1'd1))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (trunc_ln1154_fu_2308_p1 == 1'd1))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (trunc_ln1154_fu_2308_p1 == 1'd1))))) begin
        port_cross_in_node_mix_array1_address0 = zext_ln1154_fu_2322_p1;
    end else if (((1'b1 == ap_CS_fsm_state1) & ((((((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (trunc_ln1157_fu_2292_p1 == 1'd0)) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (trunc_ln1157_fu_2292_p1 == 1'd0))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (trunc_ln1157_fu_2292_p1 == 1'd0))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (trunc_ln1157_fu_2292_p1 == 1'd0))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (trunc_ln1157_fu_2292_p1 == 1'd0))))) begin
        port_cross_in_node_mix_array1_address0 = zext_ln1157_fu_2286_p1;
    end else if (((1'b1 == ap_CS_fsm_state1) & (((((port_in_op_read_1_read_fu_466_p2 == 5'd22) & (trunc_ln1542_fu_2282_p1 == 1'd0) & (icmp_ln1538_fu_2065_p2 == 1'd0)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd12) & (trunc_ln1542_fu_2282_p1 == 1'd0) & (icmp_ln1538_fu_2065_p2 == 1'd0))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd15) & (trunc_ln1542_fu_2282_p1 == 1'd0) & (icmp_ln1538_fu_2065_p2 == 1'd0))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd1) & (trunc_ln1542_fu_2282_p1 == 1'd0) & (icmp_ln1538_fu_2065_p2 == 1'd0))))) begin
        port_cross_in_node_mix_array1_address0 = zext_ln1542_fu_2276_p1;
    end else if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array1_address0 = grp_split_fu_2003_node_mix_array1_address0;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array1_address0 = grp_writemem_fu_1946_node_mix_array1_address0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array1_address0 = grp_mergemem_fu_1902_bronode_28_address0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array1_address0 = grp_mergemem_fu_1902_node_21_address0;
    end else begin
        port_cross_in_node_mix_array1_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array1_address1 = grp_split_fu_2003_node_mix_array1_address1;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array1_address1 = grp_writemem_fu_1946_node_mix_array1_address1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array1_address1 = grp_mergemem_fu_1902_bronode_28_address1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array1_address1 = grp_mergemem_fu_1902_node_21_address1;
    end else begin
        port_cross_in_node_mix_array1_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state143) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state4) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (trunc_ln1154_fu_2308_p1 == 1'd1)) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (trunc_ln1154_fu_2308_p1 == 1'd1))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (trunc_ln1154_fu_2308_p1 == 1'd1))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (trunc_ln1154_fu_2308_p1 == 1'd1))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (trunc_ln1154_fu_2308_p1 == 1'd1)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (trunc_ln1157_fu_2292_p1 == 1'd0)) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (trunc_ln1157_fu_2292_p1 == 1'd0))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (trunc_ln1157_fu_2292_p1 == 1'd0))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (trunc_ln1157_fu_2292_p1 == 1'd0))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (trunc_ln1157_fu_2292_p1 == 1'd0)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((((port_in_op_read_1_read_fu_466_p2 == 5'd22) & (trunc_ln1542_fu_2282_p1 == 1'd0) & (icmp_ln1538_fu_2065_p2 == 1'd0)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd12) & (trunc_ln1542_fu_2282_p1 == 1'd0) & (icmp_ln1538_fu_2065_p2 == 1'd0))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd15) & (trunc_ln1542_fu_2282_p1 == 1'd0) & (icmp_ln1538_fu_2065_p2 == 1'd0))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd1) & (trunc_ln1542_fu_2282_p1 == 1'd0) & (icmp_ln1538_fu_2065_p2 == 1'd0)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((((~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))))) begin
        port_cross_in_node_mix_array1_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array1_ce0 = grp_split_fu_2003_node_mix_array1_ce0;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array1_ce0 = grp_writemem_fu_1946_node_mix_array1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array1_ce0 = grp_mergemem_fu_1902_bronode_28_ce0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array1_ce0 = grp_mergemem_fu_1902_node_21_ce0;
    end else begin
        port_cross_in_node_mix_array1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array1_ce1 = grp_split_fu_2003_node_mix_array1_ce1;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array1_ce1 = grp_writemem_fu_1946_node_mix_array1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array1_ce1 = grp_mergemem_fu_1902_bronode_28_ce1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array1_ce1 = grp_mergemem_fu_1902_node_21_ce1;
    end else begin
        port_cross_in_node_mix_array1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (((((~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11))))) begin
        port_cross_in_node_mix_array1_d0 = port_in_fb_index_read;
    end else if (((1'b1 == ap_CS_fsm_state143) | ((1'b1 == ap_CS_fsm_state1) & ((((((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (trunc_ln1154_fu_2308_p1 == 1'd1)) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (trunc_ln1154_fu_2308_p1 == 1'd1))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (trunc_ln1154_fu_2308_p1 == 1'd1))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (trunc_ln1154_fu_2308_p1 == 1'd1))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (trunc_ln1154_fu_2308_p1 == 1'd1)))) | ((1'b1 == ap_CS_fsm_state1) & ((((((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))))) begin
        port_cross_in_node_mix_array1_d0 = 32'd0;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state4) | ((1'b1 == ap_CS_fsm_state1) & ((((((trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))) | ((1'b1 == ap_CS_fsm_state1) & ((((((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (trunc_ln1157_fu_2292_p1 == 1'd0)) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (trunc_ln1157_fu_2292_p1 == 1'd0))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (trunc_ln1157_fu_2292_p1 == 1'd0))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (trunc_ln1157_fu_2292_p1 == 1'd0))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (trunc_ln1157_fu_2292_p1 == 1'd0)))) | ((1'b1 == ap_CS_fsm_state1) & (((((port_in_op_read_1_read_fu_466_p2 == 5'd22) & (trunc_ln1542_fu_2282_p1 == 1'd0) & (icmp_ln1538_fu_2065_p2 == 1'd0)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd12) & (trunc_ln1542_fu_2282_p1 == 1'd0) & (icmp_ln1538_fu_2065_p2 == 1'd0))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd15) & (trunc_ln1542_fu_2282_p1 == 1'd0) & (icmp_ln1538_fu_2065_p2 == 1'd0))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd1) & (trunc_ln1542_fu_2282_p1 == 1'd0) & (icmp_ln1538_fu_2065_p2 == 1'd0)))))) begin
        port_cross_in_node_mix_array1_d0 = port_in_node_max_fb_length_read;
    end else begin
        port_cross_in_node_mix_array1_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((trunc_ln1474_fu_2563_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state25)) | ((trunc_ln1449_fu_2497_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | ((trunc_ln_reg_4158 == 3'd4) & (1'b1 == ap_CS_fsm_state143)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (trunc_ln1154_fu_2308_p1 == 1'd1)) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (trunc_ln1154_fu_2308_p1 == 1'd1))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (trunc_ln1154_fu_2308_p1 == 1'd1))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (trunc_ln1154_fu_2308_p1 == 1'd1))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (trunc_ln1154_fu_2308_p1 == 1'd1)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (trunc_ln1157_fu_2292_p1 == 1'd0)) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (trunc_ln1157_fu_2292_p1 == 1'd0))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (trunc_ln1157_fu_2292_p1 == 1'd0))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (trunc_ln1157_fu_2292_p1 == 1'd0))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (trunc_ln1157_fu_2292_p1 == 1'd0)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((((port_in_op_read_1_read_fu_466_p2 == 5'd22) & (trunc_ln1542_fu_2282_p1 == 1'd0) & (icmp_ln1538_fu_2065_p2 == 1'd0)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd12) & (trunc_ln1542_fu_2282_p1 == 1'd0) & (icmp_ln1538_fu_2065_p2 == 1'd0))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd15) & (trunc_ln1542_fu_2282_p1 == 1'd0) & (icmp_ln1538_fu_2065_p2 == 1'd0))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd1) & (trunc_ln1542_fu_2282_p1 == 1'd0) & (icmp_ln1538_fu_2065_p2 == 1'd0)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((((~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))))) begin
        port_cross_in_node_mix_array1_we0 = 1'b1;
    end else begin
        port_cross_in_node_mix_array1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state92)) begin
        port_cross_in_node_mix_array2_address0 = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        port_cross_in_node_mix_array2_address0 = 64'd16;
    end else if (((1'b1 == ap_CS_fsm_state1) & ((((((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd11))))) begin
        port_cross_in_node_mix_array2_address0 = zext_ln1100_fu_2410_p1;
    end else if ((((1'b1 == ap_CS_fsm_state1) & (((((~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))) | ((1'b1 == ap_CS_fsm_state1) & ((((((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))))) begin
        port_cross_in_node_mix_array2_address0 = zext_ln1098_fu_2360_p1;
    end else if (((grp_fu_2044_p2 == 1'd0) & (trunc_ln1430_fu_2220_p1 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd4) & (1'b1 == ap_CS_fsm_state1))) begin
        port_cross_in_node_mix_array2_address0 = zext_ln1430_fu_2212_p1;
    end else if (((grp_fu_2044_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd17) & (trunc_ln1443_fu_2168_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        port_cross_in_node_mix_array2_address0 = zext_ln1443_fu_2160_p1;
    end else if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array2_address0 = grp_split_fu_2003_node_mix_array2_address0;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array2_address0 = grp_writemem_fu_1946_node_mix_array2_address0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array2_address0 = grp_mergemem_fu_1902_bronode_29_address0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array2_address0 = grp_mergemem_fu_1902_node_22_address0;
    end else begin
        port_cross_in_node_mix_array2_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array2_address1 = grp_split_fu_2003_node_mix_array2_address1;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array2_address1 = grp_writemem_fu_1946_node_mix_array2_address1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array2_address1 = grp_mergemem_fu_1902_bronode_29_address1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array2_address1 = grp_mergemem_fu_1902_node_22_address1;
    end else begin
        port_cross_in_node_mix_array2_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state92) | (1'b1 == ap_CS_fsm_state43) | ((grp_fu_2044_p2 == 1'd0) & (trunc_ln1430_fu_2220_p1 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd4) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((grp_fu_2044_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd17) & (trunc_ln1443_fu_2168_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((((~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))))) begin
        port_cross_in_node_mix_array2_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array2_ce0 = grp_split_fu_2003_node_mix_array2_ce0;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array2_ce0 = grp_writemem_fu_1946_node_mix_array2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array2_ce0 = grp_mergemem_fu_1902_bronode_29_ce0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array2_ce0 = grp_mergemem_fu_1902_node_22_ce0;
    end else begin
        port_cross_in_node_mix_array2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array2_ce1 = grp_split_fu_2003_node_mix_array2_ce1;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array2_ce1 = grp_writemem_fu_1946_node_mix_array2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array2_ce1 = grp_mergemem_fu_1902_bronode_29_ce1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array2_ce1 = grp_mergemem_fu_1902_node_22_ce1;
    end else begin
        port_cross_in_node_mix_array2_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (((((~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11))))) begin
        port_cross_in_node_mix_array2_d0 = port_in_fb_length_read;
    end else if ((((1'b1 == ap_CS_fsm_state1) & ((((((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))) | ((1'b1 == ap_CS_fsm_state1) & ((((((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))))) begin
        port_cross_in_node_mix_array2_d0 = port_in_fb_index_read;
    end else if ((((grp_fu_2044_p2 == 1'd0) & (trunc_ln1430_fu_2220_p1 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd4) & (1'b1 == ap_CS_fsm_state1)) | ((grp_fu_2044_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd17) & (trunc_ln1443_fu_2168_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state1)))) begin
        port_cross_in_node_mix_array2_d0 = port_in_merge_index_read;
    end else begin
        port_cross_in_node_mix_array2_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((grp_fu_2044_p2 == 1'd0) & (trunc_ln1430_fu_2220_p1 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd4) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((grp_fu_2044_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd17) & (trunc_ln1443_fu_2168_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((((~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))))) begin
        port_cross_in_node_mix_array2_we0 = 1'b1;
    end else begin
        port_cross_in_node_mix_array2_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        port_cross_in_node_mix_array3_address0 = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        port_cross_in_node_mix_array3_address0 = port_cross_in_node_mix_array3_addr_1_reg_4111;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        port_cross_in_node_mix_array3_address0 = port_cross_in_node_mix_array3_addr_reg_4093;
    end else if (((1'b1 == ap_CS_fsm_state1) & ((((((icmp_ln1101_fu_2439_p2 == 1'd1) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((icmp_ln1101_fu_2439_p2 == 1'd1) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((icmp_ln1101_fu_2439_p2 == 1'd1) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((icmp_ln1101_fu_2439_p2 == 1'd1) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((icmp_ln1101_fu_2439_p2 == 1'd1) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd11))))) begin
        port_cross_in_node_mix_array3_address0 = zext_ln1101_fu_2433_p1;
    end else if (((1'b1 == ap_CS_fsm_state1) & ((((((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11))))) begin
        port_cross_in_node_mix_array3_address0 = zext_ln1098_fu_2360_p1;
    end else if (((grp_fu_2044_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd4) & (1'b1 == ap_CS_fsm_state1))) begin
        port_cross_in_node_mix_array3_address0 = zext_ln1430_fu_2212_p1;
    end else if (((icmp_ln1436_fu_2172_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd7) & (1'b1 == ap_CS_fsm_state1))) begin
        port_cross_in_node_mix_array3_address0 = zext_ln1437_fu_2206_p1;
    end else if (((grp_fu_2044_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd17) & (trunc_ln1443_fu_2168_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        port_cross_in_node_mix_array3_address0 = zext_ln1443_fu_2160_p1;
    end else if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array3_address0 = grp_split_fu_2003_node_mix_array3_address0;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array3_address0 = grp_writemem_fu_1946_node_mix_array3_address0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array3_address0 = grp_mergemem_fu_1902_bronode_210_address0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array3_address0 = grp_mergemem_fu_1902_node_23_address0;
    end else begin
        port_cross_in_node_mix_array3_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array3_address1 = grp_split_fu_2003_node_mix_array3_address1;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array3_address1 = grp_writemem_fu_1946_node_mix_array3_address1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array3_address1 = grp_mergemem_fu_1902_bronode_210_address1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array3_address1 = grp_mergemem_fu_1902_node_23_address1;
    end else begin
        port_cross_in_node_mix_array3_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3) | ((grp_fu_2044_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd4) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((grp_fu_2044_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd17) & (trunc_ln1443_fu_2168_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((icmp_ln1436_fu_2172_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd7) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((icmp_ln1101_fu_2439_p2 == 1'd1) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((icmp_ln1101_fu_2439_p2 == 1'd1) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((icmp_ln1101_fu_2439_p2 == 1'd1) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((icmp_ln1101_fu_2439_p2 == 1'd1) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((icmp_ln1101_fu_2439_p2 == 1'd1) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))))) begin
        port_cross_in_node_mix_array3_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array3_ce0 = grp_split_fu_2003_node_mix_array3_ce0;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array3_ce0 = grp_writemem_fu_1946_node_mix_array3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array3_ce0 = grp_mergemem_fu_1902_bronode_210_ce0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array3_ce0 = grp_mergemem_fu_1902_node_23_ce0;
    end else begin
        port_cross_in_node_mix_array3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array3_ce1 = grp_split_fu_2003_node_mix_array3_ce1;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array3_ce1 = grp_writemem_fu_1946_node_mix_array3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array3_ce1 = grp_mergemem_fu_1902_bronode_210_ce1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array3_ce1 = grp_mergemem_fu_1902_node_23_ce1;
    end else begin
        port_cross_in_node_mix_array3_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        port_cross_in_node_mix_array3_d0 = add_ln1431_fu_2484_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        port_cross_in_node_mix_array3_d0 = add_ln1437_1_fu_2470_p2;
    end else if ((((1'b1 == ap_CS_fsm_state1) & ((((((icmp_ln1101_fu_2439_p2 == 1'd1) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((icmp_ln1101_fu_2439_p2 == 1'd1) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((icmp_ln1101_fu_2439_p2 == 1'd1) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((icmp_ln1101_fu_2439_p2 == 1'd1) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((icmp_ln1101_fu_2439_p2 == 1'd1) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))) | ((1'b1 == ap_CS_fsm_state1) & ((((((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))))) begin
        port_cross_in_node_mix_array3_d0 = port_in_fb_length_read;
    end else if (((grp_fu_2044_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd17) & (trunc_ln1443_fu_2168_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        port_cross_in_node_mix_array3_d0 = port_in_merge_length_read;
    end else begin
        port_cross_in_node_mix_array3_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((grp_fu_2044_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd17) & (trunc_ln1443_fu_2168_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((trunc_ln1430_reg_4106 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln1437_fu_2456_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((icmp_ln1101_fu_2439_p2 == 1'd1) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((icmp_ln1101_fu_2439_p2 == 1'd1) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((icmp_ln1101_fu_2439_p2 == 1'd1) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((icmp_ln1101_fu_2439_p2 == 1'd1) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((icmp_ln1101_fu_2439_p2 == 1'd1) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))))) begin
        port_cross_in_node_mix_array3_we0 = 1'b1;
    end else begin
        port_cross_in_node_mix_array3_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        port_cross_in_node_mix_array4_address0 = zext_ln1107_fu_2387_p1;
    end else if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array4_address0 = grp_split_fu_2003_node_mix_array4_address0;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array4_address0 = grp_writemem_fu_1946_node_mix_array4_address0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array4_address0 = grp_mergemem_fu_1902_bronode_211_address0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array4_address0 = grp_mergemem_fu_1902_node_24_address0;
    end else begin
        port_cross_in_node_mix_array4_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array4_address1 = grp_split_fu_2003_node_mix_array4_address1;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array4_address1 = grp_writemem_fu_1946_node_mix_array4_address1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array4_address1 = grp_mergemem_fu_1902_bronode_211_address1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array4_address1 = grp_mergemem_fu_1902_node_24_address1;
    end else begin
        port_cross_in_node_mix_array4_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        port_cross_in_node_mix_array4_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array4_ce0 = grp_split_fu_2003_node_mix_array4_ce0;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array4_ce0 = grp_writemem_fu_1946_node_mix_array4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array4_ce0 = grp_mergemem_fu_1902_bronode_211_ce0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array4_ce0 = grp_mergemem_fu_1902_node_24_ce0;
    end else begin
        port_cross_in_node_mix_array4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array4_ce1 = grp_split_fu_2003_node_mix_array4_ce1;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array4_ce1 = grp_writemem_fu_1946_node_mix_array4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array4_ce1 = grp_mergemem_fu_1902_bronode_211_ce1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array4_ce1 = grp_mergemem_fu_1902_node_24_ce1;
    end else begin
        port_cross_in_node_mix_array4_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((((~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11))))) begin
        port_cross_in_node_mix_array4_we0 = 1'b1;
    end else begin
        port_cross_in_node_mix_array4_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state143)) begin
        port_cross_in_node_mix_array5_address0 = zext_ln1102_fu_3719_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        port_cross_in_node_mix_array5_address0 = zext_ln1474_fu_2557_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        port_cross_in_node_mix_array5_address0 = zext_ln1449_fu_2491_p1;
    end else if (((1'b1 == ap_CS_fsm_state1) & ((((((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11))))) begin
        port_cross_in_node_mix_array5_address0 = zext_ln1107_fu_2387_p1;
    end else if (((1'b1 == ap_CS_fsm_state1) & ((((((trunc_ln_fu_2352_p3 == 3'd4) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd4) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (port_in_op_read_1_read_fu_466_p2 == 5'd11))))) begin
        port_cross_in_node_mix_array5_address0 = zext_ln1098_fu_2360_p1;
    end else if (((1'b1 == ap_CS_fsm_state1) & ((((((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (trunc_ln1154_fu_2308_p1 == 1'd0)) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (trunc_ln1154_fu_2308_p1 == 1'd0))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (trunc_ln1154_fu_2308_p1 == 1'd0))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (trunc_ln1154_fu_2308_p1 == 1'd0))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (trunc_ln1154_fu_2308_p1 == 1'd0))))) begin
        port_cross_in_node_mix_array5_address0 = zext_ln1154_fu_2322_p1;
    end else if (((1'b1 == ap_CS_fsm_state1) & ((((((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (trunc_ln1157_fu_2292_p1 == 1'd1)) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (trunc_ln1157_fu_2292_p1 == 1'd1))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (trunc_ln1157_fu_2292_p1 == 1'd1))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (trunc_ln1157_fu_2292_p1 == 1'd1))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (trunc_ln1157_fu_2292_p1 == 1'd1))))) begin
        port_cross_in_node_mix_array5_address0 = zext_ln1157_fu_2286_p1;
    end else if (((1'b1 == ap_CS_fsm_state1) & (((((port_in_op_read_1_read_fu_466_p2 == 5'd22) & (trunc_ln1542_fu_2282_p1 == 1'd1) & (icmp_ln1538_fu_2065_p2 == 1'd0)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd12) & (trunc_ln1542_fu_2282_p1 == 1'd1) & (icmp_ln1538_fu_2065_p2 == 1'd0))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd15) & (trunc_ln1542_fu_2282_p1 == 1'd1) & (icmp_ln1538_fu_2065_p2 == 1'd0))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd1) & (trunc_ln1542_fu_2282_p1 == 1'd1) & (icmp_ln1538_fu_2065_p2 == 1'd0))))) begin
        port_cross_in_node_mix_array5_address0 = zext_ln1542_fu_2276_p1;
    end else if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array5_address0 = grp_split_fu_2003_node_mix_array5_address0;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array5_address0 = grp_writemem_fu_1946_node_mix_array5_address0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array5_address0 = grp_mergemem_fu_1902_bronode_212_address0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array5_address0 = grp_mergemem_fu_1902_node_25_address0;
    end else begin
        port_cross_in_node_mix_array5_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array5_address1 = grp_split_fu_2003_node_mix_array5_address1;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array5_address1 = grp_writemem_fu_1946_node_mix_array5_address1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array5_address1 = grp_mergemem_fu_1902_bronode_212_address1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array5_address1 = grp_mergemem_fu_1902_node_25_address1;
    end else begin
        port_cross_in_node_mix_array5_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state143) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state4) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((trunc_ln_fu_2352_p3 == 3'd4) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd4) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (trunc_ln1154_fu_2308_p1 == 1'd0)) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (trunc_ln1154_fu_2308_p1 == 1'd0))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (trunc_ln1154_fu_2308_p1 == 1'd0))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (trunc_ln1154_fu_2308_p1 == 1'd0))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (trunc_ln1154_fu_2308_p1 == 1'd0)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (trunc_ln1157_fu_2292_p1 == 1'd1)) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (trunc_ln1157_fu_2292_p1 == 1'd1))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (trunc_ln1157_fu_2292_p1 == 1'd1))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (trunc_ln1157_fu_2292_p1 == 1'd1))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (trunc_ln1157_fu_2292_p1 == 1'd1)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((((port_in_op_read_1_read_fu_466_p2 == 5'd22) & (trunc_ln1542_fu_2282_p1 == 1'd1) & (icmp_ln1538_fu_2065_p2 == 1'd0)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd12) & (trunc_ln1542_fu_2282_p1 == 1'd1) & (icmp_ln1538_fu_2065_p2 == 1'd0))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd15) & (trunc_ln1542_fu_2282_p1 == 1'd1) & (icmp_ln1538_fu_2065_p2 == 1'd0))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd1) & (trunc_ln1542_fu_2282_p1 == 1'd1) & (icmp_ln1538_fu_2065_p2 == 1'd0)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))))) begin
        port_cross_in_node_mix_array5_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array5_ce0 = grp_split_fu_2003_node_mix_array5_ce0;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array5_ce0 = grp_writemem_fu_1946_node_mix_array5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array5_ce0 = grp_mergemem_fu_1902_bronode_212_ce0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array5_ce0 = grp_mergemem_fu_1902_node_25_ce0;
    end else begin
        port_cross_in_node_mix_array5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array5_ce1 = grp_split_fu_2003_node_mix_array5_ce1;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array5_ce1 = grp_writemem_fu_1946_node_mix_array5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array5_ce1 = grp_mergemem_fu_1902_bronode_212_ce1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array5_ce1 = grp_mergemem_fu_1902_node_25_ce1;
    end else begin
        port_cross_in_node_mix_array5_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state143) | ((1'b1 == ap_CS_fsm_state1) & ((((((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (trunc_ln1154_fu_2308_p1 == 1'd0)) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (trunc_ln1154_fu_2308_p1 == 1'd0))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (trunc_ln1154_fu_2308_p1 == 1'd0))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (trunc_ln1154_fu_2308_p1 == 1'd0))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (trunc_ln1154_fu_2308_p1 == 1'd0)))) | ((1'b1 == ap_CS_fsm_state1) & ((((((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))))) begin
        port_cross_in_node_mix_array5_d0 = 32'd0;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state4) | ((1'b1 == ap_CS_fsm_state1) & ((((((trunc_ln_fu_2352_p3 == 3'd4) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd4) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))) | ((1'b1 == ap_CS_fsm_state1) & ((((((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (trunc_ln1157_fu_2292_p1 == 1'd1)) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (trunc_ln1157_fu_2292_p1 == 1'd1))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (trunc_ln1157_fu_2292_p1 == 1'd1))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (trunc_ln1157_fu_2292_p1 == 1'd1))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (trunc_ln1157_fu_2292_p1 == 1'd1)))) | ((1'b1 == ap_CS_fsm_state1) & (((((port_in_op_read_1_read_fu_466_p2 == 5'd22) & (trunc_ln1542_fu_2282_p1 == 1'd1) & (icmp_ln1538_fu_2065_p2 == 1'd0)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd12) & (trunc_ln1542_fu_2282_p1 == 1'd1) & (icmp_ln1538_fu_2065_p2 == 1'd0))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd15) & (trunc_ln1542_fu_2282_p1 == 1'd1) & (icmp_ln1538_fu_2065_p2 == 1'd0))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd1) & (trunc_ln1542_fu_2282_p1 == 1'd1) & (icmp_ln1538_fu_2065_p2 == 1'd0)))))) begin
        port_cross_in_node_mix_array5_d0 = port_in_node_max_fb_length_read;
    end else begin
        port_cross_in_node_mix_array5_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((trunc_ln1474_fu_2563_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state25)) | ((trunc_ln1449_fu_2497_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((trunc_ln_reg_4158 == 3'd0) & (1'b1 == ap_CS_fsm_state143)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((trunc_ln_fu_2352_p3 == 3'd4) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd4) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (trunc_ln1154_fu_2308_p1 == 1'd0)) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (trunc_ln1154_fu_2308_p1 == 1'd0))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (trunc_ln1154_fu_2308_p1 == 1'd0))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (trunc_ln1154_fu_2308_p1 == 1'd0))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (trunc_ln1154_fu_2308_p1 == 1'd0)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (trunc_ln1157_fu_2292_p1 == 1'd1)) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (trunc_ln1157_fu_2292_p1 == 1'd1))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (trunc_ln1157_fu_2292_p1 == 1'd1))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (trunc_ln1157_fu_2292_p1 == 1'd1))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (trunc_ln1157_fu_2292_p1 == 1'd1)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((((port_in_op_read_1_read_fu_466_p2 == 5'd22) & (trunc_ln1542_fu_2282_p1 == 1'd1) & (icmp_ln1538_fu_2065_p2 == 1'd0)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd12) & (trunc_ln1542_fu_2282_p1 == 1'd1) & (icmp_ln1538_fu_2065_p2 == 1'd0))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd15) & (trunc_ln1542_fu_2282_p1 == 1'd1) & (icmp_ln1538_fu_2065_p2 == 1'd0))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd1) & (trunc_ln1542_fu_2282_p1 == 1'd1) & (icmp_ln1538_fu_2065_p2 == 1'd0)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))))) begin
        port_cross_in_node_mix_array5_we0 = 1'b1;
    end else begin
        port_cross_in_node_mix_array5_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state87)) begin
        port_cross_in_node_mix_array6_address0 = port_cross_in_node_mix_array6_addr_5_gep_fu_946_p3;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        port_cross_in_node_mix_array6_address0 = 64'd15;
    end else if (((1'b1 == ap_CS_fsm_state1) & ((((((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd11))))) begin
        port_cross_in_node_mix_array6_address0 = zext_ln1100_fu_2410_p1;
    end else if (((1'b1 == ap_CS_fsm_state1) & ((((((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11))))) begin
        port_cross_in_node_mix_array6_address0 = zext_ln1098_fu_2360_p1;
    end else if (((grp_fu_2044_p2 == 1'd0) & (trunc_ln1430_fu_2220_p1 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd4) & (1'b1 == ap_CS_fsm_state1))) begin
        port_cross_in_node_mix_array6_address0 = zext_ln1430_fu_2212_p1;
    end else if (((grp_fu_2044_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd17) & (trunc_ln1443_fu_2168_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        port_cross_in_node_mix_array6_address0 = zext_ln1443_fu_2160_p1;
    end else if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array6_address0 = grp_split_fu_2003_node_mix_array6_address0;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array6_address0 = grp_writemem_fu_1946_node_mix_array6_address0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array6_address0 = grp_mergemem_fu_1902_bronode_213_address0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array6_address0 = grp_mergemem_fu_1902_node_26_address0;
    end else begin
        port_cross_in_node_mix_array6_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array6_address1 = grp_split_fu_2003_node_mix_array6_address1;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array6_address1 = grp_writemem_fu_1946_node_mix_array6_address1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array6_address1 = grp_mergemem_fu_1902_bronode_213_address1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array6_address1 = grp_mergemem_fu_1902_node_26_address1;
    end else begin
        port_cross_in_node_mix_array6_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state87) | (1'b1 == ap_CS_fsm_state43) | ((grp_fu_2044_p2 == 1'd0) & (trunc_ln1430_fu_2220_p1 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd4) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((grp_fu_2044_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd17) & (trunc_ln1443_fu_2168_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))))) begin
        port_cross_in_node_mix_array6_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array6_ce0 = grp_split_fu_2003_node_mix_array6_ce0;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array6_ce0 = grp_writemem_fu_1946_node_mix_array6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array6_ce0 = grp_mergemem_fu_1902_bronode_213_ce0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array6_ce0 = grp_mergemem_fu_1902_node_26_ce0;
    end else begin
        port_cross_in_node_mix_array6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array6_ce1 = grp_split_fu_2003_node_mix_array6_ce1;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array6_ce1 = grp_writemem_fu_1946_node_mix_array6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array6_ce1 = grp_mergemem_fu_1902_bronode_213_ce1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array6_ce1 = grp_mergemem_fu_1902_node_26_ce1;
    end else begin
        port_cross_in_node_mix_array6_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & ((((((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))) | ((1'b1 == ap_CS_fsm_state1) & ((((((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))))) begin
        port_cross_in_node_mix_array6_d0 = port_in_fb_index_read;
    end else if ((((grp_fu_2044_p2 == 1'd0) & (trunc_ln1430_fu_2220_p1 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd4) & (1'b1 == ap_CS_fsm_state1)) | ((grp_fu_2044_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd17) & (trunc_ln1443_fu_2168_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state1)))) begin
        port_cross_in_node_mix_array6_d0 = port_in_merge_index_read;
    end else begin
        port_cross_in_node_mix_array6_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((grp_fu_2044_p2 == 1'd0) & (trunc_ln1430_fu_2220_p1 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd4) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((grp_fu_2044_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd17) & (trunc_ln1443_fu_2168_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))))) begin
        port_cross_in_node_mix_array6_we0 = 1'b1;
    end else begin
        port_cross_in_node_mix_array6_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state144)) begin
        port_cross_in_node_mix_array7_address0 = port_cross_in_node_mix_array7_addr_7_reg_4718;
    end else if ((1'b1 == ap_CS_fsm_state143)) begin
        port_cross_in_node_mix_array7_address0 = port_cross_in_node_mix_array7_addr_4_reg_4162;
    end else if ((1'b1 == ap_CS_fsm_state87)) begin
        port_cross_in_node_mix_array7_address0 = port_cross_in_node_mix_array7_addr_8_gep_fu_955_p3;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        port_cross_in_node_mix_array7_address0 = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        port_cross_in_node_mix_array7_address0 = port_cross_in_node_mix_array7_addr_2_reg_4116;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        port_cross_in_node_mix_array7_address0 = port_cross_in_node_mix_array7_addr_reg_4098;
    end else if (((1'b1 == ap_CS_fsm_state1) & (((((~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd11))))) begin
        port_cross_in_node_mix_array7_address0 = zext_ln1100_fu_2410_p1;
    end else if (((1'b1 == ap_CS_fsm_state1) & ((((((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11))))) begin
        port_cross_in_node_mix_array7_address0 = zext_ln1098_fu_2360_p1;
    end else if (((grp_fu_2044_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd4) & (1'b1 == ap_CS_fsm_state1))) begin
        port_cross_in_node_mix_array7_address0 = zext_ln1430_fu_2212_p1;
    end else if (((icmp_ln1436_fu_2172_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd7) & (1'b1 == ap_CS_fsm_state1))) begin
        port_cross_in_node_mix_array7_address0 = zext_ln1437_fu_2206_p1;
    end else if (((grp_fu_2044_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd17) & (trunc_ln1443_fu_2168_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        port_cross_in_node_mix_array7_address0 = zext_ln1443_fu_2160_p1;
    end else if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array7_address0 = grp_split_fu_2003_node_mix_array7_address0;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array7_address0 = grp_writemem_fu_1946_node_mix_array7_address0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array7_address0 = grp_mergemem_fu_1902_bronode_214_address0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array7_address0 = grp_mergemem_fu_1902_node_27_address0;
    end else begin
        port_cross_in_node_mix_array7_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array7_address1 = grp_split_fu_2003_node_mix_array7_address1;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array7_address1 = grp_writemem_fu_1946_node_mix_array7_address1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array7_address1 = grp_mergemem_fu_1902_bronode_214_address1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array7_address1 = grp_mergemem_fu_1902_node_27_address1;
    end else begin
        port_cross_in_node_mix_array7_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state143) | (1'b1 == ap_CS_fsm_state87) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state144) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3) | ((grp_fu_2044_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd4) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((grp_fu_2044_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd17) & (trunc_ln1443_fu_2168_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((icmp_ln1436_fu_2172_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd7) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((((~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))))) begin
        port_cross_in_node_mix_array7_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array7_ce0 = grp_split_fu_2003_node_mix_array7_ce0;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array7_ce0 = grp_writemem_fu_1946_node_mix_array7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array7_ce0 = grp_mergemem_fu_1902_bronode_214_ce0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array7_ce0 = grp_mergemem_fu_1902_node_27_ce0;
    end else begin
        port_cross_in_node_mix_array7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array7_ce1 = grp_split_fu_2003_node_mix_array7_ce1;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array7_ce1 = grp_writemem_fu_1946_node_mix_array7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array7_ce1 = grp_mergemem_fu_1902_bronode_214_ce1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array7_ce1 = grp_mergemem_fu_1902_node_27_ce1;
    end else begin
        port_cross_in_node_mix_array7_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state144)) begin
        port_cross_in_node_mix_array7_d0 = 32'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        port_cross_in_node_mix_array7_d0 = add_ln1431_fu_2484_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        port_cross_in_node_mix_array7_d0 = add_ln1437_1_fu_2470_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (((((~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd11))))) begin
        port_cross_in_node_mix_array7_d0 = port_in_fb_index_read;
    end else if (((1'b1 == ap_CS_fsm_state143) | ((1'b1 == ap_CS_fsm_state1) & ((((((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))))) begin
        port_cross_in_node_mix_array7_d0 = port_in_fb_length_read;
    end else if (((grp_fu_2044_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd17) & (trunc_ln1443_fu_2168_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        port_cross_in_node_mix_array7_d0 = port_in_merge_length_read;
    end else begin
        port_cross_in_node_mix_array7_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((grp_fu_2044_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd17) & (trunc_ln1443_fu_2168_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | (~(trunc_ln_reg_4158 == 3'd4) & ~(trunc_ln_reg_4158 == 3'd0) & (1'b1 == ap_CS_fsm_state144)) | ((icmp_ln1101_reg_4167 == 1'd0) & (1'b1 == ap_CS_fsm_state143)) | ((trunc_ln1430_reg_4106 == 1'd1) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln1437_fu_2456_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((((~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((trunc_ln_fu_2352_p3 == 3'd4) & (p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))))) begin
        port_cross_in_node_mix_array7_we0 = 1'b1;
    end else begin
        port_cross_in_node_mix_array7_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (((((~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11))))) begin
        port_cross_in_node_mix_array_address0 = zext_ln1098_fu_2360_p1;
    end else if (((icmp_ln1466_fu_2060_p2 == 1'd1) & (port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state1))) begin
        port_cross_in_node_mix_array_address0 = 64'd0;
    end else if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array_address0 = grp_split_fu_2003_node_mix_array_address0;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array_address0 = grp_writemem_fu_1946_node_mix_array_address0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array_address0 = grp_mergemem_fu_1902_bronode_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array_address0 = grp_mergemem_fu_1902_node_2_address0;
    end else begin
        port_cross_in_node_mix_array_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array_address1 = grp_split_fu_2003_node_mix_array_address1;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array_address1 = grp_writemem_fu_1946_node_mix_array_address1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array_address1 = grp_mergemem_fu_1902_bronode_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array_address1 = grp_mergemem_fu_1902_node_2_address1;
    end else begin
        port_cross_in_node_mix_array_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln1466_fu_2060_p2 == 1'd1) & (port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((((~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))))) begin
        port_cross_in_node_mix_array_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array_ce0 = grp_split_fu_2003_node_mix_array_ce0;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array_ce0 = grp_writemem_fu_1946_node_mix_array_ce0;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array_ce0 = grp_mergemem_fu_1902_bronode_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array_ce0 = grp_mergemem_fu_1902_node_2_ce0;
    end else begin
        port_cross_in_node_mix_array_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state46) | ((1'b1 == ap_CS_fsm_state48) & (ap_predicate_op494_call_state48 == 1'b1)))) begin
        port_cross_in_node_mix_array_ce1 = grp_split_fu_2003_node_mix_array_ce1;
    end else if (((1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state6))) begin
        port_cross_in_node_mix_array_ce1 = grp_writemem_fu_1946_node_mix_array_ce1;
    end else if ((1'b1 == ap_CS_fsm_state122)) begin
        port_cross_in_node_mix_array_ce1 = grp_mergemem_fu_1902_bronode_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        port_cross_in_node_mix_array_ce1 = grp_mergemem_fu_1902_node_2_ce1;
    end else begin
        port_cross_in_node_mix_array_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        if ((1'b1 == ap_condition_2274)) begin
            port_cross_in_node_mix_array_d0 = port_in_node_max_fb_length_read;
        end else if (((icmp_ln1466_fu_2060_p2 == 1'd1) & (port_in_op_read == 5'd13))) begin
            port_cross_in_node_mix_array_d0 = port_in_nodeindex_read;
        end else begin
            port_cross_in_node_mix_array_d0 = 'bx;
        end
    end else begin
        port_cross_in_node_mix_array_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln1466_fu_2060_p2 == 1'd1) & (port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((((~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)))))) begin
        port_cross_in_node_mix_array_we0 = 1'b1;
    end else begin
        port_cross_in_node_mix_array_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1466_fu_2060_p2 == 1'd1) & (port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state1))) begin
        graphlevel_o = add_ln1470_fu_2264_p2;
    end else if (((grp_fu_2099_p2 == 1'd1) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd1) & (1'b1 == ap_CS_fsm_state62))) begin
        graphlevel_o = add_ln1358_fu_2927_p2;
    end else begin
        graphlevel_o = graphlevel_i;
    end
end

always @ (*) begin
    if ((((icmp_ln1466_fu_2060_p2 == 1'd1) & (port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((grp_fu_2099_p2 == 1'd1) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd1) & (1'b1 == ap_CS_fsm_state62)))) begin
        graphlevel_o_ap_vld = 1'b1;
    end else begin
        graphlevel_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd11))))) begin
                ap_NS_fsm = ap_ST_fsm_state143;
            end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11))))) begin
                ap_NS_fsm = ap_ST_fsm_state145;
            end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((port_in_op_read_1_read_fu_466_p2 == 5'd10) | ((port_in_op_read_1_read_fu_466_p2 == 5'd6) | ((port_in_op_read_1_read_fu_466_p2 == 5'd9) | ((port_in_op_read_1_read_fu_466_p2 == 5'd21) | (port_in_op_read_1_read_fu_466_p2 == 5'd19))))))) begin
                ap_NS_fsm = ap_ST_fsm_state62;
            end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((((port_in_op_read_1_read_fu_466_p2 == 5'd22) & (icmp_ln1538_fu_2065_p2 == 1'd0)) | ((port_in_op_read_1_read_fu_466_p2 == 5'd12) & (icmp_ln1538_fu_2065_p2 == 1'd0))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd15) & (icmp_ln1538_fu_2065_p2 == 1'd0))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd1) & (icmp_ln1538_fu_2065_p2 == 1'd0))))) begin
                ap_NS_fsm = ap_ST_fsm_state49;
            end else if (((icmp_ln1466_fu_2060_p2 == 1'd0) & (port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state25;
            end else if (((icmp_ln1466_fu_2060_p2 == 1'd1) & (port_in_op_read == 5'd13) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else if (((grp_fu_2044_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd4) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else if (((icmp_ln1436_fu_2172_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd7) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((port_in_op_read_1_read_fu_466_p2 == 5'd17) | ((icmp_ln1436_fu_2172_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd7))) | ((grp_fu_2044_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd4))))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((port_in_op_read_1_read_fu_466_p2 == 5'd0) | ((port_in_op_read_1_read_fu_466_p2 == 5'd2) | ((port_in_op_read_1_read_fu_466_p2 == 5'd3) | ((port_in_op_read_1_read_fu_466_p2 == 5'd14) | ((port_in_op_read_1_read_fu_466_p2 == 5'd16) | ((port_in_op_read_1_read_fu_466_p2 == 5'd23) | ((port_in_op_read_1_read_fu_466_p2 == 5'd24) | ((port_in_op_read_1_read_fu_466_p2 == 5'd25) | ((port_in_op_read_1_read_fu_466_p2 == 5'd26) | ((port_in_op_read_1_read_fu_466_p2 == 5'd27) | ((port_in_op_read_1_read_fu_466_p2 == 5'd28) | ((port_in_op_read_1_read_fu_466_p2 == 5'd29) | ((port_in_op_read_1_read_fu_466_p2 == 5'd30) | (port_in_op_read_1_read_fu_466_p2 == 5'd31)))))))))))))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd12) & (icmp_ln1538_fu_2065_p2 == 1'd1))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd22) & (icmp_ln1538_fu_2065_p2 == 1'd1))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd15) & (icmp_ln1538_fu_2065_p2 == 1'd1))) | ((port_in_op_read_1_read_fu_466_p2 == 5'd1) & (icmp_ln1538_fu_2065_p2 == 1'd1))))) begin
                ap_NS_fsm = ap_ST_fsm_state48;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
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
            if (((1'b1 == ap_CS_fsm_state6) & (grp_writemem_fu_1946_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
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
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state17 : begin
            if (((m_axi_buf_dram_manage_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            if (((m_axi_buf_dram_manage_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state24))) begin
                ap_NS_fsm = ap_ST_fsm_state25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state24;
            end
        end
        ap_ST_fsm_state25 : begin
            if (((icmp_ln1477_fu_2567_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state25))) begin
                ap_NS_fsm = ap_ST_fsm_state37;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state26;
            end
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            if (((1'b1 == ap_CS_fsm_state27) & (grp_writemem_fu_1946_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state27;
            end
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state37 : begin
            if (((m_axi_buf_dram_manage_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state37))) begin
                ap_NS_fsm = ap_ST_fsm_state38;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state37;
            end
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            ap_NS_fsm = ap_ST_fsm_state40;
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state41;
        end
        ap_ST_fsm_state41 : begin
            ap_NS_fsm = ap_ST_fsm_state42;
        end
        ap_ST_fsm_state42 : begin
            ap_NS_fsm = ap_ST_fsm_state43;
        end
        ap_ST_fsm_state43 : begin
            ap_NS_fsm = ap_ST_fsm_state44;
        end
        ap_ST_fsm_state44 : begin
            if (((m_axi_buf_dram_manage_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state44))) begin
                ap_NS_fsm = ap_ST_fsm_state45;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state44;
            end
        end
        ap_ST_fsm_state45 : begin
            ap_NS_fsm = ap_ST_fsm_state46;
        end
        ap_ST_fsm_state46 : begin
            if (((1'b1 == ap_CS_fsm_state46) & (grp_split_fu_2003_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state47;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state46;
            end
        end
        ap_ST_fsm_state47 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state48 : begin
            if (((1'b0 == ap_block_state48_on_subcall_done) & (1'b1 == ap_CS_fsm_state48))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state48;
            end
        end
        ap_ST_fsm_state49 : begin
            ap_NS_fsm = ap_ST_fsm_state50;
        end
        ap_ST_fsm_state50 : begin
            ap_NS_fsm = ap_ST_fsm_state51;
        end
        ap_ST_fsm_state51 : begin
            if (((1'b1 == ap_CS_fsm_state51) & (grp_writemem_fu_1946_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state52;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state51;
            end
        end
        ap_ST_fsm_state52 : begin
            ap_NS_fsm = ap_ST_fsm_state53;
        end
        ap_ST_fsm_state53 : begin
            ap_NS_fsm = ap_ST_fsm_state54;
        end
        ap_ST_fsm_state54 : begin
            ap_NS_fsm = ap_ST_fsm_state55;
        end
        ap_ST_fsm_state55 : begin
            ap_NS_fsm = ap_ST_fsm_state56;
        end
        ap_ST_fsm_state56 : begin
            ap_NS_fsm = ap_ST_fsm_state57;
        end
        ap_ST_fsm_state57 : begin
            ap_NS_fsm = ap_ST_fsm_state58;
        end
        ap_ST_fsm_state58 : begin
            ap_NS_fsm = ap_ST_fsm_state59;
        end
        ap_ST_fsm_state59 : begin
            ap_NS_fsm = ap_ST_fsm_state60;
        end
        ap_ST_fsm_state60 : begin
            ap_NS_fsm = ap_ST_fsm_state61;
        end
        ap_ST_fsm_state61 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state62 : begin
            if (((grp_fu_2099_p2 == 1'd0) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32) & (1'b1 == ap_CS_fsm_state62))) begin
                ap_NS_fsm = ap_ST_fsm_state82;
            end else if (((grp_fu_2099_p2 == 1'd1) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd1) & (1'b1 == ap_CS_fsm_state62))) begin
                ap_NS_fsm = ap_ST_fsm_state63;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state130;
            end
        end
        ap_ST_fsm_state63 : begin
            ap_NS_fsm = ap_ST_fsm_state64;
        end
        ap_ST_fsm_state64 : begin
            ap_NS_fsm = ap_ST_fsm_state65;
        end
        ap_ST_fsm_state65 : begin
            ap_NS_fsm = ap_ST_fsm_state66;
        end
        ap_ST_fsm_state66 : begin
            ap_NS_fsm = ap_ST_fsm_state67;
        end
        ap_ST_fsm_state67 : begin
            ap_NS_fsm = ap_ST_fsm_state68;
        end
        ap_ST_fsm_state68 : begin
            ap_NS_fsm = ap_ST_fsm_state69;
        end
        ap_ST_fsm_state69 : begin
            ap_NS_fsm = ap_ST_fsm_state70;
        end
        ap_ST_fsm_state70 : begin
            ap_NS_fsm = ap_ST_fsm_state71;
        end
        ap_ST_fsm_state71 : begin
            ap_NS_fsm = ap_ST_fsm_state72;
        end
        ap_ST_fsm_state72 : begin
            ap_NS_fsm = ap_ST_fsm_state73;
        end
        ap_ST_fsm_state73 : begin
            ap_NS_fsm = ap_ST_fsm_state74;
        end
        ap_ST_fsm_state74 : begin
            ap_NS_fsm = ap_ST_fsm_state75;
        end
        ap_ST_fsm_state75 : begin
            if (((1'b1 == ap_CS_fsm_state75) & (m_axi_buf_dram_manage_AWREADY == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state76;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state75;
            end
        end
        ap_ST_fsm_state76 : begin
            if (((1'b1 == ap_CS_fsm_state76) & (m_axi_buf_dram_manage_WREADY == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state77;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state76;
            end
        end
        ap_ST_fsm_state77 : begin
            ap_NS_fsm = ap_ST_fsm_state78;
        end
        ap_ST_fsm_state78 : begin
            ap_NS_fsm = ap_ST_fsm_state79;
        end
        ap_ST_fsm_state79 : begin
            ap_NS_fsm = ap_ST_fsm_state80;
        end
        ap_ST_fsm_state80 : begin
            ap_NS_fsm = ap_ST_fsm_state81;
        end
        ap_ST_fsm_state81 : begin
            if (((m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state81))) begin
                ap_NS_fsm = ap_ST_fsm_state48;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state81;
            end
        end
        ap_ST_fsm_state82 : begin
            if (((m_axi_buf_dram_manage_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state82))) begin
                ap_NS_fsm = ap_ST_fsm_state83;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state82;
            end
        end
        ap_ST_fsm_state83 : begin
            ap_NS_fsm = ap_ST_fsm_state84;
        end
        ap_ST_fsm_state84 : begin
            ap_NS_fsm = ap_ST_fsm_state85;
        end
        ap_ST_fsm_state85 : begin
            ap_NS_fsm = ap_ST_fsm_state86;
        end
        ap_ST_fsm_state86 : begin
            ap_NS_fsm = ap_ST_fsm_state87;
        end
        ap_ST_fsm_state87 : begin
            ap_NS_fsm = ap_ST_fsm_state88;
        end
        ap_ST_fsm_state88 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln74_fu_3212_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((icmp_ln74_fu_3212_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state92;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state92 : begin
            ap_NS_fsm = ap_ST_fsm_state93;
        end
        ap_ST_fsm_state93 : begin
            if (((cmp119_fu_3367_p2 == 1'd1) & (icmp_ln1196_fu_3361_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state93))) begin
                ap_NS_fsm = ap_ST_fsm_state121;
            end else if (((cmp119_fu_3367_p2 == 1'd0) & (icmp_ln1196_fu_3361_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state93))) begin
                ap_NS_fsm = ap_ST_fsm_state112;
            end else if (((cmp119_fu_3367_p2 == 1'd1) & (icmp_ln1196_fu_3361_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state93))) begin
                ap_NS_fsm = ap_ST_fsm_state103;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state94;
            end
        end
        ap_ST_fsm_state94 : begin
            ap_NS_fsm = ap_ST_fsm_state95;
        end
        ap_ST_fsm_state95 : begin
            if (((1'b1 == ap_CS_fsm_state95) & (grp_writemem_fu_1946_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state96;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state95;
            end
        end
        ap_ST_fsm_state96 : begin
            ap_NS_fsm = ap_ST_fsm_state97;
        end
        ap_ST_fsm_state97 : begin
            ap_NS_fsm = ap_ST_fsm_state98;
        end
        ap_ST_fsm_state98 : begin
            ap_NS_fsm = ap_ST_fsm_state99;
        end
        ap_ST_fsm_state99 : begin
            ap_NS_fsm = ap_ST_fsm_state100;
        end
        ap_ST_fsm_state100 : begin
            ap_NS_fsm = ap_ST_fsm_state101;
        end
        ap_ST_fsm_state101 : begin
            ap_NS_fsm = ap_ST_fsm_state102;
        end
        ap_ST_fsm_state102 : begin
            if (((1'b1 == ap_CS_fsm_state102) & (grp_writemem_fu_1946_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state48;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state102;
            end
        end
        ap_ST_fsm_state103 : begin
            ap_NS_fsm = ap_ST_fsm_state104;
        end
        ap_ST_fsm_state104 : begin
            if (((1'b1 == ap_CS_fsm_state104) & (grp_writemem_fu_1946_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state105;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state104;
            end
        end
        ap_ST_fsm_state105 : begin
            ap_NS_fsm = ap_ST_fsm_state106;
        end
        ap_ST_fsm_state106 : begin
            ap_NS_fsm = ap_ST_fsm_state107;
        end
        ap_ST_fsm_state107 : begin
            ap_NS_fsm = ap_ST_fsm_state108;
        end
        ap_ST_fsm_state108 : begin
            ap_NS_fsm = ap_ST_fsm_state109;
        end
        ap_ST_fsm_state109 : begin
            ap_NS_fsm = ap_ST_fsm_state110;
        end
        ap_ST_fsm_state110 : begin
            ap_NS_fsm = ap_ST_fsm_state111;
        end
        ap_ST_fsm_state111 : begin
            if (((1'b1 == ap_CS_fsm_state111) & (grp_writemem_fu_1946_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state48;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state111;
            end
        end
        ap_ST_fsm_state112 : begin
            ap_NS_fsm = ap_ST_fsm_state113;
        end
        ap_ST_fsm_state113 : begin
            if (((1'b1 == ap_CS_fsm_state113) & (grp_mergemem_fu_1902_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state114;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state113;
            end
        end
        ap_ST_fsm_state114 : begin
            if (((1'b1 == ap_CS_fsm_state114) & (m_axi_buf_dram_manage_AWREADY == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state115;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state114;
            end
        end
        ap_ST_fsm_state115 : begin
            if (((1'b1 == ap_CS_fsm_state115) & (m_axi_buf_dram_manage_WREADY == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state116;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state115;
            end
        end
        ap_ST_fsm_state116 : begin
            ap_NS_fsm = ap_ST_fsm_state117;
        end
        ap_ST_fsm_state117 : begin
            ap_NS_fsm = ap_ST_fsm_state118;
        end
        ap_ST_fsm_state118 : begin
            ap_NS_fsm = ap_ST_fsm_state119;
        end
        ap_ST_fsm_state119 : begin
            ap_NS_fsm = ap_ST_fsm_state120;
        end
        ap_ST_fsm_state120 : begin
            if (((m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state120))) begin
                ap_NS_fsm = ap_ST_fsm_state48;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state120;
            end
        end
        ap_ST_fsm_state121 : begin
            ap_NS_fsm = ap_ST_fsm_state122;
        end
        ap_ST_fsm_state122 : begin
            if (((1'b1 == ap_CS_fsm_state122) & (grp_mergemem_fu_1902_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state123;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state122;
            end
        end
        ap_ST_fsm_state123 : begin
            if (((1'b1 == ap_CS_fsm_state123) & (m_axi_buf_dram_manage_AWREADY == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state124;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state123;
            end
        end
        ap_ST_fsm_state124 : begin
            if (((1'b1 == ap_CS_fsm_state124) & (m_axi_buf_dram_manage_WREADY == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state125;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state124;
            end
        end
        ap_ST_fsm_state125 : begin
            ap_NS_fsm = ap_ST_fsm_state126;
        end
        ap_ST_fsm_state126 : begin
            ap_NS_fsm = ap_ST_fsm_state127;
        end
        ap_ST_fsm_state127 : begin
            ap_NS_fsm = ap_ST_fsm_state128;
        end
        ap_ST_fsm_state128 : begin
            ap_NS_fsm = ap_ST_fsm_state129;
        end
        ap_ST_fsm_state129 : begin
            if (((m_axi_buf_dram_manage_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state129))) begin
                ap_NS_fsm = ap_ST_fsm_state48;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state129;
            end
        end
        ap_ST_fsm_state130 : begin
            ap_NS_fsm = ap_ST_fsm_state131;
        end
        ap_ST_fsm_state131 : begin
            ap_NS_fsm = ap_ST_fsm_state132;
        end
        ap_ST_fsm_state132 : begin
            if (((1'b1 == ap_CS_fsm_state132) & (grp_writemem_fu_1946_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state133;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state132;
            end
        end
        ap_ST_fsm_state133 : begin
            ap_NS_fsm = ap_ST_fsm_state134;
        end
        ap_ST_fsm_state134 : begin
            ap_NS_fsm = ap_ST_fsm_state135;
        end
        ap_ST_fsm_state135 : begin
            ap_NS_fsm = ap_ST_fsm_state136;
        end
        ap_ST_fsm_state136 : begin
            ap_NS_fsm = ap_ST_fsm_state137;
        end
        ap_ST_fsm_state137 : begin
            ap_NS_fsm = ap_ST_fsm_state138;
        end
        ap_ST_fsm_state138 : begin
            ap_NS_fsm = ap_ST_fsm_state139;
        end
        ap_ST_fsm_state139 : begin
            ap_NS_fsm = ap_ST_fsm_state140;
        end
        ap_ST_fsm_state140 : begin
            ap_NS_fsm = ap_ST_fsm_state141;
        end
        ap_ST_fsm_state141 : begin
            ap_NS_fsm = ap_ST_fsm_state142;
        end
        ap_ST_fsm_state142 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state143 : begin
            ap_NS_fsm = ap_ST_fsm_state144;
        end
        ap_ST_fsm_state144 : begin
            ap_NS_fsm = ap_ST_fsm_state145;
        end
        ap_ST_fsm_state145 : begin
            ap_NS_fsm = ap_ST_fsm_state146;
        end
        ap_ST_fsm_state146 : begin
            ap_NS_fsm = ap_ST_fsm_state147;
        end
        ap_ST_fsm_state147 : begin
            if (((1'b1 == ap_CS_fsm_state147) & (grp_writemem_fu_1946_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state148;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state147;
            end
        end
        ap_ST_fsm_state148 : begin
            ap_NS_fsm = ap_ST_fsm_state149;
        end
        ap_ST_fsm_state149 : begin
            ap_NS_fsm = ap_ST_fsm_state150;
        end
        ap_ST_fsm_state150 : begin
            ap_NS_fsm = ap_ST_fsm_state151;
        end
        ap_ST_fsm_state151 : begin
            ap_NS_fsm = ap_ST_fsm_state152;
        end
        ap_ST_fsm_state152 : begin
            ap_NS_fsm = ap_ST_fsm_state153;
        end
        ap_ST_fsm_state153 : begin
            ap_NS_fsm = ap_ST_fsm_state154;
        end
        ap_ST_fsm_state154 : begin
            ap_NS_fsm = ap_ST_fsm_state155;
        end
        ap_ST_fsm_state155 : begin
            ap_NS_fsm = ap_ST_fsm_state156;
        end
        ap_ST_fsm_state156 : begin
            ap_NS_fsm = ap_ST_fsm_state157;
        end
        ap_ST_fsm_state157 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Isinsert_fu_2696_p2 = (xor_ln1482_fu_2691_p2 & icmp_ln1485_reg_4236);

assign Isinsert_graph_3_fu_2659_p2 = (($signed(tmp_1_fu_2649_p4) > $signed(27'd0)) ? 1'b1 : 1'b0);

assign add_ln1100_fu_2394_p2 = ($signed(trunc_ln1098_1_fu_2340_p3) + $signed(8'd254));

assign add_ln1101_fu_2417_p2 = ($signed(trunc_ln1098_1_fu_2340_p3) + $signed(8'd255));

assign add_ln1102_fu_3704_p2 = ($signed(shl_ln_reg_4153) + $signed(9'd509));

assign add_ln1107_fu_2371_p2 = (shl_ln_fu_2328_p3 + 9'd5);

assign add_ln1154_1_fu_2302_p2 = ($signed(empty_fu_2144_p1) + $signed(7'd127));

assign add_ln1177_fu_3039_p2 = (port_cross_in_fb_length_read + port_cross_in_fb_index_read);

assign add_ln1178_fu_3048_p2 = (port_cross_in_fb_length_read + port_in_merge_length_read);

assign add_ln1204_fu_3553_p2 = (checkpos_1_reg_1880 + 32'd32);

assign add_ln1224_fu_3428_p2 = ($signed(trunc_ln1224_1_fu_3425_p1) + $signed(6'd63));

assign add_ln1358_fu_2927_p2 = ($signed(port_in_level_read) + $signed(8'd255));

assign add_ln1431_fu_2484_p2 = (select_ln1431_fu_2477_p3 + port_in_merge_length_read);

assign add_ln1437_1_fu_2470_p2 = (select_ln1437_fu_2462_p3 + port_in_merge_length_read);

assign add_ln1437_fu_2190_p2 = ($signed(shl_ln2_fu_2182_p3) + $signed(8'd255));

assign add_ln1470_fu_2264_p2 = (graphlevel_i + 8'd1);

assign add_ln301_1_fu_2665_p2 = (trunc_ln301_1_reg_4211 + 8'd1);

assign add_ln301_2_fu_3624_p2 = (trunc_ln301_2_fu_3620_p1 + 8'd1);

assign add_ln301_3_fu_3636_p2 = (trunc_ln301_3_fu_3631_p1 + 8'd1);

assign add_ln301_4_fu_2745_p2 = (trunc_ln966_reg_4241 + 8'd1);

assign add_ln301_5_fu_3730_p2 = (trunc_ln301_6_fu_3726_p1 + 8'd1);

assign add_ln301_6_fu_2504_p2 = (trunc_ln301_4_fu_2500_p1 + 8'd1);

assign add_ln301_7_fu_3377_p2 = (trunc_ln301_5_fu_3373_p1 + 8'd1);

assign add_ln301_8_fu_3470_p2 = ($signed(trunc_ln1224_fu_3466_p1) + $signed(8'd255));

assign add_ln301_fu_2920_p2 = (trunc_ln301_fu_2916_p1 + 8'd1);

assign add_ln32_1_fu_3582_p2 = ($signed(sext_ln32_3_fu_3567_p1) + $signed(sext_ln32_6_fu_3578_p1));

assign add_ln32_2_fu_3499_p2 = ($signed(sext_ln32_7_fu_3484_p1) + $signed(sext_ln32_8_fu_3495_p1));

assign add_ln32_fu_2975_p2 = ($signed(sext_ln32_fu_2960_p1) + $signed(sext_ln32_1_fu_2971_p1));

assign add_ln40_1_fu_2601_p2 = ($signed(sext_ln40_4_fu_2585_p1) + $signed(sext_ln40_5_fu_2597_p1));

assign add_ln40_fu_2248_p2 = ($signed(sext_ln40_fu_2232_p1) + $signed(sext_ln40_1_fu_2244_p1));

assign add_ln45_1_fu_2536_p2 = (add_ln45_fu_2531_p2 + nodeindex_reg_4125);

assign add_ln45_2_fu_2729_p2 = (new_bro_node_next_free_offset_reg_4296 + 32'd1);

assign add_ln45_3_fu_2734_p2 = (add_ln45_2_fu_2729_p2 + new_index_reg_4217);

assign add_ln45_fu_2531_p2 = (trunc_ln8_reg_4198 + 32'd1);

assign add_ln74_fu_3206_p2 = (ap_phi_mux_idx_phi_fu_1894_p4 + 6'd1);

assign add_ln91_fu_3330_p2 = ($signed(shl_ln4_fu_3322_p3) + $signed(8'd248));

assign and_ln1166_fu_3160_p2 = (grp_fu_2119_p2 & flag_fu_3043_p2);

assign and_ln1170_1_fu_3097_p2 = (xor_ln1170_fu_3091_p2 & grp_fu_2124_p2);

assign and_ln1170_fu_3064_p2 = (icmp_ln1183_fu_3035_p2 & grp_fu_2124_p2);

assign and_ln1183_1_fu_3110_p2 = (xor_ln1170_fu_3091_p2 & grp_fu_2129_p2);

assign and_ln1183_2_fu_3188_p2 = (icmp_ln1183_1_fu_3183_p2 & icmp_ln1170_fu_3178_p2);

assign and_ln1183_fu_3077_p2 = (icmp_ln1183_fu_3035_p2 & grp_fu_2129_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd88];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state100 = ap_CS_fsm[32'd97];

assign ap_CS_fsm_state101 = ap_CS_fsm[32'd98];

assign ap_CS_fsm_state102 = ap_CS_fsm[32'd99];

assign ap_CS_fsm_state103 = ap_CS_fsm[32'd100];

assign ap_CS_fsm_state104 = ap_CS_fsm[32'd101];

assign ap_CS_fsm_state108 = ap_CS_fsm[32'd105];

assign ap_CS_fsm_state109 = ap_CS_fsm[32'd106];

assign ap_CS_fsm_state110 = ap_CS_fsm[32'd107];

assign ap_CS_fsm_state111 = ap_CS_fsm[32'd108];

assign ap_CS_fsm_state112 = ap_CS_fsm[32'd109];

assign ap_CS_fsm_state113 = ap_CS_fsm[32'd110];

assign ap_CS_fsm_state114 = ap_CS_fsm[32'd111];

assign ap_CS_fsm_state115 = ap_CS_fsm[32'd112];

assign ap_CS_fsm_state120 = ap_CS_fsm[32'd117];

assign ap_CS_fsm_state121 = ap_CS_fsm[32'd118];

assign ap_CS_fsm_state122 = ap_CS_fsm[32'd119];

assign ap_CS_fsm_state123 = ap_CS_fsm[32'd120];

assign ap_CS_fsm_state124 = ap_CS_fsm[32'd121];

assign ap_CS_fsm_state129 = ap_CS_fsm[32'd126];

assign ap_CS_fsm_state131 = ap_CS_fsm[32'd128];

assign ap_CS_fsm_state132 = ap_CS_fsm[32'd129];

assign ap_CS_fsm_state142 = ap_CS_fsm[32'd139];

assign ap_CS_fsm_state143 = ap_CS_fsm[32'd140];

assign ap_CS_fsm_state144 = ap_CS_fsm[32'd141];

assign ap_CS_fsm_state146 = ap_CS_fsm[32'd143];

assign ap_CS_fsm_state147 = ap_CS_fsm[32'd144];

assign ap_CS_fsm_state157 = ap_CS_fsm[32'd154];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];

assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];

assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];

assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state36 = ap_CS_fsm[32'd35];

assign ap_CS_fsm_state37 = ap_CS_fsm[32'd36];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state43 = ap_CS_fsm[32'd42];

assign ap_CS_fsm_state44 = ap_CS_fsm[32'd43];

assign ap_CS_fsm_state45 = ap_CS_fsm[32'd44];

assign ap_CS_fsm_state46 = ap_CS_fsm[32'd45];

assign ap_CS_fsm_state47 = ap_CS_fsm[32'd46];

assign ap_CS_fsm_state48 = ap_CS_fsm[32'd47];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state50 = ap_CS_fsm[32'd49];

assign ap_CS_fsm_state51 = ap_CS_fsm[32'd50];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state61 = ap_CS_fsm[32'd60];

assign ap_CS_fsm_state62 = ap_CS_fsm[32'd61];

assign ap_CS_fsm_state70 = ap_CS_fsm[32'd69];

assign ap_CS_fsm_state74 = ap_CS_fsm[32'd73];

assign ap_CS_fsm_state75 = ap_CS_fsm[32'd74];

assign ap_CS_fsm_state76 = ap_CS_fsm[32'd75];

assign ap_CS_fsm_state81 = ap_CS_fsm[32'd80];

assign ap_CS_fsm_state82 = ap_CS_fsm[32'd81];

assign ap_CS_fsm_state87 = ap_CS_fsm[32'd86];

assign ap_CS_fsm_state88 = ap_CS_fsm[32'd87];

assign ap_CS_fsm_state92 = ap_CS_fsm[32'd89];

assign ap_CS_fsm_state93 = ap_CS_fsm[32'd90];

assign ap_CS_fsm_state94 = ap_CS_fsm[32'd91];

assign ap_CS_fsm_state95 = ap_CS_fsm[32'd92];

assign ap_CS_fsm_state99 = ap_CS_fsm[32'd96];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (m_axi_buf_dram_manage_RVALID == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & (m_axi_buf_dram_manage_RVALID == 1'b0));
end

always @ (*) begin
    ap_block_state48_on_subcall_done = ((ap_predicate_op494_call_state48 == 1'b1) & (grp_split_fu_2003_ap_done == 1'b0));
end

assign ap_block_state89_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state90_pp0_stage0_iter1 = (m_axi_buf_dram_manage_RVALID == 1'b0);
end

assign ap_block_state91_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_1643 = (((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)) | ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32)));
end

always @ (*) begin
    ap_condition_1648 = ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32));
end

always @ (*) begin
    ap_condition_1654 = ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32));
end

always @ (*) begin
    ap_condition_1660 = ((icmp_ln1162_reg_4360 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19) & (port_cross_in_node_num_read_1_read_fu_394_p2 == 32'd32));
end

always @ (*) begin
    ap_condition_1779 = ((((((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd21)) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd19))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd9))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd6))) | ((p_read_read_fu_340_p2 == 1'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd10)));
end

always @ (*) begin
    ap_condition_2274 = (((((~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd20)) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd18))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd8))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd5))) | (~(trunc_ln_fu_2352_p3 == 3'd4) & ~(trunc_ln_fu_2352_p3 == 3'd0) & (port_in_op_read_1_read_fu_466_p2 == 5'd11)));
end

always @ (*) begin
    ap_condition_590 = ((((((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd21)) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd19))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd9))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd6))) | ((p_read_read_fu_340_p2 == 1'd1) & (port_in_op_read_1_read_fu_466_p2 == 5'd10)));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_predicate_op494_call_state48 = ((icmp_ln1477_reg_4207 == 1'd1) & (port_in_op_read == 5'd13));
end

assign checkpos_fu_2296_p2 = ($signed(port_cross_in_pos_read) + $signed(32'd4294967295));

assign cmp119_fu_3367_p2 = (($signed(port_cross_in_node_mix_array2_q0) > $signed(new_bro_node_mix_array_2_q0)) ? 1'b1 : 1'b0);

assign empty_30_fu_3791_p3 = ((icmp_ln1109_4_fu_3786_p2[0:0] == 1'b1) ? 5'd17 : 5'd15);

assign empty_31_fu_3799_p2 = (icmp_ln1109_4_fu_3786_p2 | icmp_ln1109_3_fu_3781_p2);

assign empty_32_fu_2938_p2 = port_cross_in_broindex_read << 32'd5;

assign empty_40_fu_3682_p3 = ((grp_fu_2129_p2[0:0] == 1'b1) ? 5'd17 : 5'd15);

assign empty_41_fu_3690_p2 = (icmp_ln1401_3_fu_3677_p2 | grp_fu_2129_p2);

assign empty_fu_2144_p1 = port_cross_in_pos_read[6:0];

assign flag_1_fu_3200_p2 = (or_ln1183_2_fu_3194_p2 & or_ln1183_1_fu_3172_p2);

assign flag_fu_3043_p2 = ((add_ln1177_fu_3039_p2 == port_in_address_read) ? 1'b1 : 1'b0);

assign grp_fu_2044_p2 = ((port_cross_in_pos_read == port_cross_in_node_num_read) ? 1'b1 : 1'b0);

assign grp_fu_2050_p4 = {{port_cross_in_pos_read[6:1]}};

assign grp_fu_2074_p2 = (($signed(port_cross_in_node_max_fb_length_read) > $signed(port_cross_in_node_max_subgraph_length_read)) ? 1'b1 : 1'b0);

assign grp_fu_2078_p3 = ((grp_fu_2074_p2[0:0] == 1'b1) ? port_cross_in_node_max_fb_length_read : port_cross_in_node_max_subgraph_length_read);

assign grp_fu_2084_p2 = (($signed(port_cross_in_node_max_fb_length_0_reg_1215) > $signed(port_cross_in_node_max_subgraph_length_0_reg_1226)) ? 1'b1 : 1'b0);

assign grp_fu_2090_p3 = ((grp_fu_2084_p2[0:0] == 1'b1) ? port_cross_in_node_max_fb_length_0_reg_1215 : port_cross_in_node_max_subgraph_length_0_reg_1226);

assign grp_fu_2099_p2 = ((graphlevel_load_reg_4079 == port_in_level_read) ? 1'b1 : 1'b0);

assign grp_fu_2103_p2 = (grp_load_fu_2070_p1 - port_cross_in_nodeindex_read);

assign grp_fu_2108_p2 = ($signed(grp_fu_2103_p2) + $signed(32'd4294967295));

assign grp_fu_2119_p2 = ((port_in_op_read == 5'd9) ? 1'b1 : 1'b0);

assign grp_fu_2124_p2 = ((port_in_op_read == 5'd6) ? 1'b1 : 1'b0);

assign grp_fu_2129_p2 = ((port_in_op_read == 5'd19) ? 1'b1 : 1'b0);

assign grp_mergemem_fu_1902_ap_start = grp_mergemem_fu_1902_ap_start_reg;

assign grp_split_fu_2003_ap_start = grp_split_fu_2003_ap_start_reg;

assign grp_writemem_fu_1946_ap_start = grp_writemem_fu_1946_ap_start_reg;

assign icmp_ln104_fu_3352_p2 = ((idx_reg_1890_pp0_iter1_reg == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln1101_fu_2439_p2 = ((trunc_ln_fu_2352_p3 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln1109_1_fu_3749_p2 = ((port_in_op_read == 5'd5) ? 1'b1 : 1'b0);

assign icmp_ln1109_2_fu_3754_p2 = ((port_in_op_read == 5'd8) ? 1'b1 : 1'b0);

assign icmp_ln1109_3_fu_3781_p2 = ((port_in_op_read == 5'd20) ? 1'b1 : 1'b0);

assign icmp_ln1109_4_fu_3786_p2 = ((port_in_op_read == 5'd18) ? 1'b1 : 1'b0);

assign icmp_ln1109_fu_3737_p2 = ((port_in_op_read == 5'd11) ? 1'b1 : 1'b0);

assign icmp_ln1170_fu_3178_p2 = ((port_in_op_read != 5'd6) ? 1'b1 : 1'b0);

assign icmp_ln1183_1_fu_3183_p2 = ((port_in_op_read != 5'd19) ? 1'b1 : 1'b0);

assign icmp_ln1183_fu_3035_p2 = ((port_in_address_read == port_cross_in_fb_index_read) ? 1'b1 : 1'b0);

assign icmp_ln1196_fu_3361_p2 = ((new_bro_node_num_fu_336 == 32'd32) ? 1'b1 : 1'b0);

assign icmp_ln1362_fu_2948_p2 = ((port_cross_in_pos_read == 32'd1) ? 1'b1 : 1'b0);

assign icmp_ln1401_3_fu_3677_p2 = ((port_in_op_read == 5'd21) ? 1'b1 : 1'b0);

assign icmp_ln1401_fu_3643_p2 = ((port_in_op_read == 5'd10) ? 1'b1 : 1'b0);

assign icmp_ln1436_fu_2172_p2 = ((port_cross_in_pos_read == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln1437_fu_2456_p2 = ((trunc_ln2_fu_2448_p3 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln1466_fu_2060_p2 = (($signed(graphlevel_i) < $signed(port_in_level_read)) ? 1'b1 : 1'b0);

assign icmp_ln1477_fu_2567_p2 = ((ap_phi_mux_port_cross_in_node_num_0_phi_fu_1240_p4 == 32'd64) ? 1'b1 : 1'b0);

assign icmp_ln1482_fu_2617_p2 = ((ap_phi_mux_val_phi_fu_1271_p4 == 32'd32) ? 1'b1 : 1'b0);

assign icmp_ln1485_fu_2633_p2 = (($signed(tmp_fu_2623_p4) < $signed(27'd1)) ? 1'b1 : 1'b0);

assign icmp_ln1538_fu_2065_p2 = (($signed(graphlevel_i) < $signed(port_in_level_read)) ? 1'b1 : 1'b0);

assign icmp_ln74_fu_3212_p2 = ((ap_phi_mux_idx_phi_fu_1894_p4 == 6'd33) ? 1'b1 : 1'b0);

assign icmp_ln87_fu_3292_p2 = ((idx_reg_1890 == 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln999_fu_2643_p2 = (($signed(ap_phi_mux_val_phi_fu_1271_p4) > $signed(32'd32)) ? 1'b1 : 1'b0);

assign idx_cast24_fu_3308_p1 = idx_reg_1890_pp0_iter1_reg;

assign it_graph_V_fu_2774_p3 = ((Isinsert_graph_3_reg_4253[0:0] == 1'b1) ? 6'd33 : 6'd32);

assign level_next_fu_2148_p2 = (port_in_level_read + 8'd1);

assign lshr_ln1_fu_2400_p4 = {{add_ln1100_fu_2394_p2[7:3]}};

assign lshr_ln2_fu_2377_p4 = {{add_ln1107_fu_2371_p2[8:3]}};

assign lshr_ln3_fu_2423_p4 = {{add_ln1101_fu_2417_p2[7:3]}};

assign lshr_ln4_fu_3709_p4 = {{add_ln1102_fu_3704_p2[8:3]}};

assign lshr_ln5_fu_3336_p4 = {{add_ln91_fu_3330_p2[7:3]}};

assign lshr_ln6_fu_3434_p4 = {{add_ln1224_fu_3428_p2[5:1]}};

assign lshr_ln_fu_2196_p4 = {{add_ln1437_fu_2190_p2[7:3]}};

assign m_axi_buf_dram_manage_ARBURST = 2'd0;

assign m_axi_buf_dram_manage_ARCACHE = 4'd0;

assign m_axi_buf_dram_manage_ARID = 1'd0;

assign m_axi_buf_dram_manage_ARLOCK = 2'd0;

assign m_axi_buf_dram_manage_ARPROT = 3'd0;

assign m_axi_buf_dram_manage_ARQOS = 4'd0;

assign m_axi_buf_dram_manage_ARREGION = 4'd0;

assign m_axi_buf_dram_manage_ARSIZE = 3'd0;

assign m_axi_buf_dram_manage_ARUSER = 1'd0;

assign mul_i_fu_2943_p2 = (empty_32_fu_2938_p2 + port_cross_in_broindex_read);

assign new_bro_node_next_free_offset_2_fu_3520_p2 = ($signed(sub_ln30_2_fu_3515_p2) + $signed(32'd4294967295));

assign nodeindex_next_2_fu_3013_p3 = ((icmp_ln1362_reg_4382[0:0] == 1'b1) ? port_in_broindex_read : port_in_nodeindex_read);

assign nodeindex_next_3_fu_3018_p3 = ((grp_fu_2119_p2[0:0] == 1'b1) ? port_in_broindex_read : nodeindex_next_2_fu_3013_p3);

assign opcode_next_2_fu_3805_p3 = ((empty_31_fu_3799_p2[0:0] == 1'b1) ? empty_30_fu_3791_p3 : select_ln1109_2_fu_3773_p3);

assign opcode_next_3_fu_2798_p3 = ((flag_1_reg_4447[0:0] == 1'b1) ? 5'd21 : 5'd19);

assign opcode_next_fu_3696_p3 = ((empty_41_fu_3690_p2[0:0] == 1'b1) ? empty_40_fu_3682_p3 : select_ln1401_2_fu_3669_p3);

assign or_ln1109_fu_3767_p2 = (icmp_ln1109_2_fu_3754_p2 | icmp_ln1109_1_fu_3749_p2);

assign or_ln1183_1_fu_3172_p2 = (or_ln1183_fu_3166_p2 | and_ln1170_fu_3064_p2);

assign or_ln1183_2_fu_3194_p2 = (icmp_ln1183_fu_3035_p2 | and_ln1183_2_fu_3188_p2);

assign or_ln1183_fu_3166_p2 = (and_ln1183_fu_3077_p2 | and_ln1166_fu_3160_p2);

assign or_ln1401_fu_3663_p2 = (grp_fu_2124_p2 | grp_fu_2119_p2);

assign p_read_read_fu_340_p2 = p_read55;

assign parent_fb_index_1_fu_3070_p3 = ((and_ln1170_fu_3064_p2[0:0] == 1'b1) ? port_cross_in_node_mix_array6_q0 : port_cross_in_fb_index_read);

assign parent_fb_index_2_fu_3083_p3 = ((and_ln1183_fu_3077_p2[0:0] == 1'b1) ? port_cross_in_node_mix_array6_q0 : parent_fb_index_1_fu_3070_p3);

assign parent_fb_index_3_fu_3103_p3 = ((and_ln1170_1_fu_3097_p2[0:0] == 1'b1) ? port_cross_in_fb_index_read : parent_fb_index_2_fu_3083_p3);

assign parent_fb_index_4_fu_3116_p3 = ((and_ln1183_1_fu_3110_p2[0:0] == 1'b1) ? port_cross_in_fb_index_read : parent_fb_index_3_fu_3103_p3);

assign parent_fb_index_next_3_fu_2715_p3 = ((Isinsert_fu_2696_p2[0:0] == 1'b1) ? port_cross_in_node_mix_array6_q0 : port_cross_in_node_mix_array2_q0);

assign parent_fb_index_next_4_fu_2723_p3 = ((icmp_ln1482_reg_4229[0:0] == 1'b1) ? port_in_fb_index_read : parent_fb_index_next_3_fu_2715_p3);

assign parent_fb_index_next_5_fu_3452_p3 = ((trunc_ln1224_2_reg_4594[0:0] == 1'b1) ? new_bro_node_mix_array_2_q0 : new_bro_node_mix_array_6_q0);

assign parent_fb_length_2_fu_3059_p2 = (port_cross_in_node_mix_array7_q0 + port_cross_in_fb_length_read);

assign parent_fb_length_3_fu_3123_p3 = ((grp_fu_2119_p2[0:0] == 1'b1) ? parent_fb_length_fu_3052_p3 : port_cross_in_fb_length_read);

assign parent_fb_length_4_fu_3130_p3 = ((and_ln1170_fu_3064_p2[0:0] == 1'b1) ? parent_fb_length_2_fu_3059_p2 : parent_fb_length_3_fu_3123_p3);

assign parent_fb_length_5_fu_3138_p3 = ((and_ln1183_fu_3077_p2[0:0] == 1'b1) ? port_cross_in_node_mix_array7_q0 : parent_fb_length_4_fu_3130_p3);

assign parent_fb_length_6_fu_3146_p3 = ((and_ln1170_1_fu_3097_p2[0:0] == 1'b1) ? port_cross_in_fb_length_read : parent_fb_length_5_fu_3138_p3);

assign parent_fb_length_7_fu_3153_p3 = ((and_ln1183_1_fu_3110_p2[0:0] == 1'b1) ? port_cross_in_fb_length_read : parent_fb_length_6_fu_3146_p3);

assign parent_fb_length_fu_3052_p3 = ((flag_fu_3043_p2[0:0] == 1'b1) ? add_ln1178_fu_3048_p2 : port_cross_in_fb_length_read);

assign parent_fb_length_next_3_fu_2701_p3 = ((Isinsert_fu_2696_p2[0:0] == 1'b1) ? port_cross_in_node_mix_array7_q0 : port_cross_in_node_mix_array3_q0);

assign parent_fb_length_next_4_fu_2709_p3 = ((icmp_ln1482_reg_4229[0:0] == 1'b1) ? port_in_fb_length_read : parent_fb_length_next_3_fu_2701_p3);

assign parent_fb_length_next_5_fu_3459_p3 = ((trunc_ln1224_2_reg_4594[0:0] == 1'b1) ? new_bro_node_mix_array_3_q0 : new_bro_node_mix_array_7_q0);

assign port_cross_in_node_mix_array4_d0 = 32'd0;

assign port_cross_in_node_mix_array6_addr_5_gep_fu_946_p3 = 64'd15;

assign port_cross_in_node_mix_array7_addr_8_gep_fu_955_p3 = 64'd15;

assign port_cross_in_node_num_read_1_read_fu_394_p2 = port_cross_in_node_num_read;

assign port_in_op_read_1_read_fu_466_p2 = port_in_op_read;

assign readbuf0_fu_3218_p1 = m_axi_buf_dram_manage_RDATA[31:0];

assign select_ln1008_fu_2766_p3 = ((Isinsert_graph_3_reg_4253[0:0] == 1'b1) ? select_ln999_fu_2759_p3 : 6'd32);

assign select_ln1109_1_fu_3759_p3 = ((icmp_ln1109_2_fu_3754_p2[0:0] == 1'b1) ? 5'd7 : 5'd4);

assign select_ln1109_2_fu_3773_p3 = ((or_ln1109_fu_3767_p2[0:0] == 1'b1) ? select_ln1109_1_fu_3759_p3 : select_ln1109_fu_3742_p3);

assign select_ln1109_fu_3742_p3 = ((icmp_ln1109_fu_3737_p2[0:0] == 1'b1) ? 5'd12 : port_in_op_read);

assign select_ln1240_fu_3407_p3 = ((trunc_ln1224_2_fu_3404_p1[0:0] == 1'b1) ? new_bro_node_mix_array_4_q0 : new_bro_node_mix_array_0_q0);

assign select_ln1241_fu_3416_p3 = ((trunc_ln1224_2_fu_3404_p1[0:0] == 1'b1) ? new_bro_node_mix_array_5_q0 : new_bro_node_mix_array_1_q0);

assign select_ln1303_fu_2790_p3 = ((flag_1_reg_4447[0:0] == 1'b1) ? 5'd10 : 5'd6);

assign select_ln1310_fu_2782_p3 = ((flag_1_reg_4447[0:0] == 1'b1) ? 5'd10 : 5'd9);

assign select_ln1401_1_fu_3655_p3 = ((grp_fu_2119_p2[0:0] == 1'b1) ? 5'd7 : 5'd4);

assign select_ln1401_2_fu_3669_p3 = ((or_ln1401_fu_3663_p2[0:0] == 1'b1) ? select_ln1401_1_fu_3655_p3 : select_ln1401_fu_3648_p3);

assign select_ln1401_fu_3648_p3 = ((icmp_ln1401_fu_3643_p2[0:0] == 1'b1) ? 5'd12 : port_in_op_read);

assign select_ln1431_fu_2477_p3 = ((trunc_ln1430_reg_4106[0:0] == 1'b1) ? port_cross_in_node_mix_array7_q0 : port_cross_in_node_mix_array3_q0);

assign select_ln1437_fu_2462_p3 = ((icmp_ln1437_fu_2456_p2[0:0] == 1'b1) ? port_cross_in_node_mix_array3_q0 : port_cross_in_node_mix_array7_q0);

assign select_ln1578_1_fu_2817_p3 = ((ap_phi_mux_write_flag45_1_phi_fu_1327_p36[0:0] == 1'b1) ? 32'd0 : port_cross_in_node_max_subgraph_index_read);

assign select_ln1578_fu_2810_p3 = ((ap_phi_mux_write_flag45_1_phi_fu_1327_p36[0:0] == 1'b1) ? 32'd0 : port_cross_in_node_max_fb_index_read);

assign select_ln999_fu_2759_p3 = ((icmp_ln999_reg_4247[0:0] == 1'b1) ? 6'd33 : 6'd32);

assign sext_ln32_1_fu_2971_p1 = $signed(shl_ln32_4_fu_2964_p3);

assign sext_ln32_2_fu_2991_p1 = $signed(trunc_ln4_reg_4387);

assign sext_ln32_3_fu_3567_p1 = $signed(shl_ln32_5_fu_3560_p3);

assign sext_ln32_4_fu_3598_p1 = $signed(trunc_ln32_1_reg_4671);

assign sext_ln32_5_fu_3531_p1 = $signed(trunc_ln32_2_reg_4650);

assign sext_ln32_6_fu_3578_p1 = $signed(shl_ln32_6_fu_3571_p3);

assign sext_ln32_7_fu_3484_p1 = $signed(shl_ln32_7_fu_3477_p3);

assign sext_ln32_8_fu_3495_p1 = $signed(shl_ln32_8_fu_3488_p3);

assign sext_ln32_fu_2960_p1 = $signed(shl_ln32_3_fu_2953_p3);

assign sext_ln40_1_fu_2244_p1 = $signed(shl_ln40_1_fu_2236_p3);

assign sext_ln40_2_fu_2511_p1 = $signed(trunc_ln40_1_reg_4131);

assign sext_ln40_3_fu_2671_p1 = $signed(trunc_ln40_3_reg_4224);

assign sext_ln40_4_fu_2585_p1 = $signed(shl_ln40_2_fu_2577_p3);

assign sext_ln40_5_fu_2597_p1 = $signed(shl_ln40_3_fu_2589_p3);

assign sext_ln40_fu_2232_p1 = $signed(shl_ln1_fu_2224_p3);

assign sext_ln75_fu_3025_p1 = $signed(mul_i_reg_4377);

assign shl_ln1_fu_2224_p3 = {{grp_load_fu_2070_p1}, {10'd0}};

assign shl_ln2_fu_2182_p3 = {{trunc_ln1437_fu_2178_p1}, {2'd0}};

assign shl_ln32_1_fu_3608_p3 = {{add_ln30_1_reg_4676}, {32'd0}};

assign shl_ln32_2_fu_3541_p3 = {{new_bro_node_next_free_offset_2_reg_4655}, {32'd0}};

assign shl_ln32_3_fu_2953_p3 = {{port_cross_in_nodeindex_read}, {10'd0}};

assign shl_ln32_4_fu_2964_p3 = {{port_cross_in_nodeindex_read}, {5'd0}};

assign shl_ln32_5_fu_3560_p3 = {{port_cross_in_nodeindex_read}, {10'd0}};

assign shl_ln32_6_fu_3571_p3 = {{port_cross_in_nodeindex_read}, {5'd0}};

assign shl_ln32_7_fu_3477_p3 = {{port_cross_in_broindex_read}, {10'd0}};

assign shl_ln32_8_fu_3488_p3 = {{port_cross_in_broindex_read}, {5'd0}};

assign shl_ln3_fu_3001_p3 = {{add_ln30_reg_4392}, {32'd0}};

assign shl_ln40_1_fu_2236_p3 = {{grp_load_fu_2070_p1}, {5'd0}};

assign shl_ln40_2_fu_2577_p3 = {{grp_load_fu_2070_p1}, {10'd0}};

assign shl_ln40_3_fu_2589_p3 = {{grp_load_fu_2070_p1}, {5'd0}};

assign shl_ln4_fu_3322_p3 = {{trunc_ln100_fu_3318_p1}, {3'd0}};

assign shl_ln_fu_2328_p3 = {{empty_fu_2144_p1}, {2'd0}};

assign sub_ln30_2_fu_3515_p2 = (grp_load_fu_2070_p1 - port_cross_in_broindex_read);

assign tmp_1_fu_2649_p4 = {{ap_phi_mux_val_phi_fu_1271_p4[31:5]}};

assign tmp_fu_2623_p4 = {{ap_phi_mux_val_phi_fu_1271_p4[31:5]}};

assign trunc_ln100_fu_3318_p1 = idx_reg_1890_pp0_iter1_reg[4:0];

assign trunc_ln1098_1_fu_2340_p3 = {{trunc_ln1098_fu_2336_p1}, {2'd0}};

assign trunc_ln1098_3_fu_2348_p1 = port_cross_in_pos_read[0:0];

assign trunc_ln1098_fu_2336_p1 = port_cross_in_pos_read[5:0];

assign trunc_ln1154_2_fu_2312_p4 = {{add_ln1154_1_fu_2302_p2[6:1]}};

assign trunc_ln1154_fu_2308_p1 = port_cross_in_pos_read[0:0];

assign trunc_ln1157_fu_2292_p1 = port_cross_in_pos_read[0:0];

assign trunc_ln1224_1_fu_3425_p1 = new_bro_node_num_load_reg_4541[5:0];

assign trunc_ln1224_2_fu_3404_p1 = new_bro_node_num_load_reg_4541[0:0];

assign trunc_ln1224_fu_3466_p1 = new_bro_node_num_load_reg_4541[7:0];

assign trunc_ln1430_fu_2220_p1 = port_cross_in_pos_read[0:0];

assign trunc_ln1437_1_fu_2445_p1 = port_cross_in_pos_read[0:0];

assign trunc_ln1437_fu_2178_p1 = port_cross_in_pos_read[5:0];

assign trunc_ln1443_fu_2168_p1 = port_cross_in_pos_read[0:0];

assign trunc_ln1449_fu_2497_p1 = port_cross_in_pos_read[0:0];

assign trunc_ln1474_1_fu_2547_p4 = {{ap_phi_mux_val_phi_fu_1271_p4[6:1]}};

assign trunc_ln1474_fu_2563_p1 = ap_phi_mux_val_phi_fu_1271_p4[0:0];

assign trunc_ln1542_fu_2282_p1 = port_cross_in_pos_read[0:0];

assign trunc_ln2_fu_2448_p3 = {{trunc_ln1437_1_fu_2445_p1}, {2'd0}};

assign trunc_ln301_1_fu_2573_p1 = ap_phi_mux_val_phi_fu_1271_p4[7:0];

assign trunc_ln301_2_fu_3620_p1 = port_cross_in_pos_read[7:0];

assign trunc_ln301_3_fu_3631_p1 = checkpos_1_reg_1880[7:0];

assign trunc_ln301_4_fu_2500_p1 = port_cross_in_pos_read[7:0];

assign trunc_ln301_5_fu_3373_p1 = checkpos_1_reg_1880[7:0];

assign trunc_ln301_6_fu_3726_p1 = port_cross_in_pos_read[7:0];

assign trunc_ln301_fu_2916_p1 = port_cross_in_pos_read[7:0];

assign trunc_ln5_fu_3386_p4 = {{new_bro_node_num_fu_336[6:1]}};

assign trunc_ln966_fu_2639_p1 = ap_phi_mux_val_phi_fu_1271_p4[7:0];

assign trunc_ln_fu_2352_p3 = {{trunc_ln1098_3_fu_2348_p1}, {2'd0}};

assign xor_ln1170_fu_3091_p2 = (icmp_ln1183_fu_3035_p2 ^ 1'd1);

assign xor_ln1482_fu_2691_p2 = (icmp_ln1482_reg_4229 ^ 1'd1);

assign zext_ln1079_fu_2806_p1 = ap_phi_mux_opcode_next_4_phi_fu_1578_p36;

assign zext_ln1098_fu_2360_p1 = grp_fu_2050_p4;

assign zext_ln1100_fu_2410_p1 = lshr_ln1_fu_2400_p4;

assign zext_ln1101_fu_2433_p1 = lshr_ln3_fu_2423_p4;

assign zext_ln1102_fu_3719_p1 = lshr_ln4_fu_3709_p4;

assign zext_ln1107_fu_2387_p1 = lshr_ln2_fu_2377_p4;

assign zext_ln1154_fu_2322_p1 = trunc_ln1154_2_fu_2312_p4;

assign zext_ln1157_fu_2286_p1 = grp_fu_2050_p4;

assign zext_ln1224_fu_3444_p1 = lshr_ln6_fu_3434_p4;

assign zext_ln1240_fu_3396_p1 = trunc_ln5_fu_3386_p4;

assign zext_ln1430_fu_2212_p1 = grp_fu_2050_p4;

assign zext_ln1437_fu_2206_p1 = lshr_ln_fu_2196_p4;

assign zext_ln1443_fu_2160_p1 = grp_fu_2050_p4;

assign zext_ln1449_fu_2491_p1 = grp_fu_2050_p4;

assign zext_ln1474_fu_2557_p1 = trunc_ln1474_1_fu_2547_p4;

assign zext_ln1542_fu_2276_p1 = grp_fu_2050_p4;

assign zext_ln32_1_fu_3615_p1 = shl_ln32_1_fu_3608_p3;

assign zext_ln32_2_fu_3548_p1 = shl_ln32_2_fu_3541_p3;

assign zext_ln32_fu_3008_p1 = shl_ln3_fu_3001_p3;

assign zext_ln91_fu_3346_p1 = lshr_ln5_fu_3336_p4;

always @ (posedge ap_clk) begin
    shl_ln_reg_4153[1:0] <= 2'b00;
    trunc_ln_reg_4158[1:0] <= 2'b00;
    select_ln1008_reg_4332[5:1] <= 5'b10000;
    it_graph_V_reg_4337[5:1] <= 5'b10000;
    ap_return_0_preg[31:5] <= 27'b000000000000000000000000000;
end

endmodule //execute_upwards
