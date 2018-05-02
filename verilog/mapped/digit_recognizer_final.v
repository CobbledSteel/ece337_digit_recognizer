/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Tue May  1 18:28:21 2018
/////////////////////////////////////////////////////////////


module flex_counter_NUM_CNT_BITS6 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [5:0] rollover_val;
  output [5:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   N9, N10, N11, N12, N13, n22, n25, n26, n27, n28, n40, n41, n42, n43,
         n44, n45, n46, n47, \add_590/carry[5] , \add_590/carry[4] ,
         \add_590/carry[3] , \add_590/carry[2] , n1, n2, n3, n4, n5, n6, n14,
         n15, n16, n17, n18, n19, n20, n21, n23, n24, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64;

  DFFSR \count_out_reg[0]  ( .D(n47), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR rollover_flag_reg ( .D(n46), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  DFFSR \count_out_reg[1]  ( .D(n45), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[2]  ( .D(n44), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[3]  ( .D(n43), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR \count_out_reg[4]  ( .D(n42), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[4]) );
  DFFSR \count_out_reg[5]  ( .D(n41), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[5]) );
  OAI21X1 U21 ( .A(n22), .B(n64), .C(n25), .Y(n42) );
  NAND2X1 U22 ( .A(N12), .B(n60), .Y(n25) );
  NAND2X1 U24 ( .A(N11), .B(n60), .Y(n26) );
  OAI21X1 U25 ( .A(n22), .B(n63), .C(n27), .Y(n44) );
  NAND2X1 U26 ( .A(N10), .B(n60), .Y(n27) );
  OAI21X1 U27 ( .A(n22), .B(n62), .C(n28), .Y(n45) );
  NAND2X1 U28 ( .A(N9), .B(n60), .Y(n28) );
  OAI21X1 U40 ( .A(n22), .B(n61), .C(n40), .Y(n47) );
  NAND2X1 U41 ( .A(n61), .B(n60), .Y(n40) );
  HAX1 \add_590/U1_1_1  ( .A(count_out[1]), .B(count_out[0]), .YC(
        \add_590/carry[2] ), .YS(N9) );
  HAX1 \add_590/U1_1_2  ( .A(count_out[2]), .B(\add_590/carry[2] ), .YC(
        \add_590/carry[3] ), .YS(N10) );
  HAX1 \add_590/U1_1_3  ( .A(count_out[3]), .B(\add_590/carry[3] ), .YC(
        \add_590/carry[4] ), .YS(N11) );
  HAX1 \add_590/U1_1_4  ( .A(count_out[4]), .B(\add_590/carry[4] ), .YC(
        \add_590/carry[5] ), .YS(N12) );
  NAND2X1 U7 ( .A(n38), .B(n37), .Y(n1) );
  INVX2 U11 ( .A(rollover_val[1]), .Y(n37) );
  NAND2X1 U12 ( .A(n2), .B(rollover_val[4]), .Y(n3) );
  NAND2X1 U13 ( .A(n3), .B(n21), .Y(n24) );
  INVX1 U14 ( .A(n5), .Y(n2) );
  INVX2 U15 ( .A(n4), .Y(n21) );
  INVX1 U16 ( .A(clear), .Y(n56) );
  AND2X2 U17 ( .A(n5), .B(n23), .Y(n4) );
  AND2X2 U18 ( .A(n6), .B(n31), .Y(n5) );
  NOR2X1 U19 ( .A(n36), .B(rollover_val[2]), .Y(n6) );
  INVX1 U20 ( .A(n6), .Y(n17) );
  INVX1 U23 ( .A(n1), .Y(n15) );
  INVX1 U29 ( .A(rollover_val[2]), .Y(n14) );
  INVX2 U30 ( .A(count_enable), .Y(n30) );
  NAND2X1 U31 ( .A(n56), .B(n30), .Y(n22) );
  INVX2 U32 ( .A(count_out[3]), .Y(n33) );
  OAI21X1 U33 ( .A(n22), .B(n33), .C(n26), .Y(n43) );
  INVX2 U34 ( .A(count_out[2]), .Y(n63) );
  INVX2 U35 ( .A(rollover_val[0]), .Y(n38) );
  NAND2X1 U36 ( .A(n38), .B(n37), .Y(n36) );
  OAI21X1 U37 ( .A(n15), .B(n14), .C(n17), .Y(n16) );
  XOR2X1 U38 ( .A(n63), .B(n16), .Y(n20) );
  XOR2X1 U39 ( .A(count_out[0]), .B(rollover_val[0]), .Y(n19) );
  INVX2 U42 ( .A(rollover_val[3]), .Y(n31) );
  INVX2 U43 ( .A(rollover_val[4]), .Y(n23) );
  INVX2 U44 ( .A(rollover_val[5]), .Y(n34) );
  AOI21X1 U45 ( .A(n4), .B(n34), .C(clear), .Y(n18) );
  NAND3X1 U46 ( .A(n20), .B(n19), .C(n18), .Y(n54) );
  XOR2X1 U47 ( .A(n24), .B(count_out[4]), .Y(n29) );
  NOR2X1 U48 ( .A(n30), .B(n29), .Y(n52) );
  OAI21X1 U49 ( .A(n6), .B(n31), .C(n2), .Y(n32) );
  XOR2X1 U50 ( .A(n33), .B(n32), .Y(n51) );
  NOR2X1 U51 ( .A(n4), .B(n34), .Y(n35) );
  XOR2X1 U52 ( .A(count_out[5]), .B(n35), .Y(n49) );
  OAI21X1 U53 ( .A(n38), .B(n37), .C(n1), .Y(n39) );
  XOR2X1 U54 ( .A(n39), .B(count_out[1]), .Y(n48) );
  NOR2X1 U55 ( .A(n49), .B(n48), .Y(n50) );
  NAND3X1 U56 ( .A(n52), .B(n51), .C(n50), .Y(n53) );
  INVX2 U57 ( .A(rollover_flag), .Y(n55) );
  OAI22X1 U58 ( .A(n54), .B(n53), .C(n22), .D(n55), .Y(n46) );
  INVX2 U59 ( .A(count_out[5]), .Y(n59) );
  NAND3X1 U60 ( .A(count_enable), .B(n56), .C(n55), .Y(n57) );
  INVX2 U61 ( .A(n57), .Y(n60) );
  NAND2X1 U62 ( .A(N13), .B(n60), .Y(n58) );
  OAI21X1 U63 ( .A(n22), .B(n59), .C(n58), .Y(n41) );
  INVX2 U64 ( .A(count_out[0]), .Y(n61) );
  XOR2X1 U65 ( .A(\add_590/carry[5] ), .B(count_out[5]), .Y(N13) );
  INVX2 U66 ( .A(count_out[1]), .Y(n62) );
  INVX2 U67 ( .A(count_out[4]), .Y(n64) );
endmodule


module flex_counter_NUM_CNT_BITS4_6 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   N24, N26, N28, n25, n39, n40, n41, n42, n43, n1, n2, n3, n4, n5, n6,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n44, n45,
         n46, n47, n48, n49, n50, n51;

  DFFSR \count_out_reg[0]  ( .D(n43), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR rollover_flag_reg ( .D(n39), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  DFFSR \count_out_reg[1]  ( .D(n42), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[2]  ( .D(n41), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[3]  ( .D(n40), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  XOR2X1 U21 ( .A(n15), .B(N24), .Y(n25) );
  NOR2X1 U7 ( .A(clear), .B(n5), .Y(n1) );
  AND2X2 U9 ( .A(n20), .B(count_enable), .Y(n2) );
  AND2X2 U10 ( .A(n2), .B(n15), .Y(n3) );
  NOR2X1 U11 ( .A(clear), .B(n5), .Y(n4) );
  NAND2X1 U12 ( .A(n20), .B(count_enable), .Y(n5) );
  INVX2 U13 ( .A(rollover_flag), .Y(n20) );
  NOR2X1 U14 ( .A(n6), .B(count_out[2]), .Y(n12) );
  NOR2X1 U15 ( .A(n12), .B(n29), .Y(n30) );
  INVX1 U16 ( .A(n4), .Y(n6) );
  NAND2X1 U17 ( .A(n13), .B(n1), .Y(n14) );
  NAND2X1 U18 ( .A(n14), .B(n24), .Y(n29) );
  INVX2 U19 ( .A(count_out[1]), .Y(n13) );
  OR2X1 U20 ( .A(count_enable), .B(n17), .Y(n37) );
  NAND2X1 U22 ( .A(n21), .B(n3), .Y(n16) );
  NAND2X1 U23 ( .A(n16), .B(n37), .Y(n22) );
  INVX2 U24 ( .A(count_out[0]), .Y(n15) );
  INVX2 U25 ( .A(count_out[3]), .Y(n19) );
  XOR2X1 U26 ( .A(count_out[3]), .B(n50), .Y(n32) );
  XOR2X1 U27 ( .A(count_out[1]), .B(n47), .Y(n34) );
  INVX1 U28 ( .A(n21), .Y(n17) );
  BUFX2 U29 ( .A(n24), .Y(n18) );
  MUX2X1 U30 ( .B(n30), .A(n31), .S(n19), .Y(n40) );
  INVX1 U31 ( .A(n29), .Y(n26) );
  INVX2 U32 ( .A(clear), .Y(n21) );
  MUX2X1 U33 ( .B(n6), .A(n37), .S(count_out[0]), .Y(n43) );
  NAND2X1 U34 ( .A(n1), .B(count_out[0]), .Y(n23) );
  INVX2 U35 ( .A(n22), .Y(n24) );
  MUX2X1 U36 ( .B(n23), .A(n18), .S(count_out[1]), .Y(n42) );
  NAND3X1 U37 ( .A(count_out[1]), .B(count_out[0]), .C(n4), .Y(n27) );
  MUX2X1 U38 ( .B(n27), .A(n26), .S(count_out[2]), .Y(n41) );
  INVX2 U39 ( .A(n27), .Y(n28) );
  NAND2X1 U40 ( .A(count_out[2]), .B(n28), .Y(n31) );
  INVX2 U41 ( .A(N28), .Y(n33) );
  NAND3X1 U42 ( .A(n34), .B(n33), .C(n32), .Y(n46) );
  XOR2X1 U43 ( .A(N26), .B(count_out[2]), .Y(n35) );
  NOR2X1 U44 ( .A(n17), .B(n35), .Y(n36) );
  NAND3X1 U45 ( .A(n25), .B(n36), .C(count_enable), .Y(n45) );
  INVX2 U46 ( .A(n37), .Y(n38) );
  NAND2X1 U47 ( .A(rollover_flag), .B(n38), .Y(n44) );
  OAI21X1 U48 ( .A(n46), .B(n45), .C(n44), .Y(n39) );
  NOR2X1 U49 ( .A(rollover_val[1]), .B(rollover_val[0]), .Y(n48) );
  AOI21X1 U50 ( .A(rollover_val[0]), .B(rollover_val[1]), .C(n48), .Y(n47) );
  NAND2X1 U51 ( .A(n48), .B(n51), .Y(n49) );
  OAI21X1 U52 ( .A(n48), .B(n51), .C(n49), .Y(N26) );
  NOR2X1 U53 ( .A(n49), .B(rollover_val[3]), .Y(N28) );
  AOI21X1 U54 ( .A(n49), .B(rollover_val[3]), .C(N28), .Y(n50) );
  INVX2 U55 ( .A(rollover_val[2]), .Y(n51) );
  INVX2 U56 ( .A(rollover_val[0]), .Y(N24) );
endmodule


module flex_counter_NUM_CNT_BITS9_DW01_inc_0 ( A, SUM );
  input [8:0] A;
  output [8:0] SUM;

  wire   [8:2] carry;

  HAX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  HAX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  HAX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  HAX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  HAX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  HAX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  HAX1 U1_1_1 ( .A(A[1]), .B(A[0]), .YC(carry[2]), .YS(SUM[1]) );
  INVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[8]), .B(A[8]), .Y(SUM[8]) );
endmodule


module flex_counter_NUM_CNT_BITS9 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [8:0] rollover_val;
  output [8:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   n78, N8, N9, N10, N11, N12, N13, N14, N15, N16, N40, N41, N42, N43,
         N44, N45, N46, N47, N48, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n2, n3, n4, n5, n6, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77;

  DFFSR \count_out_reg[0]  ( .D(n65), .CLK(clk), .R(n3), .S(1'b1), .Q(n78) );
  DFFSR rollover_flag_reg ( .D(n64), .CLK(clk), .R(n3), .S(1'b1), .Q(
        rollover_flag) );
  DFFSR \count_out_reg[1]  ( .D(n63), .CLK(clk), .R(n3), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[2]  ( .D(n62), .CLK(clk), .R(n3), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[3]  ( .D(n61), .CLK(clk), .R(n3), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR \count_out_reg[4]  ( .D(n60), .CLK(clk), .R(n3), .S(1'b1), .Q(
        count_out[4]) );
  DFFSR \count_out_reg[5]  ( .D(n59), .CLK(clk), .R(n3), .S(1'b1), .Q(
        count_out[5]) );
  DFFSR \count_out_reg[6]  ( .D(n58), .CLK(clk), .R(n3), .S(1'b1), .Q(
        count_out[6]) );
  DFFSR \count_out_reg[7]  ( .D(n57), .CLK(clk), .R(n3), .S(1'b1), .Q(
        count_out[7]) );
  DFFSR \count_out_reg[8]  ( .D(n56), .CLK(clk), .R(n3), .S(1'b1), .Q(
        count_out[8]) );
  NAND2X1 U26 ( .A(N16), .B(n30), .Y(n29) );
  OAI21X1 U27 ( .A(n28), .B(n75), .C(n31), .Y(n57) );
  NAND2X1 U28 ( .A(N15), .B(n30), .Y(n31) );
  OAI21X1 U29 ( .A(n28), .B(n74), .C(n32), .Y(n58) );
  NAND2X1 U30 ( .A(N14), .B(n30), .Y(n32) );
  OAI21X1 U31 ( .A(n28), .B(n73), .C(n33), .Y(n59) );
  NAND2X1 U32 ( .A(N13), .B(n30), .Y(n33) );
  OAI21X1 U33 ( .A(n28), .B(n72), .C(n34), .Y(n60) );
  NAND2X1 U34 ( .A(N12), .B(n30), .Y(n34) );
  OAI21X1 U35 ( .A(n28), .B(n71), .C(n35), .Y(n61) );
  NAND2X1 U36 ( .A(N11), .B(n30), .Y(n35) );
  OAI21X1 U37 ( .A(n28), .B(n70), .C(n36), .Y(n62) );
  NAND2X1 U38 ( .A(N10), .B(n30), .Y(n36) );
  OAI21X1 U39 ( .A(n28), .B(n69), .C(n37), .Y(n63) );
  NAND2X1 U40 ( .A(N9), .B(n30), .Y(n37) );
  OAI22X1 U41 ( .A(n28), .B(n68), .C(n38), .D(n39), .Y(n64) );
  NAND3X1 U42 ( .A(n40), .B(n41), .C(n42), .Y(n39) );
  NOR2X1 U43 ( .A(n43), .B(n44), .Y(n42) );
  XNOR2X1 U44 ( .A(n69), .B(N40), .Y(n44) );
  XNOR2X1 U45 ( .A(n72), .B(N43), .Y(n43) );
  NOR2X1 U47 ( .A(n45), .B(n46), .Y(n40) );
  XNOR2X1 U48 ( .A(n73), .B(N44), .Y(n46) );
  XNOR2X1 U49 ( .A(n74), .B(N45), .Y(n45) );
  NAND3X1 U50 ( .A(n47), .B(n48), .C(n49), .Y(n38) );
  NOR2X1 U51 ( .A(n50), .B(n51), .Y(n49) );
  NAND2X1 U52 ( .A(n52), .B(n53), .Y(n51) );
  XNOR2X1 U53 ( .A(count_out[8]), .B(N47), .Y(n53) );
  XNOR2X1 U54 ( .A(count_out[3]), .B(N42), .Y(n52) );
  XNOR2X1 U55 ( .A(n70), .B(N41), .Y(n50) );
  XNOR2X1 U56 ( .A(count_out[7]), .B(N46), .Y(n48) );
  NOR2X1 U57 ( .A(N48), .B(n54), .Y(n47) );
  OAI21X1 U58 ( .A(n28), .B(n67), .C(n55), .Y(n65) );
  NAND2X1 U59 ( .A(N8), .B(n30), .Y(n55) );
  NOR2X1 U60 ( .A(n54), .B(rollover_flag), .Y(n30) );
  NAND2X1 U61 ( .A(n77), .B(n54), .Y(n28) );
  NAND2X1 U62 ( .A(count_enable), .B(n77), .Y(n54) );
  flex_counter_NUM_CNT_BITS9_DW01_inc_0 add_590 ( .A({count_out[8:1], n78}), 
        .SUM({N16, N15, N14, N13, N12, N11, N10, N9, N8}) );
  INVX2 U7 ( .A(n67), .Y(count_out[0]) );
  OR2X2 U14 ( .A(n28), .B(n76), .Y(n2) );
  NAND2X1 U15 ( .A(n2), .B(n29), .Y(n56) );
  INVX1 U16 ( .A(n78), .Y(n67) );
  INVX2 U17 ( .A(n4), .Y(n3) );
  INVX2 U18 ( .A(n_rst), .Y(n4) );
  XOR2X1 U19 ( .A(n78), .B(rollover_val[0]), .Y(n41) );
  NOR2X1 U20 ( .A(rollover_val[1]), .B(rollover_val[0]), .Y(n6) );
  AOI21X1 U21 ( .A(rollover_val[0]), .B(rollover_val[1]), .C(n6), .Y(n5) );
  NAND2X1 U22 ( .A(n6), .B(n27), .Y(n17) );
  OAI21X1 U23 ( .A(n6), .B(n27), .C(n17), .Y(N41) );
  NOR2X1 U24 ( .A(n17), .B(rollover_val[3]), .Y(n19) );
  AOI21X1 U25 ( .A(n17), .B(rollover_val[3]), .C(n19), .Y(n18) );
  NAND2X1 U46 ( .A(n19), .B(n26), .Y(n20) );
  OAI21X1 U63 ( .A(n19), .B(n26), .C(n20), .Y(N43) );
  NOR2X1 U64 ( .A(n20), .B(rollover_val[5]), .Y(n22) );
  AOI21X1 U65 ( .A(n20), .B(rollover_val[5]), .C(n22), .Y(n21) );
  NAND2X1 U66 ( .A(n22), .B(n25), .Y(n23) );
  OAI21X1 U67 ( .A(n22), .B(n25), .C(n23), .Y(N45) );
  XNOR2X1 U68 ( .A(rollover_val[7]), .B(n23), .Y(N46) );
  NOR3X1 U69 ( .A(rollover_val[7]), .B(rollover_val[8]), .C(n23), .Y(N48) );
  OAI21X1 U70 ( .A(rollover_val[7]), .B(n23), .C(rollover_val[8]), .Y(n24) );
  NAND2X1 U71 ( .A(n66), .B(n24), .Y(N47) );
  INVX2 U72 ( .A(rollover_val[6]), .Y(n25) );
  INVX2 U73 ( .A(rollover_val[4]), .Y(n26) );
  INVX2 U74 ( .A(rollover_val[2]), .Y(n27) );
  INVX2 U75 ( .A(N48), .Y(n66) );
  INVX2 U76 ( .A(n21), .Y(N44) );
  INVX2 U77 ( .A(n18), .Y(N42) );
  INVX2 U78 ( .A(n5), .Y(N40) );
  INVX2 U79 ( .A(rollover_flag), .Y(n68) );
  INVX2 U80 ( .A(count_out[1]), .Y(n69) );
  INVX2 U81 ( .A(count_out[2]), .Y(n70) );
  INVX2 U82 ( .A(count_out[3]), .Y(n71) );
  INVX2 U83 ( .A(count_out[4]), .Y(n72) );
  INVX2 U84 ( .A(count_out[5]), .Y(n73) );
  INVX2 U85 ( .A(count_out[6]), .Y(n74) );
  INVX2 U86 ( .A(count_out[7]), .Y(n75) );
  INVX2 U87 ( .A(count_out[8]), .Y(n76) );
  INVX2 U88 ( .A(clear), .Y(n77) );
endmodule


module flex_counter_NUM_CNT_BITS4_5 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   N24, N26, N28, n1, n2, n3, n4, n5, n6, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66;

  DFFSR \count_out_reg[0]  ( .D(n44), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR rollover_flag_reg ( .D(n48), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  DFFSR \count_out_reg[1]  ( .D(n45), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[2]  ( .D(n46), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[3]  ( .D(n47), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  OAI22X1 U18 ( .A(n66), .B(n16), .C(n65), .D(n64), .Y(n48) );
  NAND3X1 U19 ( .A(n63), .B(n62), .C(n61), .Y(n64) );
  XOR2X1 U20 ( .A(n18), .B(N26), .Y(n61) );
  XOR2X1 U21 ( .A(n14), .B(N24), .Y(n62) );
  NAND2X1 U23 ( .A(n60), .B(n59), .Y(n65) );
  NOR2X1 U25 ( .A(N28), .B(n58), .Y(n60) );
  OAI21X1 U26 ( .A(n57), .B(n19), .C(n56), .Y(n47) );
  NAND3X1 U27 ( .A(n55), .B(n54), .C(n53), .Y(n56) );
  NOR2X1 U28 ( .A(count_out[3]), .B(n18), .Y(n53) );
  AOI21X1 U29 ( .A(n55), .B(n18), .C(n52), .Y(n57) );
  OAI21X1 U30 ( .A(n13), .B(n18), .C(n51), .Y(n46) );
  NAND3X1 U31 ( .A(n54), .B(n18), .C(n55), .Y(n51) );
  OAI21X1 U32 ( .A(n54), .B(n2), .C(n66), .Y(n52) );
  NOR2X1 U33 ( .A(n17), .B(n14), .Y(n54) );
  OAI21X1 U34 ( .A(n15), .B(n17), .C(n50), .Y(n45) );
  NAND3X1 U35 ( .A(count_out[0]), .B(n17), .C(n55), .Y(n50) );
  OAI21X1 U36 ( .A(n2), .B(count_out[0]), .C(n66), .Y(n49) );
  OAI22X1 U37 ( .A(n14), .B(n66), .C(count_out[0]), .D(n2), .Y(n44) );
  NAND2X1 U39 ( .A(n20), .B(n58), .Y(n66) );
  NAND2X1 U40 ( .A(count_enable), .B(n20), .Y(n58) );
  INVX2 U7 ( .A(rollover_val[1]), .Y(n1) );
  AND2X2 U9 ( .A(n1), .B(N24), .Y(n4) );
  OR2X2 U10 ( .A(n58), .B(rollover_flag), .Y(n2) );
  INVX1 U11 ( .A(n2), .Y(n55) );
  XNOR2X1 U12 ( .A(n19), .B(n6), .Y(n59) );
  XNOR2X1 U13 ( .A(n17), .B(n3), .Y(n63) );
  AOI21X1 U14 ( .A(rollover_val[0]), .B(rollover_val[1]), .C(n4), .Y(n3) );
  NAND2X1 U15 ( .A(n4), .B(n12), .Y(n5) );
  OAI21X1 U16 ( .A(n4), .B(n12), .C(n5), .Y(N26) );
  NOR2X1 U17 ( .A(n5), .B(rollover_val[3]), .Y(N28) );
  AOI21X1 U22 ( .A(n5), .B(rollover_val[3]), .C(N28), .Y(n6) );
  INVX2 U24 ( .A(rollover_val[2]), .Y(n12) );
  INVX2 U38 ( .A(rollover_val[0]), .Y(N24) );
  INVX2 U41 ( .A(n52), .Y(n13) );
  INVX2 U42 ( .A(count_out[0]), .Y(n14) );
  INVX2 U43 ( .A(n49), .Y(n15) );
  INVX2 U44 ( .A(rollover_flag), .Y(n16) );
  INVX2 U45 ( .A(count_out[1]), .Y(n17) );
  INVX2 U46 ( .A(count_out[2]), .Y(n18) );
  INVX2 U47 ( .A(count_out[3]), .Y(n19) );
  INVX2 U48 ( .A(clear), .Y(n20) );
endmodule


module flex_counter_NUM_CNT_BITS8_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  HAX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  HAX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  HAX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  HAX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  HAX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  HAX1 U1_1_1 ( .A(A[1]), .B(A[0]), .YC(carry[2]), .YS(SUM[1]) );
  INVX2 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module flex_counter_NUM_CNT_BITS8 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [7:0] rollover_val;
  output [7:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N37, N38, N39, N40, N41, N42,
         N43, N44, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n1, n2, n3, n4, n5, n6, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n60, n61, n62, n63, n64,
         n65, n66, n67, n68;

  DFFSR \count_out_reg[0]  ( .D(n59), .CLK(clk), .R(n1), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR rollover_flag_reg ( .D(n58), .CLK(clk), .R(n1), .S(1'b1), .Q(
        rollover_flag) );
  DFFSR \count_out_reg[1]  ( .D(n57), .CLK(clk), .R(n1), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[2]  ( .D(n56), .CLK(clk), .R(n1), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[3]  ( .D(n55), .CLK(clk), .R(n1), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR \count_out_reg[4]  ( .D(n54), .CLK(clk), .R(n1), .S(1'b1), .Q(
        count_out[4]) );
  DFFSR \count_out_reg[5]  ( .D(n53), .CLK(clk), .R(n1), .S(1'b1), .Q(
        count_out[5]) );
  DFFSR \count_out_reg[6]  ( .D(n52), .CLK(clk), .R(n1), .S(1'b1), .Q(
        count_out[6]) );
  DFFSR \count_out_reg[7]  ( .D(n51), .CLK(clk), .R(n1), .S(1'b1), .Q(
        count_out[7]) );
  OAI21X1 U23 ( .A(n26), .B(n67), .C(n27), .Y(n51) );
  NAND2X1 U24 ( .A(N15), .B(n28), .Y(n27) );
  OAI21X1 U25 ( .A(n26), .B(n66), .C(n29), .Y(n52) );
  NAND2X1 U26 ( .A(N14), .B(n28), .Y(n29) );
  OAI21X1 U27 ( .A(n26), .B(n65), .C(n30), .Y(n53) );
  NAND2X1 U28 ( .A(N13), .B(n28), .Y(n30) );
  OAI21X1 U29 ( .A(n26), .B(n64), .C(n31), .Y(n54) );
  NAND2X1 U30 ( .A(N12), .B(n28), .Y(n31) );
  OAI21X1 U31 ( .A(n26), .B(n63), .C(n32), .Y(n55) );
  NAND2X1 U32 ( .A(N11), .B(n28), .Y(n32) );
  OAI21X1 U33 ( .A(n26), .B(n62), .C(n33), .Y(n56) );
  NAND2X1 U34 ( .A(N10), .B(n28), .Y(n33) );
  OAI21X1 U35 ( .A(n26), .B(n61), .C(n34), .Y(n57) );
  NAND2X1 U36 ( .A(N9), .B(n28), .Y(n34) );
  OAI22X1 U37 ( .A(n26), .B(n60), .C(n35), .D(n36), .Y(n58) );
  NAND3X1 U38 ( .A(n37), .B(n38), .C(n39), .Y(n36) );
  NOR2X1 U39 ( .A(n40), .B(n41), .Y(n39) );
  XNOR2X1 U40 ( .A(n63), .B(N39), .Y(n41) );
  XNOR2X1 U41 ( .A(n64), .B(N40), .Y(n40) );
  XNOR2X1 U42 ( .A(count_out[2]), .B(N38), .Y(n38) );
  NOR2X1 U43 ( .A(n42), .B(n43), .Y(n37) );
  XNOR2X1 U44 ( .A(n66), .B(N42), .Y(n43) );
  XNOR2X1 U45 ( .A(n61), .B(N37), .Y(n42) );
  NAND3X1 U46 ( .A(n44), .B(n45), .C(n46), .Y(n35) );
  NOR2X1 U47 ( .A(n47), .B(n48), .Y(n46) );
  XNOR2X1 U48 ( .A(n65), .B(N41), .Y(n48) );
  XNOR2X1 U49 ( .A(n67), .B(N43), .Y(n47) );
  NOR2X1 U51 ( .A(N44), .B(n49), .Y(n44) );
  OAI21X1 U52 ( .A(n26), .B(n25), .C(n50), .Y(n59) );
  NAND2X1 U53 ( .A(N8), .B(n28), .Y(n50) );
  NOR2X1 U54 ( .A(n49), .B(rollover_flag), .Y(n28) );
  NAND2X1 U55 ( .A(n68), .B(n49), .Y(n26) );
  NAND2X1 U56 ( .A(count_enable), .B(n68), .Y(n49) );
  flex_counter_NUM_CNT_BITS8_DW01_inc_0 add_590 ( .A(count_out), .SUM({N15, 
        N14, N13, N12, N11, N10, N9, N8}) );
  INVX2 U7 ( .A(n2), .Y(n1) );
  INVX2 U13 ( .A(n_rst), .Y(n2) );
  XOR2X1 U14 ( .A(count_out[0]), .B(rollover_val[0]), .Y(n45) );
  NOR2X1 U15 ( .A(rollover_val[1]), .B(rollover_val[0]), .Y(n4) );
  AOI21X1 U16 ( .A(rollover_val[0]), .B(rollover_val[1]), .C(n4), .Y(n3) );
  NAND2X1 U17 ( .A(n4), .B(n24), .Y(n5) );
  OAI21X1 U18 ( .A(n4), .B(n24), .C(n5), .Y(N38) );
  NOR2X1 U19 ( .A(n5), .B(rollover_val[3]), .Y(n16) );
  AOI21X1 U20 ( .A(n5), .B(rollover_val[3]), .C(n16), .Y(n6) );
  NAND2X1 U21 ( .A(n16), .B(n23), .Y(n17) );
  OAI21X1 U22 ( .A(n16), .B(n23), .C(n17), .Y(N40) );
  NOR2X1 U50 ( .A(n17), .B(rollover_val[5]), .Y(n19) );
  AOI21X1 U57 ( .A(n17), .B(rollover_val[5]), .C(n19), .Y(n18) );
  NAND2X1 U58 ( .A(n19), .B(n22), .Y(n20) );
  OAI21X1 U59 ( .A(n19), .B(n22), .C(n20), .Y(N42) );
  NOR2X1 U60 ( .A(n20), .B(rollover_val[7]), .Y(N44) );
  AOI21X1 U61 ( .A(n20), .B(rollover_val[7]), .C(N44), .Y(n21) );
  INVX2 U62 ( .A(rollover_val[6]), .Y(n22) );
  INVX2 U63 ( .A(rollover_val[4]), .Y(n23) );
  INVX2 U64 ( .A(rollover_val[2]), .Y(n24) );
  INVX2 U65 ( .A(n21), .Y(N43) );
  INVX2 U66 ( .A(n18), .Y(N41) );
  INVX2 U67 ( .A(n6), .Y(N39) );
  INVX2 U68 ( .A(n3), .Y(N37) );
  INVX2 U69 ( .A(count_out[0]), .Y(n25) );
  INVX2 U70 ( .A(rollover_flag), .Y(n60) );
  INVX2 U71 ( .A(count_out[1]), .Y(n61) );
  INVX2 U72 ( .A(count_out[2]), .Y(n62) );
  INVX2 U73 ( .A(count_out[3]), .Y(n63) );
  INVX2 U74 ( .A(count_out[4]), .Y(n64) );
  INVX2 U75 ( .A(count_out[5]), .Y(n65) );
  INVX2 U76 ( .A(count_out[6]), .Y(n66) );
  INVX2 U77 ( .A(count_out[7]), .Y(n67) );
  INVX2 U78 ( .A(clear), .Y(n68) );
endmodule


module networkController ( clk, n_rst, write_en, sigmoidData_out, ALUOutput, 
        pixel_data1, pixel_data2, flashData_out, data_ready, shift_network, 
        network_done, network_calc, digit_done, flash_ready, flash_address, 
        sigmoidData_in, sigmoid_address, sigmoid_write_en, weight1, weight2, 
        weight3, weight4, input1, input2, input3, input4, bias, clear, 
        accumulate );
  input [3:0] sigmoidData_out;
  input [3:0] ALUOutput;
  input [7:0] pixel_data1;
  input [7:0] pixel_data2;
  input [15:0] flashData_out;
  output [15:0] flash_address;
  output [3:0] sigmoidData_in;
  output [4:0] sigmoid_address;
  output [3:0] weight1;
  output [3:0] weight2;
  output [3:0] weight3;
  output [3:0] weight4;
  output [3:0] input1;
  output [3:0] input2;
  output [3:0] input3;
  output [3:0] input4;
  output [3:0] bias;
  input clk, n_rst, write_en;
  output data_ready, shift_network, network_done, network_calc, digit_done,
         flash_ready, sigmoid_write_en, clear, accumulate;
  wire   n458, sigmoid_write_en_nxt, inc_input, input_rollover, flashClear,
         addr_en, neuronClear, inc_neuron, neuron_rollover, digit_done_nxt,
         shift_nxt, clear_nxt, accumulate_nxt, N710, N711, N712, N723, N724,
         N725, N726, N727, n162, n164, n165, n166, n167, n169, n172, n173,
         n174, n175, n177, n178, n179, n180, n181, n184, n185, n188, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n225, n226, n227, n228, n229, n230,
         n231, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n302, n303, n304, n306, n309, n311,
         n313, n315, n316, n318, n319, n320, n321, n322, n323, n326, n327,
         n328, n329, n330, n332, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n371, n391, n392, n393, n394, n1, n2, n3, n4, n5,
         n6, n7, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n163, n168,
         n170, n171, n176, n182, n183, n186, n187, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n224, n232, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n305, n307, n308, n310, n312, n314, n317,
         n324, n325, n331, n333, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443,
         n444, n445, n446, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457;
  wire   [3:0] flash_counter;
  wire   [4:0] topState;
  wire   [4:0] sigmoid_address_nxt;
  wire   [3:0] nxt_weight4;
  wire   [3:0] nxt_input1;
  wire   [3:0] nxt_input2;
  wire   [3:0] nxt_input3;
  wire   [3:0] nxt_input4;
  wire   [4:0] layer2State;
  wire   [3:0] nxt_bias;
  wire   [4:0] layer1State;
  wire   [4:0] nxt_layer1State;
  wire   [4:0] nxt_layer2State;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2;
  assign flash_address[9] = 1'b0;
  assign flash_address[10] = 1'b0;
  assign flash_address[11] = 1'b0;
  assign flash_address[12] = 1'b0;
  assign flash_address[13] = 1'b0;
  assign flash_address[14] = 1'b0;
  assign flash_address[15] = 1'b0;
  assign sigmoidData_in[3] = ALUOutput[3];
  assign sigmoidData_in[2] = ALUOutput[2];
  assign sigmoidData_in[1] = ALUOutput[1];
  assign sigmoidData_in[0] = ALUOutput[0];

  DFFSR \layer1State_reg[0]  ( .D(nxt_layer1State[0]), .CLK(clk), .R(n144), 
        .S(1'b1), .Q(layer1State[0]) );
  DFFSR \layer1State_reg[2]  ( .D(nxt_layer1State[2]), .CLK(clk), .R(n143), 
        .S(1'b1), .Q(layer1State[2]) );
  DFFSR \layer1State_reg[1]  ( .D(nxt_layer1State[1]), .CLK(clk), .R(n143), 
        .S(1'b1), .Q(layer1State[1]) );
  DFFSR \layer1State_reg[3]  ( .D(nxt_layer1State[3]), .CLK(clk), .R(n143), 
        .S(1'b1), .Q(layer1State[3]) );
  DFFSR \layer1State_reg[4]  ( .D(nxt_layer1State[4]), .CLK(clk), .R(n143), 
        .S(1'b1), .Q(layer1State[4]) );
  DFFSR \layer2State_reg[0]  ( .D(nxt_layer2State[0]), .CLK(clk), .R(n143), 
        .S(1'b1), .Q(layer2State[0]) );
  DFFSR \layer2State_reg[2]  ( .D(nxt_layer2State[2]), .CLK(clk), .R(n143), 
        .S(1'b1), .Q(layer2State[2]) );
  DFFSR \layer2State_reg[3]  ( .D(nxt_layer2State[3]), .CLK(clk), .R(n143), 
        .S(1'b1), .Q(layer2State[3]) );
  DFFSR \layer2State_reg[4]  ( .D(nxt_layer2State[4]), .CLK(clk), .R(n143), 
        .S(1'b1), .Q(layer2State[4]) );
  DFFSR \layer2State_reg[1]  ( .D(nxt_layer2State[1]), .CLK(clk), .R(n143), 
        .S(1'b1), .Q(layer2State[1]) );
  DFFSR \topState_reg[0]  ( .D(n394), .CLK(clk), .R(n143), .S(1'b1), .Q(
        topState[0]) );
  DFFSR \topState_reg[2]  ( .D(n392), .CLK(clk), .R(n143), .S(1'b1), .Q(
        topState[2]) );
  DFFSR \topState_reg[1]  ( .D(n393), .CLK(clk), .R(n143), .S(1'b1), .Q(
        topState[1]) );
  DFFSR shift_network_reg ( .D(shift_nxt), .CLK(clk), .R(n143), .S(1'b1), .Q(
        shift_network) );
  DFFSR \weight1_reg[0]  ( .D(n415), .CLK(clk), .R(n143), .S(1'b1), .Q(
        weight1[0]) );
  DFFSR \weight1_reg[1]  ( .D(n414), .CLK(clk), .R(n143), .S(1'b1), .Q(
        weight1[1]) );
  DFFSR \weight1_reg[2]  ( .D(n413), .CLK(clk), .R(n143), .S(1'b1), .Q(
        weight1[2]) );
  DFFSR \weight1_reg[3]  ( .D(n412), .CLK(clk), .R(n143), .S(1'b1), .Q(
        weight1[3]) );
  DFFSR \weight2_reg[0]  ( .D(n419), .CLK(clk), .R(n143), .S(1'b1), .Q(
        weight2[0]) );
  DFFSR \weight2_reg[1]  ( .D(n418), .CLK(clk), .R(n143), .S(1'b1), .Q(
        weight2[1]) );
  DFFSR \weight2_reg[2]  ( .D(n417), .CLK(clk), .R(n143), .S(1'b1), .Q(
        weight2[2]) );
  DFFSR \weight2_reg[3]  ( .D(n416), .CLK(clk), .R(n143), .S(1'b1), .Q(
        weight2[3]) );
  DFFSR \weight3_reg[0]  ( .D(n423), .CLK(clk), .R(n143), .S(1'b1), .Q(
        weight3[0]) );
  DFFSR \weight3_reg[1]  ( .D(n422), .CLK(clk), .R(n143), .S(1'b1), .Q(
        weight3[1]) );
  DFFSR \weight3_reg[2]  ( .D(n421), .CLK(clk), .R(n143), .S(1'b1), .Q(
        weight3[2]) );
  DFFSR \weight3_reg[3]  ( .D(n420), .CLK(clk), .R(n143), .S(1'b1), .Q(
        weight3[3]) );
  DFFSR \weight4_reg[0]  ( .D(nxt_weight4[0]), .CLK(clk), .R(n144), .S(1'b1), 
        .Q(weight4[0]) );
  DFFSR \weight4_reg[1]  ( .D(nxt_weight4[1]), .CLK(clk), .R(n144), .S(1'b1), 
        .Q(weight4[1]) );
  DFFSR \weight4_reg[2]  ( .D(nxt_weight4[2]), .CLK(clk), .R(n144), .S(1'b1), 
        .Q(weight4[2]) );
  DFFSR \weight4_reg[3]  ( .D(nxt_weight4[3]), .CLK(clk), .R(n144), .S(1'b1), 
        .Q(weight4[3]) );
  DFFSR sigmoid_write_en_reg ( .D(sigmoid_write_en_nxt), .CLK(clk), .R(n144), 
        .S(1'b1), .Q(sigmoid_write_en) );
  DFFSR network_calc_reg ( .D(n3), .CLK(clk), .R(n144), .S(1'b1), .Q(
        network_calc) );
  DFFSR digit_done_reg ( .D(digit_done_nxt), .CLK(clk), .R(n144), .S(1'b1), 
        .Q(digit_done) );
  DFFSR network_done_reg ( .D(n448), .CLK(clk), .R(n144), .S(1'b1), .Q(n458)
         );
  DFFSR accumulate_reg ( .D(accumulate_nxt), .CLK(clk), .R(n144), .S(1'b1), 
        .Q(accumulate) );
  DFFSR \bias_reg[0]  ( .D(nxt_bias[0]), .CLK(clk), .R(n144), .S(1'b1), .Q(
        bias[0]) );
  DFFSR \bias_reg[1]  ( .D(nxt_bias[1]), .CLK(clk), .R(n144), .S(1'b1), .Q(
        bias[1]) );
  DFFSR \bias_reg[2]  ( .D(nxt_bias[2]), .CLK(clk), .R(n144), .S(1'b1), .Q(
        bias[2]) );
  DFFSR \bias_reg[3]  ( .D(nxt_bias[3]), .CLK(clk), .R(n144), .S(1'b1), .Q(
        bias[3]) );
  DFFSR clear_reg ( .D(clear_nxt), .CLK(clk), .R(n144), .S(1'b1), .Q(clear) );
  DFFSR \input4_reg[3]  ( .D(nxt_input4[3]), .CLK(clk), .R(n144), .S(1'b1), 
        .Q(input4[3]) );
  DFFSR \input3_reg[3]  ( .D(nxt_input3[3]), .CLK(clk), .R(n144), .S(1'b1), 
        .Q(input3[3]) );
  DFFSR \input2_reg[3]  ( .D(nxt_input2[3]), .CLK(clk), .R(n144), .S(1'b1), 
        .Q(input2[3]) );
  DFFSR \input1_reg[3]  ( .D(nxt_input1[3]), .CLK(clk), .R(n144), .S(1'b1), 
        .Q(input1[3]) );
  DFFSR \input4_reg[2]  ( .D(nxt_input4[2]), .CLK(clk), .R(n144), .S(1'b1), 
        .Q(input4[2]) );
  DFFSR \input3_reg[2]  ( .D(nxt_input3[2]), .CLK(clk), .R(n144), .S(1'b1), 
        .Q(input3[2]) );
  DFFSR \input2_reg[2]  ( .D(nxt_input2[2]), .CLK(clk), .R(n144), .S(1'b1), 
        .Q(input2[2]) );
  DFFSR \input1_reg[2]  ( .D(nxt_input1[2]), .CLK(clk), .R(n144), .S(1'b1), 
        .Q(input1[2]) );
  DFFSR \input4_reg[1]  ( .D(nxt_input4[1]), .CLK(clk), .R(n144), .S(1'b1), 
        .Q(input4[1]) );
  DFFSR \input3_reg[1]  ( .D(nxt_input3[1]), .CLK(clk), .R(n144), .S(1'b1), 
        .Q(input3[1]) );
  DFFSR \input2_reg[1]  ( .D(nxt_input2[1]), .CLK(clk), .R(n144), .S(1'b1), 
        .Q(input2[1]) );
  DFFSR \input1_reg[1]  ( .D(nxt_input1[1]), .CLK(clk), .R(n144), .S(1'b1), 
        .Q(input1[1]) );
  DFFSR \input4_reg[0]  ( .D(nxt_input4[0]), .CLK(clk), .R(n144), .S(1'b1), 
        .Q(input4[0]) );
  DFFSR \input3_reg[0]  ( .D(nxt_input3[0]), .CLK(clk), .R(n144), .S(1'b1), 
        .Q(input3[0]) );
  DFFSR \input2_reg[0]  ( .D(nxt_input2[0]), .CLK(clk), .R(n144), .S(1'b1), 
        .Q(input2[0]) );
  DFFSR \input1_reg[0]  ( .D(nxt_input1[0]), .CLK(clk), .R(n144), .S(1'b1), 
        .Q(input1[0]) );
  DFFSR \sigmoid_address_reg[0]  ( .D(sigmoid_address_nxt[0]), .CLK(clk), .R(
        n145), .S(1'b1), .Q(sigmoid_address[0]) );
  DFFSR \sigmoid_address_reg[1]  ( .D(sigmoid_address_nxt[1]), .CLK(clk), .R(
        n145), .S(1'b1), .Q(sigmoid_address[1]) );
  DFFSR \sigmoid_address_reg[2]  ( .D(sigmoid_address_nxt[2]), .CLK(clk), .R(
        n145), .S(1'b1), .Q(sigmoid_address[2]) );
  DFFSR \sigmoid_address_reg[3]  ( .D(sigmoid_address_nxt[3]), .CLK(clk), .R(
        n145), .S(1'b1), .Q(sigmoid_address[3]) );
  DFFSR \sigmoid_address_reg[4]  ( .D(sigmoid_address_nxt[4]), .CLK(clk), .R(
        n145), .S(1'b1), .Q(sigmoid_address[4]) );
  DFFSR addr_en_reg ( .D(flash_ready), .CLK(clk), .R(n143), .S(1'b1), .Q(
        addr_en) );
  AND2X2 U71 ( .A(n137), .B(n188), .Y(n185) );
  AND2X2 U72 ( .A(n229), .B(n220), .Y(n243) );
  AND2X2 U73 ( .A(n222), .B(n250), .Y(n249) );
  AND2X2 U74 ( .A(n255), .B(n256), .Y(n254) );
  AOI21X1 U179 ( .A(N712), .B(n438), .C(n404), .Y(n165) );
  AOI22X1 U180 ( .A(N727), .B(n167), .C(N712), .D(n117), .Y(n166) );
  AOI22X1 U181 ( .A(N712), .B(n169), .C(N712), .D(n440), .Y(n164) );
  NAND3X1 U184 ( .A(n173), .B(n174), .C(n175), .Y(n172) );
  AOI22X1 U185 ( .A(N711), .B(n169), .C(N711), .D(n440), .Y(n175) );
  NAND2X1 U186 ( .A(N711), .B(n438), .Y(n174) );
  AOI22X1 U187 ( .A(N726), .B(n167), .C(N711), .D(n117), .Y(n173) );
  NAND3X1 U190 ( .A(n178), .B(n179), .C(n180), .Y(n177) );
  AOI22X1 U191 ( .A(N710), .B(n169), .C(N710), .D(n440), .Y(n180) );
  NAND2X1 U192 ( .A(N710), .B(n438), .Y(n179) );
  AOI22X1 U193 ( .A(N725), .B(n167), .C(N710), .D(n117), .Y(n178) );
  NAND3X1 U223 ( .A(n207), .B(n76), .C(n208), .Y(nxt_layer2State[4]) );
  NOR2X1 U224 ( .A(n209), .B(n210), .Y(n208) );
  OAI21X1 U225 ( .A(n90), .B(n446), .C(n212), .Y(n210) );
  NOR2X1 U226 ( .A(n169), .B(n438), .Y(n207) );
  NAND3X1 U227 ( .A(n213), .B(n408), .C(n214), .Y(nxt_layer2State[3]) );
  AOI21X1 U228 ( .A(layer2State[3]), .B(n78), .C(n216), .Y(n214) );
  NAND2X1 U229 ( .A(n217), .B(n137), .Y(n216) );
  AOI21X1 U230 ( .A(n402), .B(n437), .C(n218), .Y(n213) );
  NAND3X1 U231 ( .A(n219), .B(n220), .C(n221), .Y(nxt_layer2State[2]) );
  AOI21X1 U232 ( .A(n131), .B(n407), .C(n209), .Y(n221) );
  AOI21X1 U236 ( .A(n75), .B(n407), .C(n440), .Y(n227) );
  NAND3X1 U237 ( .A(n229), .B(n76), .C(n409), .Y(n228) );
  OAI21X1 U238 ( .A(n231), .B(n162), .C(n220), .Y(n230) );
  NAND3X1 U239 ( .A(n233), .B(n234), .C(n235), .Y(nxt_layer2State[0]) );
  NOR2X1 U240 ( .A(n236), .B(n237), .Y(n235) );
  OAI21X1 U241 ( .A(n211), .B(n439), .C(n238), .Y(n237) );
  NAND3X1 U242 ( .A(n239), .B(n445), .C(n402), .Y(n238) );
  OAI22X1 U244 ( .A(n162), .B(n240), .C(n241), .D(n242), .Y(n215) );
  NAND3X1 U245 ( .A(n243), .B(n244), .C(n245), .Y(n242) );
  NOR2X1 U246 ( .A(n218), .B(n167), .Y(n245) );
  NAND2X1 U247 ( .A(n162), .B(n217), .Y(n167) );
  NAND3X1 U248 ( .A(n246), .B(layer2State[3]), .C(n247), .Y(n220) );
  NOR2X1 U249 ( .A(n75), .B(n130), .Y(n247) );
  NAND3X1 U250 ( .A(n248), .B(n212), .C(n249), .Y(n241) );
  NAND2X1 U251 ( .A(n445), .B(layer2State[0]), .Y(n212) );
  NOR2X1 U252 ( .A(n169), .B(n117), .Y(n248) );
  NAND2X1 U253 ( .A(n246), .B(n442), .Y(n250) );
  OAI21X1 U254 ( .A(n251), .B(n252), .C(n253), .Y(n236) );
  NAND2X1 U255 ( .A(n131), .B(n439), .Y(n252) );
  AOI22X1 U256 ( .A(n388), .B(n240), .C(n440), .D(n403), .Y(n234) );
  NAND3X1 U257 ( .A(n443), .B(n439), .C(n131), .Y(n162) );
  NAND3X1 U260 ( .A(n257), .B(n130), .C(n258), .Y(n225) );
  NOR2X1 U261 ( .A(n75), .B(layer2State[0]), .Y(n258) );
  NOR2X1 U262 ( .A(layer2State[4]), .B(layer2State[3]), .Y(n257) );
  NAND2X1 U291 ( .A(n231), .B(n226), .Y(n240) );
  NAND3X1 U292 ( .A(input_rollover), .B(flash_counter[3]), .C(n302), .Y(n226)
         );
  NOR2X1 U293 ( .A(n410), .B(n303), .Y(n302) );
  OR2X1 U294 ( .A(flash_counter[0]), .B(flash_counter[2]), .Y(n303) );
  NAND3X1 U295 ( .A(flash_counter[0]), .B(flash_counter[3]), .C(n304), .Y(n231) );
  NOR2X1 U296 ( .A(flash_counter[2]), .B(n410), .Y(n304) );
  OAI21X1 U297 ( .A(n5), .B(n450), .C(n306), .Y(nxt_input4[3]) );
  AOI22X1 U298 ( .A(n4), .B(n121), .C(pixel_data1[7]), .D(n399), .Y(n306) );
  OAI21X1 U299 ( .A(n5), .B(n452), .C(n309), .Y(nxt_input4[2]) );
  AOI22X1 U300 ( .A(n124), .B(n4), .C(pixel_data1[6]), .D(n399), .Y(n309) );
  OAI21X1 U301 ( .A(n5), .B(n454), .C(n311), .Y(nxt_input4[1]) );
  AOI22X1 U302 ( .A(n123), .B(n4), .C(pixel_data1[5]), .D(n399), .Y(n311) );
  OAI21X1 U303 ( .A(n5), .B(n456), .C(n313), .Y(nxt_input4[0]) );
  OAI21X1 U306 ( .A(n98), .B(n430), .C(n318), .Y(nxt_input3[3]) );
  AOI22X1 U307 ( .A(n316), .B(n121), .C(input3[3]), .D(n319), .Y(n318) );
  OAI21X1 U308 ( .A(n98), .B(n429), .C(n320), .Y(nxt_input3[2]) );
  AOI22X1 U309 ( .A(n316), .B(n124), .C(input3[2]), .D(n319), .Y(n320) );
  OAI21X1 U310 ( .A(n98), .B(n428), .C(n321), .Y(nxt_input3[1]) );
  AOI22X1 U311 ( .A(n316), .B(n123), .C(input3[1]), .D(n319), .Y(n321) );
  OAI21X1 U312 ( .A(n98), .B(n427), .C(n322), .Y(nxt_input3[0]) );
  AOI22X1 U313 ( .A(n316), .B(n122), .C(input3[0]), .D(n319), .Y(n322) );
  NOR2X1 U317 ( .A(n323), .B(n76), .Y(n316) );
  OAI21X1 U318 ( .A(n111), .B(n451), .C(n327), .Y(nxt_input2[3]) );
  AOI22X1 U319 ( .A(n326), .B(n121), .C(pixel_data2[7]), .D(n399), .Y(n327) );
  OAI21X1 U320 ( .A(n435), .B(n453), .C(n328), .Y(nxt_input2[2]) );
  AOI22X1 U321 ( .A(n326), .B(n124), .C(pixel_data2[6]), .D(n399), .Y(n328) );
  OAI21X1 U322 ( .A(n111), .B(n455), .C(n329), .Y(nxt_input2[1]) );
  AOI22X1 U323 ( .A(n326), .B(n123), .C(pixel_data2[5]), .D(n399), .Y(n329) );
  OAI21X1 U324 ( .A(n435), .B(n457), .C(n330), .Y(nxt_input2[0]) );
  AOI22X1 U325 ( .A(n326), .B(n122), .C(pixel_data2[4]), .D(n399), .Y(n330) );
  OAI21X1 U329 ( .A(n98), .B(n434), .C(n334), .Y(nxt_input1[3]) );
  AOI22X1 U330 ( .A(n400), .B(n121), .C(input1[3]), .D(n335), .Y(n334) );
  OAI21X1 U331 ( .A(n106), .B(n433), .C(n336), .Y(nxt_input1[2]) );
  AOI22X1 U332 ( .A(n400), .B(n124), .C(input1[2]), .D(n335), .Y(n336) );
  OAI21X1 U333 ( .A(n106), .B(n432), .C(n337), .Y(nxt_input1[1]) );
  AOI22X1 U334 ( .A(n400), .B(n123), .C(input1[1]), .D(n335), .Y(n337) );
  OAI21X1 U335 ( .A(n106), .B(n431), .C(n338), .Y(nxt_input1[0]) );
  AOI22X1 U336 ( .A(n400), .B(n122), .C(input1[0]), .D(n335), .Y(n338) );
  NOR2X1 U344 ( .A(n117), .B(n218), .Y(n339) );
  NAND2X1 U345 ( .A(n332), .B(n219), .Y(n218) );
  NAND3X1 U346 ( .A(n239), .B(n75), .C(n342), .Y(n219) );
  NOR2X1 U347 ( .A(n446), .B(n444), .Y(n342) );
  NAND3X1 U348 ( .A(layer2State[4]), .B(n439), .C(n441), .Y(n332) );
  NAND2X1 U359 ( .A(n246), .B(n441), .Y(n229) );
  NOR2X1 U360 ( .A(n439), .B(layer2State[4]), .Y(n246) );
  NAND3X1 U381 ( .A(layer2State[4]), .B(n439), .C(n442), .Y(n244) );
  NAND3X1 U385 ( .A(n131), .B(n443), .C(layer2State[0]), .Y(n217) );
  NAND3X1 U386 ( .A(n130), .B(n444), .C(n371), .Y(n222) );
  NOR2X1 U387 ( .A(n341), .B(n74), .Y(n371) );
  NAND2X1 U388 ( .A(layer2State[0]), .B(layer2State[4]), .Y(n341) );
  NAND3X1 U423 ( .A(n439), .B(n446), .C(n441), .Y(n253) );
  NAND3X1 U424 ( .A(n74), .B(n130), .C(layer2State[3]), .Y(n343) );
  NAND3X1 U426 ( .A(layer2State[0]), .B(n130), .C(n445), .Y(n223) );
  NAND3X1 U427 ( .A(layer2State[3]), .B(n446), .C(n75), .Y(n251) );
  NAND3X1 U428 ( .A(n439), .B(n446), .C(n442), .Y(n256) );
  NAND3X1 U429 ( .A(n131), .B(n444), .C(n75), .Y(n340) );
  NAND2X1 U442 ( .A(n239), .B(n443), .Y(n255) );
  NAND3X1 U443 ( .A(n74), .B(n444), .C(layer2State[4]), .Y(n391) );
  NOR2X1 U444 ( .A(n131), .B(layer2State[0]), .Y(n239) );
  flex_counter_NUM_CNT_BITS6 inputCounter ( .clk(clk), .n_rst(n142), .clear(
        neuronClear), .count_enable(inc_input), .rollover_val({n71, 1'b0, 1'b0, 
        n71, n73, 1'b0}), .count_out({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, N712, N711, N710}), 
        .rollover_flag(input_rollover) );
  flex_counter_NUM_CNT_BITS4_6 flashCounter ( .clk(clk), .n_rst(n143), .clear(
        flashClear), .count_enable(1'b1), .rollover_val({1'b1, 1'b0, 1'b1, 
        1'b1}), .count_out(flash_counter) );
  flex_counter_NUM_CNT_BITS9 flashAddressCounter ( .clk(clk), .n_rst(n142), 
        .clear(data_ready), .count_enable(addr_en), .rollover_val({1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .count_out(
        flash_address[8:0]) );
  flex_counter_NUM_CNT_BITS4_5 neuronCounter ( .clk(clk), .n_rst(n142), 
        .clear(neuronClear), .count_enable(inc_neuron), .rollover_val({n3, 
        1'b0, n401, 1'b0}), .count_out({N727, N725, N724, N723}), 
        .rollover_flag(neuron_rollover) );
  flex_counter_NUM_CNT_BITS8 detectCounter ( .clk(clk), .n_rst(n142), .clear(
        1'b0), .count_enable(n449), .rollover_val({1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1}), .rollover_flag(digit_done_nxt) );
  INVX4 U5 ( .A(n125), .Y(n268) );
  INVX4 U6 ( .A(n73), .Y(n138) );
  INVX2 U7 ( .A(n127), .Y(n128) );
  INVX2 U68 ( .A(n140), .Y(n267) );
  BUFX2 U69 ( .A(layer1State[0]), .Y(n125) );
  INVX2 U70 ( .A(n399), .Y(n98) );
  INVX2 U75 ( .A(n138), .Y(n401) );
  OR2X2 U76 ( .A(n341), .B(n343), .Y(n76) );
  BUFX2 U77 ( .A(n203), .Y(n1) );
  NAND2X1 U78 ( .A(n71), .B(n384), .Y(n2) );
  AND2X2 U79 ( .A(topState[1]), .B(n85), .Y(n3) );
  INVX2 U80 ( .A(n126), .Y(n87) );
  INVX2 U81 ( .A(layer1State[3]), .Y(n171) );
  INVX2 U82 ( .A(n71), .Y(n139) );
  INVX4 U83 ( .A(n2), .Y(n399) );
  INVX1 U84 ( .A(n343), .Y(n441) );
  INVX2 U85 ( .A(n76), .Y(n117) );
  INVX2 U86 ( .A(n324), .Y(n170) );
  NOR2X1 U87 ( .A(n323), .B(n117), .Y(n4) );
  NOR2X1 U88 ( .A(n315), .B(n316), .Y(n5) );
  INVX2 U89 ( .A(n332), .Y(n438) );
  INVX2 U90 ( .A(n85), .Y(n86) );
  AND2X2 U91 ( .A(n288), .B(n84), .Y(n6) );
  AND2X2 U92 ( .A(n132), .B(n125), .Y(n7) );
  BUFX2 U93 ( .A(layer1State[2]), .Y(n70) );
  AND2X2 U94 ( .A(n3), .B(n293), .Y(n71) );
  AND2X2 U95 ( .A(n231), .B(n437), .Y(n72) );
  NOR2X1 U96 ( .A(n72), .B(n215), .Y(n211) );
  INVX1 U97 ( .A(n211), .Y(n407) );
  AND2X2 U98 ( .A(topState[0]), .B(n3), .Y(n73) );
  INVX1 U99 ( .A(clear_nxt), .Y(n377) );
  INVX2 U100 ( .A(layer2State[1]), .Y(n74) );
  INVX2 U101 ( .A(n74), .Y(n75) );
  INVX1 U102 ( .A(n215), .Y(n77) );
  INVX2 U103 ( .A(n77), .Y(n78) );
  INVX1 U104 ( .A(n187), .Y(n79) );
  BUFX2 U105 ( .A(n331), .Y(n80) );
  INVX1 U106 ( .A(n99), .Y(n81) );
  BUFX2 U107 ( .A(n132), .Y(n82) );
  BUFX4 U108 ( .A(n140), .Y(n83) );
  AND2X1 U109 ( .A(n202), .B(n331), .Y(n84) );
  INVX2 U110 ( .A(topState[2]), .Y(n85) );
  INVX2 U111 ( .A(n87), .Y(n88) );
  AND2X1 U112 ( .A(n137), .B(n332), .Y(n89) );
  INVX1 U113 ( .A(n89), .Y(n382) );
  AOI21X1 U114 ( .A(n231), .B(n437), .C(n215), .Y(n90) );
  INVX1 U115 ( .A(n105), .Y(n91) );
  INVX2 U116 ( .A(n108), .Y(n92) );
  INVX1 U117 ( .A(layer1State[2]), .Y(n265) );
  BUFX2 U118 ( .A(n367), .Y(n93) );
  INVX1 U119 ( .A(n190), .Y(n94) );
  INVX2 U120 ( .A(n94), .Y(n95) );
  INVX2 U121 ( .A(layer1State[4]), .Y(n96) );
  INVX1 U122 ( .A(layer1State[4]), .Y(n134) );
  INVX1 U123 ( .A(n132), .Y(n97) );
  INVX1 U124 ( .A(n162), .Y(n388) );
  INVX1 U125 ( .A(layer1State[0]), .Y(n99) );
  AND2X2 U126 ( .A(n268), .B(n114), .Y(n100) );
  AND2X1 U127 ( .A(n268), .B(n114), .Y(n118) );
  INVX2 U128 ( .A(n134), .Y(n107) );
  INVX1 U129 ( .A(n170), .Y(n101) );
  INVX2 U130 ( .A(n350), .Y(n379) );
  INVX2 U131 ( .A(n135), .Y(n186) );
  AND2X2 U132 ( .A(n199), .B(n367), .Y(n102) );
  INVX1 U133 ( .A(n183), .Y(n103) );
  BUFX2 U134 ( .A(n349), .Y(n104) );
  NOR3X1 U135 ( .A(n136), .B(n171), .C(n132), .Y(n105) );
  BUFX2 U136 ( .A(n2), .Y(n106) );
  INVX2 U137 ( .A(n137), .Y(n169) );
  INVX1 U138 ( .A(n136), .Y(n108) );
  AND2X2 U139 ( .A(n280), .B(n91), .Y(n182) );
  AND2X1 U140 ( .A(n332), .B(n184), .Y(n181) );
  NAND2X1 U141 ( .A(n171), .B(n70), .Y(n109) );
  INVX2 U142 ( .A(n109), .Y(n114) );
  INVX2 U143 ( .A(n350), .Y(n110) );
  OR2X2 U144 ( .A(n315), .B(n4), .Y(n319) );
  BUFX2 U145 ( .A(layer1State[3]), .Y(n126) );
  OAI21X1 U146 ( .A(n169), .B(n381), .C(n2), .Y(n111) );
  INVX1 U147 ( .A(n281), .Y(n161) );
  NAND2X1 U148 ( .A(n122), .B(n4), .Y(n112) );
  NAND2X1 U149 ( .A(pixel_data1[4]), .B(n399), .Y(n113) );
  AND2X2 U150 ( .A(n112), .B(n113), .Y(n313) );
  NAND2X1 U151 ( .A(n296), .B(n6), .Y(n297) );
  NAND2X1 U152 ( .A(n168), .B(n7), .Y(n299) );
  BUFX2 U153 ( .A(n93), .Y(n115) );
  INVX4 U154 ( .A(n96), .Y(n132) );
  INVX1 U155 ( .A(n186), .Y(n116) );
  AND2X2 U156 ( .A(n288), .B(n202), .Y(n119) );
  AND2X2 U157 ( .A(n140), .B(n125), .Y(n120) );
  OR2X1 U158 ( .A(n380), .B(n332), .Y(n383) );
  AND2X2 U159 ( .A(sigmoidData_out[3]), .B(n128), .Y(n121) );
  AND2X2 U160 ( .A(sigmoidData_out[0]), .B(n128), .Y(n122) );
  AND2X2 U161 ( .A(sigmoidData_out[1]), .B(n128), .Y(n123) );
  AND2X2 U162 ( .A(sigmoidData_out[2]), .B(n128), .Y(n124) );
  BUFX2 U163 ( .A(n458), .Y(network_done) );
  BUFX2 U164 ( .A(n_rst), .Y(n142) );
  BUFX2 U165 ( .A(n_rst), .Y(n145) );
  AND2X1 U166 ( .A(n116), .B(n160), .Y(n263) );
  INVX1 U167 ( .A(n301), .Y(n305) );
  INVX1 U168 ( .A(layer1State[2]), .Y(n136) );
  BUFX4 U169 ( .A(layer1State[1]), .Y(n140) );
  INVX2 U170 ( .A(n384), .Y(n127) );
  INVX1 U171 ( .A(n79), .Y(n269) );
  BUFX4 U172 ( .A(n372), .Y(n129) );
  INVX2 U173 ( .A(layer2State[2]), .Y(n130) );
  INVX2 U174 ( .A(n130), .Y(n131) );
  INVX1 U175 ( .A(n324), .Y(n133) );
  INVX1 U176 ( .A(n298), .Y(n191) );
  NOR3X1 U177 ( .A(n87), .B(n136), .C(n107), .Y(n135) );
  OR2X2 U178 ( .A(n340), .B(n341), .Y(n137) );
  AND2X2 U182 ( .A(n138), .B(n129), .Y(flashClear) );
  BUFX4 U183 ( .A(n_rst), .Y(n143) );
  BUFX4 U188 ( .A(n_rst), .Y(n144) );
  INVX2 U189 ( .A(topState[1]), .Y(n286) );
  NAND3X1 U194 ( .A(n86), .B(topState[0]), .C(n286), .Y(n150) );
  INVX2 U195 ( .A(n150), .Y(n449) );
  NAND3X1 U196 ( .A(topState[0]), .B(n85), .C(n286), .Y(n154) );
  NAND2X1 U197 ( .A(n154), .B(n138), .Y(n151) );
  INVX2 U198 ( .A(n154), .Y(n148) );
  INVX2 U199 ( .A(write_en), .Y(n147) );
  INVX2 U200 ( .A(topState[0]), .Y(n293) );
  NAND3X1 U201 ( .A(n85), .B(n293), .C(n286), .Y(n314) );
  NAND2X1 U202 ( .A(n147), .B(n314), .Y(n146) );
  OAI21X1 U203 ( .A(n148), .B(n147), .C(n146), .Y(n149) );
  OAI21X1 U204 ( .A(digit_done), .B(n150), .C(n149), .Y(n155) );
  INVX2 U205 ( .A(n155), .Y(n290) );
  OAI21X1 U206 ( .A(n449), .B(n151), .C(n290), .Y(n156) );
  INVX2 U207 ( .A(n156), .Y(n152) );
  OAI21X1 U208 ( .A(n436), .B(n138), .C(n152), .Y(n153) );
  INVX2 U209 ( .A(n153), .Y(n294) );
  OAI22X1 U210 ( .A(n294), .B(n286), .C(n155), .D(n154), .Y(n393) );
  NAND3X1 U211 ( .A(n401), .B(n436), .C(n290), .Y(n158) );
  NAND2X1 U212 ( .A(n86), .B(n156), .Y(n157) );
  NAND2X1 U213 ( .A(n158), .B(n157), .Y(n392) );
  NAND3X1 U214 ( .A(n265), .B(n134), .C(n126), .Y(n324) );
  NAND2X1 U215 ( .A(n133), .B(n268), .Y(n159) );
  NAND3X1 U216 ( .A(n105), .B(n268), .C(n267), .Y(n349) );
  OAI21X1 U217 ( .A(n83), .B(n159), .C(n349), .Y(n190) );
  NAND2X1 U218 ( .A(n140), .B(n99), .Y(n281) );
  OAI21X1 U219 ( .A(n83), .B(n268), .C(n281), .Y(n160) );
  NAND2X1 U220 ( .A(n170), .B(n161), .Y(n199) );
  NAND3X1 U221 ( .A(n100), .B(n82), .C(n267), .Y(n367) );
  NAND3X1 U222 ( .A(n170), .B(n81), .C(n267), .Y(n331) );
  OAI21X1 U233 ( .A(n231), .B(n102), .C(n80), .Y(n163) );
  OR2X1 U234 ( .A(n263), .B(n163), .Y(n277) );
  NOR2X1 U235 ( .A(n95), .B(n277), .Y(n197) );
  NOR2X1 U243 ( .A(n109), .B(n140), .Y(n168) );
  NAND3X1 U258 ( .A(n120), .B(n114), .C(n97), .Y(n202) );
  INVX2 U259 ( .A(n202), .Y(n195) );
  INVX2 U263 ( .A(n231), .Y(n402) );
  NAND2X1 U264 ( .A(n120), .B(n170), .Y(n206) );
  INVX2 U265 ( .A(n199), .Y(n276) );
  NAND3X1 U266 ( .A(n265), .B(n171), .C(n132), .Y(n317) );
  INVX2 U267 ( .A(n317), .Y(n183) );
  NAND3X1 U268 ( .A(n81), .B(n183), .C(n267), .Y(n280) );
  NAND2X1 U269 ( .A(n120), .B(n183), .Y(n301) );
  AND2X2 U270 ( .A(n299), .B(n301), .Y(n176) );
  NAND3X1 U271 ( .A(n206), .B(n182), .C(n176), .Y(n295) );
  NAND2X1 U272 ( .A(n183), .B(n268), .Y(n261) );
  OAI21X1 U273 ( .A(n186), .B(n281), .C(n261), .Y(n189) );
  NAND3X1 U274 ( .A(n100), .B(n83), .C(n97), .Y(n373) );
  INVX2 U275 ( .A(n373), .Y(n187) );
  NOR3X1 U276 ( .A(n190), .B(n189), .C(n187), .Y(n203) );
  NAND2X1 U277 ( .A(n102), .B(n203), .Y(n298) );
  NAND3X1 U278 ( .A(n83), .B(n82), .C(n118), .Y(n288) );
  NAND3X1 U279 ( .A(n191), .B(n331), .C(n119), .Y(n192) );
  OAI22X1 U280 ( .A(n295), .B(n192), .C(n240), .D(n93), .Y(n200) );
  OAI21X1 U281 ( .A(n276), .B(n200), .C(n88), .Y(n193) );
  OAI21X1 U282 ( .A(neuron_rollover), .B(n206), .C(n193), .Y(n194) );
  AOI21X1 U283 ( .A(n195), .B(n402), .C(n194), .Y(n196) );
  NAND3X1 U284 ( .A(n197), .B(n299), .C(n196), .Y(nxt_layer1State[3]) );
  INVX2 U285 ( .A(n240), .Y(n198) );
  OAI22X1 U286 ( .A(n231), .B(n199), .C(n115), .D(n198), .Y(n205) );
  INVX2 U287 ( .A(n200), .Y(n201) );
  OAI21X1 U288 ( .A(n402), .B(n202), .C(n201), .Y(n275) );
  INVX2 U289 ( .A(n275), .Y(n266) );
  OAI21X1 U290 ( .A(n266), .B(n99), .C(n1), .Y(n204) );
  OR2X1 U304 ( .A(n205), .B(n204), .Y(nxt_layer1State[0]) );
  INVX2 U305 ( .A(n206), .Y(n374) );
  NAND2X1 U314 ( .A(n374), .B(neuron_rollover), .Y(n284) );
  INVX2 U315 ( .A(n284), .Y(n224) );
  AOI21X1 U316 ( .A(n107), .B(n275), .C(n224), .Y(n262) );
  OAI21X1 U326 ( .A(n226), .B(n93), .C(n301), .Y(n232) );
  INVX2 U327 ( .A(n232), .Y(n272) );
  NAND2X1 U328 ( .A(n272), .B(n280), .Y(n259) );
  AOI21X1 U337 ( .A(n120), .B(n116), .C(n259), .Y(n260) );
  NAND3X1 U338 ( .A(n262), .B(n261), .C(n260), .Y(nxt_layer1State[4]) );
  NOR2X1 U339 ( .A(n374), .B(n263), .Y(n264) );
  OAI21X1 U340 ( .A(n266), .B(n92), .C(n264), .Y(n274) );
  NAND3X1 U341 ( .A(n71), .B(n268), .C(n267), .Y(n325) );
  NOR2X1 U342 ( .A(n88), .B(n325), .Y(n271) );
  NOR2X1 U343 ( .A(n108), .B(n82), .Y(n270) );
  AOI21X1 U349 ( .A(n271), .B(n270), .C(n269), .Y(n279) );
  NAND3X1 U350 ( .A(n272), .B(n279), .C(n104), .Y(n273) );
  OR2X1 U351 ( .A(n274), .B(n273), .Y(nxt_layer1State[2]) );
  OAI21X1 U352 ( .A(n276), .B(n275), .C(n83), .Y(n285) );
  INVX2 U353 ( .A(n277), .Y(n278) );
  NAND2X1 U354 ( .A(n279), .B(n278), .Y(n282) );
  OAI21X1 U355 ( .A(n103), .B(n281), .C(n280), .Y(n395) );
  NOR2X1 U356 ( .A(n282), .B(n395), .Y(n283) );
  NAND3X1 U357 ( .A(n285), .B(n284), .C(n283), .Y(nxt_layer1State[1]) );
  NAND3X1 U358 ( .A(n86), .B(n293), .C(n286), .Y(n287) );
  INVX2 U361 ( .A(n287), .Y(n448) );
  INVX2 U362 ( .A(n288), .Y(n289) );
  NAND2X1 U363 ( .A(n289), .B(n71), .Y(n312) );
  NAND2X1 U364 ( .A(n312), .B(n314), .Y(n291) );
  OAI21X1 U365 ( .A(n448), .B(n291), .C(n290), .Y(n292) );
  OAI21X1 U366 ( .A(n294), .B(n293), .C(n292), .Y(n394) );
  INVX2 U367 ( .A(n295), .Y(n296) );
  OAI21X1 U368 ( .A(n297), .B(n298), .C(n71), .Y(n372) );
  OAI22X1 U369 ( .A(n139), .B(n299), .C(n217), .D(n138), .Y(inc_neuron) );
  INVX2 U370 ( .A(n222), .Y(n300) );
  NAND2X1 U371 ( .A(n401), .B(n300), .Y(n310) );
  INVX2 U372 ( .A(inc_neuron), .Y(n308) );
  NAND2X1 U373 ( .A(n305), .B(n71), .Y(n307) );
  NAND3X1 U374 ( .A(n310), .B(n308), .C(n307), .Y(inc_input) );
  OAI21X1 U375 ( .A(n244), .B(n138), .C(n312), .Y(neuronClear) );
  INVX2 U376 ( .A(n314), .Y(data_ready) );
  OAI22X1 U377 ( .A(n103), .B(n325), .C(n255), .D(n138), .Y(accumulate_nxt) );
  OAI22X1 U378 ( .A(n253), .B(n138), .C(n325), .D(n101), .Y(clear_nxt) );
  INVX2 U379 ( .A(bias[0]), .Y(n344) );
  OAI22X1 U380 ( .A(n229), .B(n138), .C(n139), .D(n80), .Y(n333) );
  INVX2 U382 ( .A(n333), .Y(n347) );
  MUX2X1 U383 ( .B(n411), .A(n344), .S(n347), .Y(nxt_bias[0]) );
  INVX2 U384 ( .A(bias[1]), .Y(n345) );
  MUX2X1 U389 ( .B(n426), .A(n345), .S(n347), .Y(nxt_bias[1]) );
  INVX2 U390 ( .A(bias[2]), .Y(n346) );
  MUX2X1 U391 ( .B(n425), .A(n346), .S(n347), .Y(nxt_bias[2]) );
  INVX2 U392 ( .A(bias[3]), .Y(n348) );
  MUX2X1 U393 ( .B(n424), .A(n348), .S(n347), .Y(nxt_bias[3]) );
  INVX2 U394 ( .A(weight4[0]), .Y(n351) );
  OAI22X1 U395 ( .A(n139), .B(n104), .C(n137), .D(n138), .Y(n350) );
  MUX2X1 U396 ( .B(n411), .A(n351), .S(n110), .Y(nxt_weight4[0]) );
  INVX2 U397 ( .A(weight4[1]), .Y(n352) );
  MUX2X1 U398 ( .B(n426), .A(n352), .S(n110), .Y(nxt_weight4[1]) );
  INVX2 U399 ( .A(weight4[2]), .Y(n353) );
  MUX2X1 U400 ( .B(n425), .A(n353), .S(n110), .Y(nxt_weight4[2]) );
  INVX2 U401 ( .A(weight4[3]), .Y(n354) );
  MUX2X1 U402 ( .B(n424), .A(n354), .S(n110), .Y(nxt_weight4[3]) );
  MUX2X1 U403 ( .B(flashData_out[4]), .A(weight3[0]), .S(n110), .Y(n355) );
  INVX2 U404 ( .A(n355), .Y(n423) );
  MUX2X1 U405 ( .B(flashData_out[5]), .A(weight3[1]), .S(n110), .Y(n356) );
  INVX2 U406 ( .A(n356), .Y(n422) );
  MUX2X1 U407 ( .B(flashData_out[6]), .A(weight3[2]), .S(n110), .Y(n357) );
  INVX2 U408 ( .A(n357), .Y(n421) );
  MUX2X1 U409 ( .B(flashData_out[7]), .A(weight3[3]), .S(n110), .Y(n358) );
  INVX2 U410 ( .A(n358), .Y(n420) );
  MUX2X1 U411 ( .B(flashData_out[8]), .A(weight2[0]), .S(n110), .Y(n359) );
  INVX2 U412 ( .A(n359), .Y(n419) );
  MUX2X1 U413 ( .B(flashData_out[9]), .A(weight2[1]), .S(n110), .Y(n360) );
  INVX2 U414 ( .A(n360), .Y(n418) );
  MUX2X1 U415 ( .B(flashData_out[10]), .A(weight2[2]), .S(n110), .Y(n361) );
  INVX2 U416 ( .A(n361), .Y(n417) );
  MUX2X1 U417 ( .B(flashData_out[11]), .A(weight2[3]), .S(n110), .Y(n362) );
  INVX2 U418 ( .A(n362), .Y(n416) );
  MUX2X1 U419 ( .B(flashData_out[12]), .A(weight1[0]), .S(n110), .Y(n363) );
  INVX2 U420 ( .A(n363), .Y(n415) );
  MUX2X1 U421 ( .B(flashData_out[13]), .A(weight1[1]), .S(n110), .Y(n364) );
  INVX2 U422 ( .A(n364), .Y(n414) );
  MUX2X1 U425 ( .B(flashData_out[14]), .A(weight1[2]), .S(n110), .Y(n365) );
  INVX2 U430 ( .A(n365), .Y(n413) );
  MUX2X1 U431 ( .B(flashData_out[15]), .A(weight1[3]), .S(n110), .Y(n366) );
  INVX2 U432 ( .A(n366), .Y(n412) );
  OAI22X1 U433 ( .A(n162), .B(n138), .C(n139), .D(n115), .Y(
        sigmoid_write_en_nxt) );
  INVX2 U434 ( .A(N723), .Y(n368) );
  OAI22X1 U435 ( .A(n129), .B(n368), .C(n185), .D(n138), .Y(
        sigmoid_address_nxt[0]) );
  INVX2 U436 ( .A(N724), .Y(n369) );
  OAI22X1 U437 ( .A(n129), .B(n369), .C(n181), .D(n138), .Y(
        sigmoid_address_nxt[1]) );
  INVX2 U438 ( .A(N725), .Y(n370) );
  OAI22X1 U439 ( .A(n129), .B(n370), .C(n406), .D(n138), .Y(
        sigmoid_address_nxt[2]) );
  OAI22X1 U440 ( .A(n129), .B(N726), .C(n405), .D(n138), .Y(
        sigmoid_address_nxt[3]) );
  AOI21X1 U441 ( .A(n164), .B(n165), .C(n138), .Y(sigmoid_address_nxt[4]) );
  OAI21X1 U445 ( .A(n269), .B(n374), .C(n71), .Y(n378) );
  INVX2 U446 ( .A(n256), .Y(n375) );
  OAI21X1 U447 ( .A(n440), .B(n375), .C(n401), .Y(n376) );
  NAND3X1 U448 ( .A(n378), .B(n377), .C(n376), .Y(flash_ready) );
  NAND2X1 U449 ( .A(n169), .B(n139), .Y(n385) );
  INVX2 U450 ( .A(n385), .Y(n400) );
  OAI21X1 U451 ( .A(n339), .B(n138), .C(n379), .Y(n384) );
  NAND2X1 U452 ( .A(n137), .B(n139), .Y(n380) );
  NAND2X1 U453 ( .A(n128), .B(n380), .Y(n335) );
  INVX2 U454 ( .A(n383), .Y(n326) );
  NAND2X1 U455 ( .A(n382), .B(n128), .Y(n381) );
  OAI21X1 U456 ( .A(n169), .B(n381), .C(n2), .Y(n435) );
  NAND2X1 U457 ( .A(n139), .B(n89), .Y(n323) );
  NAND3X1 U458 ( .A(n385), .B(n384), .C(n383), .Y(n315) );
  INVX2 U459 ( .A(neuron_rollover), .Y(n403) );
  OR2X1 U460 ( .A(n225), .B(n138), .Y(n397) );
  NAND2X1 U461 ( .A(n254), .B(n397), .Y(n386) );
  NOR2X1 U462 ( .A(n218), .B(n386), .Y(n233) );
  INVX2 U463 ( .A(n226), .Y(n389) );
  INVX2 U464 ( .A(n397), .Y(n387) );
  AOI21X1 U465 ( .A(n389), .B(n388), .C(n387), .Y(n390) );
  NAND3X1 U466 ( .A(n223), .B(n222), .C(n390), .Y(n209) );
  INVX2 U467 ( .A(n395), .Y(n396) );
  NOR2X1 U468 ( .A(n396), .B(n139), .Y(shift_nxt) );
  AND2X2 U469 ( .A(n408), .B(n397), .Y(n398) );
  NAND3X1 U470 ( .A(n254), .B(n398), .C(n227), .Y(nxt_layer2State[1]) );
  INVX2 U471 ( .A(N727), .Y(N726) );
  INVX2 U472 ( .A(n166), .Y(n404) );
  INVX2 U473 ( .A(n172), .Y(n405) );
  INVX2 U474 ( .A(n177), .Y(n406) );
  INVX2 U475 ( .A(n228), .Y(n408) );
  INVX2 U476 ( .A(n230), .Y(n409) );
  INVX2 U477 ( .A(flash_counter[1]), .Y(n410) );
  INVX2 U478 ( .A(flashData_out[0]), .Y(n411) );
  INVX2 U479 ( .A(flashData_out[3]), .Y(n424) );
  INVX2 U480 ( .A(flashData_out[2]), .Y(n425) );
  INVX2 U481 ( .A(flashData_out[1]), .Y(n426) );
  INVX2 U482 ( .A(pixel_data1[0]), .Y(n427) );
  INVX2 U483 ( .A(pixel_data1[1]), .Y(n428) );
  INVX2 U484 ( .A(pixel_data1[2]), .Y(n429) );
  INVX2 U485 ( .A(pixel_data1[3]), .Y(n430) );
  INVX2 U486 ( .A(pixel_data2[0]), .Y(n431) );
  INVX2 U487 ( .A(pixel_data2[1]), .Y(n432) );
  INVX2 U488 ( .A(pixel_data2[2]), .Y(n433) );
  INVX2 U489 ( .A(pixel_data2[3]), .Y(n434) );
  INVX2 U490 ( .A(n244), .Y(n436) );
  INVX2 U491 ( .A(n250), .Y(n437) );
  INVX2 U492 ( .A(layer2State[0]), .Y(n439) );
  INVX2 U493 ( .A(n223), .Y(n440) );
  INVX2 U494 ( .A(n340), .Y(n442) );
  INVX2 U495 ( .A(n391), .Y(n443) );
  INVX2 U496 ( .A(layer2State[3]), .Y(n444) );
  INVX2 U497 ( .A(n251), .Y(n445) );
  INVX2 U498 ( .A(layer2State[4]), .Y(n446) );
  INVX2 U499 ( .A(input4[3]), .Y(n450) );
  INVX2 U500 ( .A(input2[3]), .Y(n451) );
  INVX2 U501 ( .A(input4[2]), .Y(n452) );
  INVX2 U502 ( .A(input2[2]), .Y(n453) );
  INVX2 U503 ( .A(input4[1]), .Y(n454) );
  INVX2 U504 ( .A(input2[1]), .Y(n455) );
  INVX2 U505 ( .A(input4[0]), .Y(n456) );
  INVX2 U506 ( .A(input2[0]), .Y(n457) );
  AOI21X1 U507 ( .A(N724), .B(n167), .C(n117), .Y(n184) );
  AOI21X1 U508 ( .A(N723), .B(n167), .C(n117), .Y(n188) );
endmodule


module flex_counter_NUM_CNT_BITS7_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  HAX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  HAX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  HAX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  HAX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  HAX1 U1_1_1 ( .A(A[1]), .B(A[0]), .YC(carry[2]), .YS(SUM[1]) );
  INVX2 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module flex_counter_NUM_CNT_BITS7 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [6:0] rollover_val;
  output [6:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   N8, N9, N10, N11, N12, N13, N14, N33, N34, N35, N36, N37, N38, N39,
         N40, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n1, n2, n3, n4, n5, n6, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n54, n55, n56, n57, n58, n59;

  DFFSR \count_out_reg[0]  ( .D(n53), .CLK(clk), .R(n1), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR rollover_flag_reg ( .D(n52), .CLK(clk), .R(n1), .S(1'b1), .Q(
        rollover_flag) );
  DFFSR \count_out_reg[1]  ( .D(n51), .CLK(clk), .R(n1), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[2]  ( .D(n50), .CLK(clk), .R(n1), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[3]  ( .D(n49), .CLK(clk), .R(n1), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR \count_out_reg[4]  ( .D(n48), .CLK(clk), .R(n1), .S(1'b1), .Q(
        count_out[4]) );
  DFFSR \count_out_reg[5]  ( .D(n47), .CLK(clk), .R(n1), .S(1'b1), .Q(
        count_out[5]) );
  DFFSR \count_out_reg[6]  ( .D(n46), .CLK(clk), .R(n1), .S(1'b1), .Q(
        count_out[6]) );
  OAI21X1 U21 ( .A(n24), .B(n58), .C(n25), .Y(n46) );
  NAND2X1 U22 ( .A(N14), .B(n26), .Y(n25) );
  OAI21X1 U23 ( .A(n24), .B(n57), .C(n27), .Y(n47) );
  NAND2X1 U24 ( .A(N13), .B(n26), .Y(n27) );
  OAI21X1 U25 ( .A(n24), .B(n56), .C(n28), .Y(n48) );
  NAND2X1 U26 ( .A(N12), .B(n26), .Y(n28) );
  OAI21X1 U27 ( .A(n24), .B(n55), .C(n29), .Y(n49) );
  NAND2X1 U28 ( .A(N11), .B(n26), .Y(n29) );
  OAI21X1 U29 ( .A(n24), .B(n54), .C(n30), .Y(n50) );
  NAND2X1 U30 ( .A(N10), .B(n26), .Y(n30) );
  OAI21X1 U31 ( .A(n24), .B(n23), .C(n31), .Y(n51) );
  NAND2X1 U32 ( .A(N9), .B(n26), .Y(n31) );
  OAI22X1 U33 ( .A(n24), .B(n22), .C(n32), .D(n33), .Y(n52) );
  NAND3X1 U34 ( .A(n34), .B(n35), .C(n36), .Y(n33) );
  NOR2X1 U35 ( .A(n37), .B(n38), .Y(n36) );
  XNOR2X1 U36 ( .A(n21), .B(N33), .Y(n38) );
  XNOR2X1 U37 ( .A(n58), .B(N39), .Y(n37) );
  XNOR2X1 U38 ( .A(count_out[2]), .B(N35), .Y(n35) );
  XNOR2X1 U39 ( .A(count_out[1]), .B(N34), .Y(n34) );
  NAND3X1 U40 ( .A(n39), .B(n40), .C(n41), .Y(n32) );
  NOR2X1 U41 ( .A(n42), .B(n43), .Y(n41) );
  XNOR2X1 U42 ( .A(n57), .B(N38), .Y(n43) );
  XNOR2X1 U43 ( .A(n55), .B(N36), .Y(n42) );
  XNOR2X1 U44 ( .A(count_out[4]), .B(N37), .Y(n40) );
  NOR2X1 U45 ( .A(N40), .B(n44), .Y(n39) );
  OAI21X1 U46 ( .A(n24), .B(n21), .C(n45), .Y(n53) );
  NAND2X1 U47 ( .A(N8), .B(n26), .Y(n45) );
  NOR2X1 U48 ( .A(n44), .B(rollover_flag), .Y(n26) );
  NAND2X1 U49 ( .A(n59), .B(n44), .Y(n24) );
  NAND2X1 U50 ( .A(count_enable), .B(n59), .Y(n44) );
  flex_counter_NUM_CNT_BITS7_DW01_inc_0 add_590 ( .A(count_out), .SUM({N14, 
        N13, N12, N11, N10, N9, N8}) );
  INVX2 U7 ( .A(n2), .Y(n1) );
  INVX2 U12 ( .A(n_rst), .Y(n2) );
  NOR2X1 U13 ( .A(rollover_val[1]), .B(rollover_val[0]), .Y(n4) );
  AOI21X1 U14 ( .A(rollover_val[0]), .B(rollover_val[1]), .C(n4), .Y(n3) );
  NAND2X1 U15 ( .A(n4), .B(n19), .Y(n5) );
  OAI21X1 U16 ( .A(n4), .B(n19), .C(n5), .Y(N35) );
  NOR2X1 U17 ( .A(n5), .B(rollover_val[3]), .Y(n15) );
  AOI21X1 U18 ( .A(n5), .B(rollover_val[3]), .C(n15), .Y(n6) );
  NAND2X1 U19 ( .A(n15), .B(n18), .Y(n16) );
  OAI21X1 U20 ( .A(n15), .B(n18), .C(n16), .Y(N37) );
  XNOR2X1 U51 ( .A(rollover_val[5]), .B(n16), .Y(N38) );
  NOR3X1 U52 ( .A(rollover_val[5]), .B(rollover_val[6]), .C(n16), .Y(N40) );
  OAI21X1 U53 ( .A(rollover_val[5]), .B(n16), .C(rollover_val[6]), .Y(n17) );
  NAND2X1 U54 ( .A(n20), .B(n17), .Y(N39) );
  INVX2 U55 ( .A(rollover_val[4]), .Y(n18) );
  INVX2 U56 ( .A(rollover_val[2]), .Y(n19) );
  INVX2 U57 ( .A(rollover_val[0]), .Y(N33) );
  INVX2 U58 ( .A(n3), .Y(N34) );
  INVX2 U59 ( .A(N40), .Y(n20) );
  INVX2 U60 ( .A(n6), .Y(N36) );
  INVX2 U61 ( .A(count_out[0]), .Y(n21) );
  INVX2 U62 ( .A(rollover_flag), .Y(n22) );
  INVX2 U63 ( .A(count_out[1]), .Y(n23) );
  INVX2 U64 ( .A(count_out[2]), .Y(n54) );
  INVX2 U65 ( .A(count_out[3]), .Y(n55) );
  INVX2 U66 ( .A(count_out[4]), .Y(n56) );
  INVX2 U67 ( .A(count_out[5]), .Y(n57) );
  INVX2 U68 ( .A(count_out[6]), .Y(n58) );
  INVX2 U69 ( .A(clear), .Y(n59) );
endmodule


module flex_counter_NUM_CNT_BITS4_4 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   N24, N25, N26, N27, N28, n1, n2, n3, n4, n5, n6, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64;

  DFFSR \count_out_reg[0]  ( .D(n20), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR rollover_flag_reg ( .D(n46), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  DFFSR \count_out_reg[1]  ( .D(n43), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[2]  ( .D(n44), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[3]  ( .D(n45), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  OAI22X1 U18 ( .A(n64), .B(n15), .C(n63), .D(n62), .Y(n46) );
  NAND3X1 U19 ( .A(n61), .B(n60), .C(n59), .Y(n62) );
  XOR2X1 U20 ( .A(n17), .B(N26), .Y(n59) );
  XOR2X1 U21 ( .A(n14), .B(N24), .Y(n60) );
  XOR2X1 U22 ( .A(n16), .B(N25), .Y(n61) );
  NAND2X1 U23 ( .A(n58), .B(n57), .Y(n63) );
  XOR2X1 U24 ( .A(n18), .B(N27), .Y(n57) );
  NOR2X1 U25 ( .A(N28), .B(n56), .Y(n58) );
  OAI21X1 U26 ( .A(n55), .B(n18), .C(n54), .Y(n45) );
  NAND3X1 U27 ( .A(n53), .B(n52), .C(n51), .Y(n54) );
  NOR2X1 U28 ( .A(count_out[3]), .B(n17), .Y(n51) );
  AOI21X1 U29 ( .A(n53), .B(n17), .C(n50), .Y(n55) );
  OAI21X1 U30 ( .A(n12), .B(n17), .C(n49), .Y(n44) );
  NAND3X1 U31 ( .A(n52), .B(n17), .C(n53), .Y(n49) );
  OAI21X1 U32 ( .A(n52), .B(n13), .C(n64), .Y(n50) );
  NOR2X1 U33 ( .A(n16), .B(n14), .Y(n52) );
  OAI21X1 U34 ( .A(n6), .B(n16), .C(n48), .Y(n43) );
  NAND3X1 U35 ( .A(count_out[0]), .B(n16), .C(n53), .Y(n48) );
  OAI21X1 U36 ( .A(n13), .B(count_out[0]), .C(n64), .Y(n47) );
  OAI22X1 U37 ( .A(n14), .B(n64), .C(count_out[0]), .D(n13), .Y(n20) );
  NOR2X1 U38 ( .A(n56), .B(rollover_flag), .Y(n53) );
  NAND2X1 U39 ( .A(n19), .B(n56), .Y(n64) );
  NAND2X1 U40 ( .A(count_enable), .B(n19), .Y(n56) );
  NOR2X1 U7 ( .A(rollover_val[1]), .B(rollover_val[0]), .Y(n2) );
  AOI21X1 U9 ( .A(rollover_val[0]), .B(rollover_val[1]), .C(n2), .Y(n1) );
  NAND2X1 U10 ( .A(n2), .B(n5), .Y(n3) );
  OAI21X1 U11 ( .A(n2), .B(n5), .C(n3), .Y(N26) );
  NOR2X1 U12 ( .A(n3), .B(rollover_val[3]), .Y(N28) );
  AOI21X1 U13 ( .A(n3), .B(rollover_val[3]), .C(N28), .Y(n4) );
  INVX2 U14 ( .A(rollover_val[2]), .Y(n5) );
  INVX2 U15 ( .A(rollover_val[0]), .Y(N24) );
  INVX2 U16 ( .A(n4), .Y(N27) );
  INVX2 U17 ( .A(n1), .Y(N25) );
  INVX2 U41 ( .A(n47), .Y(n6) );
  INVX2 U42 ( .A(n50), .Y(n12) );
  INVX2 U43 ( .A(n53), .Y(n13) );
  INVX2 U44 ( .A(count_out[0]), .Y(n14) );
  INVX2 U45 ( .A(rollover_flag), .Y(n15) );
  INVX2 U46 ( .A(count_out[1]), .Y(n16) );
  INVX2 U47 ( .A(count_out[2]), .Y(n17) );
  INVX2 U48 ( .A(count_out[3]), .Y(n18) );
  INVX2 U49 ( .A(clear), .Y(n19) );
endmodule


module gen_stp_sr_NUM_BITS8_SHIFT_MSB0 ( clk, n_rst, shift_enable, serial_in, 
        parallel_out );
  output [7:0] parallel_out;
  input clk, n_rst, shift_enable, serial_in;
  wire   n3, n10, n12, n14, n16, n18, n20, n22, n24, n26, n1, n2, n4, n5, n6,
         n7, n8, n9, n27;

  DFFSR \temp_reg[7]  ( .D(n26), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[7]) );
  DFFSR \temp_reg[6]  ( .D(n24), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[6]) );
  DFFSR \temp_reg[5]  ( .D(n22), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[5]) );
  DFFSR \temp_reg[4]  ( .D(n20), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[4]) );
  DFFSR \temp_reg[3]  ( .D(n18), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[3]) );
  DFFSR \temp_reg[2]  ( .D(n16), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[2]) );
  DFFSR \temp_reg[1]  ( .D(n14), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[1]) );
  DFFSR \temp_reg[0]  ( .D(n12), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[0]) );
  OAI21X1 U2 ( .A(n27), .B(n2), .C(n3), .Y(n12) );
  NAND2X1 U3 ( .A(parallel_out[0]), .B(n2), .Y(n3) );
  OAI22X1 U4 ( .A(n2), .B(n9), .C(n1), .D(n27), .Y(n14) );
  OAI22X1 U6 ( .A(n2), .B(n8), .C(n1), .D(n9), .Y(n16) );
  OAI22X1 U8 ( .A(n2), .B(n7), .C(n1), .D(n8), .Y(n18) );
  OAI22X1 U10 ( .A(n2), .B(n6), .C(n1), .D(n7), .Y(n20) );
  OAI22X1 U12 ( .A(n2), .B(n5), .C(n1), .D(n6), .Y(n22) );
  OAI22X1 U14 ( .A(n2), .B(n4), .C(n1), .D(n5), .Y(n24) );
  OAI21X1 U17 ( .A(n1), .B(n4), .C(n10), .Y(n26) );
  NAND2X1 U18 ( .A(serial_in), .B(n1), .Y(n10) );
  BUFX2 U5 ( .A(shift_enable), .Y(n1) );
  INVX2 U7 ( .A(n1), .Y(n2) );
  INVX2 U9 ( .A(parallel_out[7]), .Y(n4) );
  INVX2 U11 ( .A(parallel_out[6]), .Y(n5) );
  INVX2 U13 ( .A(parallel_out[5]), .Y(n6) );
  INVX2 U15 ( .A(parallel_out[4]), .Y(n7) );
  INVX2 U16 ( .A(parallel_out[3]), .Y(n8) );
  INVX2 U19 ( .A(parallel_out[2]), .Y(n9) );
  INVX2 U28 ( .A(parallel_out[1]), .Y(n27) );
endmodule


module gen_sync_1 ( clk, n_rst, async_in, sync_out );
  input clk, n_rst, async_in;
  output sync_out;
  wire   temp_out;

  DFFSR temp_out_reg ( .D(async_in), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        temp_out) );
  DFFSR sync_out_reg ( .D(temp_out), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sync_out) );
endmodule


module gen_sync_0 ( clk, n_rst, async_in, sync_out );
  input clk, n_rst, async_in;
  output sync_out;
  wire   temp_out;

  DFFSR temp_out_reg ( .D(async_in), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        temp_out) );
  DFFSR sync_out_reg ( .D(temp_out), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        sync_out) );
endmodule


module gen_pos_edge_detect ( clk, n_rst, sig, sig_edge );
  input clk, n_rst, sig;
  output sig_edge;
  wire   sync_out, prev_sig, n2;

  DFFSR prev_sig_reg ( .D(sync_out), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        prev_sig) );
  NOR2X1 U5 ( .A(prev_sig), .B(n2), .Y(sig_edge) );
  gen_sync_0 sync_posedge ( .clk(clk), .n_rst(n_rst), .async_in(sig), 
        .sync_out(sync_out) );
  INVX2 U4 ( .A(sync_out), .Y(n2) );
endmodule


module SPI_input_controller ( clk, n_rst, MOSI, SCK, SS, data_ready, shift_SPI, 
        SPI_in, write_en, calculate_cost, expected_label, sig_edge );
  output [7:0] SPI_in;
  output [9:0] expected_label;
  input clk, n_rst, MOSI, SCK, SS, data_ready;
  output shift_SPI, write_en, calculate_cost, sig_edge;
  wire   pixel_rollover, flag_long, sync_out, async_in, sig, delay2, flag, N60,
         n1, n4, n6, n8, n9, n10, n11, n13, n14, n15, n18, n20, n22, n23, n25,
         n26, n27, n29, n30, n31, n32, n33, n35, n36, n37, n38, n39, n40, n44,
         n45, n46, n47, n50, n51, n52, n73, n75, n77, n79, n81, n83, n85, n87,
         n91, n94, n95, n96, n2, n3, n5, n7, n12, n16, n17, n19, n21, n24, n28,
         n34, n41, n42, n43, n48, n49, n53, n54, n55, n89, n90, n92, n93, n97,
         n98;
  wire   [7:0] parallel_out;
  wire   [2:0] state;
  wire   [0:9] temp_label;

  DFFSR delay1_reg ( .D(flag), .CLK(clk), .R(n7), .S(1'b1), .Q(N60) );
  DFFSR \SPI_in_reg[7]  ( .D(n87), .CLK(clk), .R(1'b1), .S(n7), .Q(SPI_in[7])
         );
  DFFSR \SPI_in_reg[0]  ( .D(n85), .CLK(clk), .R(1'b1), .S(n7), .Q(SPI_in[0])
         );
  DFFSR \SPI_in_reg[1]  ( .D(n83), .CLK(clk), .R(1'b1), .S(n7), .Q(SPI_in[1])
         );
  DFFSR \SPI_in_reg[2]  ( .D(n81), .CLK(clk), .R(1'b1), .S(n7), .Q(SPI_in[2])
         );
  DFFSR \SPI_in_reg[3]  ( .D(n79), .CLK(clk), .R(1'b1), .S(n7), .Q(SPI_in[3])
         );
  DFFSR \SPI_in_reg[4]  ( .D(n77), .CLK(clk), .R(1'b1), .S(n7), .Q(SPI_in[4])
         );
  DFFSR \SPI_in_reg[5]  ( .D(n75), .CLK(clk), .R(1'b1), .S(n7), .Q(SPI_in[5])
         );
  DFFSR \SPI_in_reg[6]  ( .D(n73), .CLK(clk), .R(1'b1), .S(n7), .Q(SPI_in[6])
         );
  DFFSR \expected_label_reg[4]  ( .D(temp_label[5]), .CLK(clk), .R(n7), .S(
        1'b1), .Q(expected_label[4]) );
  DFFSR \expected_label_reg[5]  ( .D(temp_label[4]), .CLK(clk), .R(n7), .S(
        1'b1), .Q(expected_label[5]) );
  DFFSR \expected_label_reg[3]  ( .D(temp_label[6]), .CLK(clk), .R(n7), .S(
        1'b1), .Q(expected_label[3]) );
  DFFSR \expected_label_reg[2]  ( .D(temp_label[7]), .CLK(clk), .R(n7), .S(
        1'b1), .Q(expected_label[2]) );
  DFFSR \expected_label_reg[6]  ( .D(temp_label[3]), .CLK(clk), .R(n7), .S(
        1'b1), .Q(expected_label[6]) );
  DFFSR \expected_label_reg[7]  ( .D(temp_label[2]), .CLK(clk), .R(n7), .S(
        1'b1), .Q(expected_label[7]) );
  DFFSR \expected_label_reg[8]  ( .D(n28), .CLK(clk), .R(n7), .S(1'b1), .Q(
        expected_label[8]) );
  DFFSR \expected_label_reg[9]  ( .D(n24), .CLK(clk), .R(n7), .S(1'b1), .Q(
        expected_label[9]) );
  DFFSR \expected_label_reg[0]  ( .D(temp_label[9]), .CLK(clk), .R(n7), .S(
        1'b1), .Q(expected_label[0]) );
  DFFSR \expected_label_reg[1]  ( .D(temp_label[8]), .CLK(clk), .R(n7), .S(
        1'b1), .Q(expected_label[1]) );
  DFFSR delay2_reg ( .D(n3), .CLK(clk), .R(n7), .S(1'b1), .Q(delay2) );
  DFFSR shift_SPI_reg ( .D(delay2), .CLK(clk), .R(n7), .S(1'b1), .Q(shift_SPI)
         );
  DFFSR \state_reg[1]  ( .D(n94), .CLK(clk), .R(n7), .S(1'b1), .Q(state[1]) );
  DFFSR \state_reg[0]  ( .D(n95), .CLK(clk), .R(n7), .S(1'b1), .Q(state[0]) );
  DFFSR \state_reg[2]  ( .D(n96), .CLK(clk), .R(n7), .S(1'b1), .Q(state[2]) );
  DFFSR calculate_cost_reg ( .D(n90), .CLK(clk), .R(n7), .S(1'b1), .Q(
        calculate_cost) );
  NOR2X1 U3 ( .A(n1), .B(n42), .Y(temp_label[9]) );
  NOR2X1 U4 ( .A(SPI_in[0]), .B(n1), .Y(temp_label[8]) );
  NAND3X1 U5 ( .A(SPI_in[3]), .B(n41), .C(n4), .Y(n1) );
  NOR2X1 U6 ( .A(SPI_in[2]), .B(SPI_in[1]), .Y(n4) );
  NOR2X1 U7 ( .A(n43), .B(n6), .Y(temp_label[7]) );
  NAND2X1 U8 ( .A(n21), .B(SPI_in[0]), .Y(n6) );
  NOR2X1 U9 ( .A(n43), .B(n8), .Y(temp_label[6]) );
  NAND2X1 U10 ( .A(n21), .B(n42), .Y(n8) );
  NOR2X1 U12 ( .A(n9), .B(n10), .Y(temp_label[5]) );
  NAND2X1 U13 ( .A(SPI_in[0]), .B(n43), .Y(n10) );
  NOR2X1 U14 ( .A(n9), .B(n11), .Y(temp_label[4]) );
  NAND2X1 U15 ( .A(n42), .B(n43), .Y(n11) );
  NAND3X1 U16 ( .A(n41), .B(n49), .C(SPI_in[2]), .Y(n9) );
  NOR2X1 U17 ( .A(n13), .B(n14), .Y(temp_label[3]) );
  NAND2X1 U18 ( .A(SPI_in[1]), .B(SPI_in[0]), .Y(n14) );
  NOR2X1 U19 ( .A(n13), .B(n15), .Y(temp_label[2]) );
  NAND2X1 U20 ( .A(SPI_in[1]), .B(n42), .Y(n15) );
  OAI21X1 U22 ( .A(N60), .B(n55), .C(n18), .Y(n73) );
  NAND2X1 U23 ( .A(parallel_out[6]), .B(n3), .Y(n18) );
  OAI21X1 U25 ( .A(N60), .B(n54), .C(n20), .Y(n75) );
  NAND2X1 U26 ( .A(parallel_out[5]), .B(n3), .Y(n20) );
  OAI21X1 U27 ( .A(N60), .B(n53), .C(n22), .Y(n77) );
  NAND2X1 U28 ( .A(parallel_out[4]), .B(n3), .Y(n22) );
  OAI21X1 U29 ( .A(N60), .B(n49), .C(n23), .Y(n79) );
  NAND2X1 U30 ( .A(parallel_out[3]), .B(n3), .Y(n23) );
  OAI21X1 U31 ( .A(N60), .B(n48), .C(n25), .Y(n81) );
  NAND2X1 U32 ( .A(parallel_out[2]), .B(n3), .Y(n25) );
  OAI21X1 U33 ( .A(n3), .B(n43), .C(n26), .Y(n83) );
  NAND2X1 U34 ( .A(parallel_out[1]), .B(n3), .Y(n26) );
  OAI21X1 U35 ( .A(n3), .B(n42), .C(n27), .Y(n85) );
  NAND2X1 U36 ( .A(parallel_out[0]), .B(n3), .Y(n27) );
  OAI21X1 U37 ( .A(n3), .B(n19), .C(n29), .Y(n87) );
  NAND2X1 U38 ( .A(parallel_out[7]), .B(n3), .Y(n29) );
  NAND3X1 U41 ( .A(n31), .B(n32), .C(n33), .Y(n94) );
  OAI21X1 U42 ( .A(n17), .B(state[2]), .C(state[1]), .Y(n33) );
  NAND3X1 U44 ( .A(pixel_rollover), .B(write_en), .C(shift_SPI), .Y(n31) );
  NAND3X1 U45 ( .A(n32), .B(n30), .C(n36), .Y(n95) );
  AOI22X1 U46 ( .A(n37), .B(n38), .C(state[0]), .D(n39), .Y(n36) );
  NOR2X1 U47 ( .A(state[1]), .B(state[0]), .Y(n38) );
  NAND3X1 U50 ( .A(n42), .B(n43), .C(n34), .Y(n40) );
  NAND3X1 U52 ( .A(n93), .B(n92), .C(state[2]), .Y(n30) );
  NAND3X1 U53 ( .A(n91), .B(n28), .C(data_ready), .Y(n32) );
  NAND3X1 U55 ( .A(SPI_in[0]), .B(n43), .C(n34), .Y(n44) );
  NAND3X1 U57 ( .A(n48), .B(n49), .C(n41), .Y(n13) );
  NAND3X1 U59 ( .A(n53), .B(n54), .C(n46), .Y(n45) );
  NOR2X1 U60 ( .A(SPI_in[7]), .B(SPI_in[6]), .Y(n46) );
  NOR2X1 U66 ( .A(n47), .B(state[0]), .Y(n91) );
  OAI21X1 U67 ( .A(n12), .B(n97), .C(n50), .Y(n96) );
  NAND3X1 U68 ( .A(state[0]), .B(n35), .C(state[1]), .Y(n50) );
  NAND3X1 U70 ( .A(n51), .B(n35), .C(n52), .Y(n39) );
  OAI21X1 U71 ( .A(n16), .B(n89), .C(write_en), .Y(n52) );
  NOR2X1 U72 ( .A(n93), .B(n47), .Y(write_en) );
  NAND3X1 U75 ( .A(n47), .B(n2), .C(state[0]), .Y(n35) );
  NAND2X1 U77 ( .A(n97), .B(n92), .Y(n47) );
  OAI21X1 U80 ( .A(state[1]), .B(n93), .C(state[2]), .Y(n51) );
  AND2X2 U21 ( .A(SCK), .B(n98), .Y(sig) );
  AND2X2 U48 ( .A(data_ready), .B(n24), .Y(n37) );
  AND2X2 U82 ( .A(sig_edge), .B(flag_long), .Y(flag) );
  AND2X2 U83 ( .A(MOSI), .B(n98), .Y(async_in) );
  flex_counter_NUM_CNT_BITS7 spi_input_7bit_counter ( .clk(clk), .n_rst(n5), 
        .clear(n91), .count_enable(n3), .rollover_val({1'b1, 1'b0, 1'b0, 1'b1, 
        1'b0, 1'b0, 1'b0}), .rollover_flag(pixel_rollover) );
  flex_counter_NUM_CNT_BITS4_4 spi_input_4bit_counter ( .clk(clk), .n_rst(n5), 
        .clear(1'b0), .count_enable(sig_edge), .rollover_val({1'b0, 1'b1, 1'b1, 
        1'b1}), .rollover_flag(flag_long) );
  gen_stp_sr_NUM_BITS8_SHIFT_MSB0 spi_input_stpsr ( .clk(clk), .n_rst(n5), 
        .shift_enable(sig_edge), .serial_in(sync_out), .parallel_out(
        parallel_out) );
  gen_sync_1 spi_input_sync ( .clk(clk), .n_rst(n5), .async_in(async_in), 
        .sync_out(sync_out) );
  gen_pos_edge_detect spi_input_pos_edge ( .clk(clk), .n_rst(n5), .sig(sig), 
        .sig_edge(sig_edge) );
  INVX2 U11 ( .A(n2), .Y(n3) );
  INVX2 U24 ( .A(N60), .Y(n2) );
  BUFX2 U39 ( .A(n_rst), .Y(n5) );
  BUFX4 U40 ( .A(n_rst), .Y(n7) );
  INVX2 U43 ( .A(n39), .Y(n12) );
  INVX2 U49 ( .A(pixel_rollover), .Y(n16) );
  INVX2 U51 ( .A(n35), .Y(n17) );
  INVX2 U54 ( .A(SPI_in[7]), .Y(n19) );
  INVX2 U56 ( .A(n9), .Y(n21) );
  INVX2 U58 ( .A(n40), .Y(n24) );
  INVX2 U61 ( .A(n44), .Y(n28) );
  INVX2 U62 ( .A(n13), .Y(n34) );
  INVX2 U63 ( .A(n45), .Y(n41) );
  INVX2 U64 ( .A(SPI_in[0]), .Y(n42) );
  INVX2 U65 ( .A(SPI_in[1]), .Y(n43) );
  INVX2 U69 ( .A(SPI_in[2]), .Y(n48) );
  INVX2 U73 ( .A(SPI_in[3]), .Y(n49) );
  INVX2 U74 ( .A(SPI_in[4]), .Y(n53) );
  INVX2 U76 ( .A(SPI_in[5]), .Y(n54) );
  INVX2 U78 ( .A(SPI_in[6]), .Y(n55) );
  INVX2 U79 ( .A(shift_SPI), .Y(n89) );
  INVX2 U81 ( .A(n30), .Y(n90) );
  INVX2 U84 ( .A(state[1]), .Y(n92) );
  INVX2 U110 ( .A(state[0]), .Y(n93) );
  INVX2 U111 ( .A(state[2]), .Y(n97) );
  INVX2 U112 ( .A(SS), .Y(n98) );
endmodule


module flex_counter_NUM_CNT_BITS4_3 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   N24, N25, N26, N27, N28, n1, n2, n3, n4, n5, n6, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64;

  DFFSR \count_out_reg[0]  ( .D(n20), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR rollover_flag_reg ( .D(n46), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  DFFSR \count_out_reg[1]  ( .D(n43), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[2]  ( .D(n44), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[3]  ( .D(n45), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  OAI22X1 U18 ( .A(n64), .B(n16), .C(n63), .D(n62), .Y(n46) );
  NAND3X1 U19 ( .A(n61), .B(n60), .C(n59), .Y(n62) );
  XOR2X1 U20 ( .A(n18), .B(N26), .Y(n59) );
  XOR2X1 U21 ( .A(n12), .B(N24), .Y(n60) );
  XOR2X1 U22 ( .A(n17), .B(N25), .Y(n61) );
  NAND2X1 U23 ( .A(n58), .B(n57), .Y(n63) );
  XOR2X1 U24 ( .A(n19), .B(N27), .Y(n57) );
  NOR2X1 U25 ( .A(N28), .B(n56), .Y(n58) );
  OAI21X1 U26 ( .A(n55), .B(n19), .C(n54), .Y(n45) );
  NAND3X1 U27 ( .A(n53), .B(n52), .C(n51), .Y(n54) );
  NOR2X1 U28 ( .A(count_out[3]), .B(n18), .Y(n51) );
  AOI21X1 U29 ( .A(n53), .B(n18), .C(n50), .Y(n55) );
  OAI21X1 U30 ( .A(n6), .B(n18), .C(n49), .Y(n44) );
  NAND3X1 U31 ( .A(n52), .B(n18), .C(n53), .Y(n49) );
  OAI21X1 U32 ( .A(n52), .B(n14), .C(n64), .Y(n50) );
  NOR2X1 U33 ( .A(n17), .B(n12), .Y(n52) );
  OAI21X1 U34 ( .A(n13), .B(n17), .C(n48), .Y(n43) );
  NAND3X1 U35 ( .A(count_out[0]), .B(n17), .C(n53), .Y(n48) );
  OAI21X1 U36 ( .A(n14), .B(count_out[0]), .C(n64), .Y(n47) );
  OAI22X1 U37 ( .A(n12), .B(n64), .C(count_out[0]), .D(n14), .Y(n20) );
  NOR2X1 U38 ( .A(n56), .B(rollover_flag), .Y(n53) );
  NAND2X1 U39 ( .A(n15), .B(n56), .Y(n64) );
  NAND2X1 U40 ( .A(count_enable), .B(n15), .Y(n56) );
  NOR2X1 U7 ( .A(rollover_val[1]), .B(rollover_val[0]), .Y(n2) );
  AOI21X1 U9 ( .A(rollover_val[0]), .B(rollover_val[1]), .C(n2), .Y(n1) );
  NAND2X1 U10 ( .A(n2), .B(n5), .Y(n3) );
  OAI21X1 U11 ( .A(n2), .B(n5), .C(n3), .Y(N26) );
  NOR2X1 U12 ( .A(n3), .B(rollover_val[3]), .Y(N28) );
  AOI21X1 U13 ( .A(n3), .B(rollover_val[3]), .C(N28), .Y(n4) );
  INVX2 U14 ( .A(rollover_val[2]), .Y(n5) );
  INVX2 U15 ( .A(rollover_val[0]), .Y(N24) );
  INVX2 U16 ( .A(n1), .Y(N25) );
  INVX2 U17 ( .A(n4), .Y(N27) );
  INVX2 U41 ( .A(n50), .Y(n6) );
  INVX2 U42 ( .A(count_out[0]), .Y(n12) );
  INVX2 U43 ( .A(n47), .Y(n13) );
  INVX2 U44 ( .A(n53), .Y(n14) );
  INVX2 U45 ( .A(clear), .Y(n15) );
  INVX2 U46 ( .A(rollover_flag), .Y(n16) );
  INVX2 U47 ( .A(count_out[1]), .Y(n17) );
  INVX2 U48 ( .A(count_out[2]), .Y(n18) );
  INVX2 U49 ( .A(count_out[3]), .Y(n19) );
endmodule


module gen_pts_sr_NUM_BITS8_SHIFT_MSB0 ( clk, n_rst, shift_enable, load_enable, 
        parallel_in, serial_out );
  input [7:0] parallel_in;
  input clk, n_rst, shift_enable, load_enable;
  output serial_out;
  wire   n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n37;
  wire   [7:1] temp;

  DFFSR \temp_reg[7]  ( .D(n30), .CLK(clk), .R(1'b1), .S(n_rst), .Q(temp[7])
         );
  DFFSR \temp_reg[6]  ( .D(n31), .CLK(clk), .R(1'b1), .S(n_rst), .Q(temp[6])
         );
  DFFSR \temp_reg[5]  ( .D(n32), .CLK(clk), .R(1'b1), .S(n_rst), .Q(temp[5])
         );
  DFFSR \temp_reg[4]  ( .D(n33), .CLK(clk), .R(1'b1), .S(n_rst), .Q(temp[4])
         );
  DFFSR \temp_reg[3]  ( .D(n34), .CLK(clk), .R(1'b1), .S(n_rst), .Q(temp[3])
         );
  DFFSR \temp_reg[2]  ( .D(n35), .CLK(clk), .R(1'b1), .S(n_rst), .Q(temp[2])
         );
  DFFSR \temp_reg[1]  ( .D(n36), .CLK(clk), .R(1'b1), .S(n_rst), .Q(temp[1])
         );
  DFFSR \temp_reg[0]  ( .D(n29), .CLK(clk), .R(1'b1), .S(n_rst), .Q(serial_out) );
  OAI21X1 U21 ( .A(n19), .B(n18), .C(n20), .Y(n29) );
  AOI22X1 U22 ( .A(temp[1]), .B(n10), .C(parallel_in[0]), .D(n9), .Y(n20) );
  OAI21X1 U23 ( .A(n19), .B(n11), .C(n21), .Y(n30) );
  NAND2X1 U24 ( .A(parallel_in[7]), .B(n9), .Y(n21) );
  OAI21X1 U25 ( .A(n19), .B(n12), .C(n22), .Y(n31) );
  AOI22X1 U26 ( .A(temp[7]), .B(n10), .C(parallel_in[6]), .D(n9), .Y(n22) );
  OAI21X1 U27 ( .A(n19), .B(n13), .C(n23), .Y(n32) );
  AOI22X1 U28 ( .A(temp[6]), .B(n10), .C(parallel_in[5]), .D(n9), .Y(n23) );
  OAI21X1 U29 ( .A(n19), .B(n14), .C(n24), .Y(n33) );
  AOI22X1 U30 ( .A(temp[5]), .B(n10), .C(parallel_in[4]), .D(n9), .Y(n24) );
  OAI21X1 U31 ( .A(n19), .B(n15), .C(n25), .Y(n34) );
  AOI22X1 U32 ( .A(temp[4]), .B(n10), .C(parallel_in[3]), .D(n9), .Y(n25) );
  OAI21X1 U33 ( .A(n19), .B(n16), .C(n26), .Y(n35) );
  AOI22X1 U34 ( .A(temp[3]), .B(n10), .C(parallel_in[2]), .D(n9), .Y(n26) );
  OAI21X1 U35 ( .A(n17), .B(n19), .C(n27), .Y(n36) );
  AOI22X1 U36 ( .A(temp[2]), .B(n10), .C(parallel_in[1]), .D(n9), .Y(n27) );
  NAND2X1 U37 ( .A(n37), .B(n28), .Y(n19) );
  NAND2X1 U38 ( .A(shift_enable), .B(n37), .Y(n28) );
  BUFX2 U11 ( .A(load_enable), .Y(n9) );
  INVX2 U12 ( .A(n28), .Y(n10) );
  INVX2 U13 ( .A(temp[7]), .Y(n11) );
  INVX2 U14 ( .A(temp[6]), .Y(n12) );
  INVX2 U15 ( .A(temp[5]), .Y(n13) );
  INVX2 U16 ( .A(temp[4]), .Y(n14) );
  INVX2 U17 ( .A(temp[3]), .Y(n15) );
  INVX2 U18 ( .A(temp[2]), .Y(n16) );
  INVX2 U19 ( .A(temp[1]), .Y(n17) );
  INVX2 U20 ( .A(serial_out), .Y(n18) );
  INVX2 U39 ( .A(n9), .Y(n37) );
endmodule


module SPI_output_controller ( clk, n_rst, shift_SPI, sig_edge, SPI_in, SCK, 
        SS, network_done, data_ready, cost_ready, cost_output, detected_digit, 
        MISO );
  input [7:0] SPI_in;
  input [7:0] cost_output;
  input [3:0] detected_digit;
  input clk, n_rst, shift_SPI, sig_edge, SCK, SS, network_done, data_ready,
         cost_ready;
  output MISO;
  wire   flag_long, flag_short, load_en, serial_data, n1, n6, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n22, n23, n26, n27, n31,
         n32, n33, n34, n35, n36, n37, n39, n46, n47, n2, n3, n4, n5, n7, n21,
         n24, n25, n28, n29, n30, n38, n40, n41, n45;
  wire   [2:0] state;
  wire   [7:0] parallel_data;
  tri   MISO;

  DFFSR \state_reg[0]  ( .D(n4), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[0])
         );
  DFFSR \state_reg[1]  ( .D(n46), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[1])
         );
  DFFSR \state_reg[2]  ( .D(n47), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[2])
         );
  OAI21X1 U3 ( .A(n1), .B(n28), .C(data_ready), .Y(parallel_data[7]) );
  OAI21X1 U5 ( .A(n1), .B(n25), .C(data_ready), .Y(parallel_data[6]) );
  OAI21X1 U7 ( .A(n1), .B(n24), .C(data_ready), .Y(parallel_data[5]) );
  OAI21X1 U9 ( .A(n1), .B(n21), .C(data_ready), .Y(parallel_data[4]) );
  NAND2X1 U11 ( .A(n6), .B(data_ready), .Y(parallel_data[3]) );
  AOI22X1 U12 ( .A(cost_output[3]), .B(n2), .C(detected_digit[3]), .D(n1), .Y(
        n6) );
  NAND2X1 U13 ( .A(n8), .B(data_ready), .Y(parallel_data[2]) );
  AOI22X1 U14 ( .A(cost_output[2]), .B(n2), .C(detected_digit[2]), .D(n1), .Y(
        n8) );
  NAND2X1 U15 ( .A(n9), .B(data_ready), .Y(parallel_data[1]) );
  AOI22X1 U16 ( .A(cost_output[1]), .B(n2), .C(detected_digit[1]), .D(n1), .Y(
        n9) );
  NAND2X1 U17 ( .A(n10), .B(data_ready), .Y(parallel_data[0]) );
  AOI22X1 U18 ( .A(cost_output[0]), .B(n2), .C(detected_digit[0]), .D(n1), .Y(
        n10) );
  AOI21X1 U20 ( .A(state[0]), .B(n12), .C(n13), .Y(n11) );
  OAI21X1 U21 ( .A(n14), .B(n15), .C(n16), .Y(n13) );
  NAND3X1 U22 ( .A(SPI_in[0]), .B(n17), .C(n18), .Y(n15) );
  NOR2X1 U24 ( .A(SPI_in[2]), .B(SPI_in[1]), .Y(n19) );
  NAND3X1 U25 ( .A(n20), .B(n40), .C(n22), .Y(n14) );
  NOR2X1 U26 ( .A(SPI_in[6]), .B(n23), .Y(n22) );
  OR2X1 U27 ( .A(state[2]), .B(SPI_in[7]), .Y(n23) );
  NOR2X1 U29 ( .A(SPI_in[5]), .B(SPI_in[4]), .Y(n20) );
  OAI21X1 U30 ( .A(n5), .B(n30), .C(n26), .Y(n46) );
  AOI21X1 U31 ( .A(n27), .B(cost_ready), .C(n29), .Y(n26) );
  NAND3X1 U33 ( .A(n17), .B(n38), .C(network_done), .Y(n16) );
  NOR2X1 U34 ( .A(flag_short), .B(n1), .Y(n27) );
  OAI21X1 U35 ( .A(n3), .B(n38), .C(n31), .Y(n47) );
  OAI21X1 U37 ( .A(n1), .B(n32), .C(n5), .Y(n12) );
  OAI21X1 U39 ( .A(flag_short), .B(n34), .C(n35), .Y(n33) );
  AOI22X1 U40 ( .A(n36), .B(n37), .C(n17), .D(n41), .Y(n35) );
  NOR2X1 U42 ( .A(n17), .B(n2), .Y(n37) );
  NOR2X1 U44 ( .A(state[0]), .B(state[1]), .Y(n17) );
  NAND3X1 U46 ( .A(state[0]), .B(n38), .C(state[1]), .Y(n31) );
  NAND2X1 U47 ( .A(n39), .B(n38), .Y(n34) );
  OR2X1 U48 ( .A(flag_short), .B(cost_ready), .Y(n32) );
  NAND3X1 U49 ( .A(n30), .B(n38), .C(state[0]), .Y(n1) );
  NOR2X1 U51 ( .A(state[2]), .B(n39), .Y(load_en) );
  NOR2X1 U52 ( .A(n30), .B(state[0]), .Y(n39) );
  AND2X2 U23 ( .A(n19), .B(data_ready), .Y(n18) );
  AND2X2 U45 ( .A(n34), .B(n31), .Y(n36) );
  AND2X2 U54 ( .A(shift_SPI), .B(flag_long), .Y(flag_short) );
  flex_counter_NUM_CNT_BITS4_3 spi_input_4bit_counter ( .clk(clk), .n_rst(
        n_rst), .clear(flag_short), .count_enable(shift_SPI), .rollover_val({
        1'b1, 1'b0, 1'b0, 1'b0}), .rollover_flag(flag_long) );
  gen_pts_sr_NUM_BITS8_SHIFT_MSB0 spi_output_ptssr ( .clk(clk), .n_rst(n_rst), 
        .shift_enable(sig_edge), .load_enable(load_en), .parallel_in(
        parallel_data), .serial_out(serial_data) );
  TBUFX1 MISO_tri ( .A(n7), .EN(n45), .Y(MISO) );
  INVX2 U4 ( .A(n1), .Y(n2) );
  INVX2 U6 ( .A(n12), .Y(n3) );
  INVX2 U8 ( .A(n11), .Y(n4) );
  INVX2 U10 ( .A(n33), .Y(n5) );
  INVX2 U19 ( .A(serial_data), .Y(n7) );
  INVX2 U28 ( .A(cost_output[4]), .Y(n21) );
  INVX2 U32 ( .A(cost_output[5]), .Y(n24) );
  INVX2 U36 ( .A(cost_output[6]), .Y(n25) );
  INVX2 U38 ( .A(cost_output[7]), .Y(n28) );
  INVX2 U41 ( .A(n16), .Y(n29) );
  INVX2 U43 ( .A(state[1]), .Y(n30) );
  INVX2 U50 ( .A(state[2]), .Y(n38) );
  INVX2 U53 ( .A(SPI_in[3]), .Y(n40) );
  INVX2 U55 ( .A(shift_SPI), .Y(n41) );
  INVX2 U56 ( .A(SS), .Y(n45) );
endmodule


module pixelData_PTPSR_71 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n2, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n1) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n3) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(n4) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(n5) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n6) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n7) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n8) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n9) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n9), .Y(n12) );
  INVX2 U10 ( .A(n8), .Y(n13) );
  INVX2 U12 ( .A(n7), .Y(n14) );
  INVX2 U14 ( .A(n6), .Y(n15) );
  INVX2 U16 ( .A(n5), .Y(n16) );
  INVX2 U18 ( .A(n4), .Y(n17) );
  INVX2 U19 ( .A(n3), .Y(n18) );
  INVX2 U20 ( .A(n1), .Y(n19) );
endmodule


module pixelData_PTPSR_70 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_69 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_68 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_67 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_66 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_65 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_64 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_63 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_62 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_61 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_60 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_59 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_58 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_57 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_56 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_55 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_54 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_53 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_52 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_51 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_50 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_49 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_48 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_47 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_46 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_45 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_44 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_43 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_42 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_41 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_40 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_39 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_38 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_37 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_36 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_35 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_34 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_33 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_32 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_31 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_30 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_29 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_28 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_27 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_26 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_25 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_24 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_23 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_22 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_21 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_20 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_19 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_18 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_17 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_16 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_15 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_14 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_13 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_12 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_11 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_10 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_9 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_8 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_7 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_6 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_5 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_4 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_3 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_2 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_1 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData_PTPSR_0 ( shift_en, clk, parallel_in, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input shift_en, clk;
  wire   n2, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27;

  DFFPOSX1 \currentData_reg[7]  ( .D(n12), .CLK(clk), .Q(parallel_out[7]) );
  DFFPOSX1 \currentData_reg[6]  ( .D(n13), .CLK(clk), .Q(parallel_out[6]) );
  DFFPOSX1 \currentData_reg[5]  ( .D(n14), .CLK(clk), .Q(parallel_out[5]) );
  DFFPOSX1 \currentData_reg[4]  ( .D(n15), .CLK(clk), .Q(parallel_out[4]) );
  DFFPOSX1 \currentData_reg[3]  ( .D(n16), .CLK(clk), .Q(parallel_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n17), .CLK(clk), .Q(parallel_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n18), .CLK(clk), .Q(parallel_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n19), .CLK(clk), .Q(parallel_out[0]) );
  AOI22X1 U3 ( .A(n10), .B(parallel_in[0]), .C(parallel_out[0]), .D(n11), .Y(
        n27) );
  AOI22X1 U5 ( .A(parallel_in[1]), .B(n10), .C(parallel_out[1]), .D(n11), .Y(
        n26) );
  AOI22X1 U7 ( .A(parallel_in[2]), .B(n2), .C(parallel_out[2]), .D(n11), .Y(
        n25) );
  AOI22X1 U9 ( .A(parallel_in[3]), .B(n2), .C(parallel_out[3]), .D(n11), .Y(
        n24) );
  AOI22X1 U11 ( .A(parallel_in[4]), .B(n10), .C(parallel_out[4]), .D(n11), .Y(
        n23) );
  AOI22X1 U13 ( .A(parallel_in[5]), .B(n10), .C(parallel_out[5]), .D(n11), .Y(
        n22) );
  AOI22X1 U15 ( .A(parallel_in[6]), .B(n10), .C(parallel_out[6]), .D(n11), .Y(
        n21) );
  AOI22X1 U17 ( .A(parallel_in[7]), .B(n2), .C(parallel_out[7]), .D(n11), .Y(
        n20) );
  INVX2 U2 ( .A(n2), .Y(n11) );
  BUFX2 U4 ( .A(shift_en), .Y(n2) );
  BUFX2 U6 ( .A(shift_en), .Y(n10) );
  INVX2 U8 ( .A(n20), .Y(n12) );
  INVX2 U10 ( .A(n21), .Y(n13) );
  INVX2 U12 ( .A(n22), .Y(n14) );
  INVX2 U14 ( .A(n23), .Y(n15) );
  INVX2 U16 ( .A(n24), .Y(n16) );
  INVX2 U18 ( .A(n25), .Y(n17) );
  INVX2 U19 ( .A(n26), .Y(n18) );
  INVX2 U20 ( .A(n27), .Y(n19) );
endmodule


module pixelData ( clk, shift_SPI, shift_network, network_calc, write_en, 
        spi_in, pixel_data_1, pixel_data_2 );
  input [7:0] spi_in;
  output [7:0] pixel_data_1;
  output [7:0] pixel_data_2;
  input clk, shift_SPI, shift_network, network_calc, write_en;
  wire   chooseShift_reg, n12, n13, n14, n15, n16, n17, n18, n19, n20, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53;
  wire   [575:0] pixelData;

  DFFPOSX1 chooseShift_reg_reg ( .D(n52), .CLK(clk), .Q(chooseShift_reg) );
  DFFPOSX1 \pixel_data_1_reg[0]  ( .D(pixelData[560]), .CLK(clk), .Q(
        pixel_data_1[0]) );
  DFFPOSX1 \pixel_data_1_reg[1]  ( .D(pixelData[561]), .CLK(clk), .Q(
        pixel_data_1[1]) );
  DFFPOSX1 \pixel_data_1_reg[2]  ( .D(pixelData[562]), .CLK(clk), .Q(
        pixel_data_1[2]) );
  DFFPOSX1 \pixel_data_1_reg[3]  ( .D(pixelData[563]), .CLK(clk), .Q(
        pixel_data_1[3]) );
  DFFPOSX1 \pixel_data_1_reg[4]  ( .D(pixelData[564]), .CLK(clk), .Q(
        pixel_data_1[4]) );
  DFFPOSX1 \pixel_data_1_reg[5]  ( .D(pixelData[565]), .CLK(clk), .Q(
        pixel_data_1[5]) );
  DFFPOSX1 \pixel_data_1_reg[6]  ( .D(pixelData[566]), .CLK(clk), .Q(
        pixel_data_1[6]) );
  DFFPOSX1 \pixel_data_1_reg[7]  ( .D(pixelData[567]), .CLK(clk), .Q(
        pixel_data_1[7]) );
  DFFPOSX1 \pixel_data_2_reg[0]  ( .D(pixelData[568]), .CLK(clk), .Q(
        pixel_data_2[0]) );
  DFFPOSX1 \pixel_data_2_reg[1]  ( .D(pixelData[569]), .CLK(clk), .Q(
        pixel_data_2[1]) );
  DFFPOSX1 \pixel_data_2_reg[2]  ( .D(pixelData[570]), .CLK(clk), .Q(
        pixel_data_2[2]) );
  DFFPOSX1 \pixel_data_2_reg[3]  ( .D(pixelData[571]), .CLK(clk), .Q(
        pixel_data_2[3]) );
  DFFPOSX1 \pixel_data_2_reg[4]  ( .D(pixelData[572]), .CLK(clk), .Q(
        pixel_data_2[4]) );
  DFFPOSX1 \pixel_data_2_reg[5]  ( .D(pixelData[573]), .CLK(clk), .Q(
        pixel_data_2[5]) );
  DFFPOSX1 \pixel_data_2_reg[6]  ( .D(pixelData[574]), .CLK(clk), .Q(
        pixel_data_2[6]) );
  DFFPOSX1 \pixel_data_2_reg[7]  ( .D(pixelData[575]), .CLK(clk), .Q(
        pixel_data_2[7]) );
  AOI22X1 U14 ( .A(shift_SPI), .B(n53), .C(shift_network), .D(network_calc), 
        .Y(n12) );
  AOI22X1 U15 ( .A(pixelData[575]), .B(n1), .C(n2), .D(spi_in[7]), .Y(n13) );
  AOI22X1 U16 ( .A(pixelData[574]), .B(n1), .C(spi_in[6]), .D(n2), .Y(n14) );
  AOI22X1 U17 ( .A(pixelData[573]), .B(n1), .C(spi_in[5]), .D(n2), .Y(n15) );
  AOI22X1 U18 ( .A(pixelData[572]), .B(n1), .C(spi_in[4]), .D(n2), .Y(n16) );
  AOI22X1 U19 ( .A(pixelData[571]), .B(n1), .C(spi_in[3]), .D(n2), .Y(n17) );
  AOI22X1 U20 ( .A(pixelData[570]), .B(n1), .C(spi_in[2]), .D(n2), .Y(n18) );
  AOI22X1 U21 ( .A(pixelData[569]), .B(n1), .C(spi_in[1]), .D(n2), .Y(n19) );
  AOI22X1 U22 ( .A(pixelData[568]), .B(n1), .C(spi_in[0]), .D(n2), .Y(n20) );
  pixelData_PTPSR_71 firstReg ( .shift_en(n43), .clk(clk), .parallel_in({n44, 
        n45, n46, n47, n48, n49, n50, n51}), .parallel_out(pixelData[7:0]) );
  pixelData_PTPSR_70 \genblk1[1].dataReg  ( .shift_en(n11), .clk(clk), 
        .parallel_in(pixelData[7:0]), .parallel_out(pixelData[15:8]) );
  pixelData_PTPSR_69 \genblk1[2].dataReg  ( .shift_en(n11), .clk(clk), 
        .parallel_in(pixelData[15:8]), .parallel_out(pixelData[23:16]) );
  pixelData_PTPSR_68 \genblk1[3].dataReg  ( .shift_en(n11), .clk(clk), 
        .parallel_in(pixelData[23:16]), .parallel_out(pixelData[31:24]) );
  pixelData_PTPSR_67 \genblk1[4].dataReg  ( .shift_en(n21), .clk(clk), 
        .parallel_in(pixelData[31:24]), .parallel_out(pixelData[39:32]) );
  pixelData_PTPSR_66 \genblk1[5].dataReg  ( .shift_en(n21), .clk(clk), 
        .parallel_in(pixelData[39:32]), .parallel_out(pixelData[47:40]) );
  pixelData_PTPSR_65 \genblk1[6].dataReg  ( .shift_en(n21), .clk(clk), 
        .parallel_in(pixelData[47:40]), .parallel_out(pixelData[55:48]) );
  pixelData_PTPSR_64 \genblk1[7].dataReg  ( .shift_en(n22), .clk(clk), 
        .parallel_in(pixelData[55:48]), .parallel_out(pixelData[63:56]) );
  pixelData_PTPSR_63 \genblk1[8].dataReg  ( .shift_en(n22), .clk(clk), 
        .parallel_in(pixelData[63:56]), .parallel_out(pixelData[71:64]) );
  pixelData_PTPSR_62 \genblk1[9].dataReg  ( .shift_en(n22), .clk(clk), 
        .parallel_in(pixelData[71:64]), .parallel_out(pixelData[79:72]) );
  pixelData_PTPSR_61 \genblk1[10].dataReg  ( .shift_en(n23), .clk(clk), 
        .parallel_in(pixelData[79:72]), .parallel_out(pixelData[87:80]) );
  pixelData_PTPSR_60 \genblk1[11].dataReg  ( .shift_en(n23), .clk(clk), 
        .parallel_in(pixelData[87:80]), .parallel_out(pixelData[95:88]) );
  pixelData_PTPSR_59 \genblk1[12].dataReg  ( .shift_en(n23), .clk(clk), 
        .parallel_in(pixelData[95:88]), .parallel_out(pixelData[103:96]) );
  pixelData_PTPSR_58 \genblk1[13].dataReg  ( .shift_en(n24), .clk(clk), 
        .parallel_in(pixelData[103:96]), .parallel_out(pixelData[111:104]) );
  pixelData_PTPSR_57 \genblk1[14].dataReg  ( .shift_en(n24), .clk(clk), 
        .parallel_in(pixelData[111:104]), .parallel_out(pixelData[119:112]) );
  pixelData_PTPSR_56 \genblk1[15].dataReg  ( .shift_en(n24), .clk(clk), 
        .parallel_in(pixelData[119:112]), .parallel_out(pixelData[127:120]) );
  pixelData_PTPSR_55 \genblk1[16].dataReg  ( .shift_en(n25), .clk(clk), 
        .parallel_in(pixelData[127:120]), .parallel_out(pixelData[135:128]) );
  pixelData_PTPSR_54 \genblk1[17].dataReg  ( .shift_en(n25), .clk(clk), 
        .parallel_in(pixelData[135:128]), .parallel_out(pixelData[143:136]) );
  pixelData_PTPSR_53 \genblk1[18].dataReg  ( .shift_en(n25), .clk(clk), 
        .parallel_in(pixelData[143:136]), .parallel_out(pixelData[151:144]) );
  pixelData_PTPSR_52 \genblk1[19].dataReg  ( .shift_en(n26), .clk(clk), 
        .parallel_in(pixelData[151:144]), .parallel_out(pixelData[159:152]) );
  pixelData_PTPSR_51 \genblk1[20].dataReg  ( .shift_en(n26), .clk(clk), 
        .parallel_in(pixelData[159:152]), .parallel_out(pixelData[167:160]) );
  pixelData_PTPSR_50 \genblk1[21].dataReg  ( .shift_en(n26), .clk(clk), 
        .parallel_in(pixelData[167:160]), .parallel_out(pixelData[175:168]) );
  pixelData_PTPSR_49 \genblk1[22].dataReg  ( .shift_en(n27), .clk(clk), 
        .parallel_in(pixelData[175:168]), .parallel_out(pixelData[183:176]) );
  pixelData_PTPSR_48 \genblk1[23].dataReg  ( .shift_en(n27), .clk(clk), 
        .parallel_in(pixelData[183:176]), .parallel_out(pixelData[191:184]) );
  pixelData_PTPSR_47 \genblk1[24].dataReg  ( .shift_en(n27), .clk(clk), 
        .parallel_in(pixelData[191:184]), .parallel_out(pixelData[199:192]) );
  pixelData_PTPSR_46 \genblk1[25].dataReg  ( .shift_en(n28), .clk(clk), 
        .parallel_in(pixelData[199:192]), .parallel_out(pixelData[207:200]) );
  pixelData_PTPSR_45 \genblk1[26].dataReg  ( .shift_en(n28), .clk(clk), 
        .parallel_in(pixelData[207:200]), .parallel_out(pixelData[215:208]) );
  pixelData_PTPSR_44 \genblk1[27].dataReg  ( .shift_en(n28), .clk(clk), 
        .parallel_in(pixelData[215:208]), .parallel_out(pixelData[223:216]) );
  pixelData_PTPSR_43 \genblk1[28].dataReg  ( .shift_en(n29), .clk(clk), 
        .parallel_in(pixelData[223:216]), .parallel_out(pixelData[231:224]) );
  pixelData_PTPSR_42 \genblk1[29].dataReg  ( .shift_en(n29), .clk(clk), 
        .parallel_in(pixelData[231:224]), .parallel_out(pixelData[239:232]) );
  pixelData_PTPSR_41 \genblk1[30].dataReg  ( .shift_en(n29), .clk(clk), 
        .parallel_in(pixelData[239:232]), .parallel_out(pixelData[247:240]) );
  pixelData_PTPSR_40 \genblk1[31].dataReg  ( .shift_en(n30), .clk(clk), 
        .parallel_in(pixelData[247:240]), .parallel_out(pixelData[255:248]) );
  pixelData_PTPSR_39 \genblk1[32].dataReg  ( .shift_en(n30), .clk(clk), 
        .parallel_in(pixelData[255:248]), .parallel_out(pixelData[263:256]) );
  pixelData_PTPSR_38 \genblk1[33].dataReg  ( .shift_en(n30), .clk(clk), 
        .parallel_in(pixelData[263:256]), .parallel_out(pixelData[271:264]) );
  pixelData_PTPSR_37 \genblk1[34].dataReg  ( .shift_en(n31), .clk(clk), 
        .parallel_in(pixelData[271:264]), .parallel_out(pixelData[279:272]) );
  pixelData_PTPSR_36 \genblk1[35].dataReg  ( .shift_en(n31), .clk(clk), 
        .parallel_in(pixelData[279:272]), .parallel_out(pixelData[287:280]) );
  pixelData_PTPSR_35 \genblk1[36].dataReg  ( .shift_en(n31), .clk(clk), 
        .parallel_in(pixelData[287:280]), .parallel_out(pixelData[295:288]) );
  pixelData_PTPSR_34 \genblk1[37].dataReg  ( .shift_en(n32), .clk(clk), 
        .parallel_in(pixelData[295:288]), .parallel_out(pixelData[303:296]) );
  pixelData_PTPSR_33 \genblk1[38].dataReg  ( .shift_en(n32), .clk(clk), 
        .parallel_in(pixelData[303:296]), .parallel_out(pixelData[311:304]) );
  pixelData_PTPSR_32 \genblk1[39].dataReg  ( .shift_en(n32), .clk(clk), 
        .parallel_in(pixelData[311:304]), .parallel_out(pixelData[319:312]) );
  pixelData_PTPSR_31 \genblk1[40].dataReg  ( .shift_en(n33), .clk(clk), 
        .parallel_in(pixelData[319:312]), .parallel_out(pixelData[327:320]) );
  pixelData_PTPSR_30 \genblk1[41].dataReg  ( .shift_en(n33), .clk(clk), 
        .parallel_in(pixelData[327:320]), .parallel_out(pixelData[335:328]) );
  pixelData_PTPSR_29 \genblk1[42].dataReg  ( .shift_en(n33), .clk(clk), 
        .parallel_in(pixelData[335:328]), .parallel_out(pixelData[343:336]) );
  pixelData_PTPSR_28 \genblk1[43].dataReg  ( .shift_en(n34), .clk(clk), 
        .parallel_in(pixelData[343:336]), .parallel_out(pixelData[351:344]) );
  pixelData_PTPSR_27 \genblk1[44].dataReg  ( .shift_en(n34), .clk(clk), 
        .parallel_in(pixelData[351:344]), .parallel_out(pixelData[359:352]) );
  pixelData_PTPSR_26 \genblk1[45].dataReg  ( .shift_en(n34), .clk(clk), 
        .parallel_in(pixelData[359:352]), .parallel_out(pixelData[367:360]) );
  pixelData_PTPSR_25 \genblk1[46].dataReg  ( .shift_en(n35), .clk(clk), 
        .parallel_in(pixelData[367:360]), .parallel_out(pixelData[375:368]) );
  pixelData_PTPSR_24 \genblk1[47].dataReg  ( .shift_en(n35), .clk(clk), 
        .parallel_in(pixelData[375:368]), .parallel_out(pixelData[383:376]) );
  pixelData_PTPSR_23 \genblk1[48].dataReg  ( .shift_en(n35), .clk(clk), 
        .parallel_in(pixelData[383:376]), .parallel_out(pixelData[391:384]) );
  pixelData_PTPSR_22 \genblk1[49].dataReg  ( .shift_en(n36), .clk(clk), 
        .parallel_in(pixelData[391:384]), .parallel_out(pixelData[399:392]) );
  pixelData_PTPSR_21 \genblk1[50].dataReg  ( .shift_en(n36), .clk(clk), 
        .parallel_in(pixelData[399:392]), .parallel_out(pixelData[407:400]) );
  pixelData_PTPSR_20 \genblk1[51].dataReg  ( .shift_en(n36), .clk(clk), 
        .parallel_in(pixelData[407:400]), .parallel_out(pixelData[415:408]) );
  pixelData_PTPSR_19 \genblk1[52].dataReg  ( .shift_en(n37), .clk(clk), 
        .parallel_in(pixelData[415:408]), .parallel_out(pixelData[423:416]) );
  pixelData_PTPSR_18 \genblk1[53].dataReg  ( .shift_en(n37), .clk(clk), 
        .parallel_in(pixelData[423:416]), .parallel_out(pixelData[431:424]) );
  pixelData_PTPSR_17 \genblk1[54].dataReg  ( .shift_en(n37), .clk(clk), 
        .parallel_in(pixelData[431:424]), .parallel_out(pixelData[439:432]) );
  pixelData_PTPSR_16 \genblk1[55].dataReg  ( .shift_en(n38), .clk(clk), 
        .parallel_in(pixelData[439:432]), .parallel_out(pixelData[447:440]) );
  pixelData_PTPSR_15 \genblk1[56].dataReg  ( .shift_en(n38), .clk(clk), 
        .parallel_in(pixelData[447:440]), .parallel_out(pixelData[455:448]) );
  pixelData_PTPSR_14 \genblk1[57].dataReg  ( .shift_en(n38), .clk(clk), 
        .parallel_in(pixelData[455:448]), .parallel_out(pixelData[463:456]) );
  pixelData_PTPSR_13 \genblk1[58].dataReg  ( .shift_en(n39), .clk(clk), 
        .parallel_in(pixelData[463:456]), .parallel_out(pixelData[471:464]) );
  pixelData_PTPSR_12 \genblk1[59].dataReg  ( .shift_en(n39), .clk(clk), 
        .parallel_in(pixelData[471:464]), .parallel_out(pixelData[479:472]) );
  pixelData_PTPSR_11 \genblk1[60].dataReg  ( .shift_en(n39), .clk(clk), 
        .parallel_in(pixelData[479:472]), .parallel_out(pixelData[487:480]) );
  pixelData_PTPSR_10 \genblk1[61].dataReg  ( .shift_en(n40), .clk(clk), 
        .parallel_in(pixelData[487:480]), .parallel_out(pixelData[495:488]) );
  pixelData_PTPSR_9 \genblk1[62].dataReg  ( .shift_en(n40), .clk(clk), 
        .parallel_in(pixelData[495:488]), .parallel_out(pixelData[503:496]) );
  pixelData_PTPSR_8 \genblk1[63].dataReg  ( .shift_en(n40), .clk(clk), 
        .parallel_in(pixelData[503:496]), .parallel_out(pixelData[511:504]) );
  pixelData_PTPSR_7 \genblk1[64].dataReg  ( .shift_en(n41), .clk(clk), 
        .parallel_in(pixelData[511:504]), .parallel_out(pixelData[519:512]) );
  pixelData_PTPSR_6 \genblk1[65].dataReg  ( .shift_en(n41), .clk(clk), 
        .parallel_in(pixelData[519:512]), .parallel_out(pixelData[527:520]) );
  pixelData_PTPSR_5 \genblk1[66].dataReg  ( .shift_en(n41), .clk(clk), 
        .parallel_in(pixelData[527:520]), .parallel_out(pixelData[535:528]) );
  pixelData_PTPSR_4 \genblk1[67].dataReg  ( .shift_en(n42), .clk(clk), 
        .parallel_in(pixelData[535:528]), .parallel_out(pixelData[543:536]) );
  pixelData_PTPSR_3 \genblk1[68].dataReg  ( .shift_en(n42), .clk(clk), 
        .parallel_in(pixelData[543:536]), .parallel_out(pixelData[551:544]) );
  pixelData_PTPSR_2 \genblk1[69].dataReg  ( .shift_en(n42), .clk(clk), 
        .parallel_in(pixelData[551:544]), .parallel_out(pixelData[559:552]) );
  pixelData_PTPSR_1 \genblk1[70].dataReg  ( .shift_en(n43), .clk(clk), 
        .parallel_in(pixelData[559:552]), .parallel_out(pixelData[567:560]) );
  pixelData_PTPSR_0 \genblk1[71].dataReg  ( .shift_en(n43), .clk(clk), 
        .parallel_in(pixelData[567:560]), .parallel_out(pixelData[575:568]) );
  INVX2 U3 ( .A(n1), .Y(n2) );
  INVX2 U4 ( .A(write_en), .Y(n1) );
  BUFX2 U5 ( .A(n3), .Y(n11) );
  BUFX2 U6 ( .A(n3), .Y(n21) );
  BUFX2 U7 ( .A(n3), .Y(n22) );
  BUFX2 U8 ( .A(n4), .Y(n23) );
  BUFX2 U9 ( .A(n4), .Y(n24) );
  BUFX2 U10 ( .A(n4), .Y(n25) );
  BUFX2 U11 ( .A(n5), .Y(n26) );
  BUFX2 U12 ( .A(n5), .Y(n27) );
  BUFX2 U13 ( .A(n5), .Y(n28) );
  BUFX2 U23 ( .A(n6), .Y(n29) );
  BUFX2 U24 ( .A(n6), .Y(n30) );
  BUFX2 U25 ( .A(n6), .Y(n31) );
  BUFX2 U26 ( .A(n7), .Y(n32) );
  BUFX2 U27 ( .A(n7), .Y(n33) );
  BUFX2 U28 ( .A(n7), .Y(n34) );
  BUFX2 U29 ( .A(n8), .Y(n35) );
  BUFX2 U30 ( .A(n8), .Y(n36) );
  BUFX2 U31 ( .A(n8), .Y(n37) );
  BUFX2 U32 ( .A(n9), .Y(n38) );
  BUFX2 U33 ( .A(n9), .Y(n39) );
  BUFX2 U34 ( .A(n9), .Y(n40) );
  BUFX2 U35 ( .A(n10), .Y(n41) );
  BUFX2 U36 ( .A(n10), .Y(n42) );
  BUFX2 U37 ( .A(n10), .Y(n43) );
  BUFX2 U38 ( .A(chooseShift_reg), .Y(n3) );
  BUFX2 U39 ( .A(chooseShift_reg), .Y(n4) );
  BUFX2 U40 ( .A(chooseShift_reg), .Y(n5) );
  BUFX2 U41 ( .A(chooseShift_reg), .Y(n6) );
  BUFX2 U42 ( .A(chooseShift_reg), .Y(n7) );
  BUFX2 U43 ( .A(chooseShift_reg), .Y(n8) );
  BUFX2 U44 ( .A(chooseShift_reg), .Y(n9) );
  BUFX2 U45 ( .A(chooseShift_reg), .Y(n10) );
  INVX2 U46 ( .A(n13), .Y(n44) );
  INVX2 U47 ( .A(n14), .Y(n45) );
  INVX2 U48 ( .A(n15), .Y(n46) );
  INVX2 U49 ( .A(n16), .Y(n47) );
  INVX2 U50 ( .A(n17), .Y(n48) );
  INVX2 U51 ( .A(n18), .Y(n49) );
  INVX2 U52 ( .A(n19), .Y(n50) );
  INVX2 U53 ( .A(n20), .Y(n51) );
  INVX2 U54 ( .A(n12), .Y(n52) );
  INVX2 U55 ( .A(network_calc), .Y(n53) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS0 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n2, n10, n11, n12, n13;

  DFFPOSX1 \currentData_reg[3]  ( .D(n2), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n10), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n11), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n12), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n13), .C(data_out[0]), .D(n3), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n13), .C(data_out[1]), .D(n3), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n13), .C(data_out[2]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n13), .C(data_out[3]), .D(n3), .Y(n6) );
  NAND3X1 U11 ( .A(n7), .B(write_en), .C(n8), .Y(n3) );
  NOR2X1 U12 ( .A(address_in[2]), .B(n9), .Y(n8) );
  OR2X1 U13 ( .A(address_in[4]), .B(address_in[3]), .Y(n9) );
  NOR2X1 U14 ( .A(address_in[1]), .B(address_in[0]), .Y(n7) );
  INVX2 U2 ( .A(n6), .Y(n2) );
  INVX2 U4 ( .A(n5), .Y(n10) );
  INVX2 U6 ( .A(n4), .Y(n11) );
  INVX2 U8 ( .A(n1), .Y(n12) );
  INVX2 U10 ( .A(n3), .Y(n13) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS1 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n2, n10, n11, n12, n13, n14;

  DFFPOSX1 \currentData_reg[3]  ( .D(n2), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n10), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n11), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n12), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n13), .C(data_out[0]), .D(n3), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n13), .C(data_out[1]), .D(n3), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n13), .C(data_out[2]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n13), .C(data_out[3]), .D(n3), .Y(n6) );
  NAND3X1 U11 ( .A(n7), .B(write_en), .C(n8), .Y(n3) );
  NOR2X1 U12 ( .A(address_in[2]), .B(n9), .Y(n8) );
  OR2X1 U13 ( .A(address_in[4]), .B(address_in[3]), .Y(n9) );
  NOR2X1 U14 ( .A(address_in[1]), .B(n14), .Y(n7) );
  INVX2 U2 ( .A(n6), .Y(n2) );
  INVX2 U4 ( .A(n5), .Y(n10) );
  INVX2 U6 ( .A(n4), .Y(n11) );
  INVX2 U8 ( .A(n1), .Y(n12) );
  INVX2 U10 ( .A(n3), .Y(n13) );
  INVX2 U15 ( .A(address_in[0]), .Y(n14) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS2 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n2, n10, n11, n12, n13, n14;

  DFFPOSX1 \currentData_reg[3]  ( .D(n2), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n10), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n11), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n12), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n13), .C(data_out[0]), .D(n3), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n13), .C(data_out[1]), .D(n3), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n13), .C(data_out[2]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n13), .C(data_out[3]), .D(n3), .Y(n6) );
  NAND3X1 U11 ( .A(n7), .B(write_en), .C(n8), .Y(n3) );
  NOR2X1 U12 ( .A(address_in[2]), .B(n9), .Y(n8) );
  OR2X1 U13 ( .A(address_in[4]), .B(address_in[3]), .Y(n9) );
  NOR2X1 U14 ( .A(address_in[0]), .B(n14), .Y(n7) );
  INVX2 U2 ( .A(n6), .Y(n2) );
  INVX2 U4 ( .A(n5), .Y(n10) );
  INVX2 U6 ( .A(n4), .Y(n11) );
  INVX2 U8 ( .A(n1), .Y(n12) );
  INVX2 U10 ( .A(n3), .Y(n13) );
  INVX2 U15 ( .A(address_in[1]), .Y(n14) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS3 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n2, n10, n11, n12, n13;

  DFFPOSX1 \currentData_reg[3]  ( .D(n2), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n10), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n11), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n12), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n13), .C(data_out[0]), .D(n3), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n13), .C(data_out[1]), .D(n3), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n13), .C(data_out[2]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n13), .C(data_out[3]), .D(n3), .Y(n6) );
  NAND3X1 U11 ( .A(n7), .B(write_en), .C(n8), .Y(n3) );
  NOR2X1 U12 ( .A(address_in[2]), .B(n9), .Y(n8) );
  OR2X1 U13 ( .A(address_in[4]), .B(address_in[3]), .Y(n9) );
  AND2X2 U14 ( .A(address_in[1]), .B(address_in[0]), .Y(n7) );
  INVX2 U2 ( .A(n6), .Y(n2) );
  INVX2 U4 ( .A(n5), .Y(n10) );
  INVX2 U6 ( .A(n4), .Y(n11) );
  INVX2 U8 ( .A(n1), .Y(n12) );
  INVX2 U10 ( .A(n3), .Y(n13) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS4 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n2, n10, n11, n12, n13, n14;

  DFFPOSX1 \currentData_reg[3]  ( .D(n2), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n10), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n11), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n12), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n13), .C(data_out[0]), .D(n3), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n13), .C(data_out[1]), .D(n3), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n13), .C(data_out[2]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n13), .C(data_out[3]), .D(n3), .Y(n6) );
  NAND3X1 U11 ( .A(n7), .B(write_en), .C(n8), .Y(n3) );
  NOR2X1 U12 ( .A(address_in[1]), .B(n9), .Y(n8) );
  OR2X1 U13 ( .A(address_in[4]), .B(address_in[3]), .Y(n9) );
  NOR2X1 U14 ( .A(address_in[0]), .B(n14), .Y(n7) );
  INVX2 U2 ( .A(n6), .Y(n2) );
  INVX2 U4 ( .A(n5), .Y(n10) );
  INVX2 U6 ( .A(n4), .Y(n11) );
  INVX2 U8 ( .A(n1), .Y(n12) );
  INVX2 U10 ( .A(n3), .Y(n13) );
  INVX2 U15 ( .A(address_in[2]), .Y(n14) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS5 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n2, n10, n11, n12, n13;

  DFFPOSX1 \currentData_reg[3]  ( .D(n2), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n10), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n11), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n12), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n13), .C(data_out[0]), .D(n3), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n13), .C(data_out[1]), .D(n3), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n13), .C(data_out[2]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n13), .C(data_out[3]), .D(n3), .Y(n6) );
  NAND3X1 U11 ( .A(n7), .B(write_en), .C(n8), .Y(n3) );
  NOR2X1 U12 ( .A(address_in[1]), .B(n9), .Y(n8) );
  OR2X1 U13 ( .A(address_in[4]), .B(address_in[3]), .Y(n9) );
  AND2X2 U14 ( .A(address_in[2]), .B(address_in[0]), .Y(n7) );
  INVX2 U2 ( .A(n6), .Y(n2) );
  INVX2 U4 ( .A(n5), .Y(n10) );
  INVX2 U6 ( .A(n4), .Y(n11) );
  INVX2 U8 ( .A(n1), .Y(n12) );
  INVX2 U10 ( .A(n3), .Y(n13) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS6 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n2, n10, n11, n12, n13;

  DFFPOSX1 \currentData_reg[3]  ( .D(n2), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n10), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n11), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n12), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n13), .C(data_out[0]), .D(n3), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n13), .C(data_out[1]), .D(n3), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n13), .C(data_out[2]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n13), .C(data_out[3]), .D(n3), .Y(n6) );
  NAND3X1 U11 ( .A(n7), .B(write_en), .C(n8), .Y(n3) );
  NOR2X1 U12 ( .A(address_in[0]), .B(n9), .Y(n8) );
  OR2X1 U13 ( .A(address_in[4]), .B(address_in[3]), .Y(n9) );
  AND2X2 U14 ( .A(address_in[2]), .B(address_in[1]), .Y(n7) );
  INVX2 U2 ( .A(n6), .Y(n2) );
  INVX2 U4 ( .A(n5), .Y(n10) );
  INVX2 U6 ( .A(n4), .Y(n11) );
  INVX2 U8 ( .A(n1), .Y(n12) );
  INVX2 U10 ( .A(n3), .Y(n13) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS7 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n3, n10, n11, n12, n13;

  DFFPOSX1 \currentData_reg[3]  ( .D(n3), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n10), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n11), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n12), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n2), .C(data_out[0]), .D(n13), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n2), .C(data_out[1]), .D(n13), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n2), .C(data_out[2]), .D(n13), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n2), .C(data_out[3]), .D(n13), .Y(n6) );
  NOR2X1 U11 ( .A(n7), .B(n8), .Y(n2) );
  NAND3X1 U12 ( .A(address_in[2]), .B(address_in[1]), .C(write_en), .Y(n8) );
  NAND2X1 U13 ( .A(n9), .B(address_in[0]), .Y(n7) );
  NOR2X1 U14 ( .A(address_in[4]), .B(address_in[3]), .Y(n9) );
  INVX2 U2 ( .A(n6), .Y(n3) );
  INVX2 U4 ( .A(n5), .Y(n10) );
  INVX2 U6 ( .A(n4), .Y(n11) );
  INVX2 U8 ( .A(n1), .Y(n12) );
  INVX2 U10 ( .A(n2), .Y(n13) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS8 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n2, n10, n11, n12, n13, n14;

  DFFPOSX1 \currentData_reg[3]  ( .D(n2), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n10), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n11), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n12), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n13), .C(data_out[0]), .D(n3), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n13), .C(data_out[1]), .D(n3), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n13), .C(data_out[2]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n13), .C(data_out[3]), .D(n3), .Y(n6) );
  NAND3X1 U11 ( .A(n7), .B(write_en), .C(n8), .Y(n3) );
  NOR2X1 U12 ( .A(address_in[1]), .B(n9), .Y(n8) );
  OR2X1 U13 ( .A(address_in[4]), .B(address_in[2]), .Y(n9) );
  NOR2X1 U14 ( .A(address_in[0]), .B(n14), .Y(n7) );
  INVX2 U2 ( .A(n6), .Y(n2) );
  INVX2 U4 ( .A(n5), .Y(n10) );
  INVX2 U6 ( .A(n4), .Y(n11) );
  INVX2 U8 ( .A(n1), .Y(n12) );
  INVX2 U10 ( .A(n3), .Y(n13) );
  INVX2 U15 ( .A(address_in[3]), .Y(n14) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS9 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n2, n10, n11, n12, n13;

  DFFPOSX1 \currentData_reg[3]  ( .D(n2), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n10), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n11), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n12), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n13), .C(data_out[0]), .D(n3), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n13), .C(data_out[1]), .D(n3), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n13), .C(data_out[2]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n13), .C(data_out[3]), .D(n3), .Y(n6) );
  NAND3X1 U11 ( .A(n7), .B(write_en), .C(n8), .Y(n3) );
  NOR2X1 U12 ( .A(address_in[1]), .B(n9), .Y(n8) );
  OR2X1 U13 ( .A(address_in[4]), .B(address_in[2]), .Y(n9) );
  AND2X2 U14 ( .A(address_in[3]), .B(address_in[0]), .Y(n7) );
  INVX2 U2 ( .A(n6), .Y(n2) );
  INVX2 U4 ( .A(n5), .Y(n10) );
  INVX2 U6 ( .A(n4), .Y(n11) );
  INVX2 U8 ( .A(n1), .Y(n12) );
  INVX2 U10 ( .A(n3), .Y(n13) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS10 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n2, n10, n11, n12, n13;

  DFFPOSX1 \currentData_reg[3]  ( .D(n2), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n10), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n11), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n12), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n13), .C(data_out[0]), .D(n3), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n13), .C(data_out[1]), .D(n3), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n13), .C(data_out[2]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n13), .C(data_out[3]), .D(n3), .Y(n6) );
  NAND3X1 U11 ( .A(n7), .B(write_en), .C(n8), .Y(n3) );
  NOR2X1 U12 ( .A(address_in[0]), .B(n9), .Y(n8) );
  OR2X1 U13 ( .A(address_in[4]), .B(address_in[2]), .Y(n9) );
  AND2X2 U14 ( .A(address_in[3]), .B(address_in[1]), .Y(n7) );
  INVX2 U2 ( .A(n6), .Y(n2) );
  INVX2 U4 ( .A(n5), .Y(n10) );
  INVX2 U6 ( .A(n4), .Y(n11) );
  INVX2 U8 ( .A(n1), .Y(n12) );
  INVX2 U10 ( .A(n3), .Y(n13) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS11 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n3, n10, n11, n12, n13;

  DFFPOSX1 \currentData_reg[3]  ( .D(n3), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n10), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n11), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n12), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n2), .C(data_out[0]), .D(n13), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n2), .C(data_out[1]), .D(n13), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n2), .C(data_out[2]), .D(n13), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n2), .C(data_out[3]), .D(n13), .Y(n6) );
  NOR2X1 U11 ( .A(n7), .B(n8), .Y(n2) );
  NAND3X1 U12 ( .A(address_in[3]), .B(address_in[1]), .C(write_en), .Y(n8) );
  NAND2X1 U13 ( .A(n9), .B(address_in[0]), .Y(n7) );
  NOR2X1 U14 ( .A(address_in[4]), .B(address_in[2]), .Y(n9) );
  INVX2 U2 ( .A(n6), .Y(n3) );
  INVX2 U4 ( .A(n5), .Y(n10) );
  INVX2 U6 ( .A(n4), .Y(n11) );
  INVX2 U8 ( .A(n1), .Y(n12) );
  INVX2 U10 ( .A(n2), .Y(n13) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS12 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n2, n10, n11, n12, n13;

  DFFPOSX1 \currentData_reg[3]  ( .D(n2), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n10), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n11), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n12), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n13), .C(data_out[0]), .D(n3), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n13), .C(data_out[1]), .D(n3), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n13), .C(data_out[2]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n13), .C(data_out[3]), .D(n3), .Y(n6) );
  NAND3X1 U11 ( .A(n7), .B(write_en), .C(n8), .Y(n3) );
  NOR2X1 U12 ( .A(address_in[0]), .B(n9), .Y(n8) );
  OR2X1 U13 ( .A(address_in[4]), .B(address_in[1]), .Y(n9) );
  AND2X2 U14 ( .A(address_in[3]), .B(address_in[2]), .Y(n7) );
  INVX2 U2 ( .A(n6), .Y(n2) );
  INVX2 U4 ( .A(n5), .Y(n10) );
  INVX2 U6 ( .A(n4), .Y(n11) );
  INVX2 U8 ( .A(n1), .Y(n12) );
  INVX2 U10 ( .A(n3), .Y(n13) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS13 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n3, n10, n11, n12, n13;

  DFFPOSX1 \currentData_reg[3]  ( .D(n3), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n10), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n11), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n12), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n2), .C(data_out[0]), .D(n13), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n2), .C(data_out[1]), .D(n13), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n2), .C(data_out[2]), .D(n13), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n2), .C(data_out[3]), .D(n13), .Y(n6) );
  NOR2X1 U11 ( .A(n7), .B(n8), .Y(n2) );
  NAND3X1 U12 ( .A(address_in[3]), .B(address_in[2]), .C(write_en), .Y(n8) );
  NAND2X1 U13 ( .A(n9), .B(address_in[0]), .Y(n7) );
  NOR2X1 U14 ( .A(address_in[4]), .B(address_in[1]), .Y(n9) );
  INVX2 U2 ( .A(n6), .Y(n3) );
  INVX2 U4 ( .A(n5), .Y(n10) );
  INVX2 U6 ( .A(n4), .Y(n11) );
  INVX2 U8 ( .A(n1), .Y(n12) );
  INVX2 U10 ( .A(n2), .Y(n13) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS14 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n3, n10, n11, n12, n13;

  DFFPOSX1 \currentData_reg[3]  ( .D(n3), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n10), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n11), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n12), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n2), .C(data_out[0]), .D(n13), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n2), .C(data_out[1]), .D(n13), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n2), .C(data_out[2]), .D(n13), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n2), .C(data_out[3]), .D(n13), .Y(n6) );
  NOR2X1 U11 ( .A(n7), .B(n8), .Y(n2) );
  NAND3X1 U12 ( .A(address_in[3]), .B(address_in[2]), .C(write_en), .Y(n8) );
  NAND2X1 U13 ( .A(n9), .B(address_in[1]), .Y(n7) );
  NOR2X1 U14 ( .A(address_in[4]), .B(address_in[0]), .Y(n9) );
  INVX2 U2 ( .A(n6), .Y(n3) );
  INVX2 U4 ( .A(n5), .Y(n10) );
  INVX2 U6 ( .A(n4), .Y(n11) );
  INVX2 U8 ( .A(n1), .Y(n12) );
  INVX2 U10 ( .A(n2), .Y(n13) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS15 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n2, n4, n5, n6, n7, n8, n3, n9, n10, n11, n12, n13;

  DFFPOSX1 \currentData_reg[3]  ( .D(n3), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n9), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n10), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n11), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n2), .C(data_out[0]), .D(n12), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n2), .C(data_out[1]), .D(n12), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n2), .C(data_out[2]), .D(n12), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n2), .C(data_out[3]), .D(n12), .Y(n6) );
  NOR2X1 U11 ( .A(n7), .B(n8), .Y(n2) );
  NAND3X1 U12 ( .A(address_in[3]), .B(address_in[2]), .C(write_en), .Y(n8) );
  NAND3X1 U13 ( .A(address_in[0]), .B(n13), .C(address_in[1]), .Y(n7) );
  INVX2 U2 ( .A(n6), .Y(n3) );
  INVX2 U4 ( .A(n5), .Y(n9) );
  INVX2 U6 ( .A(n4), .Y(n10) );
  INVX2 U8 ( .A(n1), .Y(n11) );
  INVX2 U10 ( .A(n2), .Y(n12) );
  INVX2 U14 ( .A(address_in[4]), .Y(n13) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS16 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n2, n10, n11, n12, n13, n14;

  DFFPOSX1 \currentData_reg[3]  ( .D(n2), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n10), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n11), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n12), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n13), .C(data_out[0]), .D(n3), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n13), .C(data_out[1]), .D(n3), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n13), .C(data_out[2]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n13), .C(data_out[3]), .D(n3), .Y(n6) );
  NAND3X1 U11 ( .A(n7), .B(write_en), .C(n8), .Y(n3) );
  NOR2X1 U12 ( .A(address_in[1]), .B(n9), .Y(n8) );
  OR2X1 U13 ( .A(address_in[3]), .B(address_in[2]), .Y(n9) );
  NOR2X1 U14 ( .A(address_in[0]), .B(n14), .Y(n7) );
  INVX2 U2 ( .A(n6), .Y(n2) );
  INVX2 U4 ( .A(n5), .Y(n10) );
  INVX2 U6 ( .A(n4), .Y(n11) );
  INVX2 U8 ( .A(n1), .Y(n12) );
  INVX2 U10 ( .A(n3), .Y(n13) );
  INVX2 U15 ( .A(address_in[4]), .Y(n14) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS17 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n2, n10, n11, n12, n13;

  DFFPOSX1 \currentData_reg[3]  ( .D(n2), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n10), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n11), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n12), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n13), .C(data_out[0]), .D(n3), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n13), .C(data_out[1]), .D(n3), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n13), .C(data_out[2]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n13), .C(data_out[3]), .D(n3), .Y(n6) );
  NAND3X1 U11 ( .A(n7), .B(write_en), .C(n8), .Y(n3) );
  NOR2X1 U12 ( .A(address_in[1]), .B(n9), .Y(n8) );
  OR2X1 U13 ( .A(address_in[3]), .B(address_in[2]), .Y(n9) );
  AND2X2 U14 ( .A(address_in[4]), .B(address_in[0]), .Y(n7) );
  INVX2 U2 ( .A(n6), .Y(n2) );
  INVX2 U4 ( .A(n5), .Y(n10) );
  INVX2 U6 ( .A(n4), .Y(n11) );
  INVX2 U8 ( .A(n1), .Y(n12) );
  INVX2 U10 ( .A(n3), .Y(n13) );
endmodule


module sigmoidRegisters ( clk, write_en, data_in, address, data_out, 
    .digit_weights({\digit_weights[0][3] , \digit_weights[0][2] , 
        \digit_weights[0][1] , \digit_weights[0][0] , \digit_weights[1][3] , 
        \digit_weights[1][2] , \digit_weights[1][1] , \digit_weights[1][0] , 
        \digit_weights[2][3] , \digit_weights[2][2] , \digit_weights[2][1] , 
        \digit_weights[2][0] , \digit_weights[3][3] , \digit_weights[3][2] , 
        \digit_weights[3][1] , \digit_weights[3][0] , \digit_weights[4][3] , 
        \digit_weights[4][2] , \digit_weights[4][1] , \digit_weights[4][0] , 
        \digit_weights[5][3] , \digit_weights[5][2] , \digit_weights[5][1] , 
        \digit_weights[5][0] , \digit_weights[6][3] , \digit_weights[6][2] , 
        \digit_weights[6][1] , \digit_weights[6][0] , \digit_weights[7][3] , 
        \digit_weights[7][2] , \digit_weights[7][1] , \digit_weights[7][0] , 
        \digit_weights[8][3] , \digit_weights[8][2] , \digit_weights[8][1] , 
        \digit_weights[8][0] , \digit_weights[9][3] , \digit_weights[9][2] , 
        \digit_weights[9][1] , \digit_weights[9][0] }) );
  input [3:0] data_in;
  input [4:0] address;
  output [3:0] data_out;
  input clk, write_en;
  output \digit_weights[0][3] , \digit_weights[0][2] , \digit_weights[0][1] ,
         \digit_weights[0][0] , \digit_weights[1][3] , \digit_weights[1][2] ,
         \digit_weights[1][1] , \digit_weights[1][0] , \digit_weights[2][3] ,
         \digit_weights[2][2] , \digit_weights[2][1] , \digit_weights[2][0] ,
         \digit_weights[3][3] , \digit_weights[3][2] , \digit_weights[3][1] ,
         \digit_weights[3][0] , \digit_weights[4][3] , \digit_weights[4][2] ,
         \digit_weights[4][1] , \digit_weights[4][0] , \digit_weights[5][3] ,
         \digit_weights[5][2] , \digit_weights[5][1] , \digit_weights[5][0] ,
         \digit_weights[6][3] , \digit_weights[6][2] , \digit_weights[6][1] ,
         \digit_weights[6][0] , \digit_weights[7][3] , \digit_weights[7][2] ,
         \digit_weights[7][1] , \digit_weights[7][0] , \digit_weights[8][3] ,
         \digit_weights[8][2] , \digit_weights[8][1] , \digit_weights[8][0] ,
         \digit_weights[9][3] , \digit_weights[9][2] , \digit_weights[9][1] ,
         \digit_weights[9][0] ;
  wire   \outputs[0][3] , \outputs[0][2] , \outputs[0][1] , \outputs[0][0] ,
         \outputs[1][3] , \outputs[1][2] , \outputs[1][1] , \outputs[1][0] ,
         \outputs[2][3] , \outputs[2][2] , \outputs[2][1] , \outputs[2][0] ,
         \outputs[3][3] , \outputs[3][2] , \outputs[3][1] , \outputs[3][0] ,
         \outputs[4][3] , \outputs[4][2] , \outputs[4][1] , \outputs[4][0] ,
         \outputs[5][3] , \outputs[5][2] , \outputs[5][1] , \outputs[5][0] ,
         \outputs[6][3] , \outputs[6][2] , \outputs[6][1] , \outputs[6][0] ,
         \outputs[7][3] , \outputs[7][2] , \outputs[7][1] , \outputs[7][0] ,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63;

  NAND3X1 U20 ( .A(n19), .B(n20), .C(n21), .Y(data_out[3]) );
  NOR2X1 U21 ( .A(n22), .B(n53), .Y(n21) );
  AOI22X1 U22 ( .A(\outputs[4][3] ), .B(n60), .C(\outputs[3][3] ), .D(n61), 
        .Y(n23) );
  OAI21X1 U23 ( .A(n24), .B(n16), .C(n25), .Y(n22) );
  AOI22X1 U24 ( .A(\outputs[7][3] ), .B(n62), .C(\outputs[6][3] ), .D(n59), 
        .Y(n25) );
  AOI22X1 U25 ( .A(\outputs[2][3] ), .B(n58), .C(\outputs[1][3] ), .D(n63), 
        .Y(n20) );
  AOI21X1 U26 ( .A(\outputs[0][3] ), .B(n57), .C(n26), .Y(n19) );
  NAND3X1 U27 ( .A(n27), .B(n28), .C(n29), .Y(data_out[2]) );
  NOR2X1 U28 ( .A(n30), .B(n54), .Y(n29) );
  AOI22X1 U29 ( .A(\outputs[4][2] ), .B(n60), .C(\outputs[3][2] ), .D(n61), 
        .Y(n31) );
  OAI21X1 U30 ( .A(n24), .B(n17), .C(n32), .Y(n30) );
  AOI22X1 U31 ( .A(\outputs[7][2] ), .B(n62), .C(\outputs[6][2] ), .D(n59), 
        .Y(n32) );
  AOI22X1 U32 ( .A(\outputs[2][2] ), .B(n58), .C(\outputs[1][2] ), .D(n63), 
        .Y(n28) );
  AOI21X1 U33 ( .A(\outputs[0][2] ), .B(n57), .C(n26), .Y(n27) );
  NAND3X1 U34 ( .A(n33), .B(n34), .C(n35), .Y(data_out[1]) );
  NOR2X1 U35 ( .A(n36), .B(n55), .Y(n35) );
  AOI22X1 U36 ( .A(\outputs[4][1] ), .B(n60), .C(\outputs[3][1] ), .D(n61), 
        .Y(n37) );
  OAI21X1 U37 ( .A(n24), .B(n18), .C(n38), .Y(n36) );
  AOI22X1 U38 ( .A(\outputs[7][1] ), .B(n62), .C(\outputs[6][1] ), .D(n59), 
        .Y(n38) );
  AOI22X1 U39 ( .A(\outputs[2][1] ), .B(n58), .C(\outputs[1][1] ), .D(n63), 
        .Y(n34) );
  AOI21X1 U40 ( .A(\outputs[0][1] ), .B(n57), .C(n26), .Y(n33) );
  NAND3X1 U41 ( .A(n39), .B(n40), .C(n41), .Y(data_out[0]) );
  NOR2X1 U42 ( .A(n42), .B(n56), .Y(n41) );
  AOI22X1 U43 ( .A(\outputs[4][0] ), .B(n60), .C(\outputs[3][0] ), .D(n61), 
        .Y(n43) );
  NAND3X1 U44 ( .A(n3), .B(n7), .C(n5), .Y(n44) );
  NAND3X1 U45 ( .A(n1), .B(n4), .C(n8), .Y(n45) );
  OAI21X1 U46 ( .A(n24), .B(n52), .C(n46), .Y(n42) );
  AOI22X1 U47 ( .A(\outputs[7][0] ), .B(n62), .C(\outputs[6][0] ), .D(n59), 
        .Y(n46) );
  NAND3X1 U48 ( .A(n6), .B(n1), .C(n8), .Y(n47) );
  NAND3X1 U49 ( .A(n6), .B(n3), .C(n8), .Y(n48) );
  NAND3X1 U50 ( .A(n2), .B(n4), .C(n8), .Y(n24) );
  AOI22X1 U51 ( .A(\outputs[2][0] ), .B(n58), .C(\outputs[1][0] ), .D(n63), 
        .Y(n40) );
  NAND3X1 U52 ( .A(n4), .B(n7), .C(n2), .Y(n49) );
  NAND3X1 U53 ( .A(n1), .B(n7), .C(n5), .Y(n50) );
  AOI21X1 U54 ( .A(\outputs[0][0] ), .B(n57), .C(n26), .Y(n39) );
  OR2X1 U55 ( .A(address[3]), .B(n13), .Y(n26) );
  NAND3X1 U56 ( .A(n4), .B(n7), .C(n1), .Y(n51) );
  sigmoidRegisters_addressableReg_ADDRESS0 \genblk1[0].neuronReg  ( .write_en(
        write_en), .clk(clk), .data_in(data_in), .address_in({n13, n11, n8, n6, 
        n3}), .data_out({\outputs[0][3] , \outputs[0][2] , \outputs[0][1] , 
        \outputs[0][0] }) );
  sigmoidRegisters_addressableReg_ADDRESS1 \genblk1[1].neuronReg  ( .write_en(
        n15), .clk(clk), .data_in(data_in), .address_in({n13, n11, n8, n6, n2}), .data_out({\outputs[1][3] , \outputs[1][2] , \outputs[1][1] , 
        \outputs[1][0] }) );
  sigmoidRegisters_addressableReg_ADDRESS2 \genblk1[2].neuronReg  ( .write_en(
        write_en), .clk(clk), .data_in(data_in), .address_in({n13, n11, n8, n5, 
        n3}), .data_out({\outputs[2][3] , \outputs[2][2] , \outputs[2][1] , 
        \outputs[2][0] }) );
  sigmoidRegisters_addressableReg_ADDRESS3 \genblk1[3].neuronReg  ( .write_en(
        n15), .clk(clk), .data_in(data_in), .address_in({n13, n11, n8, n6, n2}), .data_out({\outputs[3][3] , \outputs[3][2] , \outputs[3][1] , 
        \outputs[3][0] }) );
  sigmoidRegisters_addressableReg_ADDRESS4 \genblk1[4].neuronReg  ( .write_en(
        write_en), .clk(clk), .data_in(data_in), .address_in({address[4:3], n8, 
        n6, n2}), .data_out({\outputs[4][3] , \outputs[4][2] , \outputs[4][1] , 
        \outputs[4][0] }) );
  sigmoidRegisters_addressableReg_ADDRESS5 \genblk1[5].neuronReg  ( .write_en(
        n15), .clk(clk), .data_in(data_in), .address_in({address[4], n11, n9, 
        n5, n3}), .data_out({\outputs[5][3] , \outputs[5][2] , \outputs[5][1] , 
        \outputs[5][0] }) );
  sigmoidRegisters_addressableReg_ADDRESS6 \genblk1[6].neuronReg  ( .write_en(
        write_en), .clk(clk), .data_in(data_in), .address_in({address[4:3], n9, 
        n6, n3}), .data_out({\outputs[6][3] , \outputs[6][2] , \outputs[6][1] , 
        \outputs[6][0] }) );
  sigmoidRegisters_addressableReg_ADDRESS7 \genblk1[7].neuronReg  ( .write_en(
        n15), .clk(clk), .data_in(data_in), .address_in({n13, address[3], n9, 
        n6, n2}), .data_out({\outputs[7][3] , \outputs[7][2] , \outputs[7][1] , 
        \outputs[7][0] }) );
  sigmoidRegisters_addressableReg_ADDRESS8 \genblk2[0].weightReg  ( .write_en(
        n15), .clk(clk), .data_in(data_in), .address_in({address[4:3], n9, n5, 
        n2}), .data_out({\digit_weights[0][3] , \digit_weights[0][2] , 
        \digit_weights[0][1] , \digit_weights[0][0] }) );
  sigmoidRegisters_addressableReg_ADDRESS9 \genblk2[1].weightReg  ( .write_en(
        write_en), .clk(clk), .data_in(data_in), .address_in({n13, n11, n9, n5, 
        n2}), .data_out({\digit_weights[1][3] , \digit_weights[1][2] , 
        \digit_weights[1][1] , \digit_weights[1][0] }) );
  sigmoidRegisters_addressableReg_ADDRESS10 \genblk2[2].weightReg  ( 
        .write_en(n15), .clk(clk), .data_in(data_in), .address_in({address[4], 
        n11, n9, n6, n3}), .data_out({\digit_weights[2][3] , 
        \digit_weights[2][2] , \digit_weights[2][1] , \digit_weights[2][0] })
         );
  sigmoidRegisters_addressableReg_ADDRESS11 \genblk2[3].weightReg  ( 
        .write_en(n15), .clk(clk), .data_in(data_in), .address_in({n13, n11, 
        n8, n6, n3}), .data_out({\digit_weights[3][3] , \digit_weights[3][2] , 
        \digit_weights[3][1] , \digit_weights[3][0] }) );
  sigmoidRegisters_addressableReg_ADDRESS12 \genblk2[4].weightReg  ( 
        .write_en(write_en), .clk(clk), .data_in(data_in), .address_in({n13, 
        n11, n9, n6, n2}), .data_out({\digit_weights[4][3] , 
        \digit_weights[4][2] , \digit_weights[4][1] , \digit_weights[4][0] })
         );
  sigmoidRegisters_addressableReg_ADDRESS13 \genblk2[5].weightReg  ( 
        .write_en(n15), .clk(clk), .data_in(data_in), .address_in({n13, n11, 
        n9, n5, n2}), .data_out({\digit_weights[5][3] , \digit_weights[5][2] , 
        \digit_weights[5][1] , \digit_weights[5][0] }) );
  sigmoidRegisters_addressableReg_ADDRESS14 \genblk2[6].weightReg  ( 
        .write_en(n15), .clk(clk), .data_in(data_in), .address_in({n13, n11, 
        n9, n6, n2}), .data_out({\digit_weights[6][3] , \digit_weights[6][2] , 
        \digit_weights[6][1] , \digit_weights[6][0] }) );
  sigmoidRegisters_addressableReg_ADDRESS15 \genblk2[7].weightReg  ( 
        .write_en(n15), .clk(clk), .data_in(data_in), .address_in({address[4], 
        n11, n9, n5, n2}), .data_out({\digit_weights[7][3] , 
        \digit_weights[7][2] , \digit_weights[7][1] , \digit_weights[7][0] })
         );
  sigmoidRegisters_addressableReg_ADDRESS16 \genblk2[8].weightReg  ( 
        .write_en(n15), .clk(clk), .data_in(data_in), .address_in({
        address[4:3], n9, n5, n3}), .data_out({\digit_weights[8][3] , 
        \digit_weights[8][2] , \digit_weights[8][1] , \digit_weights[8][0] })
         );
  sigmoidRegisters_addressableReg_ADDRESS17 \genblk2[9].weightReg  ( 
        .write_en(write_en), .clk(clk), .data_in(data_in), .address_in({n13, 
        address[3], n9, n5, n3}), .data_out({\digit_weights[9][3] , 
        \digit_weights[9][2] , \digit_weights[9][1] , \digit_weights[9][0] })
         );
  INVX2 U2 ( .A(n7), .Y(n8) );
  INVX2 U3 ( .A(n4), .Y(n5) );
  INVX2 U4 ( .A(n1), .Y(n2) );
  INVX2 U5 ( .A(n7), .Y(n9) );
  INVX2 U6 ( .A(n4), .Y(n6) );
  INVX2 U7 ( .A(n1), .Y(n3) );
  INVX2 U8 ( .A(n12), .Y(n13) );
  INVX2 U9 ( .A(n10), .Y(n11) );
  INVX2 U10 ( .A(n14), .Y(n15) );
  INVX2 U11 ( .A(address[2]), .Y(n7) );
  INVX2 U12 ( .A(address[4]), .Y(n12) );
  INVX2 U13 ( .A(address[3]), .Y(n10) );
  INVX2 U14 ( .A(address[0]), .Y(n1) );
  INVX2 U15 ( .A(address[1]), .Y(n4) );
  INVX2 U16 ( .A(write_en), .Y(n14) );
  INVX2 U17 ( .A(\outputs[5][3] ), .Y(n16) );
  INVX2 U18 ( .A(\outputs[5][2] ), .Y(n17) );
  INVX2 U19 ( .A(\outputs[5][1] ), .Y(n18) );
  INVX2 U57 ( .A(\outputs[5][0] ), .Y(n52) );
  INVX2 U58 ( .A(n23), .Y(n53) );
  INVX2 U59 ( .A(n31), .Y(n54) );
  INVX2 U60 ( .A(n37), .Y(n55) );
  INVX2 U61 ( .A(n43), .Y(n56) );
  INVX2 U62 ( .A(n51), .Y(n57) );
  INVX2 U63 ( .A(n50), .Y(n58) );
  INVX2 U64 ( .A(n47), .Y(n59) );
  INVX2 U65 ( .A(n45), .Y(n60) );
  INVX2 U66 ( .A(n44), .Y(n61) );
  INVX2 U67 ( .A(n48), .Y(n62) );
  INVX2 U68 ( .A(n49), .Y(n63) );
endmodule


module flex_counter_NUM_CNT_BITS4_2 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   N24, N25, N26, N27, N28, n1, n2, n3, n4, n5, n6, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64;

  DFFSR \count_out_reg[0]  ( .D(n20), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR rollover_flag_reg ( .D(n46), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  DFFSR \count_out_reg[1]  ( .D(n43), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[2]  ( .D(n44), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[3]  ( .D(n45), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  OAI22X1 U18 ( .A(n64), .B(n14), .C(n63), .D(n62), .Y(n46) );
  NAND3X1 U19 ( .A(n61), .B(n60), .C(n59), .Y(n62) );
  XOR2X1 U20 ( .A(n17), .B(N26), .Y(n59) );
  XOR2X1 U21 ( .A(n12), .B(N24), .Y(n60) );
  XOR2X1 U22 ( .A(n16), .B(N25), .Y(n61) );
  NAND2X1 U23 ( .A(n58), .B(n57), .Y(n63) );
  XOR2X1 U24 ( .A(n18), .B(N27), .Y(n57) );
  NOR2X1 U25 ( .A(N28), .B(n56), .Y(n58) );
  OAI21X1 U26 ( .A(n55), .B(n18), .C(n54), .Y(n45) );
  NAND3X1 U27 ( .A(n53), .B(n52), .C(n51), .Y(n54) );
  NOR2X1 U28 ( .A(count_out[3]), .B(n17), .Y(n51) );
  AOI21X1 U29 ( .A(n53), .B(n17), .C(n50), .Y(n55) );
  OAI21X1 U30 ( .A(n6), .B(n17), .C(n49), .Y(n44) );
  NAND3X1 U31 ( .A(n52), .B(n17), .C(n53), .Y(n49) );
  OAI21X1 U32 ( .A(n52), .B(n15), .C(n64), .Y(n50) );
  NOR2X1 U33 ( .A(n16), .B(n12), .Y(n52) );
  OAI21X1 U34 ( .A(n13), .B(n16), .C(n48), .Y(n43) );
  NAND3X1 U35 ( .A(count_out[0]), .B(n16), .C(n53), .Y(n48) );
  OAI21X1 U36 ( .A(n15), .B(count_out[0]), .C(n64), .Y(n47) );
  OAI22X1 U37 ( .A(n12), .B(n64), .C(count_out[0]), .D(n15), .Y(n20) );
  NOR2X1 U38 ( .A(n56), .B(rollover_flag), .Y(n53) );
  NAND2X1 U39 ( .A(n19), .B(n56), .Y(n64) );
  NAND2X1 U40 ( .A(count_enable), .B(n19), .Y(n56) );
  NOR2X1 U7 ( .A(rollover_val[1]), .B(rollover_val[0]), .Y(n2) );
  AOI21X1 U9 ( .A(rollover_val[0]), .B(rollover_val[1]), .C(n2), .Y(n1) );
  NAND2X1 U10 ( .A(n2), .B(n5), .Y(n3) );
  OAI21X1 U11 ( .A(n2), .B(n5), .C(n3), .Y(N26) );
  NOR2X1 U12 ( .A(n3), .B(rollover_val[3]), .Y(N28) );
  AOI21X1 U13 ( .A(n3), .B(rollover_val[3]), .C(N28), .Y(n4) );
  INVX2 U14 ( .A(rollover_val[0]), .Y(N24) );
  INVX2 U15 ( .A(n1), .Y(N25) );
  INVX2 U16 ( .A(rollover_val[2]), .Y(n5) );
  INVX2 U17 ( .A(n4), .Y(N27) );
  INVX2 U41 ( .A(n50), .Y(n6) );
  INVX2 U42 ( .A(count_out[0]), .Y(n12) );
  INVX2 U43 ( .A(n47), .Y(n13) );
  INVX2 U44 ( .A(rollover_flag), .Y(n14) );
  INVX2 U45 ( .A(n53), .Y(n15) );
  INVX2 U46 ( .A(count_out[1]), .Y(n16) );
  INVX2 U47 ( .A(count_out[2]), .Y(n17) );
  INVX2 U48 ( .A(count_out[3]), .Y(n18) );
  INVX2 U49 ( .A(clear), .Y(n19) );
endmodule


module fmc ( clk, n_rst, ready, address, data, data_out, address_in, ce, oe, 
        we );
  input [15:0] address;
  input [15:0] data;
  output [15:0] data_out;
  output [15:0] address_in;
  input clk, n_rst, ready;
  output ce, oe, we;
  wire   count_en, n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n37, n39, n40, n41, n42, n43, n44, n45, n114,
         n115, n2, n19, n20, n36, n38, n47, n49, n51, n53, n55, n57, n59, n61,
         n63, n65, n67, n69, n71, n73, n75, n77, n79, n81, n83, n85, n87, n89,
         n91, n93, n95, n97, n99, n103, n105, n107, n109, n112, n113, n116,
         n117;
  wire   [3:0] count_out;
  wire   [1:0] state;
  assign we = 1'b1;

  DFFSR \state_reg[0]  ( .D(n115), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[0]) );
  DFFSR \state_reg[1]  ( .D(n114), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[1]) );
  DFFSR \data_out_reg[0]  ( .D(n93), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[0]) );
  DFFSR \data_out_reg[15]  ( .D(n91), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[15]) );
  DFFSR \data_out_reg[14]  ( .D(n89), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[14]) );
  DFFSR \data_out_reg[13]  ( .D(n87), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[13]) );
  DFFSR \data_out_reg[12]  ( .D(n85), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[12]) );
  DFFSR \data_out_reg[11]  ( .D(n83), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[11]) );
  DFFSR \data_out_reg[10]  ( .D(n81), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[10]) );
  DFFSR \data_out_reg[9]  ( .D(n79), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[9]) );
  DFFSR \data_out_reg[8]  ( .D(n77), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[8]) );
  DFFSR \data_out_reg[7]  ( .D(n75), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[7]) );
  DFFSR \data_out_reg[6]  ( .D(n73), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[6]) );
  DFFSR \data_out_reg[5]  ( .D(n71), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[5]) );
  DFFSR \data_out_reg[4]  ( .D(n69), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[4]) );
  DFFSR \data_out_reg[3]  ( .D(n67), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[3]) );
  DFFSR \data_out_reg[2]  ( .D(n65), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[2]) );
  DFFSR \data_out_reg[1]  ( .D(n63), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[1]) );
  DFFSR \address_in_reg[15]  ( .D(n103), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[15]) );
  DFFSR \address_in_reg[14]  ( .D(n105), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[14]) );
  DFFSR \address_in_reg[13]  ( .D(n107), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[13]) );
  DFFSR \address_in_reg[12]  ( .D(n109), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[12]) );
  DFFSR \address_in_reg[11]  ( .D(n112), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[11]) );
  DFFSR \address_in_reg[10]  ( .D(n113), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[10]) );
  DFFSR \address_in_reg[9]  ( .D(n116), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[9]) );
  DFFSR \address_in_reg[8]  ( .D(n61), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[8]) );
  DFFSR \address_in_reg[7]  ( .D(n59), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[7]) );
  DFFSR \address_in_reg[6]  ( .D(n57), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[6]) );
  DFFSR \address_in_reg[5]  ( .D(n55), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[5]) );
  DFFSR \address_in_reg[4]  ( .D(n53), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[4]) );
  DFFSR \address_in_reg[3]  ( .D(n51), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[3]) );
  DFFSR \address_in_reg[2]  ( .D(n49), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[2]) );
  DFFSR \address_in_reg[1]  ( .D(n47), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[1]) );
  DFFSR \address_in_reg[0]  ( .D(n38), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[0]) );
  AOI22X1 U4 ( .A(n20), .B(address[0]), .C(address_in[0]), .D(n117), .Y(n1) );
  AOI22X1 U6 ( .A(address[1]), .B(n20), .C(address_in[1]), .D(n117), .Y(n3) );
  AOI22X1 U8 ( .A(address[2]), .B(n20), .C(address_in[2]), .D(n117), .Y(n4) );
  AOI22X1 U10 ( .A(address[3]), .B(n20), .C(address_in[3]), .D(n117), .Y(n5)
         );
  AOI22X1 U12 ( .A(address[4]), .B(n20), .C(address_in[4]), .D(n117), .Y(n6)
         );
  AOI22X1 U14 ( .A(address[5]), .B(n20), .C(address_in[5]), .D(n117), .Y(n7)
         );
  AOI22X1 U16 ( .A(address[6]), .B(n20), .C(address_in[6]), .D(n117), .Y(n8)
         );
  AOI22X1 U18 ( .A(address[7]), .B(n20), .C(address_in[7]), .D(n117), .Y(n9)
         );
  AOI22X1 U20 ( .A(address[8]), .B(n20), .C(address_in[8]), .D(n117), .Y(n10)
         );
  AOI22X1 U22 ( .A(address[9]), .B(n20), .C(address_in[9]), .D(n117), .Y(n11)
         );
  AOI22X1 U24 ( .A(address[10]), .B(n20), .C(address_in[10]), .D(n117), .Y(n12) );
  AOI22X1 U26 ( .A(address[11]), .B(n20), .C(address_in[11]), .D(n117), .Y(n13) );
  AOI22X1 U28 ( .A(address[12]), .B(n20), .C(address_in[12]), .D(n117), .Y(n14) );
  AOI22X1 U30 ( .A(address[13]), .B(n20), .C(address_in[13]), .D(n117), .Y(n15) );
  AOI22X1 U32 ( .A(address[14]), .B(n20), .C(address_in[14]), .D(n117), .Y(n16) );
  AOI22X1 U34 ( .A(address[15]), .B(n20), .C(address_in[15]), .D(n117), .Y(n17) );
  AOI22X1 U36 ( .A(data[1]), .B(n36), .C(data_out[1]), .D(n2), .Y(n18) );
  AOI22X1 U38 ( .A(data[2]), .B(n36), .C(data_out[2]), .D(n2), .Y(n21) );
  AOI22X1 U40 ( .A(data[3]), .B(n36), .C(data_out[3]), .D(n2), .Y(n22) );
  AOI22X1 U42 ( .A(data[4]), .B(n36), .C(data_out[4]), .D(n2), .Y(n23) );
  AOI22X1 U44 ( .A(data[5]), .B(n36), .C(data_out[5]), .D(n2), .Y(n24) );
  AOI22X1 U46 ( .A(data[6]), .B(n36), .C(data_out[6]), .D(n2), .Y(n25) );
  AOI22X1 U48 ( .A(data[7]), .B(n36), .C(data_out[7]), .D(n2), .Y(n26) );
  AOI22X1 U50 ( .A(data[8]), .B(n36), .C(data_out[8]), .D(n2), .Y(n27) );
  AOI22X1 U52 ( .A(data[9]), .B(n36), .C(data_out[9]), .D(n2), .Y(n28) );
  AOI22X1 U54 ( .A(data[10]), .B(n36), .C(data_out[10]), .D(n2), .Y(n29) );
  AOI22X1 U56 ( .A(data[11]), .B(n36), .C(data_out[11]), .D(n2), .Y(n30) );
  AOI22X1 U58 ( .A(data[12]), .B(n36), .C(data_out[12]), .D(n2), .Y(n31) );
  AOI22X1 U60 ( .A(data[13]), .B(n36), .C(data_out[13]), .D(n2), .Y(n32) );
  AOI22X1 U62 ( .A(data[14]), .B(n36), .C(data_out[14]), .D(n2), .Y(n33) );
  AOI22X1 U64 ( .A(data[15]), .B(n36), .C(data_out[15]), .D(n2), .Y(n34) );
  AOI22X1 U66 ( .A(data[0]), .B(n36), .C(data_out[0]), .D(n2), .Y(n35) );
  OAI21X1 U71 ( .A(n37), .B(n97), .C(n39), .Y(n114) );
  OAI21X1 U72 ( .A(count_en), .B(n117), .C(n40), .Y(n115) );
  AOI22X1 U73 ( .A(n41), .B(n42), .C(n43), .D(n37), .Y(n40) );
  NAND3X1 U74 ( .A(count_out[2]), .B(count_out[0]), .C(n44), .Y(n37) );
  NOR2X1 U75 ( .A(count_out[3]), .B(count_out[1]), .Y(n44) );
  NOR2X1 U76 ( .A(n39), .B(n45), .Y(n42) );
  OR2X1 U77 ( .A(count_out[0]), .B(count_out[2]), .Y(n45) );
  NOR2X1 U80 ( .A(state[1]), .B(state[0]), .Y(ce) );
  NAND2X1 U81 ( .A(n39), .B(n97), .Y(count_en) );
  NOR2X1 U83 ( .A(n99), .B(state[1]), .Y(n43) );
  NAND2X1 U84 ( .A(state[1]), .B(n99), .Y(n39) );
  AND2X2 U78 ( .A(count_out[1]), .B(count_out[3]), .Y(n41) );
  flex_counter_NUM_CNT_BITS4_2 fmc_counter ( .clk(clk), .n_rst(n_rst), .clear(
        n95), .count_enable(count_en), .rollover_val({1'b1, 1'b1, 1'b0, 1'b0}), 
        .count_out(count_out) );
  INVX8 U3 ( .A(n20), .Y(n117) );
  INVX8 U5 ( .A(n19), .Y(n20) );
  INVX2 U7 ( .A(ready), .Y(n19) );
  OR2X2 U9 ( .A(n99), .B(oe), .Y(n2) );
  INVX1 U11 ( .A(n5), .Y(n51) );
  INVX1 U13 ( .A(n10), .Y(n61) );
  INVX2 U15 ( .A(n2), .Y(n36) );
  INVX2 U17 ( .A(n1), .Y(n38) );
  INVX2 U19 ( .A(n3), .Y(n47) );
  INVX2 U21 ( .A(n4), .Y(n49) );
  INVX2 U23 ( .A(n6), .Y(n53) );
  INVX2 U25 ( .A(n7), .Y(n55) );
  INVX2 U27 ( .A(n8), .Y(n57) );
  INVX2 U29 ( .A(n9), .Y(n59) );
  INVX2 U31 ( .A(n18), .Y(n63) );
  INVX2 U33 ( .A(n21), .Y(n65) );
  INVX2 U35 ( .A(n22), .Y(n67) );
  INVX2 U37 ( .A(n23), .Y(n69) );
  INVX2 U39 ( .A(n24), .Y(n71) );
  INVX2 U41 ( .A(n25), .Y(n73) );
  INVX2 U43 ( .A(n26), .Y(n75) );
  INVX2 U45 ( .A(n27), .Y(n77) );
  INVX2 U47 ( .A(n28), .Y(n79) );
  INVX2 U49 ( .A(n29), .Y(n81) );
  INVX2 U51 ( .A(n30), .Y(n83) );
  INVX2 U53 ( .A(n31), .Y(n85) );
  INVX2 U55 ( .A(n32), .Y(n87) );
  INVX2 U57 ( .A(n33), .Y(n89) );
  INVX2 U59 ( .A(n34), .Y(n91) );
  INVX2 U61 ( .A(n35), .Y(n93) );
  INVX2 U63 ( .A(count_en), .Y(n95) );
  INVX2 U65 ( .A(n43), .Y(n97) );
  INVX2 U67 ( .A(state[0]), .Y(n99) );
  INVX2 U68 ( .A(state[1]), .Y(oe) );
  INVX2 U69 ( .A(n17), .Y(n103) );
  INVX2 U70 ( .A(n16), .Y(n105) );
  INVX2 U79 ( .A(n15), .Y(n107) );
  INVX2 U82 ( .A(n14), .Y(n109) );
  INVX2 U85 ( .A(n13), .Y(n112) );
  INVX2 U120 ( .A(n12), .Y(n113) );
  INVX2 U121 ( .A(n11), .Y(n116) );
endmodule


module sigmoid_ALU_multiplier_3_DW_mult_tc_1 ( a, b, product );
  input [3:0] a;
  input [4:0] b;
  output [8:0] product;
  wire   n1, n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n30, n31, n32,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108;

  XOR2X1 U2 ( .A(n10), .B(n1), .Y(product[6]) );
  OAI21X1 U3 ( .A(n10), .B(n8), .C(n9), .Y(n7) );
  NAND2X1 U4 ( .A(n9), .B(n28), .Y(n1) );
  NOR2X1 U6 ( .A(n46), .B(n34), .Y(n8) );
  NAND2X1 U7 ( .A(n46), .B(n34), .Y(n9) );
  XNOR2X1 U8 ( .A(n15), .B(n2), .Y(product[5]) );
  AOI21X1 U9 ( .A(n19), .B(n11), .C(n12), .Y(n10) );
  NOR2X1 U10 ( .A(n107), .B(n16), .Y(n11) );
  OAI21X1 U11 ( .A(n13), .B(n17), .C(n14), .Y(n12) );
  NOR2X1 U14 ( .A(n35), .B(n36), .Y(n13) );
  XOR2X1 U16 ( .A(n18), .B(n3), .Y(product[4]) );
  OAI21X1 U17 ( .A(n18), .B(n106), .C(n97), .Y(n15) );
  NAND2X1 U18 ( .A(n97), .B(n30), .Y(n3) );
  NOR2X1 U20 ( .A(n40), .B(n37), .Y(n16) );
  NAND2X1 U21 ( .A(n40), .B(n37), .Y(n17) );
  XOR2X1 U22 ( .A(n4), .B(n22), .Y(product[3]) );
  OAI21X1 U24 ( .A(n20), .B(n22), .C(n21), .Y(n19) );
  NAND2X1 U25 ( .A(n21), .B(n31), .Y(n4) );
  NOR2X1 U27 ( .A(n43), .B(n41), .Y(n20) );
  NAND2X1 U28 ( .A(n43), .B(n41), .Y(n21) );
  XOR2X1 U29 ( .A(n5), .B(n27), .Y(product[2]) );
  OAI21X1 U31 ( .A(n24), .B(n27), .C(n25), .Y(n23) );
  NAND2X1 U32 ( .A(n25), .B(n32), .Y(n5) );
  NOR2X1 U34 ( .A(n53), .B(n45), .Y(n24) );
  NAND2X1 U35 ( .A(n53), .B(n45), .Y(n25) );
  NAND2X1 U40 ( .A(n57), .B(n60), .Y(n27) );
  HAX1 U43 ( .A(n54), .B(n51), .YC(n38), .YS(n39) );
  XNOR2X1 U45 ( .A(n55), .B(n58), .Y(n43) );
  OR2X2 U46 ( .A(n55), .B(n58), .Y(n42) );
  HAX1 U47 ( .A(n59), .B(n56), .YC(n44), .YS(n45) );
  OR2X1 U48 ( .A(n65), .B(n61), .Y(n46) );
  OR2X1 U49 ( .A(n65), .B(n62), .Y(n47) );
  OR2X1 U51 ( .A(n65), .B(n64), .Y(n49) );
  NOR2X1 U52 ( .A(n61), .B(n66), .Y(n50) );
  NOR2X1 U53 ( .A(n62), .B(n66), .Y(n51) );
  NOR2X1 U54 ( .A(n63), .B(n66), .Y(n52) );
  NOR2X1 U55 ( .A(n64), .B(n66), .Y(n53) );
  NOR2X1 U56 ( .A(n61), .B(n67), .Y(n54) );
  NOR2X1 U57 ( .A(n62), .B(n67), .Y(n55) );
  NOR2X1 U58 ( .A(n63), .B(n67), .Y(n56) );
  NOR2X1 U59 ( .A(n64), .B(n67), .Y(n57) );
  NOR2X1 U60 ( .A(n61), .B(n68), .Y(n58) );
  NOR2X1 U61 ( .A(n62), .B(n68), .Y(n59) );
  NOR2X1 U62 ( .A(n63), .B(n68), .Y(n60) );
  NOR2X1 U63 ( .A(n64), .B(n68), .Y(product[0]) );
  AND2X2 U75 ( .A(n27), .B(n92), .Y(product[1]) );
  OR2X2 U76 ( .A(n57), .B(n60), .Y(n92) );
  INVX1 U77 ( .A(n7), .Y(product[7]) );
  XOR2X1 U78 ( .A(n42), .B(n48), .Y(n93) );
  XOR2X1 U79 ( .A(n39), .B(n93), .Y(n37) );
  NAND2X1 U80 ( .A(n39), .B(n42), .Y(n94) );
  NAND2X1 U81 ( .A(n39), .B(n48), .Y(n95) );
  NAND2X1 U82 ( .A(n42), .B(n48), .Y(n96) );
  NAND3X1 U83 ( .A(n96), .B(n94), .C(n95), .Y(n36) );
  OR2X2 U84 ( .A(n65), .B(n63), .Y(n48) );
  BUFX2 U85 ( .A(n17), .Y(n97) );
  XOR2X1 U86 ( .A(n52), .B(n49), .Y(n98) );
  XOR2X1 U87 ( .A(n44), .B(n98), .Y(n41) );
  NAND2X1 U88 ( .A(n44), .B(n52), .Y(n99) );
  NAND2X1 U89 ( .A(n44), .B(n49), .Y(n100) );
  NAND2X1 U90 ( .A(n52), .B(n49), .Y(n101) );
  NAND3X1 U91 ( .A(n100), .B(n99), .C(n101), .Y(n40) );
  XOR2X1 U92 ( .A(n50), .B(n47), .Y(n102) );
  XOR2X1 U93 ( .A(n38), .B(n102), .Y(n35) );
  NAND2X1 U94 ( .A(n38), .B(n50), .Y(n103) );
  NAND2X1 U95 ( .A(n38), .B(n47), .Y(n104) );
  NAND2X1 U96 ( .A(n50), .B(n47), .Y(n105) );
  NAND3X1 U97 ( .A(n104), .B(n103), .C(n105), .Y(n34) );
  INVX2 U98 ( .A(n30), .Y(n106) );
  INVX1 U99 ( .A(n16), .Y(n30) );
  INVX1 U100 ( .A(n20), .Y(n31) );
  NOR2X1 U101 ( .A(n36), .B(n35), .Y(n107) );
  AND2X2 U102 ( .A(n36), .B(n35), .Y(n108) );
  INVX2 U103 ( .A(n108), .Y(n14) );
  OR2X1 U104 ( .A(n108), .B(n107), .Y(n2) );
  INVX2 U105 ( .A(a[0]), .Y(n68) );
  INVX2 U106 ( .A(a[1]), .Y(n67) );
  INVX2 U107 ( .A(a[2]), .Y(n66) );
  INVX2 U108 ( .A(a[3]), .Y(n65) );
  INVX2 U109 ( .A(b[0]), .Y(n64) );
  INVX2 U110 ( .A(b[1]), .Y(n63) );
  INVX2 U111 ( .A(b[2]), .Y(n62) );
  INVX2 U112 ( .A(b[3]), .Y(n61) );
  INVX2 U113 ( .A(n24), .Y(n32) );
  INVX2 U114 ( .A(n8), .Y(n28) );
  INVX2 U115 ( .A(n23), .Y(n22) );
  INVX2 U116 ( .A(n19), .Y(n18) );
endmodule


module sigmoid_ALU_multiplier_3 ( signval, unsignval, out );
  input [3:0] signval;
  input [3:0] unsignval;
  output [7:0] out;

  wire   SYNOPSYS_UNCONNECTED__0;

  sigmoid_ALU_multiplier_3_DW_mult_tc_1 mult_1611 ( .a(signval), .b({1'b0, 
        unsignval}), .product({SYNOPSYS_UNCONNECTED__0, out}) );
endmodule


module sigmoid_ALU_multiplier_2_DW_mult_tc_1 ( a, b, product );
  input [3:0] a;
  input [4:0] b;
  output [8:0] product;
  wire   n1, n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n30, n31, n32,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108;

  XOR2X1 U2 ( .A(n10), .B(n1), .Y(product[6]) );
  OAI21X1 U3 ( .A(n10), .B(n8), .C(n9), .Y(n7) );
  NAND2X1 U4 ( .A(n9), .B(n28), .Y(n1) );
  NOR2X1 U6 ( .A(n46), .B(n34), .Y(n8) );
  NAND2X1 U7 ( .A(n46), .B(n34), .Y(n9) );
  XNOR2X1 U8 ( .A(n15), .B(n2), .Y(product[5]) );
  AOI21X1 U9 ( .A(n19), .B(n11), .C(n12), .Y(n10) );
  NOR2X1 U10 ( .A(n107), .B(n16), .Y(n11) );
  OAI21X1 U11 ( .A(n13), .B(n17), .C(n14), .Y(n12) );
  NOR2X1 U14 ( .A(n35), .B(n36), .Y(n13) );
  XOR2X1 U16 ( .A(n18), .B(n3), .Y(product[4]) );
  OAI21X1 U17 ( .A(n18), .B(n106), .C(n97), .Y(n15) );
  NAND2X1 U18 ( .A(n97), .B(n30), .Y(n3) );
  NOR2X1 U20 ( .A(n40), .B(n37), .Y(n16) );
  NAND2X1 U21 ( .A(n40), .B(n37), .Y(n17) );
  XOR2X1 U22 ( .A(n4), .B(n22), .Y(product[3]) );
  OAI21X1 U24 ( .A(n20), .B(n22), .C(n21), .Y(n19) );
  NAND2X1 U25 ( .A(n21), .B(n31), .Y(n4) );
  NOR2X1 U27 ( .A(n43), .B(n41), .Y(n20) );
  NAND2X1 U28 ( .A(n43), .B(n41), .Y(n21) );
  XOR2X1 U29 ( .A(n5), .B(n27), .Y(product[2]) );
  OAI21X1 U31 ( .A(n24), .B(n27), .C(n25), .Y(n23) );
  NAND2X1 U32 ( .A(n25), .B(n32), .Y(n5) );
  NOR2X1 U34 ( .A(n53), .B(n45), .Y(n24) );
  NAND2X1 U35 ( .A(n53), .B(n45), .Y(n25) );
  NAND2X1 U40 ( .A(n57), .B(n60), .Y(n27) );
  HAX1 U43 ( .A(n54), .B(n51), .YC(n38), .YS(n39) );
  XNOR2X1 U45 ( .A(n55), .B(n58), .Y(n43) );
  OR2X2 U46 ( .A(n55), .B(n58), .Y(n42) );
  HAX1 U47 ( .A(n59), .B(n56), .YC(n44), .YS(n45) );
  OR2X1 U48 ( .A(n65), .B(n61), .Y(n46) );
  OR2X1 U49 ( .A(n65), .B(n62), .Y(n47) );
  OR2X1 U51 ( .A(n65), .B(n64), .Y(n49) );
  NOR2X1 U52 ( .A(n61), .B(n66), .Y(n50) );
  NOR2X1 U53 ( .A(n62), .B(n66), .Y(n51) );
  NOR2X1 U54 ( .A(n63), .B(n66), .Y(n52) );
  NOR2X1 U55 ( .A(n64), .B(n66), .Y(n53) );
  NOR2X1 U56 ( .A(n61), .B(n67), .Y(n54) );
  NOR2X1 U57 ( .A(n62), .B(n67), .Y(n55) );
  NOR2X1 U58 ( .A(n63), .B(n67), .Y(n56) );
  NOR2X1 U59 ( .A(n64), .B(n67), .Y(n57) );
  NOR2X1 U60 ( .A(n61), .B(n68), .Y(n58) );
  NOR2X1 U61 ( .A(n62), .B(n68), .Y(n59) );
  NOR2X1 U62 ( .A(n63), .B(n68), .Y(n60) );
  NOR2X1 U63 ( .A(n64), .B(n68), .Y(product[0]) );
  AND2X2 U75 ( .A(n27), .B(n92), .Y(product[1]) );
  OR2X2 U76 ( .A(n57), .B(n60), .Y(n92) );
  INVX1 U77 ( .A(n7), .Y(product[7]) );
  XOR2X1 U78 ( .A(n42), .B(n48), .Y(n93) );
  XOR2X1 U79 ( .A(n39), .B(n93), .Y(n37) );
  NAND2X1 U80 ( .A(n39), .B(n42), .Y(n94) );
  NAND2X1 U81 ( .A(n39), .B(n48), .Y(n95) );
  NAND2X1 U82 ( .A(n42), .B(n48), .Y(n96) );
  NAND3X1 U83 ( .A(n96), .B(n94), .C(n95), .Y(n36) );
  OR2X2 U84 ( .A(n65), .B(n63), .Y(n48) );
  BUFX2 U85 ( .A(n17), .Y(n97) );
  XOR2X1 U86 ( .A(n52), .B(n49), .Y(n98) );
  XOR2X1 U87 ( .A(n44), .B(n98), .Y(n41) );
  NAND2X1 U88 ( .A(n44), .B(n52), .Y(n99) );
  NAND2X1 U89 ( .A(n44), .B(n49), .Y(n100) );
  NAND2X1 U90 ( .A(n52), .B(n49), .Y(n101) );
  NAND3X1 U91 ( .A(n100), .B(n99), .C(n101), .Y(n40) );
  XOR2X1 U92 ( .A(n50), .B(n47), .Y(n102) );
  XOR2X1 U93 ( .A(n38), .B(n102), .Y(n35) );
  NAND2X1 U94 ( .A(n38), .B(n50), .Y(n103) );
  NAND2X1 U95 ( .A(n38), .B(n47), .Y(n104) );
  NAND2X1 U96 ( .A(n50), .B(n47), .Y(n105) );
  NAND3X1 U97 ( .A(n104), .B(n103), .C(n105), .Y(n34) );
  INVX2 U98 ( .A(n30), .Y(n106) );
  INVX1 U99 ( .A(n16), .Y(n30) );
  INVX1 U100 ( .A(n20), .Y(n31) );
  NOR2X1 U101 ( .A(n36), .B(n35), .Y(n107) );
  AND2X2 U102 ( .A(n36), .B(n35), .Y(n108) );
  INVX2 U103 ( .A(n108), .Y(n14) );
  OR2X1 U104 ( .A(n108), .B(n107), .Y(n2) );
  INVX2 U105 ( .A(a[0]), .Y(n68) );
  INVX2 U106 ( .A(a[1]), .Y(n67) );
  INVX2 U107 ( .A(a[2]), .Y(n66) );
  INVX2 U108 ( .A(a[3]), .Y(n65) );
  INVX2 U109 ( .A(b[0]), .Y(n64) );
  INVX2 U110 ( .A(b[1]), .Y(n63) );
  INVX2 U111 ( .A(b[2]), .Y(n62) );
  INVX2 U112 ( .A(b[3]), .Y(n61) );
  INVX2 U113 ( .A(n24), .Y(n32) );
  INVX2 U114 ( .A(n8), .Y(n28) );
  INVX2 U115 ( .A(n23), .Y(n22) );
  INVX2 U116 ( .A(n19), .Y(n18) );
endmodule


module sigmoid_ALU_multiplier_2 ( signval, unsignval, out );
  input [3:0] signval;
  input [3:0] unsignval;
  output [7:0] out;

  wire   SYNOPSYS_UNCONNECTED__0;

  sigmoid_ALU_multiplier_2_DW_mult_tc_1 mult_1611 ( .a(signval), .b({1'b0, 
        unsignval}), .product({SYNOPSYS_UNCONNECTED__0, out}) );
endmodule


module sigmoid_ALU_multiplier_1_DW_mult_tc_1 ( a, b, product );
  input [3:0] a;
  input [4:0] b;
  output [8:0] product;
  wire   n1, n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n30, n31, n32,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108;

  XOR2X1 U2 ( .A(n10), .B(n1), .Y(product[6]) );
  OAI21X1 U3 ( .A(n10), .B(n8), .C(n9), .Y(n7) );
  NAND2X1 U4 ( .A(n9), .B(n28), .Y(n1) );
  NOR2X1 U6 ( .A(n46), .B(n34), .Y(n8) );
  NAND2X1 U7 ( .A(n46), .B(n34), .Y(n9) );
  XNOR2X1 U8 ( .A(n15), .B(n2), .Y(product[5]) );
  AOI21X1 U9 ( .A(n19), .B(n11), .C(n12), .Y(n10) );
  NOR2X1 U10 ( .A(n107), .B(n16), .Y(n11) );
  OAI21X1 U11 ( .A(n13), .B(n17), .C(n14), .Y(n12) );
  NOR2X1 U14 ( .A(n35), .B(n36), .Y(n13) );
  XOR2X1 U16 ( .A(n18), .B(n3), .Y(product[4]) );
  OAI21X1 U17 ( .A(n18), .B(n106), .C(n97), .Y(n15) );
  NAND2X1 U18 ( .A(n97), .B(n30), .Y(n3) );
  NOR2X1 U20 ( .A(n40), .B(n37), .Y(n16) );
  NAND2X1 U21 ( .A(n40), .B(n37), .Y(n17) );
  XOR2X1 U22 ( .A(n4), .B(n22), .Y(product[3]) );
  OAI21X1 U24 ( .A(n20), .B(n22), .C(n21), .Y(n19) );
  NAND2X1 U25 ( .A(n21), .B(n31), .Y(n4) );
  NOR2X1 U27 ( .A(n43), .B(n41), .Y(n20) );
  NAND2X1 U28 ( .A(n43), .B(n41), .Y(n21) );
  XOR2X1 U29 ( .A(n5), .B(n27), .Y(product[2]) );
  OAI21X1 U31 ( .A(n24), .B(n27), .C(n25), .Y(n23) );
  NAND2X1 U32 ( .A(n25), .B(n32), .Y(n5) );
  NOR2X1 U34 ( .A(n53), .B(n45), .Y(n24) );
  NAND2X1 U35 ( .A(n53), .B(n45), .Y(n25) );
  NAND2X1 U40 ( .A(n57), .B(n60), .Y(n27) );
  HAX1 U43 ( .A(n54), .B(n51), .YC(n38), .YS(n39) );
  XNOR2X1 U45 ( .A(n55), .B(n58), .Y(n43) );
  OR2X2 U46 ( .A(n55), .B(n58), .Y(n42) );
  HAX1 U47 ( .A(n59), .B(n56), .YC(n44), .YS(n45) );
  OR2X1 U48 ( .A(n65), .B(n61), .Y(n46) );
  OR2X1 U49 ( .A(n65), .B(n62), .Y(n47) );
  OR2X1 U51 ( .A(n65), .B(n64), .Y(n49) );
  NOR2X1 U52 ( .A(n61), .B(n66), .Y(n50) );
  NOR2X1 U53 ( .A(n62), .B(n66), .Y(n51) );
  NOR2X1 U54 ( .A(n63), .B(n66), .Y(n52) );
  NOR2X1 U55 ( .A(n64), .B(n66), .Y(n53) );
  NOR2X1 U56 ( .A(n61), .B(n67), .Y(n54) );
  NOR2X1 U57 ( .A(n62), .B(n67), .Y(n55) );
  NOR2X1 U58 ( .A(n63), .B(n67), .Y(n56) );
  NOR2X1 U59 ( .A(n64), .B(n67), .Y(n57) );
  NOR2X1 U60 ( .A(n61), .B(n68), .Y(n58) );
  NOR2X1 U61 ( .A(n62), .B(n68), .Y(n59) );
  NOR2X1 U62 ( .A(n63), .B(n68), .Y(n60) );
  NOR2X1 U63 ( .A(n64), .B(n68), .Y(product[0]) );
  AND2X2 U75 ( .A(n27), .B(n92), .Y(product[1]) );
  OR2X2 U76 ( .A(n57), .B(n60), .Y(n92) );
  INVX1 U77 ( .A(n7), .Y(product[7]) );
  XOR2X1 U78 ( .A(n42), .B(n48), .Y(n93) );
  XOR2X1 U79 ( .A(n39), .B(n93), .Y(n37) );
  NAND2X1 U80 ( .A(n39), .B(n42), .Y(n94) );
  NAND2X1 U81 ( .A(n39), .B(n48), .Y(n95) );
  NAND2X1 U82 ( .A(n42), .B(n48), .Y(n96) );
  NAND3X1 U83 ( .A(n96), .B(n94), .C(n95), .Y(n36) );
  OR2X2 U84 ( .A(n65), .B(n63), .Y(n48) );
  BUFX2 U85 ( .A(n17), .Y(n97) );
  XOR2X1 U86 ( .A(n52), .B(n49), .Y(n98) );
  XOR2X1 U87 ( .A(n44), .B(n98), .Y(n41) );
  NAND2X1 U88 ( .A(n44), .B(n52), .Y(n99) );
  NAND2X1 U89 ( .A(n44), .B(n49), .Y(n100) );
  NAND2X1 U90 ( .A(n52), .B(n49), .Y(n101) );
  NAND3X1 U91 ( .A(n100), .B(n99), .C(n101), .Y(n40) );
  XOR2X1 U92 ( .A(n50), .B(n47), .Y(n102) );
  XOR2X1 U93 ( .A(n38), .B(n102), .Y(n35) );
  NAND2X1 U94 ( .A(n38), .B(n50), .Y(n103) );
  NAND2X1 U95 ( .A(n38), .B(n47), .Y(n104) );
  NAND2X1 U96 ( .A(n50), .B(n47), .Y(n105) );
  NAND3X1 U97 ( .A(n104), .B(n103), .C(n105), .Y(n34) );
  INVX2 U98 ( .A(n30), .Y(n106) );
  INVX1 U99 ( .A(n16), .Y(n30) );
  INVX1 U100 ( .A(n20), .Y(n31) );
  NOR2X1 U101 ( .A(n36), .B(n35), .Y(n107) );
  AND2X2 U102 ( .A(n36), .B(n35), .Y(n108) );
  INVX2 U103 ( .A(n108), .Y(n14) );
  OR2X1 U104 ( .A(n108), .B(n107), .Y(n2) );
  INVX2 U105 ( .A(a[0]), .Y(n68) );
  INVX2 U106 ( .A(a[1]), .Y(n67) );
  INVX2 U107 ( .A(a[2]), .Y(n66) );
  INVX2 U108 ( .A(a[3]), .Y(n65) );
  INVX2 U109 ( .A(b[0]), .Y(n64) );
  INVX2 U110 ( .A(b[1]), .Y(n63) );
  INVX2 U111 ( .A(b[2]), .Y(n62) );
  INVX2 U112 ( .A(b[3]), .Y(n61) );
  INVX2 U113 ( .A(n24), .Y(n32) );
  INVX2 U114 ( .A(n8), .Y(n28) );
  INVX2 U115 ( .A(n23), .Y(n22) );
  INVX2 U116 ( .A(n19), .Y(n18) );
endmodule


module sigmoid_ALU_multiplier_1 ( signval, unsignval, out );
  input [3:0] signval;
  input [3:0] unsignval;
  output [7:0] out;

  wire   SYNOPSYS_UNCONNECTED__0;

  sigmoid_ALU_multiplier_1_DW_mult_tc_1 mult_1611 ( .a(signval), .b({1'b0, 
        unsignval}), .product({SYNOPSYS_UNCONNECTED__0, out}) );
endmodule


module sigmoid_ALU_multiplier_0_DW_mult_tc_1 ( a, b, product );
  input [3:0] a;
  input [4:0] b;
  output [8:0] product;
  wire   n1, n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n30, n31, n32,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109;

  XOR2X1 U2 ( .A(n97), .B(n1), .Y(product[6]) );
  OAI21X1 U3 ( .A(n10), .B(n8), .C(n9), .Y(n7) );
  NAND2X1 U4 ( .A(n9), .B(n28), .Y(n1) );
  NOR2X1 U6 ( .A(n46), .B(n34), .Y(n8) );
  NAND2X1 U7 ( .A(n46), .B(n34), .Y(n9) );
  XNOR2X1 U8 ( .A(n15), .B(n2), .Y(product[5]) );
  AOI21X1 U9 ( .A(n19), .B(n11), .C(n12), .Y(n10) );
  NOR2X1 U10 ( .A(n108), .B(n16), .Y(n11) );
  OAI21X1 U11 ( .A(n13), .B(n17), .C(n14), .Y(n12) );
  NOR2X1 U14 ( .A(n36), .B(n35), .Y(n13) );
  NAND2X1 U15 ( .A(n36), .B(n35), .Y(n14) );
  XOR2X1 U16 ( .A(n102), .B(n3), .Y(product[4]) );
  OAI21X1 U17 ( .A(n18), .B(n107), .C(n17), .Y(n15) );
  NAND2X1 U18 ( .A(n17), .B(n30), .Y(n3) );
  NOR2X1 U20 ( .A(n40), .B(n37), .Y(n16) );
  NAND2X1 U21 ( .A(n40), .B(n37), .Y(n17) );
  XOR2X1 U22 ( .A(n4), .B(n22), .Y(product[3]) );
  OAI21X1 U24 ( .A(n20), .B(n22), .C(n21), .Y(n19) );
  NAND2X1 U25 ( .A(n21), .B(n31), .Y(n4) );
  NOR2X1 U27 ( .A(n43), .B(n41), .Y(n20) );
  NAND2X1 U28 ( .A(n43), .B(n41), .Y(n21) );
  XOR2X1 U29 ( .A(n5), .B(n27), .Y(product[2]) );
  OAI21X1 U31 ( .A(n24), .B(n27), .C(n25), .Y(n23) );
  NAND2X1 U32 ( .A(n25), .B(n32), .Y(n5) );
  NOR2X1 U34 ( .A(n53), .B(n45), .Y(n24) );
  NAND2X1 U35 ( .A(n53), .B(n45), .Y(n25) );
  NAND2X1 U40 ( .A(n57), .B(n60), .Y(n27) );
  HAX1 U43 ( .A(n54), .B(n51), .YC(n38), .YS(n39) );
  XNOR2X1 U45 ( .A(n55), .B(n58), .Y(n43) );
  OR2X2 U46 ( .A(n55), .B(n58), .Y(n42) );
  HAX1 U47 ( .A(n59), .B(n56), .YC(n44), .YS(n45) );
  OR2X1 U48 ( .A(n65), .B(n61), .Y(n46) );
  OR2X1 U49 ( .A(n65), .B(n62), .Y(n47) );
  OR2X1 U51 ( .A(n65), .B(n64), .Y(n49) );
  NOR2X1 U52 ( .A(n61), .B(n66), .Y(n50) );
  NOR2X1 U53 ( .A(n62), .B(n66), .Y(n51) );
  NOR2X1 U54 ( .A(n63), .B(n66), .Y(n52) );
  NOR2X1 U55 ( .A(n64), .B(n66), .Y(n53) );
  NOR2X1 U56 ( .A(n61), .B(n67), .Y(n54) );
  NOR2X1 U57 ( .A(n62), .B(n67), .Y(n55) );
  NOR2X1 U58 ( .A(n63), .B(n67), .Y(n56) );
  NOR2X1 U59 ( .A(n64), .B(n67), .Y(n57) );
  NOR2X1 U60 ( .A(n61), .B(n68), .Y(n58) );
  NOR2X1 U61 ( .A(n62), .B(n68), .Y(n59) );
  NOR2X1 U62 ( .A(n63), .B(n68), .Y(n60) );
  NOR2X1 U63 ( .A(n64), .B(n68), .Y(product[0]) );
  AND2X2 U75 ( .A(n27), .B(n92), .Y(product[1]) );
  OR2X2 U76 ( .A(n57), .B(n60), .Y(n92) );
  XOR2X1 U77 ( .A(n42), .B(n48), .Y(n93) );
  XOR2X1 U78 ( .A(n39), .B(n93), .Y(n37) );
  NAND2X1 U79 ( .A(n39), .B(n42), .Y(n94) );
  NAND2X1 U80 ( .A(n39), .B(n48), .Y(n95) );
  NAND2X1 U81 ( .A(n42), .B(n48), .Y(n96) );
  NAND3X1 U82 ( .A(n95), .B(n94), .C(n96), .Y(n36) );
  OR2X2 U83 ( .A(n65), .B(n63), .Y(n48) );
  AOI21X1 U84 ( .A(n19), .B(n11), .C(n12), .Y(n97) );
  XOR2X1 U85 ( .A(n50), .B(n47), .Y(n98) );
  XOR2X1 U86 ( .A(n38), .B(n98), .Y(n35) );
  NAND2X1 U87 ( .A(n38), .B(n50), .Y(n99) );
  NAND2X1 U88 ( .A(n38), .B(n47), .Y(n100) );
  NAND2X1 U89 ( .A(n50), .B(n47), .Y(n101) );
  NAND3X1 U90 ( .A(n100), .B(n99), .C(n101), .Y(n34) );
  BUFX2 U91 ( .A(n18), .Y(n102) );
  XOR2X1 U92 ( .A(n52), .B(n49), .Y(n103) );
  XOR2X1 U93 ( .A(n44), .B(n103), .Y(n41) );
  NAND2X1 U94 ( .A(n44), .B(n52), .Y(n104) );
  NAND2X1 U95 ( .A(n44), .B(n49), .Y(n105) );
  NAND2X1 U96 ( .A(n52), .B(n49), .Y(n106) );
  NAND3X1 U97 ( .A(n105), .B(n104), .C(n106), .Y(n40) );
  INVX2 U98 ( .A(n30), .Y(n107) );
  INVX1 U99 ( .A(n16), .Y(n30) );
  INVX1 U100 ( .A(n20), .Y(n31) );
  NOR2X1 U101 ( .A(n36), .B(n35), .Y(n108) );
  INVX1 U102 ( .A(n14), .Y(n109) );
  OR2X1 U103 ( .A(n109), .B(n108), .Y(n2) );
  INVX2 U104 ( .A(n7), .Y(product[7]) );
  INVX2 U105 ( .A(a[0]), .Y(n68) );
  INVX2 U106 ( .A(a[1]), .Y(n67) );
  INVX2 U107 ( .A(a[2]), .Y(n66) );
  INVX2 U108 ( .A(a[3]), .Y(n65) );
  INVX2 U109 ( .A(b[0]), .Y(n64) );
  INVX2 U110 ( .A(b[1]), .Y(n63) );
  INVX2 U111 ( .A(b[2]), .Y(n62) );
  INVX2 U112 ( .A(b[3]), .Y(n61) );
  INVX2 U113 ( .A(n24), .Y(n32) );
  INVX2 U114 ( .A(n8), .Y(n28) );
  INVX2 U115 ( .A(n23), .Y(n22) );
  INVX2 U116 ( .A(n19), .Y(n18) );
endmodule


module sigmoid_ALU_multiplier_0 ( signval, unsignval, out );
  input [3:0] signval;
  input [3:0] unsignval;
  output [7:0] out;

  wire   SYNOPSYS_UNCONNECTED__0;

  sigmoid_ALU_multiplier_0_DW_mult_tc_1 mult_1611 ( .a(signval), .b({1'b0, 
        unsignval}), .product({SYNOPSYS_UNCONNECTED__0, out}) );
endmodule


module sigmoid_ALU_4_way_adder_DW01_add_4 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n47, n48, n50, n51, n52, n53, n54, n56, n57, n90;

  XNOR2X1 U3 ( .A(n17), .B(n2), .Y(SUM[7]) );
  OAI21X1 U4 ( .A(n11), .B(n1), .C(n12), .Y(n10) );
  NAND2X1 U5 ( .A(n27), .B(n13), .Y(n11) );
  AOI21X1 U6 ( .A(n28), .B(n13), .C(n14), .Y(n12) );
  NOR2X1 U7 ( .A(n22), .B(n15), .Y(n13) );
  OAI21X1 U8 ( .A(n15), .B(n23), .C(n16), .Y(n14) );
  NAND2X1 U9 ( .A(n16), .B(n48), .Y(n2) );
  NOR2X1 U11 ( .A(n56), .B(n57), .Y(n15) );
  NAND2X1 U12 ( .A(n56), .B(n57), .Y(n16) );
  XNOR2X1 U13 ( .A(n24), .B(n3), .Y(SUM[6]) );
  OAI21X1 U14 ( .A(n1), .B(n18), .C(n19), .Y(n17) );
  NAND2X1 U15 ( .A(n20), .B(n27), .Y(n18) );
  AOI21X1 U16 ( .A(n20), .B(n28), .C(n21), .Y(n19) );
  NAND2X1 U19 ( .A(n23), .B(n20), .Y(n3) );
  NOR2X1 U21 ( .A(B[6]), .B(A[6]), .Y(n22) );
  NAND2X1 U22 ( .A(B[6]), .B(A[6]), .Y(n23) );
  XNOR2X1 U23 ( .A(n31), .B(n4), .Y(SUM[5]) );
  OAI21X1 U24 ( .A(n1), .B(n25), .C(n26), .Y(n24) );
  NOR2X1 U27 ( .A(n29), .B(n32), .Y(n27) );
  OAI21X1 U28 ( .A(n29), .B(n33), .C(n30), .Y(n28) );
  NAND2X1 U29 ( .A(n30), .B(n50), .Y(n4) );
  NOR2X1 U31 ( .A(B[5]), .B(A[5]), .Y(n29) );
  NAND2X1 U32 ( .A(B[5]), .B(A[5]), .Y(n30) );
  XOR2X1 U33 ( .A(n1), .B(n5), .Y(SUM[4]) );
  OAI21X1 U34 ( .A(n1), .B(n32), .C(n33), .Y(n31) );
  NAND2X1 U35 ( .A(n33), .B(n51), .Y(n5) );
  NOR2X1 U37 ( .A(B[4]), .B(A[4]), .Y(n32) );
  NAND2X1 U38 ( .A(B[4]), .B(A[4]), .Y(n33) );
  XNOR2X1 U39 ( .A(n39), .B(n6), .Y(SUM[3]) );
  AOI21X1 U40 ( .A(n43), .B(n35), .C(n36), .Y(n34) );
  NOR2X1 U41 ( .A(n37), .B(n40), .Y(n35) );
  OAI21X1 U42 ( .A(n37), .B(n41), .C(n38), .Y(n36) );
  NAND2X1 U43 ( .A(n38), .B(n52), .Y(n6) );
  NOR2X1 U45 ( .A(B[3]), .B(A[3]), .Y(n37) );
  NAND2X1 U46 ( .A(B[3]), .B(A[3]), .Y(n38) );
  XOR2X1 U47 ( .A(n42), .B(n7), .Y(SUM[2]) );
  OAI21X1 U48 ( .A(n42), .B(n40), .C(n41), .Y(n39) );
  NAND2X1 U49 ( .A(n41), .B(n53), .Y(n7) );
  NOR2X1 U51 ( .A(B[2]), .B(A[2]), .Y(n40) );
  NAND2X1 U52 ( .A(B[2]), .B(A[2]), .Y(n41) );
  XOR2X1 U53 ( .A(n8), .B(n47), .Y(SUM[1]) );
  OAI21X1 U55 ( .A(n44), .B(n47), .C(n45), .Y(n43) );
  NAND2X1 U56 ( .A(n45), .B(n54), .Y(n8) );
  NOR2X1 U58 ( .A(B[1]), .B(A[1]), .Y(n44) );
  NAND2X1 U59 ( .A(B[1]), .B(A[1]), .Y(n45) );
  NAND2X1 U64 ( .A(B[0]), .B(A[0]), .Y(n47) );
  AND2X2 U70 ( .A(n47), .B(n90), .Y(SUM[0]) );
  OR2X2 U71 ( .A(B[0]), .B(A[0]), .Y(n90) );
  INVX2 U72 ( .A(n15), .Y(n48) );
  INVX2 U73 ( .A(n10), .Y(SUM[8]) );
  INVX2 U74 ( .A(n27), .Y(n25) );
  INVX2 U75 ( .A(n28), .Y(n26) );
  INVX2 U76 ( .A(n23), .Y(n21) );
  INVX2 U77 ( .A(n22), .Y(n20) );
  INVX2 U78 ( .A(n32), .Y(n51) );
  INVX2 U79 ( .A(n40), .Y(n53) );
  INVX2 U80 ( .A(n29), .Y(n50) );
  BUFX2 U81 ( .A(n34), .Y(n1) );
  INVX2 U82 ( .A(B[7]), .Y(n56) );
  INVX2 U83 ( .A(A[7]), .Y(n57) );
  INVX2 U84 ( .A(n44), .Y(n54) );
  INVX1 U85 ( .A(n43), .Y(n42) );
  INVX2 U86 ( .A(n37), .Y(n52) );
endmodule


module sigmoid_ALU_4_way_adder_DW01_add_5 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n12, n13, n15, n17, n18, n19, n20,
         n21, n23, n25, n26, n27, n29, n31, n32, n33, n34, n35, n37, n39, n40,
         n41, n42, n43, n45, n46, n47, n48, n50, n53, n56, n58, n59, n97, n98,
         n99, n100, n101, n102, n103, n104;

  XOR2X1 U1 ( .A(n13), .B(n1), .Y(SUM[9]) );
  NAND2X1 U2 ( .A(n12), .B(n99), .Y(n1) );
  NAND2X1 U5 ( .A(B[8]), .B(A[9]), .Y(n12) );
  XNOR2X1 U6 ( .A(n98), .B(n2), .Y(SUM[8]) );
  AOI21X1 U7 ( .A(n97), .B(n18), .C(n15), .Y(n13) );
  NAND2X1 U10 ( .A(n17), .B(n97), .Y(n2) );
  NAND2X1 U13 ( .A(B[8]), .B(A[8]), .Y(n17) );
  XOR2X1 U14 ( .A(n104), .B(n3), .Y(SUM[7]) );
  OAI21X1 U15 ( .A(n21), .B(n19), .C(n20), .Y(n18) );
  NAND2X1 U16 ( .A(n20), .B(n53), .Y(n3) );
  NOR2X1 U18 ( .A(B[7]), .B(A[7]), .Y(n19) );
  NAND2X1 U19 ( .A(B[7]), .B(A[7]), .Y(n20) );
  XNOR2X1 U20 ( .A(n4), .B(n26), .Y(SUM[6]) );
  AOI21X1 U21 ( .A(n26), .B(n100), .C(n23), .Y(n21) );
  NAND2X1 U24 ( .A(n25), .B(n100), .Y(n4) );
  NAND2X1 U27 ( .A(B[6]), .B(A[6]), .Y(n25) );
  XNOR2X1 U28 ( .A(n5), .B(n32), .Y(SUM[5]) );
  AOI21X1 U30 ( .A(n32), .B(n102), .C(n29), .Y(n27) );
  NAND2X1 U33 ( .A(n31), .B(n102), .Y(n5) );
  NAND2X1 U36 ( .A(B[5]), .B(A[5]), .Y(n31) );
  XOR2X1 U37 ( .A(n6), .B(n35), .Y(SUM[4]) );
  OAI21X1 U38 ( .A(n33), .B(n35), .C(n34), .Y(n32) );
  NAND2X1 U39 ( .A(n34), .B(n56), .Y(n6) );
  NOR2X1 U41 ( .A(B[4]), .B(A[4]), .Y(n33) );
  NAND2X1 U42 ( .A(B[4]), .B(A[4]), .Y(n34) );
  XNOR2X1 U43 ( .A(n7), .B(n40), .Y(SUM[3]) );
  AOI21X1 U44 ( .A(n40), .B(n101), .C(n37), .Y(n35) );
  NAND2X1 U47 ( .A(n39), .B(n101), .Y(n7) );
  NAND2X1 U50 ( .A(B[3]), .B(A[3]), .Y(n39) );
  XOR2X1 U51 ( .A(n8), .B(n43), .Y(SUM[2]) );
  OAI21X1 U52 ( .A(n41), .B(n43), .C(n42), .Y(n40) );
  NAND2X1 U53 ( .A(n42), .B(n58), .Y(n8) );
  NOR2X1 U55 ( .A(B[2]), .B(A[2]), .Y(n41) );
  NAND2X1 U56 ( .A(B[2]), .B(A[2]), .Y(n42) );
  XNOR2X1 U57 ( .A(n9), .B(n48), .Y(SUM[1]) );
  AOI21X1 U58 ( .A(n48), .B(n59), .C(n45), .Y(n43) );
  NAND2X1 U61 ( .A(n47), .B(n59), .Y(n9) );
  NOR2X1 U63 ( .A(A[1]), .B(B[1]), .Y(n46) );
  NAND2X1 U64 ( .A(A[1]), .B(B[1]), .Y(n47) );
  NAND2X1 U70 ( .A(A[0]), .B(B[0]), .Y(n50) );
  AND2X2 U74 ( .A(n50), .B(n103), .Y(SUM[0]) );
  OR2X2 U75 ( .A(B[8]), .B(A[8]), .Y(n97) );
  BUFX2 U76 ( .A(n18), .Y(n98) );
  OR2X2 U77 ( .A(B[6]), .B(A[6]), .Y(n100) );
  OR2X2 U78 ( .A(B[5]), .B(A[5]), .Y(n102) );
  OR2X1 U79 ( .A(B[8]), .B(A[9]), .Y(n99) );
  OR2X1 U80 ( .A(B[3]), .B(A[3]), .Y(n101) );
  OR2X1 U81 ( .A(A[0]), .B(B[0]), .Y(n103) );
  BUFX2 U82 ( .A(n21), .Y(n104) );
  INVX2 U83 ( .A(n41), .Y(n58) );
  INVX2 U84 ( .A(n33), .Y(n56) );
  INVX2 U85 ( .A(n19), .Y(n53) );
  INVX2 U86 ( .A(n50), .Y(n48) );
  INVX2 U87 ( .A(n47), .Y(n45) );
  INVX2 U88 ( .A(n46), .Y(n59) );
  INVX2 U89 ( .A(n39), .Y(n37) );
  INVX2 U90 ( .A(n31), .Y(n29) );
  INVX2 U91 ( .A(n27), .Y(n26) );
  INVX2 U92 ( .A(n25), .Y(n23) );
  INVX2 U93 ( .A(n17), .Y(n15) );
endmodule


module sigmoid_ALU_4_way_adder ( in1, in2, in3, in4, out );
  input [7:0] in1;
  input [7:0] in2;
  input [7:0] in3;
  input [7:0] in4;
  output [9:0] out;
  wire   N9, N8, N7, N6, N5, N4, N3, N2, N18, N17, N16, N15, N14, N13, N12,
         N11, N10, N1, N0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46;

  sigmoid_ALU_4_way_adder_DW01_add_4 add_2_root_add_1555_3 ( .A({in1[7], in1}), 
        .B({in2[7], in2}), .CI(1'b0), .SUM({N8, N7, N6, N5, N4, N3, N2, N1, N0}) );
  sigmoid_ALU_4_way_adder_DW01_add_5 add_0_root_add_0_root_add_1555_3 ( .A({
        N18, N17, N16, N15, N14, N13, N12, N11, N10, N9}), .B({N8, N8, N7, N6, 
        N5, N4, N3, N2, N1, N0}), .CI(1'b0), .SUM(out) );
  AND2X2 U1 ( .A(n6), .B(n20), .Y(n1) );
  OR2X2 U2 ( .A(n38), .B(n12), .Y(n2) );
  NAND2X1 U3 ( .A(n2), .B(n11), .Y(n35) );
  INVX1 U4 ( .A(in4[3]), .Y(n12) );
  INVX1 U5 ( .A(n35), .Y(n36) );
  MUX2X1 U6 ( .B(n25), .A(n1), .S(n22), .Y(N17) );
  AND2X2 U7 ( .A(in4[0]), .B(in3[0]), .Y(n3) );
  INVX2 U8 ( .A(in3[7]), .Y(n5) );
  INVX2 U9 ( .A(in4[7]), .Y(n4) );
  NAND2X1 U10 ( .A(n5), .B(n4), .Y(n6) );
  NAND2X1 U11 ( .A(in4[7]), .B(in3[7]), .Y(n20) );
  XOR2X1 U12 ( .A(n5), .B(in4[7]), .Y(n25) );
  INVX2 U13 ( .A(n6), .Y(n21) );
  INVX2 U14 ( .A(in3[6]), .Y(n26) );
  INVX2 U15 ( .A(in4[6]), .Y(n18) );
  INVX2 U16 ( .A(in3[5]), .Y(n30) );
  INVX2 U17 ( .A(in4[5]), .Y(n16) );
  INVX2 U18 ( .A(in3[4]), .Y(n34) );
  INVX2 U19 ( .A(in4[4]), .Y(n14) );
  INVX2 U20 ( .A(in3[3]), .Y(n38) );
  INVX2 U21 ( .A(in3[2]), .Y(n42) );
  INVX2 U22 ( .A(in4[2]), .Y(n10) );
  OAI21X1 U23 ( .A(in4[1]), .B(in3[1]), .C(n3), .Y(n8) );
  NAND2X1 U24 ( .A(in3[1]), .B(in4[1]), .Y(n7) );
  NAND2X1 U25 ( .A(n8), .B(n7), .Y(n43) );
  OAI21X1 U26 ( .A(in4[2]), .B(in3[2]), .C(n43), .Y(n9) );
  OAI21X1 U27 ( .A(n42), .B(n10), .C(n9), .Y(n39) );
  OAI21X1 U28 ( .A(in4[3]), .B(in3[3]), .C(n39), .Y(n11) );
  OAI21X1 U29 ( .A(in4[4]), .B(in3[4]), .C(n35), .Y(n13) );
  OAI21X1 U30 ( .A(n34), .B(n14), .C(n13), .Y(n31) );
  OAI21X1 U31 ( .A(in4[5]), .B(in3[5]), .C(n31), .Y(n15) );
  OAI21X1 U32 ( .A(n30), .B(n16), .C(n15), .Y(n27) );
  OAI21X1 U33 ( .A(in4[6]), .B(in3[6]), .C(n27), .Y(n17) );
  OAI21X1 U34 ( .A(n26), .B(n18), .C(n17), .Y(n19) );
  INVX2 U35 ( .A(n19), .Y(n24) );
  OAI21X1 U36 ( .A(n21), .B(n24), .C(n20), .Y(n22) );
  INVX2 U37 ( .A(n22), .Y(n23) );
  MUX2X1 U38 ( .B(n1), .A(n25), .S(n23), .Y(N18) );
  MUX2X1 U39 ( .B(n1), .A(n25), .S(n24), .Y(N16) );
  XOR2X1 U40 ( .A(n26), .B(in4[6]), .Y(n29) );
  INVX2 U41 ( .A(n27), .Y(n28) );
  XOR2X1 U42 ( .A(n29), .B(n28), .Y(N15) );
  XOR2X1 U43 ( .A(n30), .B(in4[5]), .Y(n33) );
  INVX2 U44 ( .A(n31), .Y(n32) );
  XOR2X1 U45 ( .A(n33), .B(n32), .Y(N14) );
  XOR2X1 U46 ( .A(n34), .B(in4[4]), .Y(n37) );
  XOR2X1 U47 ( .A(n37), .B(n36), .Y(N13) );
  XOR2X1 U48 ( .A(n38), .B(in4[3]), .Y(n41) );
  INVX2 U49 ( .A(n39), .Y(n40) );
  XOR2X1 U50 ( .A(n41), .B(n40), .Y(N12) );
  XOR2X1 U51 ( .A(n42), .B(in4[2]), .Y(n45) );
  INVX2 U52 ( .A(n43), .Y(n44) );
  XOR2X1 U53 ( .A(n45), .B(n44), .Y(N11) );
  XOR2X1 U54 ( .A(in4[1]), .B(in3[1]), .Y(n46) );
  XOR2X1 U55 ( .A(n3), .B(n46), .Y(N10) );
  XOR2X1 U56 ( .A(in4[0]), .B(in3[0]), .Y(N9) );
endmodule


module sigmoid_ALU_accumulator_DW01_add_1 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n18,
         n19, n21, n23, n24, n25, n26, n27, n29, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n44, n46, n47, n48, n49, n51, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n89, n92, n94, n95, n97, n98, n99, n100, n102,
         n103, n104, n155, n156, n157, n158, n159;

  XOR2X1 U1 ( .A(n19), .B(n1), .Y(SUM[15]) );
  NAND2X1 U2 ( .A(n18), .B(n158), .Y(n1) );
  NAND2X1 U5 ( .A(A[9]), .B(B[15]), .Y(n18) );
  XNOR2X1 U6 ( .A(n24), .B(n2), .Y(SUM[14]) );
  AOI21X1 U7 ( .A(n157), .B(n24), .C(n21), .Y(n19) );
  NAND2X1 U10 ( .A(n23), .B(n157), .Y(n2) );
  NAND2X1 U13 ( .A(A[9]), .B(B[14]), .Y(n23) );
  XOR2X1 U14 ( .A(n27), .B(n3), .Y(SUM[13]) );
  OAI21X1 U15 ( .A(n27), .B(n25), .C(n26), .Y(n24) );
  NAND2X1 U16 ( .A(n26), .B(n92), .Y(n3) );
  NOR2X1 U18 ( .A(A[9]), .B(B[13]), .Y(n25) );
  NAND2X1 U19 ( .A(A[9]), .B(B[13]), .Y(n26) );
  XNOR2X1 U20 ( .A(n32), .B(n4), .Y(SUM[12]) );
  AOI21X1 U21 ( .A(n156), .B(n32), .C(n29), .Y(n27) );
  NAND2X1 U24 ( .A(n31), .B(n156), .Y(n4) );
  NAND2X1 U27 ( .A(A[9]), .B(B[12]), .Y(n31) );
  XOR2X1 U28 ( .A(n35), .B(n5), .Y(SUM[11]) );
  OAI21X1 U29 ( .A(n35), .B(n33), .C(n34), .Y(n32) );
  NAND2X1 U30 ( .A(n34), .B(n94), .Y(n5) );
  NOR2X1 U32 ( .A(A[9]), .B(B[11]), .Y(n33) );
  NAND2X1 U33 ( .A(A[9]), .B(B[11]), .Y(n34) );
  XNOR2X1 U34 ( .A(n40), .B(n6), .Y(SUM[10]) );
  AOI21X1 U35 ( .A(n36), .B(n55), .C(n37), .Y(n35) );
  NOR2X1 U36 ( .A(n38), .B(n41), .Y(n36) );
  OAI21X1 U37 ( .A(n42), .B(n38), .C(n39), .Y(n37) );
  NAND2X1 U38 ( .A(n39), .B(n95), .Y(n6) );
  NOR2X1 U40 ( .A(A[9]), .B(B[10]), .Y(n38) );
  NAND2X1 U41 ( .A(A[9]), .B(B[10]), .Y(n39) );
  XNOR2X1 U42 ( .A(n47), .B(n7), .Y(SUM[9]) );
  OAI21X1 U43 ( .A(n54), .B(n41), .C(n42), .Y(n40) );
  NAND2X1 U44 ( .A(n155), .B(n97), .Y(n41) );
  AOI21X1 U45 ( .A(n51), .B(n155), .C(n44), .Y(n42) );
  NAND2X1 U48 ( .A(n46), .B(n155), .Y(n7) );
  NAND2X1 U51 ( .A(A[9]), .B(B[9]), .Y(n46) );
  XOR2X1 U52 ( .A(n54), .B(n8), .Y(SUM[8]) );
  OAI21X1 U53 ( .A(n54), .B(n48), .C(n49), .Y(n47) );
  NAND2X1 U58 ( .A(n49), .B(n97), .Y(n8) );
  NOR2X1 U60 ( .A(A[8]), .B(B[8]), .Y(n48) );
  NAND2X1 U61 ( .A(A[8]), .B(B[8]), .Y(n49) );
  XNOR2X1 U62 ( .A(n62), .B(n9), .Y(SUM[7]) );
  OAI21X1 U64 ( .A(n56), .B(n76), .C(n57), .Y(n55) );
  NAND2X1 U65 ( .A(n58), .B(n66), .Y(n56) );
  AOI21X1 U66 ( .A(n67), .B(n58), .C(n59), .Y(n57) );
  NOR2X1 U67 ( .A(n60), .B(n63), .Y(n58) );
  OAI21X1 U68 ( .A(n60), .B(n64), .C(n61), .Y(n59) );
  NAND2X1 U69 ( .A(n61), .B(n98), .Y(n9) );
  NOR2X1 U71 ( .A(A[7]), .B(B[7]), .Y(n60) );
  NAND2X1 U72 ( .A(A[7]), .B(B[7]), .Y(n61) );
  XOR2X1 U73 ( .A(n65), .B(n10), .Y(SUM[6]) );
  OAI21X1 U74 ( .A(n65), .B(n63), .C(n64), .Y(n62) );
  NAND2X1 U75 ( .A(n64), .B(n99), .Y(n10) );
  NOR2X1 U77 ( .A(A[6]), .B(B[6]), .Y(n63) );
  NAND2X1 U78 ( .A(A[6]), .B(B[6]), .Y(n64) );
  XOR2X1 U79 ( .A(n70), .B(n11), .Y(SUM[5]) );
  AOI21X1 U80 ( .A(n66), .B(n75), .C(n67), .Y(n65) );
  NOR2X1 U81 ( .A(n68), .B(n73), .Y(n66) );
  OAI21X1 U82 ( .A(n68), .B(n74), .C(n69), .Y(n67) );
  NAND2X1 U83 ( .A(n69), .B(n100), .Y(n11) );
  NOR2X1 U85 ( .A(A[5]), .B(B[5]), .Y(n68) );
  NAND2X1 U86 ( .A(A[5]), .B(B[5]), .Y(n69) );
  XNOR2X1 U87 ( .A(n75), .B(n12), .Y(SUM[4]) );
  AOI21X1 U88 ( .A(n71), .B(n75), .C(n72), .Y(n70) );
  NAND2X1 U91 ( .A(n74), .B(n71), .Y(n12) );
  NOR2X1 U93 ( .A(A[4]), .B(B[4]), .Y(n73) );
  NAND2X1 U94 ( .A(A[4]), .B(B[4]), .Y(n74) );
  XNOR2X1 U95 ( .A(n81), .B(n13), .Y(SUM[3]) );
  AOI21X1 U97 ( .A(n85), .B(n77), .C(n78), .Y(n76) );
  NOR2X1 U98 ( .A(n79), .B(n82), .Y(n77) );
  OAI21X1 U99 ( .A(n79), .B(n83), .C(n80), .Y(n78) );
  NAND2X1 U100 ( .A(n80), .B(n102), .Y(n13) );
  NOR2X1 U102 ( .A(A[3]), .B(B[3]), .Y(n79) );
  NAND2X1 U103 ( .A(A[3]), .B(B[3]), .Y(n80) );
  XOR2X1 U104 ( .A(n14), .B(n84), .Y(SUM[2]) );
  OAI21X1 U105 ( .A(n84), .B(n82), .C(n83), .Y(n81) );
  NAND2X1 U106 ( .A(n83), .B(n103), .Y(n14) );
  NOR2X1 U108 ( .A(A[2]), .B(B[2]), .Y(n82) );
  NAND2X1 U109 ( .A(A[2]), .B(B[2]), .Y(n83) );
  XOR2X1 U110 ( .A(n15), .B(n89), .Y(SUM[1]) );
  OAI21X1 U112 ( .A(n86), .B(n89), .C(n87), .Y(n85) );
  NAND2X1 U113 ( .A(n87), .B(n104), .Y(n15) );
  NOR2X1 U115 ( .A(A[1]), .B(B[1]), .Y(n86) );
  NAND2X1 U116 ( .A(A[1]), .B(B[1]), .Y(n87) );
  NAND2X1 U121 ( .A(A[0]), .B(B[0]), .Y(n89) );
  AND2X2 U125 ( .A(n89), .B(n159), .Y(SUM[0]) );
  OR2X2 U126 ( .A(A[9]), .B(B[9]), .Y(n155) );
  OR2X2 U127 ( .A(A[9]), .B(B[12]), .Y(n156) );
  OR2X2 U128 ( .A(A[9]), .B(B[14]), .Y(n157) );
  OR2X2 U129 ( .A(A[9]), .B(B[15]), .Y(n158) );
  OR2X2 U130 ( .A(A[0]), .B(B[0]), .Y(n159) );
  INVX2 U131 ( .A(n63), .Y(n99) );
  INVX2 U132 ( .A(n60), .Y(n98) );
  INVX2 U133 ( .A(n38), .Y(n95) );
  INVX2 U134 ( .A(n33), .Y(n94) );
  INVX2 U135 ( .A(n25), .Y(n92) );
  INVX2 U136 ( .A(n85), .Y(n84) );
  INVX2 U137 ( .A(n76), .Y(n75) );
  INVX2 U138 ( .A(n74), .Y(n72) );
  INVX2 U139 ( .A(n55), .Y(n54) );
  INVX2 U140 ( .A(n49), .Y(n51) );
  INVX2 U141 ( .A(n48), .Y(n97) );
  INVX2 U142 ( .A(n46), .Y(n44) );
  INVX2 U143 ( .A(n31), .Y(n29) );
  INVX2 U144 ( .A(n23), .Y(n21) );
  INVX2 U145 ( .A(n86), .Y(n104) );
  INVX2 U146 ( .A(n82), .Y(n103) );
  INVX2 U147 ( .A(n79), .Y(n102) );
  INVX2 U148 ( .A(n73), .Y(n71) );
  INVX2 U149 ( .A(n68), .Y(n100) );
endmodule


module sigmoid_ALU_accumulator ( accumulate, clear, clk, newval, out );
  input [9:0] newval;
  output [15:0] out;
  input accumulate, clear, clk;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
         N18, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52;

  DFFPOSX1 \out_reg[0]  ( .D(n52), .CLK(clk), .Q(out[0]) );
  DFFPOSX1 \out_reg[1]  ( .D(n51), .CLK(clk), .Q(out[1]) );
  DFFPOSX1 \out_reg[2]  ( .D(n50), .CLK(clk), .Q(out[2]) );
  DFFPOSX1 \out_reg[3]  ( .D(n49), .CLK(clk), .Q(out[3]) );
  DFFPOSX1 \out_reg[4]  ( .D(n48), .CLK(clk), .Q(out[4]) );
  DFFPOSX1 \out_reg[5]  ( .D(n47), .CLK(clk), .Q(out[5]) );
  DFFPOSX1 \out_reg[6]  ( .D(n46), .CLK(clk), .Q(out[6]) );
  DFFPOSX1 \out_reg[7]  ( .D(n45), .CLK(clk), .Q(out[7]) );
  DFFPOSX1 \out_reg[8]  ( .D(n44), .CLK(clk), .Q(out[8]) );
  DFFPOSX1 \out_reg[9]  ( .D(n43), .CLK(clk), .Q(out[9]) );
  DFFPOSX1 \out_reg[10]  ( .D(n42), .CLK(clk), .Q(out[10]) );
  DFFPOSX1 \out_reg[11]  ( .D(n41), .CLK(clk), .Q(out[11]) );
  DFFPOSX1 \out_reg[12]  ( .D(n40), .CLK(clk), .Q(out[12]) );
  DFFPOSX1 \out_reg[13]  ( .D(n39), .CLK(clk), .Q(out[13]) );
  DFFPOSX1 \out_reg[14]  ( .D(n38), .CLK(clk), .Q(out[14]) );
  DFFPOSX1 \out_reg[15]  ( .D(n37), .CLK(clk), .Q(out[15]) );
  sigmoid_ALU_accumulator_DW01_add_1 add_1587 ( .A({newval[9], newval[9], 
        newval[9], newval[9], newval[9], newval[9], newval}), .B(out), .CI(
        1'b0), .SUM({N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, 
        N6, N5, N4, N3}) );
  OR2X2 U2 ( .A(accumulate), .B(clear), .Y(n2) );
  AND2X2 U4 ( .A(n2), .B(n4), .Y(n3) );
  INVX2 U5 ( .A(out[15]), .Y(n6) );
  INVX2 U6 ( .A(clear), .Y(n4) );
  NAND2X1 U7 ( .A(N18), .B(n3), .Y(n5) );
  OAI21X1 U8 ( .A(n2), .B(n6), .C(n5), .Y(n37) );
  INVX2 U9 ( .A(out[14]), .Y(n8) );
  NAND2X1 U10 ( .A(N17), .B(n3), .Y(n7) );
  OAI21X1 U11 ( .A(n2), .B(n8), .C(n7), .Y(n38) );
  INVX2 U12 ( .A(out[13]), .Y(n10) );
  NAND2X1 U13 ( .A(N16), .B(n3), .Y(n9) );
  OAI21X1 U14 ( .A(n2), .B(n10), .C(n9), .Y(n39) );
  INVX2 U15 ( .A(out[12]), .Y(n12) );
  NAND2X1 U16 ( .A(N15), .B(n3), .Y(n11) );
  OAI21X1 U17 ( .A(n2), .B(n12), .C(n11), .Y(n40) );
  INVX2 U18 ( .A(out[11]), .Y(n14) );
  NAND2X1 U19 ( .A(N14), .B(n3), .Y(n13) );
  OAI21X1 U20 ( .A(n2), .B(n14), .C(n13), .Y(n41) );
  INVX2 U21 ( .A(out[10]), .Y(n16) );
  NAND2X1 U22 ( .A(N13), .B(n3), .Y(n15) );
  OAI21X1 U23 ( .A(n2), .B(n16), .C(n15), .Y(n42) );
  INVX2 U24 ( .A(out[9]), .Y(n18) );
  NAND2X1 U25 ( .A(N12), .B(n3), .Y(n17) );
  OAI21X1 U26 ( .A(n2), .B(n18), .C(n17), .Y(n43) );
  INVX2 U27 ( .A(out[8]), .Y(n20) );
  NAND2X1 U28 ( .A(N11), .B(n3), .Y(n19) );
  OAI21X1 U29 ( .A(n2), .B(n20), .C(n19), .Y(n44) );
  INVX2 U30 ( .A(out[7]), .Y(n22) );
  NAND2X1 U31 ( .A(N10), .B(n3), .Y(n21) );
  OAI21X1 U32 ( .A(n2), .B(n22), .C(n21), .Y(n45) );
  INVX2 U33 ( .A(out[6]), .Y(n24) );
  NAND2X1 U34 ( .A(N9), .B(n3), .Y(n23) );
  OAI21X1 U35 ( .A(n2), .B(n24), .C(n23), .Y(n46) );
  INVX2 U36 ( .A(out[5]), .Y(n26) );
  NAND2X1 U37 ( .A(N8), .B(n3), .Y(n25) );
  OAI21X1 U38 ( .A(n2), .B(n26), .C(n25), .Y(n47) );
  INVX2 U39 ( .A(out[4]), .Y(n28) );
  NAND2X1 U40 ( .A(N7), .B(n3), .Y(n27) );
  OAI21X1 U41 ( .A(n2), .B(n28), .C(n27), .Y(n48) );
  INVX2 U42 ( .A(out[3]), .Y(n30) );
  NAND2X1 U43 ( .A(N6), .B(n3), .Y(n29) );
  OAI21X1 U44 ( .A(n2), .B(n30), .C(n29), .Y(n49) );
  INVX2 U45 ( .A(out[2]), .Y(n32) );
  NAND2X1 U46 ( .A(N5), .B(n3), .Y(n31) );
  OAI21X1 U47 ( .A(n2), .B(n32), .C(n31), .Y(n50) );
  INVX2 U48 ( .A(out[1]), .Y(n34) );
  NAND2X1 U49 ( .A(N4), .B(n3), .Y(n33) );
  OAI21X1 U50 ( .A(n2), .B(n34), .C(n33), .Y(n51) );
  INVX2 U51 ( .A(out[0]), .Y(n36) );
  NAND2X1 U52 ( .A(N3), .B(n3), .Y(n35) );
  OAI21X1 U53 ( .A(n2), .B(n36), .C(n35), .Y(n52) );
endmodule


module sigmoid_ALU_sigmoid_calculator ( accum, bias, sigma );
  input [13:0] accum;
  input [3:0] bias;
  output [3:0] sigma;
  wire   \sum[0] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126;
  assign \sum[0]  = accum[0];

  INVX2 U3 ( .A(n16), .Y(n76) );
  NAND2X1 U4 ( .A(n19), .B(n39), .Y(n1) );
  INVX2 U5 ( .A(n109), .Y(n2) );
  INVX2 U6 ( .A(n23), .Y(n109) );
  INVX2 U7 ( .A(n42), .Y(n10) );
  AND2X2 U8 ( .A(n30), .B(n52), .Y(n3) );
  XOR2X1 U9 ( .A(n5), .B(n15), .Y(n4) );
  INVX1 U10 ( .A(n4), .Y(n106) );
  XNOR2X1 U11 ( .A(n30), .B(accum[7]), .Y(n5) );
  OAI22X1 U12 ( .A(n91), .B(n90), .C(n89), .D(n122), .Y(n6) );
  XOR2X1 U13 ( .A(n8), .B(n15), .Y(n7) );
  INVX1 U14 ( .A(n7), .Y(n105) );
  XNOR2X1 U15 ( .A(n30), .B(accum[6]), .Y(n8) );
  NAND3X1 U16 ( .A(n88), .B(n91), .C(n109), .Y(n9) );
  INVX2 U17 ( .A(n87), .Y(n88) );
  INVX1 U18 ( .A(n124), .Y(n11) );
  INVX1 U19 ( .A(n11), .Y(n12) );
  INVX2 U20 ( .A(n9), .Y(n113) );
  INVX2 U21 ( .A(n112), .Y(n117) );
  AND2X2 U22 ( .A(n2), .B(n124), .Y(n13) );
  INVX1 U23 ( .A(n13), .Y(n125) );
  INVX4 U24 ( .A(n74), .Y(n14) );
  INVX8 U25 ( .A(n14), .Y(n15) );
  INVX2 U26 ( .A(n1), .Y(n74) );
  OAI21X1 U27 ( .A(n74), .B(n65), .C(n64), .Y(n16) );
  NAND2X1 U28 ( .A(n17), .B(n18), .Y(n19) );
  NAND2X1 U29 ( .A(n19), .B(n39), .Y(n42) );
  INVX2 U30 ( .A(n41), .Y(n17) );
  INVX1 U31 ( .A(n40), .Y(n18) );
  OR2X1 U32 ( .A(n95), .B(n93), .Y(n77) );
  INVX2 U33 ( .A(n30), .Y(n31) );
  XNOR2X1 U34 ( .A(n76), .B(n20), .Y(n95) );
  XNOR2X1 U35 ( .A(n30), .B(accum[10]), .Y(n20) );
  XNOR2X1 U36 ( .A(accum[13]), .B(bias[3]), .Y(n21) );
  XNOR2X1 U37 ( .A(n82), .B(n22), .Y(n29) );
  XNOR2X1 U38 ( .A(n30), .B(accum[12]), .Y(n22) );
  INVX2 U39 ( .A(n68), .Y(n26) );
  INVX2 U40 ( .A(bias[3]), .Y(n30) );
  XOR2X1 U41 ( .A(n85), .B(n21), .Y(n23) );
  BUFX2 U42 ( .A(n3), .Y(n24) );
  INVX1 U43 ( .A(n121), .Y(n116) );
  INVX1 U44 ( .A(n112), .Y(n25) );
  AND2X1 U45 ( .A(n26), .B(n66), .Y(n71) );
  AND2X2 U46 ( .A(n119), .B(n118), .Y(n27) );
  AND2X1 U47 ( .A(n25), .B(n118), .Y(n28) );
  INVX1 U48 ( .A(n29), .Y(n94) );
  NAND2X1 U49 ( .A(accum[1]), .B(bias[0]), .Y(n33) );
  XOR2X1 U50 ( .A(accum[2]), .B(bias[1]), .Y(n32) );
  XOR2X1 U51 ( .A(n33), .B(n32), .Y(n118) );
  INVX2 U52 ( .A(n118), .Y(n91) );
  INVX2 U53 ( .A(accum[4]), .Y(n52) );
  NAND2X1 U54 ( .A(bias[2]), .B(accum[3]), .Y(n48) );
  OAI21X1 U55 ( .A(n30), .B(n52), .C(n48), .Y(n41) );
  NAND2X1 U56 ( .A(accum[2]), .B(bias[1]), .Y(n46) );
  INVX2 U57 ( .A(bias[0]), .Y(n81) );
  INVX2 U58 ( .A(accum[1]), .Y(n34) );
  NOR2X1 U59 ( .A(n81), .B(n34), .Y(n35) );
  OAI21X1 U60 ( .A(accum[2]), .B(bias[1]), .C(n35), .Y(n45) );
  NAND2X1 U61 ( .A(n46), .B(n45), .Y(n40) );
  NOR2X1 U62 ( .A(bias[2]), .B(accum[3]), .Y(n36) );
  OAI21X1 U63 ( .A(n30), .B(n52), .C(n36), .Y(n37) );
  OAI21X1 U64 ( .A(accum[5]), .B(n31), .C(n37), .Y(n38) );
  NOR2X1 U65 ( .A(n3), .B(n38), .Y(n39) );
  XOR2X1 U66 ( .A(n30), .B(accum[8]), .Y(n43) );
  XOR2X1 U67 ( .A(n43), .B(n15), .Y(n92) );
  INVX2 U68 ( .A(n92), .Y(n44) );
  NAND3X1 U69 ( .A(n7), .B(n4), .C(n44), .Y(n56) );
  NAND2X1 U70 ( .A(n46), .B(n45), .Y(n47) );
  FAX1 U71 ( .A(accum[3]), .B(bias[2]), .C(n47), .YS(n99) );
  XOR2X1 U72 ( .A(n30), .B(accum[4]), .Y(n50) );
  OAI21X1 U73 ( .A(bias[2]), .B(accum[3]), .C(n47), .Y(n49) );
  AND2X2 U74 ( .A(n49), .B(n48), .Y(n51) );
  XOR2X1 U75 ( .A(n50), .B(n51), .Y(n100) );
  OAI22X1 U76 ( .A(n30), .B(n52), .C(n24), .D(n51), .Y(n54) );
  XOR2X1 U77 ( .A(accum[5]), .B(bias[3]), .Y(n53) );
  XOR2X1 U78 ( .A(n54), .B(n53), .Y(n103) );
  NAND3X1 U79 ( .A(n99), .B(n100), .C(n103), .Y(n55) );
  NOR2X1 U80 ( .A(n55), .B(n56), .Y(n79) );
  AOI22X1 U81 ( .A(accum[7]), .B(n31), .C(accum[8]), .D(bias[3]), .Y(n58) );
  AOI22X1 U82 ( .A(accum[6]), .B(n31), .C(accum[5]), .D(bias[3]), .Y(n57) );
  NAND2X1 U83 ( .A(n58), .B(n57), .Y(n65) );
  INVX2 U84 ( .A(accum[8]), .Y(n63) );
  INVX2 U85 ( .A(accum[6]), .Y(n60) );
  NOR2X1 U86 ( .A(accum[7]), .B(n31), .Y(n59) );
  AOI21X1 U87 ( .A(n30), .B(n60), .C(n59), .Y(n61) );
  OAI21X1 U88 ( .A(n31), .B(accum[9]), .C(n61), .Y(n62) );
  AOI21X1 U89 ( .A(n30), .B(n63), .C(n62), .Y(n64) );
  OAI21X1 U90 ( .A(n10), .B(n65), .C(n64), .Y(n66) );
  INVX2 U91 ( .A(accum[10]), .Y(n67) );
  INVX2 U92 ( .A(accum[9]), .Y(n73) );
  OAI22X1 U93 ( .A(n30), .B(n67), .C(n30), .D(n73), .Y(n68) );
  OAI22X1 U94 ( .A(accum[10]), .B(n31), .C(accum[11]), .D(n31), .Y(n70) );
  NAND2X1 U95 ( .A(accum[11]), .B(n31), .Y(n69) );
  OAI21X1 U96 ( .A(n70), .B(n71), .C(n69), .Y(n82) );
  XOR2X1 U97 ( .A(n30), .B(accum[11]), .Y(n72) );
  XOR2X1 U98 ( .A(n76), .B(n72), .Y(n96) );
  XOR2X1 U99 ( .A(n73), .B(bias[3]), .Y(n75) );
  XOR2X1 U100 ( .A(n75), .B(n15), .Y(n93) );
  NOR2X1 U101 ( .A(n96), .B(n77), .Y(n78) );
  NAND3X1 U102 ( .A(n79), .B(n94), .C(n78), .Y(n87) );
  INVX2 U103 ( .A(\sum[0] ), .Y(n80) );
  NOR2X1 U104 ( .A(n80), .B(n87), .Y(n86) );
  XOR2X1 U105 ( .A(n81), .B(accum[1]), .Y(n119) );
  INVX2 U106 ( .A(n119), .Y(n89) );
  INVX2 U107 ( .A(accum[12]), .Y(n84) );
  OAI21X1 U108 ( .A(accum[12]), .B(n31), .C(n82), .Y(n83) );
  OAI21X1 U109 ( .A(n30), .B(n84), .C(n83), .Y(n85) );
  NAND3X1 U110 ( .A(n86), .B(n89), .C(n109), .Y(n90) );
  NAND3X1 U111 ( .A(n88), .B(n91), .C(n109), .Y(n122) );
  OAI22X1 U112 ( .A(n91), .B(n90), .C(n89), .D(n122), .Y(n121) );
  NAND2X1 U113 ( .A(n93), .B(n92), .Y(n98) );
  NAND3X1 U114 ( .A(n96), .B(n95), .C(n29), .Y(n97) );
  NOR2X1 U115 ( .A(n98), .B(n97), .Y(n111) );
  INVX2 U116 ( .A(n99), .Y(n102) );
  INVX2 U117 ( .A(n100), .Y(n101) );
  NAND2X1 U118 ( .A(n102), .B(n101), .Y(n108) );
  INVX2 U119 ( .A(n103), .Y(n104) );
  NAND3X1 U120 ( .A(n106), .B(n105), .C(n104), .Y(n107) );
  NOR2X1 U121 ( .A(n108), .B(n107), .Y(n110) );
  NAND3X1 U122 ( .A(n111), .B(n110), .C(n23), .Y(n112) );
  OAI21X1 U123 ( .A(n113), .B(n28), .C(\sum[0] ), .Y(n115) );
  NAND2X1 U124 ( .A(n27), .B(n117), .Y(n124) );
  NAND3X1 U125 ( .A(n25), .B(n119), .C(n13), .Y(n114) );
  NAND3X1 U126 ( .A(n116), .B(n115), .C(n114), .Y(sigma[0]) );
  OAI21X1 U127 ( .A(n119), .B(n118), .C(n117), .Y(n120) );
  INVX2 U128 ( .A(n120), .Y(n126) );
  NAND2X1 U129 ( .A(n13), .B(n126), .Y(n123) );
  OAI21X1 U130 ( .A(n9), .B(n6), .C(n123), .Y(sigma[1]) );
  NAND2X1 U131 ( .A(n12), .B(n123), .Y(sigma[2]) );
  NOR2X1 U132 ( .A(n126), .B(n125), .Y(sigma[3]) );
endmodule


module sigmoid_ALU ( clk, weight1, weight2, weight3, weight4, input1, input2, 
        input3, input4, bias, accumulate, clear, out, accum_out );
  input [3:0] weight1;
  input [3:0] weight2;
  input [3:0] weight3;
  input [3:0] weight4;
  input [3:0] input1;
  input [3:0] input2;
  input [3:0] input3;
  input [3:0] input4;
  input [3:0] bias;
  output [3:0] out;
  output [15:0] accum_out;
  input clk, accumulate, clear;

  wire   [3:0] weight1_reg;
  wire   [3:0] input1_reg;
  wire   [7:0] mult1;
  wire   [3:0] weight2_reg;
  wire   [3:0] input2_reg;
  wire   [7:0] mult2;
  wire   [3:0] weight3_reg;
  wire   [3:0] input3_reg;
  wire   [7:0] mult3;
  wire   [3:0] weight4_reg;
  wire   [3:0] input4_reg;
  wire   [7:0] mult4;
  wire   [7:0] mult1_reg;
  wire   [7:0] mult2_reg;
  wire   [7:0] mult3_reg;
  wire   [7:0] mult4_reg;
  wire   [9:0] added_nxt;
  wire   [9:0] added_reg;
  wire   [3:0] bias_reg;
  wire   [3:0] out_nxt;

  DFFPOSX1 \weight1_reg_reg[3]  ( .D(weight1[3]), .CLK(clk), .Q(weight1_reg[3]) );
  DFFPOSX1 \weight1_reg_reg[2]  ( .D(weight1[2]), .CLK(clk), .Q(weight1_reg[2]) );
  DFFPOSX1 \weight1_reg_reg[1]  ( .D(weight1[1]), .CLK(clk), .Q(weight1_reg[1]) );
  DFFPOSX1 \weight1_reg_reg[0]  ( .D(weight1[0]), .CLK(clk), .Q(weight1_reg[0]) );
  DFFPOSX1 \weight2_reg_reg[3]  ( .D(weight2[3]), .CLK(clk), .Q(weight2_reg[3]) );
  DFFPOSX1 \weight2_reg_reg[2]  ( .D(weight2[2]), .CLK(clk), .Q(weight2_reg[2]) );
  DFFPOSX1 \weight2_reg_reg[1]  ( .D(weight2[1]), .CLK(clk), .Q(weight2_reg[1]) );
  DFFPOSX1 \weight2_reg_reg[0]  ( .D(weight2[0]), .CLK(clk), .Q(weight2_reg[0]) );
  DFFPOSX1 \weight3_reg_reg[3]  ( .D(weight3[3]), .CLK(clk), .Q(weight3_reg[3]) );
  DFFPOSX1 \weight3_reg_reg[2]  ( .D(weight3[2]), .CLK(clk), .Q(weight3_reg[2]) );
  DFFPOSX1 \weight3_reg_reg[1]  ( .D(weight3[1]), .CLK(clk), .Q(weight3_reg[1]) );
  DFFPOSX1 \weight3_reg_reg[0]  ( .D(weight3[0]), .CLK(clk), .Q(weight3_reg[0]) );
  DFFPOSX1 \weight4_reg_reg[3]  ( .D(weight4[3]), .CLK(clk), .Q(weight4_reg[3]) );
  DFFPOSX1 \weight4_reg_reg[2]  ( .D(weight4[2]), .CLK(clk), .Q(weight4_reg[2]) );
  DFFPOSX1 \weight4_reg_reg[1]  ( .D(weight4[1]), .CLK(clk), .Q(weight4_reg[1]) );
  DFFPOSX1 \weight4_reg_reg[0]  ( .D(weight4[0]), .CLK(clk), .Q(weight4_reg[0]) );
  DFFPOSX1 \input1_reg_reg[3]  ( .D(input1[3]), .CLK(clk), .Q(input1_reg[3])
         );
  DFFPOSX1 \input1_reg_reg[2]  ( .D(input1[2]), .CLK(clk), .Q(input1_reg[2])
         );
  DFFPOSX1 \input1_reg_reg[1]  ( .D(input1[1]), .CLK(clk), .Q(input1_reg[1])
         );
  DFFPOSX1 \input1_reg_reg[0]  ( .D(input1[0]), .CLK(clk), .Q(input1_reg[0])
         );
  DFFPOSX1 \input2_reg_reg[3]  ( .D(input2[3]), .CLK(clk), .Q(input2_reg[3])
         );
  DFFPOSX1 \input2_reg_reg[2]  ( .D(input2[2]), .CLK(clk), .Q(input2_reg[2])
         );
  DFFPOSX1 \input2_reg_reg[1]  ( .D(input2[1]), .CLK(clk), .Q(input2_reg[1])
         );
  DFFPOSX1 \input2_reg_reg[0]  ( .D(input2[0]), .CLK(clk), .Q(input2_reg[0])
         );
  DFFPOSX1 \input3_reg_reg[3]  ( .D(input3[3]), .CLK(clk), .Q(input3_reg[3])
         );
  DFFPOSX1 \input3_reg_reg[2]  ( .D(input3[2]), .CLK(clk), .Q(input3_reg[2])
         );
  DFFPOSX1 \input3_reg_reg[1]  ( .D(input3[1]), .CLK(clk), .Q(input3_reg[1])
         );
  DFFPOSX1 \input3_reg_reg[0]  ( .D(input3[0]), .CLK(clk), .Q(input3_reg[0])
         );
  DFFPOSX1 \input4_reg_reg[3]  ( .D(input4[3]), .CLK(clk), .Q(input4_reg[3])
         );
  DFFPOSX1 \input4_reg_reg[2]  ( .D(input4[2]), .CLK(clk), .Q(input4_reg[2])
         );
  DFFPOSX1 \input4_reg_reg[1]  ( .D(input4[1]), .CLK(clk), .Q(input4_reg[1])
         );
  DFFPOSX1 \input4_reg_reg[0]  ( .D(input4[0]), .CLK(clk), .Q(input4_reg[0])
         );
  DFFPOSX1 \bias_reg_reg[3]  ( .D(bias[3]), .CLK(clk), .Q(bias_reg[3]) );
  DFFPOSX1 \bias_reg_reg[2]  ( .D(bias[2]), .CLK(clk), .Q(bias_reg[2]) );
  DFFPOSX1 \bias_reg_reg[1]  ( .D(bias[1]), .CLK(clk), .Q(bias_reg[1]) );
  DFFPOSX1 \bias_reg_reg[0]  ( .D(bias[0]), .CLK(clk), .Q(bias_reg[0]) );
  DFFPOSX1 \mult1_reg_reg[7]  ( .D(mult1[7]), .CLK(clk), .Q(mult1_reg[7]) );
  DFFPOSX1 \mult1_reg_reg[6]  ( .D(mult1[6]), .CLK(clk), .Q(mult1_reg[6]) );
  DFFPOSX1 \mult1_reg_reg[5]  ( .D(mult1[5]), .CLK(clk), .Q(mult1_reg[5]) );
  DFFPOSX1 \mult1_reg_reg[4]  ( .D(mult1[4]), .CLK(clk), .Q(mult1_reg[4]) );
  DFFPOSX1 \mult1_reg_reg[3]  ( .D(mult1[3]), .CLK(clk), .Q(mult1_reg[3]) );
  DFFPOSX1 \mult1_reg_reg[2]  ( .D(mult1[2]), .CLK(clk), .Q(mult1_reg[2]) );
  DFFPOSX1 \mult1_reg_reg[1]  ( .D(mult1[1]), .CLK(clk), .Q(mult1_reg[1]) );
  DFFPOSX1 \mult1_reg_reg[0]  ( .D(mult1[0]), .CLK(clk), .Q(mult1_reg[0]) );
  DFFPOSX1 \mult2_reg_reg[7]  ( .D(mult2[7]), .CLK(clk), .Q(mult2_reg[7]) );
  DFFPOSX1 \mult2_reg_reg[6]  ( .D(mult2[6]), .CLK(clk), .Q(mult2_reg[6]) );
  DFFPOSX1 \mult2_reg_reg[5]  ( .D(mult2[5]), .CLK(clk), .Q(mult2_reg[5]) );
  DFFPOSX1 \mult2_reg_reg[4]  ( .D(mult2[4]), .CLK(clk), .Q(mult2_reg[4]) );
  DFFPOSX1 \mult2_reg_reg[3]  ( .D(mult2[3]), .CLK(clk), .Q(mult2_reg[3]) );
  DFFPOSX1 \mult2_reg_reg[2]  ( .D(mult2[2]), .CLK(clk), .Q(mult2_reg[2]) );
  DFFPOSX1 \mult2_reg_reg[1]  ( .D(mult2[1]), .CLK(clk), .Q(mult2_reg[1]) );
  DFFPOSX1 \mult2_reg_reg[0]  ( .D(mult2[0]), .CLK(clk), .Q(mult2_reg[0]) );
  DFFPOSX1 \mult3_reg_reg[7]  ( .D(mult3[7]), .CLK(clk), .Q(mult3_reg[7]) );
  DFFPOSX1 \mult3_reg_reg[6]  ( .D(mult3[6]), .CLK(clk), .Q(mult3_reg[6]) );
  DFFPOSX1 \mult3_reg_reg[5]  ( .D(mult3[5]), .CLK(clk), .Q(mult3_reg[5]) );
  DFFPOSX1 \mult3_reg_reg[4]  ( .D(mult3[4]), .CLK(clk), .Q(mult3_reg[4]) );
  DFFPOSX1 \mult3_reg_reg[3]  ( .D(mult3[3]), .CLK(clk), .Q(mult3_reg[3]) );
  DFFPOSX1 \mult3_reg_reg[2]  ( .D(mult3[2]), .CLK(clk), .Q(mult3_reg[2]) );
  DFFPOSX1 \mult3_reg_reg[1]  ( .D(mult3[1]), .CLK(clk), .Q(mult3_reg[1]) );
  DFFPOSX1 \mult3_reg_reg[0]  ( .D(mult3[0]), .CLK(clk), .Q(mult3_reg[0]) );
  DFFPOSX1 \mult4_reg_reg[7]  ( .D(mult4[7]), .CLK(clk), .Q(mult4_reg[7]) );
  DFFPOSX1 \mult4_reg_reg[6]  ( .D(mult4[6]), .CLK(clk), .Q(mult4_reg[6]) );
  DFFPOSX1 \mult4_reg_reg[5]  ( .D(mult4[5]), .CLK(clk), .Q(mult4_reg[5]) );
  DFFPOSX1 \mult4_reg_reg[4]  ( .D(mult4[4]), .CLK(clk), .Q(mult4_reg[4]) );
  DFFPOSX1 \mult4_reg_reg[3]  ( .D(mult4[3]), .CLK(clk), .Q(mult4_reg[3]) );
  DFFPOSX1 \mult4_reg_reg[2]  ( .D(mult4[2]), .CLK(clk), .Q(mult4_reg[2]) );
  DFFPOSX1 \mult4_reg_reg[1]  ( .D(mult4[1]), .CLK(clk), .Q(mult4_reg[1]) );
  DFFPOSX1 \mult4_reg_reg[0]  ( .D(mult4[0]), .CLK(clk), .Q(mult4_reg[0]) );
  DFFPOSX1 \added_reg_reg[0]  ( .D(added_nxt[0]), .CLK(clk), .Q(added_reg[0])
         );
  DFFPOSX1 \added_reg_reg[1]  ( .D(added_nxt[1]), .CLK(clk), .Q(added_reg[1])
         );
  DFFPOSX1 \added_reg_reg[2]  ( .D(added_nxt[2]), .CLK(clk), .Q(added_reg[2])
         );
  DFFPOSX1 \added_reg_reg[3]  ( .D(added_nxt[3]), .CLK(clk), .Q(added_reg[3])
         );
  DFFPOSX1 \added_reg_reg[4]  ( .D(added_nxt[4]), .CLK(clk), .Q(added_reg[4])
         );
  DFFPOSX1 \added_reg_reg[5]  ( .D(added_nxt[5]), .CLK(clk), .Q(added_reg[5])
         );
  DFFPOSX1 \added_reg_reg[6]  ( .D(added_nxt[6]), .CLK(clk), .Q(added_reg[6])
         );
  DFFPOSX1 \added_reg_reg[7]  ( .D(added_nxt[7]), .CLK(clk), .Q(added_reg[7])
         );
  DFFPOSX1 \added_reg_reg[8]  ( .D(added_nxt[8]), .CLK(clk), .Q(added_reg[8])
         );
  DFFPOSX1 \added_reg_reg[9]  ( .D(added_nxt[9]), .CLK(clk), .Q(added_reg[9])
         );
  DFFPOSX1 \out_reg[0]  ( .D(out_nxt[0]), .CLK(clk), .Q(out[0]) );
  DFFPOSX1 \out_reg[1]  ( .D(out_nxt[1]), .CLK(clk), .Q(out[1]) );
  DFFPOSX1 \out_reg[2]  ( .D(out_nxt[2]), .CLK(clk), .Q(out[2]) );
  DFFPOSX1 \out_reg[3]  ( .D(out_nxt[3]), .CLK(clk), .Q(out[3]) );
  sigmoid_ALU_multiplier_3 M1 ( .signval(weight1_reg), .unsignval(input1_reg), 
        .out(mult1) );
  sigmoid_ALU_multiplier_2 M2 ( .signval(weight2_reg), .unsignval(input2_reg), 
        .out(mult2) );
  sigmoid_ALU_multiplier_1 M3 ( .signval(weight3_reg), .unsignval(input3_reg), 
        .out(mult3) );
  sigmoid_ALU_multiplier_0 M4 ( .signval(weight4_reg), .unsignval(input4_reg), 
        .out(mult4) );
  sigmoid_ALU_4_way_adder ADDER ( .in1(mult1_reg), .in2(mult2_reg), .in3(
        mult3_reg), .in4(mult4_reg), .out(added_nxt) );
  sigmoid_ALU_accumulator ACCUM ( .accumulate(accumulate), .clear(clear), 
        .clk(clk), .newval(added_reg), .out(accum_out) );
  sigmoid_ALU_sigmoid_calculator SIGM ( .accum(accum_out[15:2]), .bias(
        bias_reg), .sigma(out_nxt) );
endmodule


module comparator_0 ( a, b, gt, lt, eq );
  input [3:0] a;
  input [3:0] b;
  output gt, lt, eq;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n21, n22, n23, n24,
         n25, n26, n27, n28;

  NOR2X1 U10 ( .A(lt), .B(gt), .Y(eq) );
  OAI22X1 U11 ( .A(a[3]), .B(n6), .C(n28), .D(n5), .Y(lt) );
  AOI22X1 U12 ( .A(n27), .B(n26), .C(b[2]), .D(n9), .Y(n28) );
  OAI21X1 U13 ( .A(n3), .B(n25), .C(n24), .Y(n26) );
  NAND2X1 U14 ( .A(n23), .B(n7), .Y(n25) );
  OAI21X1 U15 ( .A(n21), .B(n12), .C(n22), .Y(gt) );
  NAND2X1 U16 ( .A(a[3]), .B(n6), .Y(n22) );
  AOI22X1 U17 ( .A(n2), .B(n11), .C(a[2]), .D(n4), .Y(n12) );
  OAI21X1 U18 ( .A(n7), .B(n10), .C(n23), .Y(n11) );
  OR2X1 U19 ( .A(n8), .B(b[1]), .Y(n23) );
  NAND2X1 U20 ( .A(n24), .B(n3), .Y(n10) );
  NAND2X1 U21 ( .A(b[1]), .B(n8), .Y(n24) );
  XNOR2X1 U22 ( .A(a[2]), .B(b[2]), .Y(n27) );
  NOR2X1 U23 ( .A(a[3]), .B(n6), .Y(n21) );
  INVX1 U3 ( .A(b[2]), .Y(n4) );
  INVX1 U4 ( .A(b[0]), .Y(n3) );
  INVX1 U5 ( .A(n27), .Y(n1) );
  INVX2 U6 ( .A(n1), .Y(n2) );
  INVX2 U7 ( .A(n22), .Y(n5) );
  INVX2 U8 ( .A(b[3]), .Y(n6) );
  INVX2 U9 ( .A(a[0]), .Y(n7) );
  INVX2 U24 ( .A(a[1]), .Y(n8) );
  INVX2 U25 ( .A(a[2]), .Y(n9) );
endmodule


module abs_subtractor_4bit ( a, b, mag_diff );
  input [3:0] a;
  input [3:0] b;
  output [3:0] mag_diff;
  wire   gt, eq, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11;

  OAI22X1 U11 ( .A(n2), .B(n16), .C(n17), .D(n1), .Y(mag_diff[3]) );
  XOR2X1 U12 ( .A(n18), .B(n19), .Y(n17) );
  OAI21X1 U13 ( .A(a[2]), .B(n5), .C(n20), .Y(n18) );
  OAI21X1 U14 ( .A(n21), .B(n11), .C(b[2]), .Y(n20) );
  XOR2X1 U15 ( .A(n22), .B(n19), .Y(n16) );
  XOR2X1 U16 ( .A(b[3]), .B(a[3]), .Y(n19) );
  OAI21X1 U17 ( .A(n4), .B(n11), .C(n23), .Y(n22) );
  OAI21X1 U18 ( .A(a[2]), .B(n24), .C(n9), .Y(n23) );
  OAI22X1 U19 ( .A(n2), .B(n25), .C(n26), .D(n1), .Y(mag_diff[2]) );
  XNOR2X1 U20 ( .A(n5), .B(n27), .Y(n26) );
  OAI21X1 U21 ( .A(a[1]), .B(n6), .C(n28), .Y(n21) );
  OAI21X1 U22 ( .A(n29), .B(n10), .C(b[1]), .Y(n28) );
  XNOR2X1 U23 ( .A(n4), .B(n27), .Y(n25) );
  XNOR2X1 U24 ( .A(n9), .B(a[2]), .Y(n27) );
  OAI21X1 U25 ( .A(n30), .B(n10), .C(n31), .Y(n24) );
  OAI21X1 U26 ( .A(a[1]), .B(n3), .C(n8), .Y(n31) );
  OAI22X1 U27 ( .A(n2), .B(n32), .C(n33), .D(n1), .Y(mag_diff[1]) );
  XNOR2X1 U28 ( .A(n6), .B(n34), .Y(n33) );
  XNOR2X1 U29 ( .A(n30), .B(n34), .Y(n32) );
  XNOR2X1 U30 ( .A(n8), .B(a[1]), .Y(n34) );
  NAND2X1 U32 ( .A(n3), .B(n29), .Y(mag_diff[0]) );
  NAND2X1 U33 ( .A(a[0]), .B(n7), .Y(n29) );
  NOR2X1 U34 ( .A(n7), .B(a[0]), .Y(n30) );
  comparator_0 MAG_COMPARATOR ( .a(a), .b(b), .gt(gt), .eq(eq) );
  OR2X2 U1 ( .A(gt), .B(eq), .Y(n1) );
  NOR2X1 U2 ( .A(gt), .B(eq), .Y(n2) );
  INVX1 U3 ( .A(b[0]), .Y(n7) );
  INVX1 U4 ( .A(b[1]), .Y(n8) );
  OR2X2 U5 ( .A(n7), .B(a[0]), .Y(n3) );
  INVX1 U6 ( .A(b[2]), .Y(n9) );
  INVX2 U7 ( .A(n24), .Y(n4) );
  INVX2 U8 ( .A(n21), .Y(n5) );
  INVX2 U9 ( .A(n29), .Y(n6) );
  INVX2 U10 ( .A(a[1]), .Y(n10) );
  INVX2 U31 ( .A(a[2]), .Y(n11) );
endmodule


module mult_4bit_DW_mult_uns_1 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n7, n9, n11, n12, n13, n14, n15, n17, n19, n20,
         n21, n22, n23, n24, n25, n26, n28, n31, n33, n34, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n92, n93, n94;

  XNOR2X1 U3 ( .A(n12), .B(n1), .Y(product[6]) );
  AOI21X1 U4 ( .A(n92), .B(n12), .C(n9), .Y(n7) );
  NAND2X1 U7 ( .A(n11), .B(n92), .Y(n1) );
  NAND2X1 U10 ( .A(n48), .B(n36), .Y(n11) );
  XOR2X1 U11 ( .A(n15), .B(n2), .Y(product[5]) );
  OAI21X1 U12 ( .A(n15), .B(n13), .C(n14), .Y(n12) );
  NAND2X1 U13 ( .A(n14), .B(n31), .Y(n2) );
  NOR2X1 U15 ( .A(n37), .B(n38), .Y(n13) );
  NAND2X1 U16 ( .A(n37), .B(n38), .Y(n14) );
  XNOR2X1 U17 ( .A(n3), .B(n20), .Y(product[4]) );
  AOI21X1 U18 ( .A(n94), .B(n20), .C(n17), .Y(n15) );
  NAND2X1 U21 ( .A(n19), .B(n94), .Y(n3) );
  NAND2X1 U24 ( .A(n42), .B(n39), .Y(n19) );
  XOR2X1 U25 ( .A(n4), .B(n23), .Y(product[3]) );
  OAI21X1 U26 ( .A(n21), .B(n23), .C(n22), .Y(n20) );
  NAND2X1 U27 ( .A(n22), .B(n33), .Y(n4) );
  NOR2X1 U29 ( .A(n45), .B(n43), .Y(n21) );
  NAND2X1 U30 ( .A(n45), .B(n43), .Y(n22) );
  XOR2X1 U31 ( .A(n5), .B(n28), .Y(product[2]) );
  OAI21X1 U33 ( .A(n25), .B(n28), .C(n26), .Y(n24) );
  NAND2X1 U34 ( .A(n26), .B(n34), .Y(n5) );
  NOR2X1 U36 ( .A(n58), .B(n47), .Y(n25) );
  NAND2X1 U37 ( .A(n58), .B(n47), .Y(n26) );
  NAND2X1 U42 ( .A(n59), .B(n62), .Y(n28) );
  FAX1 U43 ( .A(n52), .B(n49), .C(n40), .YC(n36), .YS(n37) );
  FAX1 U44 ( .A(n50), .B(n44), .C(n41), .YC(n38), .YS(n39) );
  HAX1 U45 ( .A(n53), .B(n56), .YC(n40), .YS(n41) );
  FAX1 U46 ( .A(n60), .B(n57), .C(n46), .YC(n42), .YS(n43) );
  HAX1 U47 ( .A(n54), .B(n51), .YC(n44), .YS(n45) );
  HAX1 U48 ( .A(n61), .B(n55), .YC(n46), .YS(n47) );
  NOR2X1 U49 ( .A(n67), .B(n63), .Y(n48) );
  NOR2X1 U50 ( .A(n67), .B(n64), .Y(n49) );
  NOR2X1 U51 ( .A(n67), .B(n65), .Y(n50) );
  NOR2X1 U52 ( .A(n67), .B(n66), .Y(n51) );
  NOR2X1 U53 ( .A(n68), .B(n63), .Y(n52) );
  NOR2X1 U54 ( .A(n68), .B(n64), .Y(n53) );
  NOR2X1 U55 ( .A(n68), .B(n65), .Y(n54) );
  NOR2X1 U57 ( .A(n63), .B(n69), .Y(n56) );
  NOR2X1 U58 ( .A(n64), .B(n69), .Y(n57) );
  NOR2X1 U59 ( .A(n69), .B(n65), .Y(n58) );
  NOR2X1 U60 ( .A(n69), .B(n66), .Y(n59) );
  NOR2X1 U61 ( .A(n63), .B(n70), .Y(n60) );
  NOR2X1 U63 ( .A(n70), .B(n65), .Y(n62) );
  NOR2X1 U64 ( .A(n70), .B(n66), .Y(product[0]) );
  AND2X2 U75 ( .A(n28), .B(n93), .Y(product[1]) );
  OR2X2 U76 ( .A(n48), .B(n36), .Y(n92) );
  OR2X2 U77 ( .A(n59), .B(n62), .Y(n93) );
  AND2X2 U78 ( .A(a[2]), .B(b[0]), .Y(n55) );
  INVX1 U79 ( .A(b[0]), .Y(n66) );
  AND2X1 U80 ( .A(b[2]), .B(a[0]), .Y(n61) );
  INVX1 U81 ( .A(b[2]), .Y(n64) );
  INVX1 U82 ( .A(a[0]), .Y(n70) );
  OR2X1 U83 ( .A(n42), .B(n39), .Y(n94) );
  INVX2 U84 ( .A(n7), .Y(product[7]) );
  INVX2 U85 ( .A(n11), .Y(n9) );
  INVX2 U86 ( .A(a[1]), .Y(n69) );
  INVX2 U87 ( .A(a[2]), .Y(n68) );
  INVX2 U88 ( .A(a[3]), .Y(n67) );
  INVX2 U89 ( .A(b[1]), .Y(n65) );
  INVX2 U90 ( .A(b[3]), .Y(n63) );
  INVX2 U91 ( .A(n25), .Y(n34) );
  INVX2 U92 ( .A(n21), .Y(n33) );
  INVX2 U93 ( .A(n13), .Y(n31) );
  INVX2 U94 ( .A(n24), .Y(n23) );
  INVX2 U95 ( .A(n19), .Y(n17) );
endmodule


module mult_4bit ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;


  mult_4bit_DW_mult_uns_1 mult_871 ( .a(a), .b(b), .product(product) );
endmodule


module adder_1bit_7 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n2, n1, n3, n4, n5;

  XOR2X1 U2 ( .A(carry_in), .B(n2), .Y(sum) );
  INVX2 U1 ( .A(a), .Y(n5) );
  XOR2X1 U3 ( .A(n5), .B(b), .Y(n3) );
  INVX2 U4 ( .A(n3), .Y(n2) );
  INVX2 U5 ( .A(b), .Y(n4) );
  INVX2 U6 ( .A(carry_in), .Y(n1) );
  OAI22X1 U7 ( .A(n5), .B(n4), .C(n3), .D(n1), .Y(carry_out) );
endmodule


module adder_1bit_6 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n1, n2, n3, n4, n5, n6;

  INVX1 U1 ( .A(a), .Y(n6) );
  INVX1 U2 ( .A(n4), .Y(n1) );
  XNOR2X1 U3 ( .A(b), .B(n2), .Y(sum) );
  XNOR2X1 U4 ( .A(n1), .B(a), .Y(n2) );
  INVX2 U5 ( .A(b), .Y(n5) );
  INVX2 U6 ( .A(carry_in), .Y(n4) );
  NAND2X1 U7 ( .A(a), .B(b), .Y(n3) );
  AOI22X1 U8 ( .A(n6), .B(n5), .C(n4), .D(n3), .Y(carry_out) );
endmodule


module adder_1bit_5 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n1, n2, n3, n4, n5, n6;

  INVX1 U1 ( .A(n3), .Y(n1) );
  INVX2 U2 ( .A(a), .Y(n5) );
  INVX2 U3 ( .A(b), .Y(n4) );
  INVX2 U4 ( .A(carry_in), .Y(n3) );
  NAND2X1 U5 ( .A(a), .B(b), .Y(n2) );
  AOI22X1 U6 ( .A(n5), .B(n4), .C(n2), .D(n3), .Y(carry_out) );
  XOR2X1 U7 ( .A(n1), .B(a), .Y(n6) );
  XOR2X1 U8 ( .A(b), .B(n6), .Y(sum) );
endmodule


module adder_1bit_4 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n1, n2, n3, n4, n5;

  XOR2X1 U2 ( .A(n2), .B(n3), .Y(sum) );
  INVX1 U1 ( .A(carry_in), .Y(n1) );
  INVX2 U3 ( .A(n1), .Y(n2) );
  XOR2X1 U4 ( .A(a), .B(b), .Y(n3) );
  AND2X2 U5 ( .A(b), .B(a), .Y(n4) );
  OAI22X1 U6 ( .A(n4), .B(n3), .C(carry_in), .D(n4), .Y(n5) );
  INVX2 U7 ( .A(n5), .Y(carry_out) );
endmodule


module adder_1bit_3 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n1, n2, n3, n4, n5;

  XOR2X1 U2 ( .A(n2), .B(n3), .Y(sum) );
  INVX1 U1 ( .A(carry_in), .Y(n1) );
  INVX2 U3 ( .A(n1), .Y(n2) );
  XOR2X1 U4 ( .A(a), .B(b), .Y(n3) );
  AND2X2 U5 ( .A(b), .B(a), .Y(n4) );
  OAI22X1 U6 ( .A(n4), .B(n3), .C(carry_in), .D(n4), .Y(n5) );
  INVX2 U7 ( .A(n5), .Y(carry_out) );
endmodule


module adder_1bit_2 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n1, n2, n3, n4, n5;

  XOR2X1 U2 ( .A(n2), .B(n1), .Y(sum) );
  XNOR2X1 U1 ( .A(n4), .B(b), .Y(n1) );
  BUFX2 U3 ( .A(carry_in), .Y(n2) );
  AND2X2 U4 ( .A(b), .B(a), .Y(n3) );
  INVX2 U5 ( .A(a), .Y(n4) );
  OAI22X1 U6 ( .A(n3), .B(n1), .C(carry_in), .D(n3), .Y(n5) );
  INVX2 U7 ( .A(n5), .Y(carry_out) );
endmodule


module adder_1bit_1 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n1, n2, n3, n4, n5;

  XNOR2X1 U1 ( .A(n4), .B(b), .Y(n1) );
  BUFX2 U2 ( .A(carry_in), .Y(n2) );
  AND2X2 U3 ( .A(b), .B(a), .Y(n3) );
  INVX2 U4 ( .A(a), .Y(n4) );
  OAI22X1 U5 ( .A(n3), .B(n1), .C(carry_in), .D(n3), .Y(n5) );
  INVX2 U6 ( .A(n5), .Y(carry_out) );
  XOR2X1 U7 ( .A(n2), .B(n1), .Y(sum) );
endmodule


module adder_1bit_0 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n1, n2, n4, n5, n7;

  AOI22X1 U3 ( .A(b), .B(a), .C(n1), .D(n4), .Y(n7) );
  XNOR2X1 U1 ( .A(n5), .B(b), .Y(n1) );
  INVX1 U2 ( .A(carry_in), .Y(n2) );
  INVX2 U4 ( .A(n2), .Y(n4) );
  INVX2 U5 ( .A(a), .Y(n5) );
  XOR2X1 U6 ( .A(carry_in), .B(n1), .Y(sum) );
  INVX2 U7 ( .A(n7), .Y(carry_out) );
endmodule


module adder_nbit_BIT_WIDTH8 ( a, b, carry_in, sum, overflow );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input carry_in;
  output overflow;

  wire   [7:1] carrys;

  adder_1bit_7 \genblk1[0].IX  ( .a(a[0]), .b(b[0]), .carry_in(carry_in), 
        .sum(sum[0]), .carry_out(carrys[1]) );
  adder_1bit_6 \genblk1[1].IX  ( .a(a[1]), .b(b[1]), .carry_in(carrys[1]), 
        .sum(sum[1]), .carry_out(carrys[2]) );
  adder_1bit_5 \genblk1[2].IX  ( .a(a[2]), .b(b[2]), .carry_in(carrys[2]), 
        .sum(sum[2]), .carry_out(carrys[3]) );
  adder_1bit_4 \genblk1[3].IX  ( .a(a[3]), .b(b[3]), .carry_in(carrys[3]), 
        .sum(sum[3]), .carry_out(carrys[4]) );
  adder_1bit_3 \genblk1[4].IX  ( .a(a[4]), .b(b[4]), .carry_in(carrys[4]), 
        .sum(sum[4]), .carry_out(carrys[5]) );
  adder_1bit_2 \genblk1[5].IX  ( .a(a[5]), .b(b[5]), .carry_in(carrys[5]), 
        .sum(sum[5]), .carry_out(carrys[6]) );
  adder_1bit_1 \genblk1[6].IX  ( .a(a[6]), .b(b[6]), .carry_in(carrys[6]), 
        .sum(sum[6]), .carry_out(carrys[7]) );
  adder_1bit_0 \genblk1[7].IX  ( .a(a[7]), .b(b[7]), .carry_in(carrys[7]), 
        .sum(sum[7]), .carry_out(overflow) );
endmodule


module adder_8bit ( a, b, carry_in, sum, overflow );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input carry_in;
  output overflow;


  adder_nbit_BIT_WIDTH8 AN ( .a(a), .b(b), .carry_in(carry_in), .sum(sum), 
        .overflow(overflow) );
endmodule


module flex_counter_NUM_CNT_BITS4_1 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   N24, N25, N26, N27, N28, n1, n2, n3, n4, n5, n6, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64;

  DFFSR \count_out_reg[0]  ( .D(n20), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR rollover_flag_reg ( .D(n46), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  DFFSR \count_out_reg[1]  ( .D(n43), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[2]  ( .D(n44), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[3]  ( .D(n45), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  OAI22X1 U18 ( .A(n64), .B(n14), .C(n63), .D(n62), .Y(n46) );
  NAND3X1 U19 ( .A(n61), .B(n60), .C(n59), .Y(n62) );
  XOR2X1 U20 ( .A(n17), .B(N26), .Y(n59) );
  XOR2X1 U21 ( .A(n12), .B(N24), .Y(n60) );
  XOR2X1 U22 ( .A(n16), .B(N25), .Y(n61) );
  NAND2X1 U23 ( .A(n58), .B(n57), .Y(n63) );
  XOR2X1 U24 ( .A(n18), .B(N27), .Y(n57) );
  NOR2X1 U25 ( .A(N28), .B(n56), .Y(n58) );
  OAI21X1 U26 ( .A(n55), .B(n18), .C(n54), .Y(n45) );
  NAND3X1 U27 ( .A(n53), .B(n52), .C(n51), .Y(n54) );
  NOR2X1 U28 ( .A(count_out[3]), .B(n17), .Y(n51) );
  AOI21X1 U29 ( .A(n53), .B(n17), .C(n50), .Y(n55) );
  OAI21X1 U30 ( .A(n6), .B(n17), .C(n49), .Y(n44) );
  NAND3X1 U31 ( .A(n52), .B(n17), .C(n53), .Y(n49) );
  OAI21X1 U32 ( .A(n52), .B(n15), .C(n64), .Y(n50) );
  NOR2X1 U33 ( .A(n16), .B(n12), .Y(n52) );
  OAI21X1 U34 ( .A(n13), .B(n16), .C(n48), .Y(n43) );
  NAND3X1 U35 ( .A(count_out[0]), .B(n16), .C(n53), .Y(n48) );
  OAI21X1 U36 ( .A(n15), .B(count_out[0]), .C(n64), .Y(n47) );
  OAI22X1 U37 ( .A(n12), .B(n64), .C(count_out[0]), .D(n15), .Y(n20) );
  NOR2X1 U38 ( .A(n56), .B(rollover_flag), .Y(n53) );
  NAND2X1 U39 ( .A(n19), .B(n56), .Y(n64) );
  NAND2X1 U40 ( .A(count_enable), .B(n19), .Y(n56) );
  NOR2X1 U7 ( .A(rollover_val[1]), .B(rollover_val[0]), .Y(n2) );
  AOI21X1 U9 ( .A(rollover_val[0]), .B(rollover_val[1]), .C(n2), .Y(n1) );
  NAND2X1 U10 ( .A(n2), .B(n5), .Y(n3) );
  OAI21X1 U11 ( .A(n2), .B(n5), .C(n3), .Y(N26) );
  NOR2X1 U12 ( .A(n3), .B(rollover_val[3]), .Y(N28) );
  AOI21X1 U13 ( .A(n3), .B(rollover_val[3]), .C(N28), .Y(n4) );
  INVX2 U14 ( .A(rollover_val[2]), .Y(n5) );
  INVX2 U15 ( .A(rollover_val[0]), .Y(N24) );
  INVX2 U16 ( .A(n4), .Y(N27) );
  INVX2 U17 ( .A(n1), .Y(N25) );
  INVX2 U41 ( .A(n50), .Y(n6) );
  INVX2 U42 ( .A(count_out[0]), .Y(n12) );
  INVX2 U43 ( .A(n47), .Y(n13) );
  INVX2 U44 ( .A(rollover_flag), .Y(n14) );
  INVX2 U45 ( .A(n53), .Y(n15) );
  INVX2 U46 ( .A(count_out[1]), .Y(n16) );
  INVX2 U47 ( .A(count_out[2]), .Y(n17) );
  INVX2 U48 ( .A(count_out[3]), .Y(n18) );
  INVX2 U49 ( .A(clear), .Y(n19) );
endmodule


module cost_calculator ( clk, n_rst, cost_en, expected_label, .digit_weights({
        \digit_weights[0][3] , \digit_weights[0][2] , \digit_weights[0][1] , 
        \digit_weights[0][0] , \digit_weights[1][3] , \digit_weights[1][2] , 
        \digit_weights[1][1] , \digit_weights[1][0] , \digit_weights[2][3] , 
        \digit_weights[2][2] , \digit_weights[2][1] , \digit_weights[2][0] , 
        \digit_weights[3][3] , \digit_weights[3][2] , \digit_weights[3][1] , 
        \digit_weights[3][0] , \digit_weights[4][3] , \digit_weights[4][2] , 
        \digit_weights[4][1] , \digit_weights[4][0] , \digit_weights[5][3] , 
        \digit_weights[5][2] , \digit_weights[5][1] , \digit_weights[5][0] , 
        \digit_weights[6][3] , \digit_weights[6][2] , \digit_weights[6][1] , 
        \digit_weights[6][0] , \digit_weights[7][3] , \digit_weights[7][2] , 
        \digit_weights[7][1] , \digit_weights[7][0] , \digit_weights[8][3] , 
        \digit_weights[8][2] , \digit_weights[8][1] , \digit_weights[8][0] , 
        \digit_weights[9][3] , \digit_weights[9][2] , \digit_weights[9][1] , 
        \digit_weights[9][0] }), calculation_complete, cost_output, 
        next_sub_reg );
  input [0:9] expected_label;
  output [7:0] cost_output;
  output [3:0] next_sub_reg;
  input clk, n_rst, cost_en, \digit_weights[0][3] , \digit_weights[0][2] ,
         \digit_weights[0][1] , \digit_weights[0][0] , \digit_weights[1][3] ,
         \digit_weights[1][2] , \digit_weights[1][1] , \digit_weights[1][0] ,
         \digit_weights[2][3] , \digit_weights[2][2] , \digit_weights[2][1] ,
         \digit_weights[2][0] , \digit_weights[3][3] , \digit_weights[3][2] ,
         \digit_weights[3][1] , \digit_weights[3][0] , \digit_weights[4][3] ,
         \digit_weights[4][2] , \digit_weights[4][1] , \digit_weights[4][0] ,
         \digit_weights[5][3] , \digit_weights[5][2] , \digit_weights[5][1] ,
         \digit_weights[5][0] , \digit_weights[6][3] , \digit_weights[6][2] ,
         \digit_weights[6][1] , \digit_weights[6][0] , \digit_weights[7][3] ,
         \digit_weights[7][2] , \digit_weights[7][1] , \digit_weights[7][0] ,
         \digit_weights[8][3] , \digit_weights[8][2] , \digit_weights[8][1] ,
         \digit_weights[8][0] , \digit_weights[9][3] , \digit_weights[9][2] ,
         \digit_weights[9][1] , \digit_weights[9][0] ;
  output calculation_complete;
  wire   \mux_label[3] , \sigmoid_hold_reg[0][3] , \sigmoid_hold_reg[0][2] ,
         \sigmoid_hold_reg[0][1] , \sigmoid_hold_reg[0][0] ,
         \sigmoid_hold_reg[1][3] , \sigmoid_hold_reg[1][2] ,
         \sigmoid_hold_reg[1][1] , \sigmoid_hold_reg[1][0] ,
         \sigmoid_hold_reg[2][3] , \sigmoid_hold_reg[2][2] ,
         \sigmoid_hold_reg[2][1] , \sigmoid_hold_reg[2][0] ,
         \sigmoid_hold_reg[3][3] , \sigmoid_hold_reg[3][2] ,
         \sigmoid_hold_reg[3][1] , \sigmoid_hold_reg[3][0] ,
         \sigmoid_hold_reg[4][3] , \sigmoid_hold_reg[4][2] ,
         \sigmoid_hold_reg[4][1] , \sigmoid_hold_reg[4][0] ,
         \sigmoid_hold_reg[5][3] , \sigmoid_hold_reg[5][2] ,
         \sigmoid_hold_reg[5][1] , \sigmoid_hold_reg[5][0] ,
         \sigmoid_hold_reg[6][3] , \sigmoid_hold_reg[6][2] ,
         \sigmoid_hold_reg[6][1] , \sigmoid_hold_reg[6][0] ,
         \sigmoid_hold_reg[7][3] , \sigmoid_hold_reg[7][2] ,
         \sigmoid_hold_reg[7][1] , \sigmoid_hold_reg[7][0] ,
         \sigmoid_hold_reg[8][3] , \sigmoid_hold_reg[8][2] ,
         \sigmoid_hold_reg[8][1] , \sigmoid_hold_reg[8][0] ,
         \sigmoid_hold_reg[9][3] , \sigmoid_hold_reg[9][2] ,
         \sigmoid_hold_reg[9][1] , \sigmoid_hold_reg[9][0] , N149, N150, N151,
         N152, N153, N154, N155, N156, N157, N158, N159, N160, N161, N162,
         N163, N164, N165, n4, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n179,
         n180, n181, n184, n185, n186, n187, n214, n216, n218, n220, n222,
         n224, n226, n228, n230, n232, n234, n236, n238, n240, n242, n244,
         n246, n248, n250, n252, n254, n256, n258, n260, n262, n264, n266,
         n268, n270, n272, n274, n276, n278, n280, n282, n284, n286, n288,
         n290, n292, n294, n296, n298, n300, n302, n304, n306, n308, n310,
         n312, n1, n2, n3, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n144, n145, n176, n177, n178, n182, n183, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333;
  wire   [3:0] mux_confidence;
  wire   [3:0] sub_reg;
  wire   [7:0] next_sq_reg;
  wire   [4:0] adder_input_a;
  wire   [7:0] next_add_reg;
  wire   [3:0] cur_input;
  wire   [0:9] label_hold_reg;
  wire   [2:0] state;
  wire   [4:0] sq_reg;
  wire   [7:0] add_reg;
  wire   [2:0] next_state;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2;

  DFFSR \state_reg[0]  ( .D(next_state[0]), .CLK(clk), .R(n29), .S(1'b1), .Q(
        state[0]) );
  DFFSR \state_reg[1]  ( .D(next_state[1]), .CLK(clk), .R(n29), .S(1'b1), .Q(
        state[1]) );
  DFFSR \state_reg[2]  ( .D(next_state[2]), .CLK(clk), .R(n29), .S(1'b1), .Q(
        state[2]) );
  DFFSR \label_hold_reg_reg[0]  ( .D(n312), .CLK(clk), .R(n29), .S(1'b1), .Q(
        label_hold_reg[0]) );
  DFFSR \label_hold_reg_reg[1]  ( .D(n310), .CLK(clk), .R(n29), .S(1'b1), .Q(
        label_hold_reg[1]) );
  DFFSR \label_hold_reg_reg[2]  ( .D(n308), .CLK(clk), .R(n28), .S(1'b1), .Q(
        label_hold_reg[2]) );
  DFFSR \label_hold_reg_reg[3]  ( .D(n306), .CLK(clk), .R(n28), .S(1'b1), .Q(
        label_hold_reg[3]) );
  DFFSR \label_hold_reg_reg[4]  ( .D(n304), .CLK(clk), .R(n28), .S(1'b1), .Q(
        label_hold_reg[4]) );
  DFFSR \label_hold_reg_reg[5]  ( .D(n302), .CLK(clk), .R(n28), .S(1'b1), .Q(
        label_hold_reg[5]) );
  DFFSR \label_hold_reg_reg[6]  ( .D(n300), .CLK(clk), .R(n28), .S(1'b1), .Q(
        label_hold_reg[6]) );
  DFFSR \label_hold_reg_reg[7]  ( .D(n298), .CLK(clk), .R(n28), .S(1'b1), .Q(
        label_hold_reg[7]) );
  DFFSR \label_hold_reg_reg[8]  ( .D(n296), .CLK(clk), .R(n28), .S(1'b1), .Q(
        label_hold_reg[8]) );
  DFFSR \label_hold_reg_reg[9]  ( .D(n294), .CLK(clk), .R(n28), .S(1'b1), .Q(
        label_hold_reg[9]) );
  DFFSR \sigmoid_hold_reg_reg[0][3]  ( .D(n292), .CLK(clk), .R(n28), .S(1'b1), 
        .Q(\sigmoid_hold_reg[0][3] ) );
  DFFSR \sigmoid_hold_reg_reg[0][2]  ( .D(n290), .CLK(clk), .R(n28), .S(1'b1), 
        .Q(\sigmoid_hold_reg[0][2] ) );
  DFFSR \sigmoid_hold_reg_reg[0][1]  ( .D(n288), .CLK(clk), .R(n28), .S(1'b1), 
        .Q(\sigmoid_hold_reg[0][1] ) );
  DFFSR \sigmoid_hold_reg_reg[0][0]  ( .D(n286), .CLK(clk), .R(n28), .S(1'b1), 
        .Q(\sigmoid_hold_reg[0][0] ) );
  DFFSR \sigmoid_hold_reg_reg[1][3]  ( .D(n284), .CLK(clk), .R(n28), .S(1'b1), 
        .Q(\sigmoid_hold_reg[1][3] ) );
  DFFSR \sigmoid_hold_reg_reg[1][2]  ( .D(n282), .CLK(clk), .R(n28), .S(1'b1), 
        .Q(\sigmoid_hold_reg[1][2] ) );
  DFFSR \sigmoid_hold_reg_reg[1][1]  ( .D(n280), .CLK(clk), .R(n28), .S(1'b1), 
        .Q(\sigmoid_hold_reg[1][1] ) );
  DFFSR \sigmoid_hold_reg_reg[1][0]  ( .D(n278), .CLK(clk), .R(n28), .S(1'b1), 
        .Q(\sigmoid_hold_reg[1][0] ) );
  DFFSR \sigmoid_hold_reg_reg[2][3]  ( .D(n276), .CLK(clk), .R(n28), .S(1'b1), 
        .Q(\sigmoid_hold_reg[2][3] ) );
  DFFSR \sigmoid_hold_reg_reg[2][2]  ( .D(n274), .CLK(clk), .R(n28), .S(1'b1), 
        .Q(\sigmoid_hold_reg[2][2] ) );
  DFFSR \sigmoid_hold_reg_reg[2][1]  ( .D(n272), .CLK(clk), .R(n28), .S(1'b1), 
        .Q(\sigmoid_hold_reg[2][1] ) );
  DFFSR \sigmoid_hold_reg_reg[2][0]  ( .D(n270), .CLK(clk), .R(n28), .S(1'b1), 
        .Q(\sigmoid_hold_reg[2][0] ) );
  DFFSR \sigmoid_hold_reg_reg[3][3]  ( .D(n268), .CLK(clk), .R(n28), .S(1'b1), 
        .Q(\sigmoid_hold_reg[3][3] ) );
  DFFSR \sigmoid_hold_reg_reg[3][2]  ( .D(n266), .CLK(clk), .R(n28), .S(1'b1), 
        .Q(\sigmoid_hold_reg[3][2] ) );
  DFFSR \sigmoid_hold_reg_reg[3][1]  ( .D(n264), .CLK(clk), .R(n28), .S(1'b1), 
        .Q(\sigmoid_hold_reg[3][1] ) );
  DFFSR \sigmoid_hold_reg_reg[3][0]  ( .D(n262), .CLK(clk), .R(n28), .S(1'b1), 
        .Q(\sigmoid_hold_reg[3][0] ) );
  DFFSR \sigmoid_hold_reg_reg[4][3]  ( .D(n260), .CLK(clk), .R(n28), .S(1'b1), 
        .Q(\sigmoid_hold_reg[4][3] ) );
  DFFSR \sigmoid_hold_reg_reg[4][2]  ( .D(n258), .CLK(clk), .R(n28), .S(1'b1), 
        .Q(\sigmoid_hold_reg[4][2] ) );
  DFFSR \sigmoid_hold_reg_reg[4][1]  ( .D(n256), .CLK(clk), .R(n27), .S(1'b1), 
        .Q(\sigmoid_hold_reg[4][1] ) );
  DFFSR \sigmoid_hold_reg_reg[4][0]  ( .D(n254), .CLK(clk), .R(n27), .S(1'b1), 
        .Q(\sigmoid_hold_reg[4][0] ) );
  DFFSR \sigmoid_hold_reg_reg[5][3]  ( .D(n252), .CLK(clk), .R(n27), .S(1'b1), 
        .Q(\sigmoid_hold_reg[5][3] ) );
  DFFSR \sigmoid_hold_reg_reg[5][2]  ( .D(n250), .CLK(clk), .R(n27), .S(1'b1), 
        .Q(\sigmoid_hold_reg[5][2] ) );
  DFFSR \sigmoid_hold_reg_reg[5][1]  ( .D(n248), .CLK(clk), .R(n27), .S(1'b1), 
        .Q(\sigmoid_hold_reg[5][1] ) );
  DFFSR \sigmoid_hold_reg_reg[5][0]  ( .D(n246), .CLK(clk), .R(n27), .S(1'b1), 
        .Q(\sigmoid_hold_reg[5][0] ) );
  DFFSR \sigmoid_hold_reg_reg[6][3]  ( .D(n244), .CLK(clk), .R(n27), .S(1'b1), 
        .Q(\sigmoid_hold_reg[6][3] ) );
  DFFSR \sigmoid_hold_reg_reg[6][2]  ( .D(n242), .CLK(clk), .R(n27), .S(1'b1), 
        .Q(\sigmoid_hold_reg[6][2] ) );
  DFFSR \sigmoid_hold_reg_reg[6][1]  ( .D(n240), .CLK(clk), .R(n27), .S(1'b1), 
        .Q(\sigmoid_hold_reg[6][1] ) );
  DFFSR \sigmoid_hold_reg_reg[6][0]  ( .D(n238), .CLK(clk), .R(n27), .S(1'b1), 
        .Q(\sigmoid_hold_reg[6][0] ) );
  DFFSR \sigmoid_hold_reg_reg[7][3]  ( .D(n236), .CLK(clk), .R(n27), .S(1'b1), 
        .Q(\sigmoid_hold_reg[7][3] ) );
  DFFSR \sigmoid_hold_reg_reg[7][2]  ( .D(n234), .CLK(clk), .R(n27), .S(1'b1), 
        .Q(\sigmoid_hold_reg[7][2] ) );
  DFFSR \sigmoid_hold_reg_reg[7][1]  ( .D(n232), .CLK(clk), .R(n27), .S(1'b1), 
        .Q(\sigmoid_hold_reg[7][1] ) );
  DFFSR \sigmoid_hold_reg_reg[7][0]  ( .D(n230), .CLK(clk), .R(n27), .S(1'b1), 
        .Q(\sigmoid_hold_reg[7][0] ) );
  DFFSR \sigmoid_hold_reg_reg[8][3]  ( .D(n228), .CLK(clk), .R(n27), .S(1'b1), 
        .Q(\sigmoid_hold_reg[8][3] ) );
  DFFSR \sigmoid_hold_reg_reg[8][2]  ( .D(n226), .CLK(clk), .R(n27), .S(1'b1), 
        .Q(\sigmoid_hold_reg[8][2] ) );
  DFFSR \sigmoid_hold_reg_reg[8][1]  ( .D(n224), .CLK(clk), .R(n27), .S(1'b1), 
        .Q(\sigmoid_hold_reg[8][1] ) );
  DFFSR \sigmoid_hold_reg_reg[8][0]  ( .D(n222), .CLK(clk), .R(n27), .S(1'b1), 
        .Q(\sigmoid_hold_reg[8][0] ) );
  DFFSR \sigmoid_hold_reg_reg[9][3]  ( .D(n220), .CLK(clk), .R(n27), .S(1'b1), 
        .Q(\sigmoid_hold_reg[9][3] ) );
  DFFSR \sigmoid_hold_reg_reg[9][2]  ( .D(n218), .CLK(clk), .R(n27), .S(1'b1), 
        .Q(\sigmoid_hold_reg[9][2] ) );
  DFFSR \sigmoid_hold_reg_reg[9][1]  ( .D(n216), .CLK(clk), .R(n27), .S(1'b1), 
        .Q(\sigmoid_hold_reg[9][1] ) );
  DFFSR \sigmoid_hold_reg_reg[9][0]  ( .D(n214), .CLK(clk), .R(n27), .S(1'b1), 
        .Q(\sigmoid_hold_reg[9][0] ) );
  DFFSR \sub_reg_reg[3]  ( .D(N152), .CLK(clk), .R(n27), .S(1'b1), .Q(
        sub_reg[3]) );
  DFFSR \sub_reg_reg[2]  ( .D(N151), .CLK(clk), .R(n27), .S(1'b1), .Q(
        sub_reg[2]) );
  DFFSR \sub_reg_reg[1]  ( .D(N150), .CLK(clk), .R(n27), .S(1'b1), .Q(
        sub_reg[1]) );
  DFFSR \sub_reg_reg[0]  ( .D(N149), .CLK(clk), .R(n27), .S(1'b1), .Q(
        sub_reg[0]) );
  DFFSR \sq_reg_reg[4]  ( .D(N157), .CLK(clk), .R(n26), .S(1'b1), .Q(sq_reg[4]) );
  DFFSR \sq_reg_reg[3]  ( .D(N156), .CLK(clk), .R(n26), .S(1'b1), .Q(sq_reg[3]) );
  DFFSR \sq_reg_reg[2]  ( .D(N155), .CLK(clk), .R(n26), .S(1'b1), .Q(sq_reg[2]) );
  DFFSR \sq_reg_reg[1]  ( .D(N154), .CLK(clk), .R(n26), .S(1'b1), .Q(sq_reg[1]) );
  DFFSR \sq_reg_reg[0]  ( .D(N153), .CLK(clk), .R(n26), .S(1'b1), .Q(sq_reg[0]) );
  DFFSR \add_reg_reg[0]  ( .D(N158), .CLK(clk), .R(n26), .S(1'b1), .Q(
        add_reg[0]) );
  DFFSR \sto_reg_reg[0]  ( .D(n132), .CLK(clk), .R(n26), .S(1'b1), .Q(
        cost_output[0]) );
  DFFSR \add_reg_reg[1]  ( .D(N159), .CLK(clk), .R(n26), .S(1'b1), .Q(
        add_reg[1]) );
  DFFSR \sto_reg_reg[1]  ( .D(n131), .CLK(clk), .R(n26), .S(1'b1), .Q(
        cost_output[1]) );
  DFFSR \add_reg_reg[2]  ( .D(N160), .CLK(clk), .R(n26), .S(1'b1), .Q(
        add_reg[2]) );
  DFFSR \sto_reg_reg[2]  ( .D(n130), .CLK(clk), .R(n26), .S(1'b1), .Q(
        cost_output[2]) );
  DFFSR \add_reg_reg[3]  ( .D(N161), .CLK(clk), .R(n26), .S(1'b1), .Q(
        add_reg[3]) );
  DFFSR \sto_reg_reg[3]  ( .D(n129), .CLK(clk), .R(n26), .S(1'b1), .Q(
        cost_output[3]) );
  DFFSR \add_reg_reg[4]  ( .D(N162), .CLK(clk), .R(n26), .S(1'b1), .Q(
        add_reg[4]) );
  DFFSR \sto_reg_reg[4]  ( .D(n128), .CLK(clk), .R(n26), .S(1'b1), .Q(
        cost_output[4]) );
  DFFSR \add_reg_reg[5]  ( .D(N163), .CLK(clk), .R(n26), .S(1'b1), .Q(
        add_reg[5]) );
  DFFSR \sto_reg_reg[5]  ( .D(n127), .CLK(clk), .R(n26), .S(1'b1), .Q(
        cost_output[5]) );
  DFFSR \add_reg_reg[6]  ( .D(N164), .CLK(clk), .R(n26), .S(1'b1), .Q(
        add_reg[6]) );
  DFFSR \sto_reg_reg[6]  ( .D(n126), .CLK(clk), .R(n26), .S(1'b1), .Q(
        cost_output[6]) );
  DFFSR \add_reg_reg[7]  ( .D(N165), .CLK(clk), .R(n26), .S(1'b1), .Q(
        add_reg[7]) );
  DFFSR \sto_reg_reg[7]  ( .D(n125), .CLK(clk), .R(n26), .S(1'b1), .Q(
        cost_output[7]) );
  NAND3X1 U167 ( .A(n134), .B(n135), .C(n136), .Y(\mux_label[3] ) );
  NOR2X1 U168 ( .A(n137), .B(n138), .Y(n136) );
  OAI22X1 U169 ( .A(n176), .B(n139), .C(n145), .D(n140), .Y(n138) );
  OAI21X1 U172 ( .A(n144), .B(n141), .C(n142), .Y(n137) );
  AOI22X1 U173 ( .A(n143), .B(label_hold_reg[0]), .C(n10), .D(
        label_hold_reg[1]), .Y(n142) );
  AOI21X1 U175 ( .A(n120), .B(label_hold_reg[7]), .C(n146), .Y(n135) );
  OAI22X1 U176 ( .A(n178), .B(n147), .C(n177), .D(n148), .Y(n146) );
  AOI22X1 U179 ( .A(n2), .B(label_hold_reg[8]), .C(label_hold_reg[9]), .D(n5), 
        .Y(n134) );
  NAND3X1 U180 ( .A(n150), .B(n151), .C(n152), .Y(mux_confidence[3]) );
  NOR2X1 U181 ( .A(n153), .B(n154), .Y(n152) );
  OAI22X1 U182 ( .A(n322), .B(n139), .C(n318), .D(n140), .Y(n154) );
  OAI21X1 U185 ( .A(n182), .B(n141), .C(n155), .Y(n153) );
  AOI22X1 U186 ( .A(n143), .B(\sigmoid_hold_reg[0][3] ), .C(n10), .D(
        \sigmoid_hold_reg[1][3] ), .Y(n155) );
  AOI21X1 U188 ( .A(n120), .B(\sigmoid_hold_reg[7][3] ), .C(n156), .Y(n151) );
  OAI22X1 U189 ( .A(n330), .B(n147), .C(n326), .D(n148), .Y(n156) );
  AOI22X1 U192 ( .A(n3), .B(\sigmoid_hold_reg[8][3] ), .C(
        \sigmoid_hold_reg[9][3] ), .D(n6), .Y(n150) );
  NAND3X1 U193 ( .A(n157), .B(n158), .C(n159), .Y(mux_confidence[2]) );
  NOR2X1 U194 ( .A(n161), .B(n160), .Y(n159) );
  OAI22X1 U195 ( .A(n323), .B(n139), .C(n319), .D(n140), .Y(n161) );
  OAI21X1 U198 ( .A(n183), .B(n141), .C(n162), .Y(n160) );
  AOI22X1 U199 ( .A(n143), .B(\sigmoid_hold_reg[0][2] ), .C(n10), .D(
        \sigmoid_hold_reg[1][2] ), .Y(n162) );
  AOI21X1 U201 ( .A(n120), .B(\sigmoid_hold_reg[7][2] ), .C(n163), .Y(n158) );
  OAI22X1 U202 ( .A(n331), .B(n147), .C(n327), .D(n148), .Y(n163) );
  AOI22X1 U205 ( .A(n149), .B(\sigmoid_hold_reg[8][2] ), .C(
        \sigmoid_hold_reg[9][2] ), .D(n4), .Y(n157) );
  NAND3X1 U206 ( .A(n164), .B(n165), .C(n166), .Y(mux_confidence[1]) );
  NOR2X1 U207 ( .A(n167), .B(n168), .Y(n166) );
  OAI22X1 U208 ( .A(n324), .B(n139), .C(n320), .D(n140), .Y(n168) );
  OAI21X1 U211 ( .A(n316), .B(n141), .C(n169), .Y(n167) );
  AOI22X1 U212 ( .A(n143), .B(\sigmoid_hold_reg[0][1] ), .C(n10), .D(
        \sigmoid_hold_reg[1][1] ), .Y(n169) );
  AOI21X1 U214 ( .A(n120), .B(\sigmoid_hold_reg[7][1] ), .C(n170), .Y(n165) );
  OAI22X1 U215 ( .A(n332), .B(n147), .C(n328), .D(n148), .Y(n170) );
  AOI22X1 U218 ( .A(n3), .B(\sigmoid_hold_reg[8][1] ), .C(
        \sigmoid_hold_reg[9][1] ), .D(n5), .Y(n164) );
  NAND3X1 U219 ( .A(n171), .B(n172), .C(n173), .Y(mux_confidence[0]) );
  NOR2X1 U220 ( .A(n174), .B(n175), .Y(n173) );
  OAI22X1 U221 ( .A(n325), .B(n139), .C(n321), .D(n140), .Y(n175) );
  NAND2X1 U222 ( .A(n122), .B(cur_input[0]), .Y(n140) );
  NAND3X1 U224 ( .A(n119), .B(n179), .C(n121), .Y(n139) );
  OAI21X1 U226 ( .A(n317), .B(n141), .C(n180), .Y(n174) );
  AOI22X1 U227 ( .A(n143), .B(\sigmoid_hold_reg[0][0] ), .C(n10), .D(
        \sigmoid_hold_reg[1][0] ), .Y(n180) );
  NAND3X1 U230 ( .A(n123), .B(n124), .C(n121), .Y(n181) );
  NAND2X1 U231 ( .A(n122), .B(n119), .Y(n141) );
  NAND3X1 U233 ( .A(n123), .B(n124), .C(cur_input[1]), .Y(n184) );
  AOI21X1 U236 ( .A(n120), .B(\sigmoid_hold_reg[7][0] ), .C(n185), .Y(n172) );
  OAI22X1 U237 ( .A(n333), .B(n147), .C(n329), .D(n148), .Y(n185) );
  NAND3X1 U238 ( .A(cur_input[0]), .B(n121), .C(n179), .Y(n148) );
  NAND3X1 U240 ( .A(cur_input[1]), .B(n119), .C(n179), .Y(n147) );
  NAND3X1 U243 ( .A(cur_input[1]), .B(cur_input[0]), .C(n179), .Y(n186) );
  NOR2X1 U244 ( .A(n123), .B(cur_input[3]), .Y(n179) );
  AOI22X1 U245 ( .A(n2), .B(\sigmoid_hold_reg[8][0] ), .C(
        \sigmoid_hold_reg[9][0] ), .D(n6), .Y(n171) );
  NOR2X1 U246 ( .A(n119), .B(n187), .Y(n4) );
  NOR2X1 U248 ( .A(n187), .B(cur_input[0]), .Y(n149) );
  NAND3X1 U249 ( .A(n121), .B(n123), .C(cur_input[3]), .Y(n187) );
  abs_subtractor_4bit SUB_BLOCK ( .a({\mux_label[3] , 1'b0, 1'b0, 1'b0}), .b(
        mux_confidence), .mag_diff(next_sub_reg) );
  mult_4bit SQ_BLOCK ( .a(sub_reg), .b(sub_reg), .product({
        SYNOPSYS_UNCONNECTED__0, next_sq_reg[6:2], SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2}) );
  adder_8bit ADD_BLOCK ( .a({1'b0, 1'b0, 1'b0, adder_input_a[4:2], n11, 
        adder_input_a[0]}), .b(cost_output), .carry_in(1'b0), .sum(
        next_add_reg) );
  flex_counter_NUM_CNT_BITS4_1 IND_BLOCK ( .clk(clk), .n_rst(n26), .clear(
        cost_en), .count_enable(n133), .rollover_val({1'b1, 1'b0, 1'b0, 1'b1}), 
        .count_out(cur_input) );
  INVX1 U3 ( .A(n14), .Y(n37) );
  BUFX2 U4 ( .A(state[1]), .Y(n14) );
  AND2X1 U5 ( .A(n20), .B(next_add_reg[7]), .Y(N165) );
  INVX1 U6 ( .A(n18), .Y(n31) );
  INVX4 U7 ( .A(n1), .Y(n143) );
  OR2X2 U8 ( .A(n181), .B(cur_input[0]), .Y(n1) );
  NOR2X1 U9 ( .A(n187), .B(cur_input[0]), .Y(n2) );
  NOR2X1 U10 ( .A(n187), .B(cur_input[0]), .Y(n3) );
  NOR2X1 U11 ( .A(n119), .B(n187), .Y(n5) );
  NOR2X1 U12 ( .A(n119), .B(n187), .Y(n6) );
  INVX2 U13 ( .A(cur_input[0]), .Y(n119) );
  INVX1 U14 ( .A(n181), .Y(n9) );
  AND2X2 U15 ( .A(n8), .B(n15), .Y(n7) );
  INVX1 U16 ( .A(n7), .Y(n45) );
  AND2X2 U17 ( .A(n18), .B(n14), .Y(n8) );
  INVX1 U18 ( .A(n8), .Y(n32) );
  AND2X2 U19 ( .A(n9), .B(cur_input[0]), .Y(n10) );
  NOR2X1 U20 ( .A(n12), .B(n13), .Y(n11) );
  NAND2X1 U21 ( .A(sq_reg[1]), .B(n15), .Y(n12) );
  NAND2X1 U22 ( .A(n17), .B(n14), .Y(n13) );
  BUFX2 U23 ( .A(n19), .Y(n23) );
  BUFX2 U24 ( .A(n19), .Y(n22) );
  BUFX2 U25 ( .A(n19), .Y(n21) );
  BUFX2 U26 ( .A(n19), .Y(n24) );
  BUFX2 U27 ( .A(n19), .Y(n25) );
  INVX2 U28 ( .A(n19), .Y(n20) );
  INVX2 U29 ( .A(n63), .Y(n19) );
  BUFX2 U30 ( .A(n_rst), .Y(n29) );
  INVX1 U31 ( .A(n15), .Y(n16) );
  INVX2 U32 ( .A(state[2]), .Y(n15) );
  BUFX2 U33 ( .A(state[0]), .Y(n17) );
  BUFX2 U34 ( .A(state[0]), .Y(n18) );
  INVX1 U35 ( .A(next_sub_reg[1]), .Y(n42) );
  INVX1 U36 ( .A(next_sub_reg[2]), .Y(n43) );
  INVX1 U37 ( .A(next_sub_reg[3]), .Y(n44) );
  BUFX4 U38 ( .A(n_rst), .Y(n26) );
  BUFX4 U39 ( .A(n_rst), .Y(n27) );
  BUFX4 U40 ( .A(n_rst), .Y(n28) );
  NAND3X1 U41 ( .A(n16), .B(n37), .C(n31), .Y(n48) );
  NAND3X1 U42 ( .A(n18), .B(n16), .C(n37), .Y(n35) );
  INVX2 U43 ( .A(n35), .Y(n133) );
  NAND2X1 U44 ( .A(n5), .B(n133), .Y(n38) );
  NAND3X1 U45 ( .A(n32), .B(n48), .C(n38), .Y(next_state[2]) );
  NOR2X1 U46 ( .A(n16), .B(n18), .Y(n30) );
  NAND3X1 U47 ( .A(cost_en), .B(n37), .C(n30), .Y(n63) );
  NAND2X1 U48 ( .A(n48), .B(n20), .Y(n67) );
  NAND2X1 U49 ( .A(n14), .B(n31), .Y(n68) );
  NAND3X1 U50 ( .A(n14), .B(n68), .C(n45), .Y(n33) );
  OAI21X1 U51 ( .A(n16), .B(n68), .C(n33), .Y(n36) );
  NOR2X1 U52 ( .A(n67), .B(n36), .Y(n34) );
  OAI21X1 U53 ( .A(n6), .B(n35), .C(n34), .Y(next_state[0]) );
  INVX2 U54 ( .A(n36), .Y(n40) );
  NAND3X1 U55 ( .A(n18), .B(n37), .C(n15), .Y(n39) );
  NAND3X1 U56 ( .A(n40), .B(n39), .C(n38), .Y(next_state[1]) );
  INVX2 U57 ( .A(next_sub_reg[0]), .Y(n41) );
  NOR2X1 U58 ( .A(n25), .B(n41), .Y(N149) );
  NOR2X1 U59 ( .A(n25), .B(n42), .Y(N150) );
  NOR2X1 U60 ( .A(n24), .B(n43), .Y(N151) );
  NOR2X1 U61 ( .A(n24), .B(n44), .Y(N152) );
  AND2X2 U62 ( .A(next_sq_reg[6]), .B(n20), .Y(N157) );
  AND2X2 U63 ( .A(sq_reg[4]), .B(n7), .Y(adder_input_a[4]) );
  AND2X2 U64 ( .A(next_sq_reg[5]), .B(n20), .Y(N156) );
  AND2X2 U65 ( .A(sq_reg[3]), .B(n7), .Y(adder_input_a[3]) );
  AND2X2 U66 ( .A(next_sq_reg[4]), .B(n20), .Y(N155) );
  AND2X2 U67 ( .A(sq_reg[2]), .B(n7), .Y(adder_input_a[2]) );
  AND2X2 U68 ( .A(next_sq_reg[3]), .B(n20), .Y(N154) );
  AND2X2 U69 ( .A(next_sq_reg[2]), .B(n20), .Y(N153) );
  NAND2X1 U70 ( .A(sq_reg[0]), .B(n17), .Y(n47) );
  NAND2X1 U71 ( .A(n14), .B(n15), .Y(n46) );
  NOR2X1 U72 ( .A(n47), .B(n46), .Y(adder_input_a[0]) );
  INVX2 U73 ( .A(cost_output[7]), .Y(n50) );
  INVX2 U74 ( .A(n48), .Y(n64) );
  NAND2X1 U75 ( .A(add_reg[7]), .B(n64), .Y(n49) );
  OAI21X1 U76 ( .A(n67), .B(n50), .C(n49), .Y(n125) );
  AND2X2 U77 ( .A(next_add_reg[6]), .B(n20), .Y(N164) );
  INVX2 U78 ( .A(cost_output[6]), .Y(n52) );
  NAND2X1 U79 ( .A(add_reg[6]), .B(n64), .Y(n51) );
  OAI21X1 U80 ( .A(n67), .B(n52), .C(n51), .Y(n126) );
  AND2X2 U81 ( .A(next_add_reg[5]), .B(n20), .Y(N163) );
  INVX2 U82 ( .A(cost_output[5]), .Y(n54) );
  NAND2X1 U83 ( .A(add_reg[5]), .B(n64), .Y(n53) );
  OAI21X1 U84 ( .A(n67), .B(n54), .C(n53), .Y(n127) );
  AND2X2 U85 ( .A(next_add_reg[4]), .B(n20), .Y(N162) );
  INVX2 U86 ( .A(cost_output[4]), .Y(n56) );
  NAND2X1 U87 ( .A(add_reg[4]), .B(n64), .Y(n55) );
  OAI21X1 U88 ( .A(n67), .B(n56), .C(n55), .Y(n128) );
  AND2X2 U89 ( .A(next_add_reg[3]), .B(n20), .Y(N161) );
  INVX2 U90 ( .A(cost_output[3]), .Y(n58) );
  NAND2X1 U91 ( .A(add_reg[3]), .B(n64), .Y(n57) );
  OAI21X1 U92 ( .A(n67), .B(n58), .C(n57), .Y(n129) );
  AND2X2 U93 ( .A(next_add_reg[2]), .B(n20), .Y(N160) );
  INVX2 U94 ( .A(cost_output[2]), .Y(n60) );
  NAND2X1 U95 ( .A(add_reg[2]), .B(n64), .Y(n59) );
  OAI21X1 U96 ( .A(n67), .B(n60), .C(n59), .Y(n130) );
  AND2X2 U97 ( .A(next_add_reg[1]), .B(n20), .Y(N159) );
  INVX2 U98 ( .A(cost_output[1]), .Y(n62) );
  NAND2X1 U99 ( .A(add_reg[1]), .B(n64), .Y(n61) );
  OAI21X1 U100 ( .A(n67), .B(n62), .C(n61), .Y(n131) );
  AND2X2 U101 ( .A(next_add_reg[0]), .B(n20), .Y(N158) );
  INVX2 U102 ( .A(cost_output[0]), .Y(n66) );
  NAND2X1 U103 ( .A(add_reg[0]), .B(n64), .Y(n65) );
  OAI21X1 U104 ( .A(n67), .B(n66), .C(n65), .Y(n132) );
  NOR2X1 U105 ( .A(n68), .B(n15), .Y(calculation_complete) );
  MUX2X1 U106 ( .B(\sigmoid_hold_reg[8][0] ), .A(\digit_weights[8][0] ), .S(
        n24), .Y(n69) );
  INVX2 U107 ( .A(n69), .Y(n222) );
  MUX2X1 U108 ( .B(\sigmoid_hold_reg[9][0] ), .A(\digit_weights[9][0] ), .S(
        n24), .Y(n70) );
  INVX2 U109 ( .A(n70), .Y(n214) );
  MUX2X1 U110 ( .B(\sigmoid_hold_reg[6][0] ), .A(\digit_weights[6][0] ), .S(
        n24), .Y(n71) );
  INVX2 U111 ( .A(n71), .Y(n238) );
  INVX2 U112 ( .A(\sigmoid_hold_reg[6][0] ), .Y(n333) );
  MUX2X1 U113 ( .B(\sigmoid_hold_reg[5][0] ), .A(\digit_weights[5][0] ), .S(
        n24), .Y(n72) );
  INVX2 U114 ( .A(n72), .Y(n246) );
  INVX2 U115 ( .A(\sigmoid_hold_reg[5][0] ), .Y(n329) );
  MUX2X1 U116 ( .B(\sigmoid_hold_reg[7][0] ), .A(\digit_weights[7][0] ), .S(
        n24), .Y(n73) );
  INVX2 U117 ( .A(n73), .Y(n230) );
  MUX2X1 U118 ( .B(\sigmoid_hold_reg[0][0] ), .A(\digit_weights[0][0] ), .S(
        n24), .Y(n74) );
  INVX2 U119 ( .A(n74), .Y(n286) );
  MUX2X1 U120 ( .B(\sigmoid_hold_reg[1][0] ), .A(\digit_weights[1][0] ), .S(
        n24), .Y(n75) );
  INVX2 U121 ( .A(n75), .Y(n278) );
  MUX2X1 U122 ( .B(\sigmoid_hold_reg[2][0] ), .A(\digit_weights[2][0] ), .S(
        n24), .Y(n76) );
  INVX2 U123 ( .A(n76), .Y(n270) );
  INVX2 U124 ( .A(\sigmoid_hold_reg[2][0] ), .Y(n317) );
  MUX2X1 U125 ( .B(\sigmoid_hold_reg[4][0] ), .A(\digit_weights[4][0] ), .S(
        n24), .Y(n77) );
  INVX2 U126 ( .A(n77), .Y(n254) );
  INVX2 U127 ( .A(\sigmoid_hold_reg[4][0] ), .Y(n325) );
  MUX2X1 U128 ( .B(\sigmoid_hold_reg[3][0] ), .A(\digit_weights[3][0] ), .S(
        n24), .Y(n78) );
  INVX2 U129 ( .A(n78), .Y(n262) );
  INVX2 U130 ( .A(\sigmoid_hold_reg[3][0] ), .Y(n321) );
  MUX2X1 U131 ( .B(\sigmoid_hold_reg[8][1] ), .A(\digit_weights[8][1] ), .S(
        n24), .Y(n79) );
  INVX2 U132 ( .A(n79), .Y(n224) );
  MUX2X1 U133 ( .B(\sigmoid_hold_reg[9][1] ), .A(\digit_weights[9][1] ), .S(
        n23), .Y(n80) );
  INVX2 U134 ( .A(n80), .Y(n216) );
  MUX2X1 U135 ( .B(\sigmoid_hold_reg[6][1] ), .A(\digit_weights[6][1] ), .S(
        n23), .Y(n81) );
  INVX2 U136 ( .A(n81), .Y(n240) );
  INVX2 U137 ( .A(\sigmoid_hold_reg[6][1] ), .Y(n332) );
  MUX2X1 U138 ( .B(\sigmoid_hold_reg[5][1] ), .A(\digit_weights[5][1] ), .S(
        n23), .Y(n82) );
  INVX2 U139 ( .A(n82), .Y(n248) );
  INVX2 U140 ( .A(\sigmoid_hold_reg[5][1] ), .Y(n328) );
  MUX2X1 U141 ( .B(\sigmoid_hold_reg[7][1] ), .A(\digit_weights[7][1] ), .S(
        n23), .Y(n83) );
  INVX2 U142 ( .A(n83), .Y(n232) );
  MUX2X1 U143 ( .B(\sigmoid_hold_reg[0][1] ), .A(\digit_weights[0][1] ), .S(
        n23), .Y(n84) );
  INVX2 U144 ( .A(n84), .Y(n288) );
  MUX2X1 U145 ( .B(\sigmoid_hold_reg[1][1] ), .A(\digit_weights[1][1] ), .S(
        n23), .Y(n85) );
  INVX2 U146 ( .A(n85), .Y(n280) );
  MUX2X1 U147 ( .B(\sigmoid_hold_reg[2][1] ), .A(\digit_weights[2][1] ), .S(
        n23), .Y(n86) );
  INVX2 U148 ( .A(n86), .Y(n272) );
  INVX2 U149 ( .A(\sigmoid_hold_reg[2][1] ), .Y(n316) );
  MUX2X1 U150 ( .B(\sigmoid_hold_reg[4][1] ), .A(\digit_weights[4][1] ), .S(
        n23), .Y(n87) );
  INVX2 U151 ( .A(n87), .Y(n256) );
  INVX2 U152 ( .A(\sigmoid_hold_reg[4][1] ), .Y(n324) );
  MUX2X1 U153 ( .B(\sigmoid_hold_reg[3][1] ), .A(\digit_weights[3][1] ), .S(
        n23), .Y(n88) );
  INVX2 U154 ( .A(n88), .Y(n264) );
  INVX2 U155 ( .A(\sigmoid_hold_reg[3][1] ), .Y(n320) );
  MUX2X1 U156 ( .B(\sigmoid_hold_reg[8][2] ), .A(\digit_weights[8][2] ), .S(
        n23), .Y(n89) );
  INVX2 U157 ( .A(n89), .Y(n226) );
  MUX2X1 U158 ( .B(\sigmoid_hold_reg[9][2] ), .A(\digit_weights[9][2] ), .S(
        n23), .Y(n90) );
  INVX2 U159 ( .A(n90), .Y(n218) );
  MUX2X1 U160 ( .B(\sigmoid_hold_reg[6][2] ), .A(\digit_weights[6][2] ), .S(
        n23), .Y(n91) );
  INVX2 U161 ( .A(n91), .Y(n242) );
  INVX2 U162 ( .A(\sigmoid_hold_reg[6][2] ), .Y(n331) );
  MUX2X1 U163 ( .B(\sigmoid_hold_reg[5][2] ), .A(\digit_weights[5][2] ), .S(
        n23), .Y(n92) );
  INVX2 U164 ( .A(n92), .Y(n250) );
  INVX2 U165 ( .A(\sigmoid_hold_reg[5][2] ), .Y(n327) );
  MUX2X1 U166 ( .B(\sigmoid_hold_reg[7][2] ), .A(\digit_weights[7][2] ), .S(
        n22), .Y(n93) );
  INVX2 U170 ( .A(n93), .Y(n234) );
  MUX2X1 U171 ( .B(\sigmoid_hold_reg[0][2] ), .A(\digit_weights[0][2] ), .S(
        n22), .Y(n94) );
  INVX2 U174 ( .A(n94), .Y(n290) );
  MUX2X1 U177 ( .B(\sigmoid_hold_reg[1][2] ), .A(\digit_weights[1][2] ), .S(
        n22), .Y(n95) );
  INVX2 U178 ( .A(n95), .Y(n282) );
  MUX2X1 U183 ( .B(\sigmoid_hold_reg[2][2] ), .A(\digit_weights[2][2] ), .S(
        n22), .Y(n96) );
  INVX2 U184 ( .A(n96), .Y(n274) );
  INVX2 U187 ( .A(\sigmoid_hold_reg[2][2] ), .Y(n183) );
  MUX2X1 U190 ( .B(\sigmoid_hold_reg[4][2] ), .A(\digit_weights[4][2] ), .S(
        n22), .Y(n97) );
  INVX2 U191 ( .A(n97), .Y(n258) );
  INVX2 U196 ( .A(\sigmoid_hold_reg[4][2] ), .Y(n323) );
  MUX2X1 U197 ( .B(\sigmoid_hold_reg[3][2] ), .A(\digit_weights[3][2] ), .S(
        n22), .Y(n98) );
  INVX2 U200 ( .A(n98), .Y(n266) );
  INVX2 U203 ( .A(\sigmoid_hold_reg[3][2] ), .Y(n319) );
  MUX2X1 U204 ( .B(\sigmoid_hold_reg[8][3] ), .A(\digit_weights[8][3] ), .S(
        n22), .Y(n99) );
  INVX2 U209 ( .A(n99), .Y(n228) );
  MUX2X1 U210 ( .B(\sigmoid_hold_reg[9][3] ), .A(\digit_weights[9][3] ), .S(
        n22), .Y(n100) );
  INVX2 U213 ( .A(n100), .Y(n220) );
  MUX2X1 U216 ( .B(\sigmoid_hold_reg[6][3] ), .A(\digit_weights[6][3] ), .S(
        n22), .Y(n101) );
  INVX2 U217 ( .A(n101), .Y(n244) );
  INVX2 U223 ( .A(\sigmoid_hold_reg[6][3] ), .Y(n330) );
  MUX2X1 U225 ( .B(\sigmoid_hold_reg[5][3] ), .A(\digit_weights[5][3] ), .S(
        n22), .Y(n102) );
  INVX2 U228 ( .A(n102), .Y(n252) );
  INVX2 U229 ( .A(\sigmoid_hold_reg[5][3] ), .Y(n326) );
  MUX2X1 U232 ( .B(\sigmoid_hold_reg[7][3] ), .A(\digit_weights[7][3] ), .S(
        n22), .Y(n103) );
  INVX2 U234 ( .A(n103), .Y(n236) );
  MUX2X1 U235 ( .B(\sigmoid_hold_reg[0][3] ), .A(\digit_weights[0][3] ), .S(
        n22), .Y(n104) );
  INVX2 U239 ( .A(n104), .Y(n292) );
  MUX2X1 U241 ( .B(\sigmoid_hold_reg[1][3] ), .A(\digit_weights[1][3] ), .S(
        n22), .Y(n105) );
  INVX2 U242 ( .A(n105), .Y(n284) );
  MUX2X1 U247 ( .B(\sigmoid_hold_reg[2][3] ), .A(\digit_weights[2][3] ), .S(
        n21), .Y(n106) );
  INVX2 U250 ( .A(n106), .Y(n276) );
  INVX2 U251 ( .A(\sigmoid_hold_reg[2][3] ), .Y(n182) );
  MUX2X1 U252 ( .B(\sigmoid_hold_reg[4][3] ), .A(\digit_weights[4][3] ), .S(
        n21), .Y(n107) );
  INVX2 U253 ( .A(n107), .Y(n260) );
  INVX2 U254 ( .A(\sigmoid_hold_reg[4][3] ), .Y(n322) );
  MUX2X1 U255 ( .B(\sigmoid_hold_reg[3][3] ), .A(\digit_weights[3][3] ), .S(
        n21), .Y(n108) );
  INVX2 U256 ( .A(n108), .Y(n268) );
  INVX2 U257 ( .A(\sigmoid_hold_reg[3][3] ), .Y(n318) );
  MUX2X1 U258 ( .B(label_hold_reg[8]), .A(expected_label[8]), .S(n21), .Y(n109) );
  INVX2 U259 ( .A(n109), .Y(n296) );
  MUX2X1 U260 ( .B(label_hold_reg[9]), .A(expected_label[9]), .S(n21), .Y(n110) );
  INVX2 U261 ( .A(n110), .Y(n294) );
  MUX2X1 U262 ( .B(label_hold_reg[6]), .A(expected_label[6]), .S(n21), .Y(n111) );
  INVX2 U263 ( .A(n111), .Y(n300) );
  INVX2 U264 ( .A(label_hold_reg[6]), .Y(n178) );
  MUX2X1 U265 ( .B(label_hold_reg[5]), .A(expected_label[5]), .S(n21), .Y(n112) );
  INVX2 U266 ( .A(n112), .Y(n302) );
  INVX2 U267 ( .A(label_hold_reg[5]), .Y(n177) );
  MUX2X1 U268 ( .B(label_hold_reg[7]), .A(expected_label[7]), .S(n21), .Y(n113) );
  INVX2 U269 ( .A(n113), .Y(n298) );
  MUX2X1 U270 ( .B(label_hold_reg[0]), .A(expected_label[0]), .S(n21), .Y(n114) );
  INVX2 U271 ( .A(n114), .Y(n312) );
  MUX2X1 U272 ( .B(label_hold_reg[1]), .A(expected_label[1]), .S(n21), .Y(n115) );
  INVX2 U273 ( .A(n115), .Y(n310) );
  MUX2X1 U274 ( .B(label_hold_reg[2]), .A(expected_label[2]), .S(n21), .Y(n116) );
  INVX2 U275 ( .A(n116), .Y(n308) );
  INVX2 U276 ( .A(label_hold_reg[2]), .Y(n144) );
  MUX2X1 U277 ( .B(label_hold_reg[4]), .A(expected_label[4]), .S(n21), .Y(n117) );
  INVX2 U278 ( .A(n117), .Y(n304) );
  INVX2 U279 ( .A(label_hold_reg[4]), .Y(n176) );
  MUX2X1 U358 ( .B(label_hold_reg[3]), .A(expected_label[3]), .S(n21), .Y(n118) );
  INVX2 U359 ( .A(n118), .Y(n306) );
  INVX2 U360 ( .A(label_hold_reg[3]), .Y(n145) );
  INVX2 U361 ( .A(n186), .Y(n120) );
  INVX2 U362 ( .A(cur_input[1]), .Y(n121) );
  INVX2 U363 ( .A(n184), .Y(n122) );
  INVX2 U364 ( .A(cur_input[2]), .Y(n123) );
  INVX2 U365 ( .A(cur_input[3]), .Y(n124) );
endmodule


module flex_counter_NUM_CNT_BITS4_0 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   N24, N25, N26, N27, N28, n1, n2, n3, n4, n5, n6, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64;

  DFFSR \count_out_reg[0]  ( .D(n20), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR rollover_flag_reg ( .D(n46), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  DFFSR \count_out_reg[1]  ( .D(n43), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[2]  ( .D(n44), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[3]  ( .D(n45), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  OAI22X1 U18 ( .A(n64), .B(n15), .C(n63), .D(n62), .Y(n46) );
  NAND3X1 U19 ( .A(n61), .B(n60), .C(n59), .Y(n62) );
  XOR2X1 U20 ( .A(n18), .B(N26), .Y(n59) );
  XOR2X1 U21 ( .A(n13), .B(N24), .Y(n60) );
  XOR2X1 U22 ( .A(n17), .B(N25), .Y(n61) );
  NAND2X1 U23 ( .A(n58), .B(n57), .Y(n63) );
  XOR2X1 U24 ( .A(n19), .B(N27), .Y(n57) );
  NOR2X1 U25 ( .A(N28), .B(n56), .Y(n58) );
  OAI21X1 U26 ( .A(n55), .B(n19), .C(n54), .Y(n45) );
  NAND3X1 U27 ( .A(n53), .B(n52), .C(n51), .Y(n54) );
  NOR2X1 U28 ( .A(count_out[3]), .B(n18), .Y(n51) );
  AOI21X1 U29 ( .A(n53), .B(n18), .C(n50), .Y(n55) );
  OAI21X1 U30 ( .A(n12), .B(n18), .C(n49), .Y(n44) );
  NAND3X1 U31 ( .A(n52), .B(n18), .C(n53), .Y(n49) );
  OAI21X1 U32 ( .A(n52), .B(n16), .C(n64), .Y(n50) );
  NOR2X1 U33 ( .A(n17), .B(n13), .Y(n52) );
  OAI21X1 U34 ( .A(n14), .B(n17), .C(n48), .Y(n43) );
  NAND3X1 U35 ( .A(count_out[0]), .B(n17), .C(n53), .Y(n48) );
  OAI21X1 U36 ( .A(n16), .B(count_out[0]), .C(n64), .Y(n47) );
  OAI22X1 U37 ( .A(n13), .B(n64), .C(count_out[0]), .D(n16), .Y(n20) );
  NOR2X1 U38 ( .A(n56), .B(rollover_flag), .Y(n53) );
  NAND2X1 U39 ( .A(n1), .B(n56), .Y(n64) );
  NAND2X1 U40 ( .A(count_enable), .B(n1), .Y(n56) );
  INVX2 U7 ( .A(clear), .Y(n1) );
  NOR2X1 U9 ( .A(rollover_val[1]), .B(rollover_val[0]), .Y(n3) );
  AOI21X1 U10 ( .A(rollover_val[0]), .B(rollover_val[1]), .C(n3), .Y(n2) );
  NAND2X1 U11 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1 U12 ( .A(n3), .B(n6), .C(n4), .Y(N26) );
  NOR2X1 U13 ( .A(n4), .B(rollover_val[3]), .Y(N28) );
  AOI21X1 U14 ( .A(n4), .B(rollover_val[3]), .C(N28), .Y(n5) );
  INVX2 U15 ( .A(rollover_val[2]), .Y(n6) );
  INVX2 U16 ( .A(rollover_val[0]), .Y(N24) );
  INVX2 U17 ( .A(n5), .Y(N27) );
  INVX2 U41 ( .A(n2), .Y(N25) );
  INVX2 U42 ( .A(n50), .Y(n12) );
  INVX2 U43 ( .A(count_out[0]), .Y(n13) );
  INVX2 U44 ( .A(n47), .Y(n14) );
  INVX2 U45 ( .A(rollover_flag), .Y(n15) );
  INVX2 U46 ( .A(n53), .Y(n16) );
  INVX2 U47 ( .A(count_out[1]), .Y(n17) );
  INVX2 U48 ( .A(count_out[2]), .Y(n18) );
  INVX2 U49 ( .A(count_out[3]), .Y(n19) );
endmodule


module comparator_1 ( a, b, gt, lt, eq );
  input [3:0] a;
  input [3:0] b;
  output gt, lt, eq;
  wire   net18313, net18316, net18317, net22495, net22536, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16;

  OAI21X1 U3 ( .A(n8), .B(n9), .C(n7), .Y(gt) );
  NOR2X1 U4 ( .A(lt), .B(gt), .Y(eq) );
  INVX2 U5 ( .A(n2), .Y(n8) );
  AOI22X1 U6 ( .A(n11), .B(n3), .C(a[2]), .D(n12), .Y(n9) );
  INVX1 U7 ( .A(b[2]), .Y(n12) );
  INVX1 U8 ( .A(n12), .Y(net22495) );
  XNOR2X1 U9 ( .A(a[2]), .B(b[2]), .Y(n3) );
  OAI21X1 U10 ( .A(n13), .B(b[0]), .C(n6), .Y(n11) );
  NAND2X1 U11 ( .A(n5), .B(a[0]), .Y(n13) );
  NAND2X1 U12 ( .A(a[3]), .B(n10), .Y(n7) );
  INVX2 U13 ( .A(n7), .Y(n1) );
  INVX2 U14 ( .A(b[3]), .Y(n10) );
  NAND2X1 U15 ( .A(b[3]), .B(n16), .Y(n2) );
  OAI21X1 U16 ( .A(net18313), .B(n1), .C(n2), .Y(lt) );
  INVX2 U17 ( .A(a[3]), .Y(n16) );
  INVX1 U18 ( .A(a[2]), .Y(net18317) );
  XNOR2X1 U19 ( .A(a[2]), .B(b[2]), .Y(net22536) );
  NAND2X1 U20 ( .A(n6), .B(b[0]), .Y(n4) );
  NAND2X1 U21 ( .A(a[1]), .B(n14), .Y(n6) );
  INVX1 U22 ( .A(b[1]), .Y(n14) );
  NAND2X1 U23 ( .A(b[1]), .B(n15), .Y(n5) );
  OAI21X1 U24 ( .A(n4), .B(a[0]), .C(n5), .Y(net18316) );
  INVX1 U25 ( .A(a[1]), .Y(n15) );
  AOI22X1 U26 ( .A(net18316), .B(net22536), .C(net22495), .D(net18317), .Y(
        net18313) );
endmodule


module digit_decode ( clk, n_rst, network_done, .digit_weights({
        \digit_weights[0][3] , \digit_weights[0][2] , \digit_weights[0][1] , 
        \digit_weights[0][0] , \digit_weights[1][3] , \digit_weights[1][2] , 
        \digit_weights[1][1] , \digit_weights[1][0] , \digit_weights[2][3] , 
        \digit_weights[2][2] , \digit_weights[2][1] , \digit_weights[2][0] , 
        \digit_weights[3][3] , \digit_weights[3][2] , \digit_weights[3][1] , 
        \digit_weights[3][0] , \digit_weights[4][3] , \digit_weights[4][2] , 
        \digit_weights[4][1] , \digit_weights[4][0] , \digit_weights[5][3] , 
        \digit_weights[5][2] , \digit_weights[5][1] , \digit_weights[5][0] , 
        \digit_weights[6][3] , \digit_weights[6][2] , \digit_weights[6][1] , 
        \digit_weights[6][0] , \digit_weights[7][3] , \digit_weights[7][2] , 
        \digit_weights[7][1] , \digit_weights[7][0] , \digit_weights[8][3] , 
        \digit_weights[8][2] , \digit_weights[8][1] , \digit_weights[8][0] , 
        \digit_weights[9][3] , \digit_weights[9][2] , \digit_weights[9][1] , 
        \digit_weights[9][0] }), detected_digit, mux_out, next_digit );
  output [3:0] detected_digit;
  output [3:0] mux_out;
  output [3:0] next_digit;
  input clk, n_rst, network_done, \digit_weights[0][3] , \digit_weights[0][2] ,
         \digit_weights[0][1] , \digit_weights[0][0] , \digit_weights[1][3] ,
         \digit_weights[1][2] , \digit_weights[1][1] , \digit_weights[1][0] ,
         \digit_weights[2][3] , \digit_weights[2][2] , \digit_weights[2][1] ,
         \digit_weights[2][0] , \digit_weights[3][3] , \digit_weights[3][2] ,
         \digit_weights[3][1] , \digit_weights[3][0] , \digit_weights[4][3] ,
         \digit_weights[4][2] , \digit_weights[4][1] , \digit_weights[4][0] ,
         \digit_weights[5][3] , \digit_weights[5][2] , \digit_weights[5][1] ,
         \digit_weights[5][0] , \digit_weights[6][3] , \digit_weights[6][2] ,
         \digit_weights[6][1] , \digit_weights[6][0] , \digit_weights[7][3] ,
         \digit_weights[7][2] , \digit_weights[7][1] , \digit_weights[7][0] ,
         \digit_weights[8][3] , \digit_weights[8][2] , \digit_weights[8][1] ,
         \digit_weights[8][0] , \digit_weights[9][3] , \digit_weights[9][2] ,
         \digit_weights[9][1] , \digit_weights[9][0] ;
  wire   \weight_hold[0][3] , \weight_hold[0][2] , \weight_hold[0][1] ,
         \weight_hold[0][0] , \weight_hold[1][3] , \weight_hold[1][2] ,
         \weight_hold[1][1] , \weight_hold[1][0] , \weight_hold[2][3] ,
         \weight_hold[2][2] , \weight_hold[2][1] , \weight_hold[2][0] ,
         \weight_hold[3][3] , \weight_hold[3][2] , \weight_hold[3][1] ,
         \weight_hold[3][0] , \weight_hold[4][3] , \weight_hold[4][2] ,
         \weight_hold[4][1] , \weight_hold[4][0] , \weight_hold[5][3] ,
         \weight_hold[5][2] , \weight_hold[5][1] , \weight_hold[5][0] ,
         \weight_hold[6][3] , \weight_hold[6][2] , \weight_hold[6][1] ,
         \weight_hold[6][0] , \weight_hold[7][3] , \weight_hold[7][2] ,
         \weight_hold[7][1] , \weight_hold[7][0] , \weight_hold[8][3] ,
         \weight_hold[8][2] , \weight_hold[8][1] , \weight_hold[8][0] ,
         \weight_hold[9][3] , \weight_hold[9][2] , \weight_hold[9][1] ,
         \weight_hold[9][0] , N15, N16, N17, N18, N19, N20, N21, N22, N24, N25,
         N26, N27, floppy, floppy_nxt, gt, eq, n4, n6, n8, n10, n12, n14, n16,
         n18, n20, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42, n44,
         n46, n48, n50, n52, n54, n56, n58, n60, n62, n64, n66, n68, n70, n72,
         n74, n76, n78, n80, n82, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n96, n97, n98, n99, n100, n102, n103, n104, n105, n106,
         n107, n108, n110, n111, n112, n113, n114, n115, n116, n118, n119,
         n120, n121, n122, n127, n128, n131, n132, n133, n134, n183, n185,
         n187, n189, n191, n193, n195, n197, n199, n201, n203, n205, n207,
         n209, n211, n213, n215, n217, n219, n221, n223, n225, n227, n229,
         n231, n233, n235, n237, n239, n241, n243, n245, n247, n249, n251,
         n253, n255, n257, n259, n261, net15007, net15009, net15012, net15015,
         net18334, net18335, net19610, net19790, net22112, net22111, net22335,
         net22438, net22437, net22442, net22441, net22530, net22538, net18332,
         net23534, net22537, net19786, net18342, net18341, net18340, net18339,
         net18336, net22354, net19759, net18333, n1, n2, n3, n5, n7, n9, n11,
         n13, n15, n17, n19, n21, n23, n25, n27, n29, n31, n33, n35, n37, n39,
         n41, n43, n45, n47, n49, n51, n53, n55, n57, n59, n61, n63, n65, n67,
         n69, n71, n73, n75, n77, n79, n81, n83, n95, n101, n109, n117, n123,
         n124, n125, n126, n129, n130, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151;
  wire   [3:0] max_val;
  wire   [3:0] mux_out_reg;
  wire   [3:0] count_out;

  DFFSR \weight_hold_reg[0][3]  ( .D(n261), .CLK(clk), .R(n45), .S(1'b1), .Q(
        \weight_hold[0][3] ) );
  DFFSR \weight_hold_reg[0][2]  ( .D(n259), .CLK(clk), .R(n45), .S(1'b1), .Q(
        \weight_hold[0][2] ) );
  DFFSR \weight_hold_reg[0][1]  ( .D(n257), .CLK(clk), .R(n45), .S(1'b1), .Q(
        \weight_hold[0][1] ) );
  DFFSR \weight_hold_reg[0][0]  ( .D(n255), .CLK(clk), .R(n45), .S(1'b1), .Q(
        \weight_hold[0][0] ) );
  DFFSR \weight_hold_reg[1][3]  ( .D(n253), .CLK(clk), .R(n45), .S(1'b1), .Q(
        \weight_hold[1][3] ) );
  DFFSR \weight_hold_reg[1][2]  ( .D(n251), .CLK(clk), .R(n45), .S(1'b1), .Q(
        \weight_hold[1][2] ) );
  DFFSR \weight_hold_reg[1][1]  ( .D(n249), .CLK(clk), .R(n43), .S(1'b1), .Q(
        \weight_hold[1][1] ) );
  DFFSR \weight_hold_reg[1][0]  ( .D(n247), .CLK(clk), .R(n43), .S(1'b1), .Q(
        \weight_hold[1][0] ) );
  DFFSR \weight_hold_reg[2][3]  ( .D(n245), .CLK(clk), .R(n43), .S(1'b1), .Q(
        \weight_hold[2][3] ) );
  DFFSR \weight_hold_reg[2][2]  ( .D(n243), .CLK(clk), .R(n43), .S(1'b1), .Q(
        \weight_hold[2][2] ) );
  DFFSR \weight_hold_reg[2][1]  ( .D(n241), .CLK(clk), .R(n43), .S(1'b1), .Q(
        \weight_hold[2][1] ) );
  DFFSR \weight_hold_reg[2][0]  ( .D(n239), .CLK(clk), .R(n43), .S(1'b1), .Q(
        \weight_hold[2][0] ) );
  DFFSR \weight_hold_reg[3][3]  ( .D(n237), .CLK(clk), .R(n43), .S(1'b1), .Q(
        \weight_hold[3][3] ) );
  DFFSR \weight_hold_reg[3][2]  ( .D(n235), .CLK(clk), .R(n43), .S(1'b1), .Q(
        \weight_hold[3][2] ) );
  DFFSR \weight_hold_reg[3][1]  ( .D(n233), .CLK(clk), .R(n43), .S(1'b1), .Q(
        \weight_hold[3][1] ) );
  DFFSR \weight_hold_reg[3][0]  ( .D(n231), .CLK(clk), .R(n43), .S(1'b1), .Q(
        \weight_hold[3][0] ) );
  DFFSR \weight_hold_reg[4][3]  ( .D(n229), .CLK(clk), .R(n43), .S(1'b1), .Q(
        \weight_hold[4][3] ) );
  DFFSR \weight_hold_reg[4][2]  ( .D(n227), .CLK(clk), .R(n43), .S(1'b1), .Q(
        \weight_hold[4][2] ) );
  DFFSR \weight_hold_reg[4][1]  ( .D(n225), .CLK(clk), .R(n43), .S(1'b1), .Q(
        \weight_hold[4][1] ) );
  DFFSR \weight_hold_reg[4][0]  ( .D(n223), .CLK(clk), .R(n43), .S(1'b1), .Q(
        \weight_hold[4][0] ) );
  DFFSR \weight_hold_reg[5][3]  ( .D(n221), .CLK(clk), .R(n43), .S(1'b1), .Q(
        \weight_hold[5][3] ) );
  DFFSR \weight_hold_reg[5][2]  ( .D(n219), .CLK(clk), .R(n43), .S(1'b1), .Q(
        \weight_hold[5][2] ) );
  DFFSR \weight_hold_reg[5][1]  ( .D(n217), .CLK(clk), .R(n43), .S(1'b1), .Q(
        \weight_hold[5][1] ) );
  DFFSR \weight_hold_reg[5][0]  ( .D(n215), .CLK(clk), .R(n43), .S(1'b1), .Q(
        \weight_hold[5][0] ) );
  DFFSR \weight_hold_reg[6][3]  ( .D(n213), .CLK(clk), .R(n43), .S(1'b1), .Q(
        \weight_hold[6][3] ) );
  DFFSR \weight_hold_reg[6][2]  ( .D(n211), .CLK(clk), .R(n43), .S(1'b1), .Q(
        \weight_hold[6][2] ) );
  DFFSR \weight_hold_reg[6][1]  ( .D(n209), .CLK(clk), .R(n43), .S(1'b1), .Q(
        \weight_hold[6][1] ) );
  DFFSR \weight_hold_reg[6][0]  ( .D(n207), .CLK(clk), .R(n43), .S(1'b1), .Q(
        \weight_hold[6][0] ) );
  DFFSR \weight_hold_reg[7][3]  ( .D(n205), .CLK(clk), .R(n43), .S(1'b1), .Q(
        \weight_hold[7][3] ) );
  DFFSR \weight_hold_reg[7][2]  ( .D(n203), .CLK(clk), .R(n43), .S(1'b1), .Q(
        \weight_hold[7][2] ) );
  DFFSR \weight_hold_reg[7][1]  ( .D(n201), .CLK(clk), .R(n43), .S(1'b1), .Q(
        \weight_hold[7][1] ) );
  DFFSR \weight_hold_reg[7][0]  ( .D(n199), .CLK(clk), .R(n43), .S(1'b1), .Q(
        \weight_hold[7][0] ) );
  DFFSR \weight_hold_reg[8][3]  ( .D(n197), .CLK(clk), .R(n41), .S(1'b1), .Q(
        \weight_hold[8][3] ) );
  DFFSR \weight_hold_reg[8][2]  ( .D(n195), .CLK(clk), .R(n41), .S(1'b1), .Q(
        \weight_hold[8][2] ) );
  DFFSR \weight_hold_reg[8][1]  ( .D(n193), .CLK(clk), .R(n41), .S(1'b1), .Q(
        \weight_hold[8][1] ) );
  DFFSR \weight_hold_reg[8][0]  ( .D(n191), .CLK(clk), .R(n41), .S(1'b1), .Q(
        \weight_hold[8][0] ) );
  DFFSR \weight_hold_reg[9][3]  ( .D(n189), .CLK(clk), .R(n41), .S(1'b1), .Q(
        \weight_hold[9][3] ) );
  DFFSR \weight_hold_reg[9][2]  ( .D(n187), .CLK(clk), .R(n41), .S(1'b1), .Q(
        \weight_hold[9][2] ) );
  DFFSR \weight_hold_reg[9][1]  ( .D(n185), .CLK(clk), .R(n41), .S(1'b1), .Q(
        \weight_hold[9][1] ) );
  DFFSR \weight_hold_reg[9][0]  ( .D(n183), .CLK(clk), .R(n41), .S(1'b1), .Q(
        \weight_hold[9][0] ) );
  DFFSR floppy_reg ( .D(floppy_nxt), .CLK(clk), .R(n41), .S(1'b1), .Q(floppy)
         );
  DFFSR \mux_out_reg_reg[3]  ( .D(N27), .CLK(clk), .R(n41), .S(1'b1), .Q(
        mux_out_reg[3]) );
  DFFSR \mux_out_reg_reg[2]  ( .D(N26), .CLK(clk), .R(n41), .S(1'b1), .Q(
        mux_out_reg[2]) );
  DFFSR \mux_out_reg_reg[1]  ( .D(N25), .CLK(clk), .R(n41), .S(1'b1), .Q(
        mux_out_reg[1]) );
  DFFSR \mux_out_reg_reg[0]  ( .D(N24), .CLK(clk), .R(n41), .S(1'b1), .Q(
        mux_out_reg[0]) );
  DFFSR \max_val_reg[3]  ( .D(N18), .CLK(clk), .R(n41), .S(1'b1), .Q(
        max_val[3]) );
  DFFSR \max_val_reg[2]  ( .D(N17), .CLK(clk), .R(n41), .S(1'b1), .Q(
        max_val[2]) );
  DFFSR \max_val_reg[1]  ( .D(N16), .CLK(clk), .R(n41), .S(1'b1), .Q(
        max_val[1]) );
  DFFSR \max_val_reg[0]  ( .D(N15), .CLK(clk), .R(n41), .S(1'b1), .Q(
        max_val[0]) );
  DFFSR \digit_val_reg[0]  ( .D(N19), .CLK(clk), .R(n41), .S(1'b1), .Q(
        detected_digit[0]) );
  DFFSR \digit_val_reg[1]  ( .D(N20), .CLK(clk), .R(n41), .S(1'b1), .Q(
        detected_digit[1]) );
  DFFSR \digit_val_reg[2]  ( .D(N21), .CLK(clk), .R(n41), .S(1'b1), .Q(
        detected_digit[2]) );
  DFFSR \digit_val_reg[3]  ( .D(N22), .CLK(clk), .R(n41), .S(1'b1), .Q(
        detected_digit[3]) );
  OAI21X1 U3 ( .A(net19610), .B(n151), .C(n4), .Y(n183) );
  NAND2X1 U4 ( .A(network_done), .B(\digit_weights[9][0] ), .Y(n4) );
  OAI21X1 U6 ( .A(net19610), .B(n150), .C(n6), .Y(n185) );
  NAND2X1 U7 ( .A(\digit_weights[9][1] ), .B(net19610), .Y(n6) );
  OAI21X1 U9 ( .A(net19610), .B(n149), .C(n8), .Y(n187) );
  NAND2X1 U10 ( .A(\digit_weights[9][2] ), .B(net19610), .Y(n8) );
  OAI21X1 U12 ( .A(net19610), .B(n148), .C(n10), .Y(n189) );
  NAND2X1 U13 ( .A(\digit_weights[9][3] ), .B(net19610), .Y(n10) );
  OAI21X1 U15 ( .A(net19610), .B(n147), .C(n12), .Y(n191) );
  NAND2X1 U16 ( .A(\digit_weights[8][0] ), .B(net19610), .Y(n12) );
  OAI21X1 U18 ( .A(net19610), .B(n146), .C(n14), .Y(n193) );
  NAND2X1 U19 ( .A(\digit_weights[8][1] ), .B(net19610), .Y(n14) );
  OAI21X1 U21 ( .A(net19610), .B(n145), .C(n16), .Y(n195) );
  NAND2X1 U22 ( .A(\digit_weights[8][2] ), .B(net19610), .Y(n16) );
  OAI21X1 U24 ( .A(net19610), .B(n144), .C(n18), .Y(n197) );
  NAND2X1 U25 ( .A(\digit_weights[8][3] ), .B(net19610), .Y(n18) );
  OAI21X1 U27 ( .A(net19610), .B(n143), .C(n20), .Y(n199) );
  NAND2X1 U28 ( .A(\digit_weights[7][0] ), .B(net19610), .Y(n20) );
  OAI21X1 U30 ( .A(net19610), .B(n142), .C(n22), .Y(n201) );
  NAND2X1 U31 ( .A(\digit_weights[7][1] ), .B(net19610), .Y(n22) );
  OAI21X1 U33 ( .A(net19610), .B(n141), .C(n24), .Y(n203) );
  NAND2X1 U34 ( .A(\digit_weights[7][2] ), .B(net19610), .Y(n24) );
  OAI21X1 U36 ( .A(net19610), .B(n140), .C(n26), .Y(n205) );
  NAND2X1 U37 ( .A(\digit_weights[7][3] ), .B(net19610), .Y(n26) );
  OAI21X1 U39 ( .A(net19610), .B(n139), .C(n28), .Y(n207) );
  NAND2X1 U40 ( .A(\digit_weights[6][0] ), .B(network_done), .Y(n28) );
  OAI21X1 U41 ( .A(net19610), .B(n138), .C(n30), .Y(n209) );
  NAND2X1 U42 ( .A(\digit_weights[6][1] ), .B(network_done), .Y(n30) );
  OAI21X1 U43 ( .A(net19610), .B(n137), .C(n32), .Y(n211) );
  NAND2X1 U44 ( .A(\digit_weights[6][2] ), .B(network_done), .Y(n32) );
  OAI21X1 U45 ( .A(net19610), .B(n136), .C(n34), .Y(n213) );
  NAND2X1 U46 ( .A(\digit_weights[6][3] ), .B(network_done), .Y(n34) );
  OAI21X1 U47 ( .A(net19610), .B(n135), .C(n36), .Y(n215) );
  NAND2X1 U48 ( .A(\digit_weights[5][0] ), .B(network_done), .Y(n36) );
  OAI21X1 U49 ( .A(net19610), .B(n130), .C(n38), .Y(n217) );
  NAND2X1 U50 ( .A(\digit_weights[5][1] ), .B(network_done), .Y(n38) );
  OAI21X1 U51 ( .A(net19610), .B(n129), .C(n40), .Y(n219) );
  NAND2X1 U52 ( .A(\digit_weights[5][2] ), .B(network_done), .Y(n40) );
  OAI21X1 U53 ( .A(net19610), .B(n126), .C(n42), .Y(n221) );
  NAND2X1 U54 ( .A(\digit_weights[5][3] ), .B(network_done), .Y(n42) );
  OAI21X1 U55 ( .A(net19610), .B(n125), .C(n44), .Y(n223) );
  NAND2X1 U56 ( .A(\digit_weights[4][0] ), .B(network_done), .Y(n44) );
  OAI21X1 U57 ( .A(net19610), .B(n124), .C(n46), .Y(n225) );
  NAND2X1 U58 ( .A(\digit_weights[4][1] ), .B(network_done), .Y(n46) );
  OAI21X1 U59 ( .A(net19610), .B(n123), .C(n48), .Y(n227) );
  NAND2X1 U60 ( .A(\digit_weights[4][2] ), .B(network_done), .Y(n48) );
  OAI21X1 U61 ( .A(net19610), .B(n117), .C(n50), .Y(n229) );
  NAND2X1 U62 ( .A(\digit_weights[4][3] ), .B(network_done), .Y(n50) );
  OAI21X1 U63 ( .A(net19610), .B(n109), .C(n52), .Y(n231) );
  NAND2X1 U64 ( .A(\digit_weights[3][0] ), .B(network_done), .Y(n52) );
  OAI21X1 U65 ( .A(net19610), .B(n101), .C(n54), .Y(n233) );
  NAND2X1 U66 ( .A(\digit_weights[3][1] ), .B(network_done), .Y(n54) );
  OAI21X1 U67 ( .A(net19610), .B(n95), .C(n56), .Y(n235) );
  NAND2X1 U68 ( .A(\digit_weights[3][2] ), .B(network_done), .Y(n56) );
  OAI21X1 U69 ( .A(net19610), .B(n83), .C(n58), .Y(n237) );
  NAND2X1 U70 ( .A(\digit_weights[3][3] ), .B(network_done), .Y(n58) );
  OAI21X1 U71 ( .A(net19610), .B(n81), .C(n60), .Y(n239) );
  NAND2X1 U72 ( .A(\digit_weights[2][0] ), .B(network_done), .Y(n60) );
  OAI21X1 U73 ( .A(net19610), .B(n79), .C(n62), .Y(n241) );
  NAND2X1 U74 ( .A(\digit_weights[2][1] ), .B(network_done), .Y(n62) );
  OAI21X1 U75 ( .A(net19610), .B(n77), .C(n64), .Y(n243) );
  NAND2X1 U76 ( .A(\digit_weights[2][2] ), .B(network_done), .Y(n64) );
  OAI21X1 U77 ( .A(net19610), .B(n75), .C(n66), .Y(n245) );
  NAND2X1 U78 ( .A(\digit_weights[2][3] ), .B(network_done), .Y(n66) );
  OAI21X1 U79 ( .A(net19610), .B(n73), .C(n68), .Y(n247) );
  NAND2X1 U80 ( .A(\digit_weights[1][0] ), .B(network_done), .Y(n68) );
  OAI21X1 U82 ( .A(net19610), .B(n71), .C(n70), .Y(n249) );
  NAND2X1 U83 ( .A(\digit_weights[1][1] ), .B(network_done), .Y(n70) );
  OAI21X1 U85 ( .A(net19610), .B(n69), .C(n72), .Y(n251) );
  NAND2X1 U86 ( .A(\digit_weights[1][2] ), .B(network_done), .Y(n72) );
  OAI21X1 U88 ( .A(net19610), .B(n67), .C(n74), .Y(n253) );
  NAND2X1 U89 ( .A(\digit_weights[1][3] ), .B(network_done), .Y(n74) );
  OAI21X1 U91 ( .A(net19610), .B(n65), .C(n76), .Y(n255) );
  NAND2X1 U92 ( .A(\digit_weights[0][0] ), .B(network_done), .Y(n76) );
  OAI21X1 U94 ( .A(net19610), .B(n63), .C(n78), .Y(n257) );
  NAND2X1 U95 ( .A(\digit_weights[0][1] ), .B(network_done), .Y(n78) );
  OAI21X1 U97 ( .A(net19610), .B(n61), .C(n80), .Y(n259) );
  NAND2X1 U98 ( .A(\digit_weights[0][2] ), .B(network_done), .Y(n80) );
  OAI21X1 U100 ( .A(net19610), .B(n59), .C(n82), .Y(n261) );
  NAND2X1 U101 ( .A(\digit_weights[0][3] ), .B(network_done), .Y(n82) );
  NAND3X1 U106 ( .A(n84), .B(n85), .C(n86), .Y(mux_out[3]) );
  NOR2X1 U107 ( .A(n87), .B(n88), .Y(n86) );
  OAI22X1 U108 ( .A(n117), .B(n89), .C(n83), .D(n90), .Y(n88) );
  OAI21X1 U111 ( .A(n75), .B(n91), .C(n92), .Y(n87) );
  AOI22X1 U112 ( .A(n93), .B(\weight_hold[0][3] ), .C(n94), .D(
        \weight_hold[1][3] ), .Y(n92) );
  AOI21X1 U114 ( .A(n55), .B(\weight_hold[7][3] ), .C(n96), .Y(n85) );
  OAI22X1 U115 ( .A(n136), .B(n97), .C(n126), .D(n98), .Y(n96) );
  AOI22X1 U118 ( .A(n99), .B(\weight_hold[8][3] ), .C(n100), .D(
        \weight_hold[9][3] ), .Y(n84) );
  NAND3X1 U121 ( .A(n102), .B(n103), .C(n104), .Y(mux_out[2]) );
  NOR2X1 U122 ( .A(n105), .B(n106), .Y(n104) );
  OAI22X1 U123 ( .A(n123), .B(n89), .C(n95), .D(n90), .Y(n106) );
  OAI21X1 U126 ( .A(n77), .B(n91), .C(n107), .Y(n105) );
  AOI22X1 U127 ( .A(n93), .B(\weight_hold[0][2] ), .C(n94), .D(
        \weight_hold[1][2] ), .Y(n107) );
  AOI21X1 U129 ( .A(n55), .B(\weight_hold[7][2] ), .C(n108), .Y(n103) );
  OAI22X1 U130 ( .A(n137), .B(n97), .C(n129), .D(n98), .Y(n108) );
  AOI22X1 U133 ( .A(n99), .B(\weight_hold[8][2] ), .C(n100), .D(
        \weight_hold[9][2] ), .Y(n102) );
  NOR2X1 U137 ( .A(n113), .B(n114), .Y(n112) );
  OAI22X1 U138 ( .A(n124), .B(n89), .C(n101), .D(n90), .Y(n114) );
  OAI21X1 U141 ( .A(n79), .B(n91), .C(n115), .Y(n113) );
  AOI22X1 U142 ( .A(n93), .B(\weight_hold[0][1] ), .C(n94), .D(
        \weight_hold[1][1] ), .Y(n115) );
  AOI21X1 U144 ( .A(n55), .B(\weight_hold[7][1] ), .C(n116), .Y(n111) );
  OAI22X1 U145 ( .A(n138), .B(n97), .C(n130), .D(n98), .Y(n116) );
  AOI22X1 U148 ( .A(n99), .B(\weight_hold[8][1] ), .C(n100), .D(
        \weight_hold[9][1] ), .Y(n110) );
  NAND3X1 U151 ( .A(n118), .B(n119), .C(n120), .Y(mux_out[0]) );
  NOR2X1 U152 ( .A(n121), .B(n122), .Y(n120) );
  OAI22X1 U153 ( .A(n125), .B(n89), .C(n109), .D(n90), .Y(n122) );
  NAND2X1 U154 ( .A(n57), .B(count_out[0]), .Y(n90) );
  NAND3X1 U156 ( .A(net15015), .B(net15012), .C(n3), .Y(n89) );
  OAI21X1 U158 ( .A(n81), .B(n91), .C(n127), .Y(n121) );
  AOI22X1 U159 ( .A(n93), .B(\weight_hold[0][0] ), .C(n94), .D(
        \weight_hold[1][0] ), .Y(n127) );
  NOR2X1 U160 ( .A(n128), .B(net15015), .Y(n94) );
  NOR2X1 U161 ( .A(n128), .B(count_out[0]), .Y(n93) );
  NAND3X1 U162 ( .A(net15009), .B(net15007), .C(net15012), .Y(n128) );
  NAND2X1 U163 ( .A(n57), .B(net15015), .Y(n91) );
  NAND3X1 U165 ( .A(net15009), .B(net15007), .C(count_out[1]), .Y(n131) );
  AOI21X1 U167 ( .A(n55), .B(\weight_hold[7][0] ), .C(n132), .Y(n119) );
  OAI22X1 U168 ( .A(n139), .B(n97), .C(n135), .D(n98), .Y(n132) );
  NAND3X1 U169 ( .A(count_out[0]), .B(net15012), .C(n3), .Y(n98) );
  NAND3X1 U171 ( .A(count_out[1]), .B(net15015), .C(n3), .Y(n97) );
  NAND3X1 U174 ( .A(count_out[0]), .B(count_out[1]), .C(n3), .Y(n133) );
  AOI22X1 U176 ( .A(n99), .B(\weight_hold[8][0] ), .C(n100), .D(
        \weight_hold[9][0] ), .Y(n118) );
  NOR2X1 U177 ( .A(n134), .B(net15015), .Y(n100) );
  NOR2X1 U178 ( .A(n134), .B(count_out[0]), .Y(n99) );
  flex_counter_NUM_CNT_BITS4_0 INDEX_COUNT ( .clk(clk), .n_rst(n41), .clear(
        network_done), .count_enable(floppy), .rollover_val({1'b1, 1'b0, 1'b0, 
        1'b1}), .count_out(count_out) );
  comparator_1 COMPARATOR ( .a({mux_out_reg[3], net22438, mux_out_reg[1:0]}), 
        .b({max_val[3], net19790, max_val[1], net22538}), .gt(gt), .eq(eq) );
  INVX2 U5 ( .A(floppy), .Y(n29) );
  INVX2 U8 ( .A(n23), .Y(n1) );
  INVX2 U11 ( .A(net22537), .Y(net22538) );
  XOR2X1 U14 ( .A(n25), .B(n1), .Y(n21) );
  NOR2X1 U17 ( .A(net18336), .B(n15), .Y(n2) );
  NOR2X1 U20 ( .A(count_out[3]), .B(net15009), .Y(n3) );
  MUX2X1 U23 ( .B(max_val[3]), .A(mux_out_reg[3]), .S(n5), .Y(n25) );
  NAND2X1 U26 ( .A(n19), .B(n17), .Y(n5) );
  NAND2X1 U29 ( .A(n29), .B(eq), .Y(n7) );
  BUFX2 U32 ( .A(n33), .Y(n9) );
  MUX2X1 U35 ( .B(net22538), .A(mux_out_reg[0]), .S(n11), .Y(net18342) );
  NAND2X1 U38 ( .A(n19), .B(n7), .Y(n11) );
  MUX2X1 U81 ( .B(net19786), .A(net22442), .S(n13), .Y(net18341) );
  NAND2X1 U84 ( .A(n19), .B(n7), .Y(n13) );
  MUX2X1 U87 ( .B(n37), .A(net22438), .S(net22530), .Y(n33) );
  NAND3X1 U90 ( .A(net18340), .B(n21), .C(net18339), .Y(n15) );
  NOR2X1 U93 ( .A(floppy), .B(net19610), .Y(floppy_nxt) );
  NAND2X1 U96 ( .A(n17), .B(n19), .Y(net22530) );
  NAND3X1 U99 ( .A(net18340), .B(n21), .C(net18339), .Y(net22354) );
  INVX2 U102 ( .A(max_val[3]), .Y(n23) );
  INVX1 U103 ( .A(gt), .Y(n19) );
  INVX1 U104 ( .A(n25), .Y(net22111) );
  INVX2 U105 ( .A(n27), .Y(n31) );
  INVX1 U109 ( .A(net18341), .Y(n27) );
  NAND2X1 U110 ( .A(n29), .B(eq), .Y(n17) );
  MUX2X1 U113 ( .B(count_out[2]), .A(detected_digit[2]), .S(net19759), .Y(
        net18333) );
  NOR2X1 U116 ( .A(net18333), .B(net19610), .Y(N21) );
  INVX1 U117 ( .A(net18333), .Y(next_digit[2]) );
  INVX2 U119 ( .A(count_out[2]), .Y(net15009) );
  NOR2X1 U120 ( .A(net18336), .B(n15), .Y(net19759) );
  MUX2X1 U124 ( .B(count_out[1]), .A(detected_digit[1]), .S(n2), .Y(net18334)
         );
  NOR2X1 U125 ( .A(net18336), .B(net22354), .Y(net18332) );
  XNOR2X1 U128 ( .A(n33), .B(n37), .Y(net18336) );
  INVX2 U131 ( .A(n35), .Y(n37) );
  INVX1 U132 ( .A(net19790), .Y(n35) );
  BUFX4 U134 ( .A(max_val[2]), .Y(net19790) );
  XOR2X1 U135 ( .A(net18341), .B(net19786), .Y(net18340) );
  BUFX2 U136 ( .A(max_val[1]), .Y(net19786) );
  XOR2X1 U139 ( .A(net22538), .B(net18342), .Y(net18339) );
  INVX2 U140 ( .A(max_val[0]), .Y(net22537) );
  NOR2X1 U143 ( .A(net19610), .B(n9), .Y(N17) );
  NOR2X1 U146 ( .A(net19610), .B(n31), .Y(N16) );
  BUFX2 U147 ( .A(net18342), .Y(net22335) );
  INVX2 U149 ( .A(count_out[3]), .Y(net15007) );
  NAND3X1 U150 ( .A(net15009), .B(count_out[3]), .C(net15012), .Y(n134) );
  NOR2X1 U155 ( .A(n39), .B(net19610), .Y(N22) );
  MUX2X1 U157 ( .B(count_out[3]), .A(detected_digit[3]), .S(net18332), .Y(n39)
         );
  INVX8 U164 ( .A(net23534), .Y(net19610) );
  INVX2 U166 ( .A(network_done), .Y(net23534) );
  MUX2X1 U170 ( .B(count_out[0]), .A(detected_digit[0]), .S(net18332), .Y(
        net18335) );
  INVX1 U172 ( .A(n39), .Y(next_digit[3]) );
  INVX1 U173 ( .A(mux_out_reg[1]), .Y(net22441) );
  INVX2 U175 ( .A(net22441), .Y(net22442) );
  INVX2 U179 ( .A(mux_out_reg[2]), .Y(net22437) );
  INVX4 U180 ( .A(net22437), .Y(net22438) );
  INVX2 U181 ( .A(net22111), .Y(net22112) );
  BUFX2 U182 ( .A(n_rst), .Y(n45) );
  INVX1 U183 ( .A(net18334), .Y(next_digit[1]) );
  INVX1 U184 ( .A(net18335), .Y(next_digit[0]) );
  BUFX4 U185 ( .A(n_rst), .Y(n41) );
  BUFX4 U186 ( .A(n_rst), .Y(n43) );
  INVX2 U187 ( .A(mux_out[0]), .Y(n47) );
  NOR2X1 U188 ( .A(net19610), .B(n47), .Y(N24) );
  NOR2X1 U189 ( .A(net19610), .B(net22335), .Y(N15) );
  NAND3X1 U190 ( .A(n111), .B(n112), .C(n110), .Y(mux_out[1]) );
  INVX2 U191 ( .A(mux_out[1]), .Y(n49) );
  NOR2X1 U192 ( .A(net19610), .B(n49), .Y(N25) );
  INVX2 U193 ( .A(mux_out[2]), .Y(n51) );
  NOR2X1 U194 ( .A(net19610), .B(n51), .Y(N26) );
  INVX2 U195 ( .A(mux_out[3]), .Y(n53) );
  NOR2X1 U196 ( .A(net19610), .B(n53), .Y(N27) );
  NOR2X1 U197 ( .A(net19610), .B(net22112), .Y(N18) );
  NOR2X1 U198 ( .A(net18335), .B(net19610), .Y(N19) );
  NOR2X1 U199 ( .A(net18334), .B(net19610), .Y(N20) );
  INVX2 U200 ( .A(count_out[1]), .Y(net15012) );
  INVX2 U201 ( .A(count_out[0]), .Y(net15015) );
  INVX2 U202 ( .A(n133), .Y(n55) );
  INVX2 U203 ( .A(n131), .Y(n57) );
  INVX2 U204 ( .A(\weight_hold[0][3] ), .Y(n59) );
  INVX2 U205 ( .A(\weight_hold[0][2] ), .Y(n61) );
  INVX2 U206 ( .A(\weight_hold[0][1] ), .Y(n63) );
  INVX2 U207 ( .A(\weight_hold[0][0] ), .Y(n65) );
  INVX2 U208 ( .A(\weight_hold[1][3] ), .Y(n67) );
  INVX2 U209 ( .A(\weight_hold[1][2] ), .Y(n69) );
  INVX2 U210 ( .A(\weight_hold[1][1] ), .Y(n71) );
  INVX2 U211 ( .A(\weight_hold[1][0] ), .Y(n73) );
  INVX2 U212 ( .A(\weight_hold[2][3] ), .Y(n75) );
  INVX2 U213 ( .A(\weight_hold[2][2] ), .Y(n77) );
  INVX2 U214 ( .A(\weight_hold[2][1] ), .Y(n79) );
  INVX2 U215 ( .A(\weight_hold[2][0] ), .Y(n81) );
  INVX2 U216 ( .A(\weight_hold[3][3] ), .Y(n83) );
  INVX2 U217 ( .A(\weight_hold[3][2] ), .Y(n95) );
  INVX2 U218 ( .A(\weight_hold[3][1] ), .Y(n101) );
  INVX2 U219 ( .A(\weight_hold[3][0] ), .Y(n109) );
  INVX2 U220 ( .A(\weight_hold[4][3] ), .Y(n117) );
  INVX2 U221 ( .A(\weight_hold[4][2] ), .Y(n123) );
  INVX2 U222 ( .A(\weight_hold[4][1] ), .Y(n124) );
  INVX2 U223 ( .A(\weight_hold[4][0] ), .Y(n125) );
  INVX2 U224 ( .A(\weight_hold[5][3] ), .Y(n126) );
  INVX2 U225 ( .A(\weight_hold[5][2] ), .Y(n129) );
  INVX2 U226 ( .A(\weight_hold[5][1] ), .Y(n130) );
  INVX2 U227 ( .A(\weight_hold[5][0] ), .Y(n135) );
  INVX2 U228 ( .A(\weight_hold[6][3] ), .Y(n136) );
  INVX2 U229 ( .A(\weight_hold[6][2] ), .Y(n137) );
  INVX2 U283 ( .A(\weight_hold[6][1] ), .Y(n138) );
  INVX2 U284 ( .A(\weight_hold[6][0] ), .Y(n139) );
  INVX2 U285 ( .A(\weight_hold[7][3] ), .Y(n140) );
  INVX2 U286 ( .A(\weight_hold[7][2] ), .Y(n141) );
  INVX2 U287 ( .A(\weight_hold[7][1] ), .Y(n142) );
  INVX2 U288 ( .A(\weight_hold[7][0] ), .Y(n143) );
  INVX2 U289 ( .A(\weight_hold[8][3] ), .Y(n144) );
  INVX2 U290 ( .A(\weight_hold[8][2] ), .Y(n145) );
  INVX2 U291 ( .A(\weight_hold[8][1] ), .Y(n146) );
  INVX2 U292 ( .A(\weight_hold[8][0] ), .Y(n147) );
  INVX2 U293 ( .A(\weight_hold[9][3] ), .Y(n148) );
  INVX2 U294 ( .A(\weight_hold[9][2] ), .Y(n149) );
  INVX2 U295 ( .A(\weight_hold[9][1] ), .Y(n150) );
  INVX2 U296 ( .A(\weight_hold[9][0] ), .Y(n151) );
endmodule


module digit_recognizer_final ( clk, n_rst, SCK, SS, MOSI, data, MISO, ce, oe, 
        we, address );
  input [15:0] data;
  output [15:0] address;
  input clk, n_rst, SCK, SS, MOSI;
  output MISO, ce, oe, we;
  wire   write_en, data_ready, shift_network, flash_ready, network_done,
         digit_done, network_calc, sigmoid_write_en, accumulate, clear,
         shift_SPI, calculate_cost, sig_edge, calculation_complete,
         \digit_weights[0][3] , \digit_weights[0][2] , \digit_weights[0][1] ,
         \digit_weights[0][0] , \digit_weights[1][3] , \digit_weights[1][2] ,
         \digit_weights[1][1] , \digit_weights[1][0] , \digit_weights[2][3] ,
         \digit_weights[2][2] , \digit_weights[2][1] , \digit_weights[2][0] ,
         \digit_weights[3][3] , \digit_weights[3][2] , \digit_weights[3][1] ,
         \digit_weights[3][0] , \digit_weights[4][3] , \digit_weights[4][2] ,
         \digit_weights[4][1] , \digit_weights[4][0] , \digit_weights[5][3] ,
         \digit_weights[5][2] , \digit_weights[5][1] , \digit_weights[5][0] ,
         \digit_weights[6][3] , \digit_weights[6][2] , \digit_weights[6][1] ,
         \digit_weights[6][0] , \digit_weights[7][3] , \digit_weights[7][2] ,
         \digit_weights[7][1] , \digit_weights[7][0] , \digit_weights[8][3] ,
         \digit_weights[8][2] , \digit_weights[8][1] , \digit_weights[8][0] ,
         \digit_weights[9][3] , \digit_weights[9][2] , \digit_weights[9][1] ,
         \digit_weights[9][0] ;
  wire   [7:0] pixel_data1;
  wire   [7:0] pixel_data2;
  wire   [15:0] flash_address;
  wire   [15:0] flash_data;
  wire   [3:0] sigmoidData_in;
  wire   [3:0] sigmoidData_out;
  wire   [4:0] sigmoid_address;
  wire   [3:0] alu_output;
  wire   [3:0] weight1;
  wire   [3:0] weight2;
  wire   [3:0] weight3;
  wire   [3:0] weight4;
  wire   [3:0] input1;
  wire   [3:0] input2;
  wire   [3:0] input3;
  wire   [3:0] input4;
  wire   [3:0] bias;
  wire   [7:0] SPI_in;
  wire   [0:9] expected_label;
  wire   [7:0] cost_output;
  wire   [3:0] detected_digit;
  tri   MISO;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6;
  assign we = 1'b1;

  networkController top_network_controller ( .clk(clk), .n_rst(n_rst), 
        .write_en(write_en), .sigmoidData_out(sigmoidData_out), .ALUOutput(
        alu_output), .pixel_data1(pixel_data1), .pixel_data2(pixel_data2), 
        .flashData_out(flash_data), .data_ready(data_ready), .shift_network(
        shift_network), .network_done(network_done), .network_calc(
        network_calc), .digit_done(digit_done), .flash_ready(flash_ready), 
        .flash_address({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, flash_address[8:0]}), .sigmoidData_in(
        sigmoidData_in), .sigmoid_address(sigmoid_address), .sigmoid_write_en(
        sigmoid_write_en), .weight1(weight1), .weight2(weight2), .weight3(
        weight3), .weight4(weight4), .input1(input1), .input2(input2), 
        .input3(input3), .input4(input4), .bias(bias), .clear(clear), 
        .accumulate(accumulate) );
  SPI_input_controller top_spi_input ( .clk(clk), .n_rst(n_rst), .MOSI(MOSI), 
        .SCK(SCK), .SS(SS), .data_ready(data_ready), .shift_SPI(shift_SPI), 
        .SPI_in(SPI_in), .write_en(write_en), .calculate_cost(calculate_cost), 
        .expected_label(expected_label), .sig_edge(sig_edge) );
  SPI_output_controller top_spi_output ( .clk(clk), .n_rst(n_rst), .shift_SPI(
        shift_SPI), .sig_edge(sig_edge), .SPI_in(SPI_in), .SCK(SCK), .SS(SS), 
        .network_done(digit_done), .data_ready(data_ready), .cost_ready(
        calculation_complete), .cost_output(cost_output), .detected_digit(
        detected_digit), .MISO(MISO) );
  pixelData top_pixel_data ( .clk(clk), .shift_SPI(shift_SPI), .shift_network(
        shift_network), .network_calc(network_calc), .write_en(write_en), 
        .spi_in(SPI_in), .pixel_data_1(pixel_data1), .pixel_data_2(pixel_data2) );
  sigmoidRegisters top_sigmoid_registers ( .clk(clk), .write_en(
        sigmoid_write_en), .data_in(sigmoidData_in), .address(sigmoid_address), 
        .data_out(sigmoidData_out), .digit_weights({\digit_weights[0][3] , 
        \digit_weights[0][2] , \digit_weights[0][1] , \digit_weights[0][0] , 
        \digit_weights[1][3] , \digit_weights[1][2] , \digit_weights[1][1] , 
        \digit_weights[1][0] , \digit_weights[2][3] , \digit_weights[2][2] , 
        \digit_weights[2][1] , \digit_weights[2][0] , \digit_weights[3][3] , 
        \digit_weights[3][2] , \digit_weights[3][1] , \digit_weights[3][0] , 
        \digit_weights[4][3] , \digit_weights[4][2] , \digit_weights[4][1] , 
        \digit_weights[4][0] , \digit_weights[5][3] , \digit_weights[5][2] , 
        \digit_weights[5][1] , \digit_weights[5][0] , \digit_weights[6][3] , 
        \digit_weights[6][2] , \digit_weights[6][1] , \digit_weights[6][0] , 
        \digit_weights[7][3] , \digit_weights[7][2] , \digit_weights[7][1] , 
        \digit_weights[7][0] , \digit_weights[8][3] , \digit_weights[8][2] , 
        \digit_weights[8][1] , \digit_weights[8][0] , \digit_weights[9][3] , 
        \digit_weights[9][2] , \digit_weights[9][1] , \digit_weights[9][0] })
         );
  fmc top_fmc ( .clk(clk), .n_rst(n_rst), .ready(flash_ready), .address({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, flash_address[8:0]}), .data(data), 
        .data_out(flash_data), .address_in(address), .ce(ce), .oe(oe) );
  sigmoid_ALU top_sigmoid_ALU ( .clk(clk), .weight1(weight1), .weight2(weight2), .weight3(weight3), .weight4(weight4), .input1(input1), .input2(input2), 
        .input3(input3), .input4(input4), .bias(bias), .accumulate(accumulate), 
        .clear(clear), .out(alu_output) );
  cost_calculator top_cost_calculator ( .clk(clk), .n_rst(n_rst), .cost_en(
        calculate_cost), .expected_label(expected_label), .digit_weights({
        \digit_weights[0][3] , \digit_weights[0][2] , \digit_weights[0][1] , 
        \digit_weights[0][0] , \digit_weights[1][3] , \digit_weights[1][2] , 
        \digit_weights[1][1] , \digit_weights[1][0] , \digit_weights[2][3] , 
        \digit_weights[2][2] , \digit_weights[2][1] , \digit_weights[2][0] , 
        \digit_weights[3][3] , \digit_weights[3][2] , \digit_weights[3][1] , 
        \digit_weights[3][0] , \digit_weights[4][3] , \digit_weights[4][2] , 
        \digit_weights[4][1] , \digit_weights[4][0] , \digit_weights[5][3] , 
        \digit_weights[5][2] , \digit_weights[5][1] , \digit_weights[5][0] , 
        \digit_weights[6][3] , \digit_weights[6][2] , \digit_weights[6][1] , 
        \digit_weights[6][0] , \digit_weights[7][3] , \digit_weights[7][2] , 
        \digit_weights[7][1] , \digit_weights[7][0] , \digit_weights[8][3] , 
        \digit_weights[8][2] , \digit_weights[8][1] , \digit_weights[8][0] , 
        \digit_weights[9][3] , \digit_weights[9][2] , \digit_weights[9][1] , 
        \digit_weights[9][0] }), .calculation_complete(calculation_complete), 
        .cost_output(cost_output) );
  digit_decode top_digit_decode ( .clk(clk), .n_rst(n_rst), .network_done(
        network_done), .digit_weights({\digit_weights[0][3] , 
        \digit_weights[0][2] , \digit_weights[0][1] , \digit_weights[0][0] , 
        \digit_weights[1][3] , \digit_weights[1][2] , \digit_weights[1][1] , 
        \digit_weights[1][0] , \digit_weights[2][3] , \digit_weights[2][2] , 
        \digit_weights[2][1] , \digit_weights[2][0] , \digit_weights[3][3] , 
        \digit_weights[3][2] , \digit_weights[3][1] , \digit_weights[3][0] , 
        \digit_weights[4][3] , \digit_weights[4][2] , \digit_weights[4][1] , 
        \digit_weights[4][0] , \digit_weights[5][3] , \digit_weights[5][2] , 
        \digit_weights[5][1] , \digit_weights[5][0] , \digit_weights[6][3] , 
        \digit_weights[6][2] , \digit_weights[6][1] , \digit_weights[6][0] , 
        \digit_weights[7][3] , \digit_weights[7][2] , \digit_weights[7][1] , 
        \digit_weights[7][0] , \digit_weights[8][3] , \digit_weights[8][2] , 
        \digit_weights[8][1] , \digit_weights[8][0] , \digit_weights[9][3] , 
        \digit_weights[9][2] , \digit_weights[9][1] , \digit_weights[9][0] }), 
        .detected_digit(detected_digit) );
endmodule

