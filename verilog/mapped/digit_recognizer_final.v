/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Wed Apr 25 00:24:14 2018
/////////////////////////////////////////////////////////////


module flex_counter_NUM_CNT_BITS6 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [5:0] rollover_val;
  output [5:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   N9, N10, N11, N12, N13, N30, N31, N32, N33, N34, N36, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, \add_573/carry[5] ,
         \add_573/carry[4] , \add_573/carry[3] , \add_573/carry[2] , n1, n2,
         n3, n4, n5, n6, n14, n15, n16, n17, n18, n19, n20, n21, n48, n49, n50,
         n51, n52;

  DFFSR \count_out_reg[0]  ( .D(n47), .CLK(clk), .R(n1), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR rollover_flag_reg ( .D(n46), .CLK(clk), .R(n1), .S(1'b1), .Q(
        rollover_flag) );
  DFFSR \count_out_reg[1]  ( .D(n45), .CLK(clk), .R(n1), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[2]  ( .D(n44), .CLK(clk), .R(n1), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[3]  ( .D(n43), .CLK(clk), .R(n1), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR \count_out_reg[4]  ( .D(n42), .CLK(clk), .R(n1), .S(1'b1), .Q(
        count_out[4]) );
  DFFSR \count_out_reg[5]  ( .D(n41), .CLK(clk), .R(n1), .S(1'b1), .Q(
        count_out[5]) );
  OAI21X1 U19 ( .A(n22), .B(n51), .C(n23), .Y(n41) );
  NAND2X1 U20 ( .A(N13), .B(n24), .Y(n23) );
  OAI21X1 U21 ( .A(n22), .B(n50), .C(n25), .Y(n42) );
  NAND2X1 U22 ( .A(N12), .B(n24), .Y(n25) );
  OAI21X1 U23 ( .A(n22), .B(n49), .C(n26), .Y(n43) );
  NAND2X1 U24 ( .A(N11), .B(n24), .Y(n26) );
  OAI21X1 U25 ( .A(n22), .B(n48), .C(n27), .Y(n44) );
  NAND2X1 U26 ( .A(N10), .B(n24), .Y(n27) );
  OAI21X1 U27 ( .A(n22), .B(n21), .C(n28), .Y(n45) );
  NAND2X1 U28 ( .A(N9), .B(n24), .Y(n28) );
  OAI22X1 U29 ( .A(n22), .B(n20), .C(n29), .D(n30), .Y(n46) );
  NAND3X1 U30 ( .A(n31), .B(n32), .C(n33), .Y(n30) );
  NOR2X1 U31 ( .A(n34), .B(n35), .Y(n33) );
  XNOR2X1 U32 ( .A(n19), .B(N30), .Y(n35) );
  XNOR2X1 U33 ( .A(n48), .B(N32), .Y(n34) );
  XNOR2X1 U35 ( .A(count_out[3]), .B(N33), .Y(n31) );
  NAND3X1 U36 ( .A(n36), .B(n37), .C(n38), .Y(n29) );
  NOR2X1 U37 ( .A(N36), .B(n39), .Y(n38) );
  XNOR2X1 U38 ( .A(count_out[1]), .B(N31), .Y(n37) );
  XNOR2X1 U39 ( .A(count_out[4]), .B(N34), .Y(n36) );
  OAI21X1 U40 ( .A(n22), .B(n19), .C(n40), .Y(n47) );
  NAND2X1 U41 ( .A(n19), .B(n24), .Y(n40) );
  NOR2X1 U42 ( .A(n39), .B(rollover_flag), .Y(n24) );
  NAND2X1 U43 ( .A(n52), .B(n39), .Y(n22) );
  NAND2X1 U44 ( .A(count_enable), .B(n52), .Y(n39) );
  HAX1 \add_573/U1_1_1  ( .A(count_out[1]), .B(count_out[0]), .YC(
        \add_573/carry[2] ), .YS(N9) );
  HAX1 \add_573/U1_1_2  ( .A(count_out[2]), .B(\add_573/carry[2] ), .YC(
        \add_573/carry[3] ), .YS(N10) );
  HAX1 \add_573/U1_1_3  ( .A(count_out[3]), .B(\add_573/carry[3] ), .YC(
        \add_573/carry[4] ), .YS(N11) );
  HAX1 \add_573/U1_1_4  ( .A(count_out[4]), .B(\add_573/carry[4] ), .YC(
        \add_573/carry[5] ), .YS(N12) );
  INVX1 U7 ( .A(rollover_val[2]), .Y(n17) );
  XOR2X1 U11 ( .A(count_out[5]), .B(n16), .Y(n32) );
  INVX2 U12 ( .A(n2), .Y(n1) );
  INVX2 U13 ( .A(n_rst), .Y(n2) );
  XOR2X1 U14 ( .A(\add_573/carry[5] ), .B(count_out[5]), .Y(N13) );
  NOR2X1 U15 ( .A(rollover_val[1]), .B(rollover_val[0]), .Y(n4) );
  AOI21X1 U16 ( .A(rollover_val[0]), .B(rollover_val[1]), .C(n4), .Y(n3) );
  NAND2X1 U17 ( .A(n4), .B(n17), .Y(n5) );
  OAI21X1 U18 ( .A(n4), .B(n17), .C(n5), .Y(N32) );
  NOR2X1 U34 ( .A(n5), .B(rollover_val[3]), .Y(n14) );
  AOI21X1 U45 ( .A(n5), .B(rollover_val[3]), .C(n14), .Y(n6) );
  NAND2X1 U46 ( .A(n14), .B(n18), .Y(n15) );
  OAI21X1 U47 ( .A(n14), .B(n18), .C(n15), .Y(N34) );
  NOR2X1 U48 ( .A(n15), .B(rollover_val[5]), .Y(N36) );
  AOI21X1 U49 ( .A(n15), .B(rollover_val[5]), .C(N36), .Y(n16) );
  INVX2 U50 ( .A(rollover_val[4]), .Y(n18) );
  INVX2 U51 ( .A(rollover_val[0]), .Y(N30) );
  INVX2 U52 ( .A(n6), .Y(N33) );
  INVX2 U53 ( .A(n3), .Y(N31) );
  INVX2 U54 ( .A(count_out[0]), .Y(n19) );
  INVX2 U55 ( .A(rollover_flag), .Y(n20) );
  INVX2 U56 ( .A(count_out[1]), .Y(n21) );
  INVX2 U57 ( .A(count_out[2]), .Y(n48) );
  INVX2 U58 ( .A(count_out[3]), .Y(n49) );
  INVX2 U59 ( .A(count_out[4]), .Y(n50) );
  INVX2 U60 ( .A(count_out[5]), .Y(n51) );
  INVX2 U61 ( .A(clear), .Y(n52) );
endmodule


module flex_counter_NUM_CNT_BITS4_6 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   N24, N25, N26, N27, N28, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n1, n2, n3, n4, n5, n6, n12, n13, n14, n15, n16, n17, n18, n19;

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
  OAI22X1 U18 ( .A(n21), .B(n14), .C(n22), .D(n23), .Y(n39) );
  NAND3X1 U19 ( .A(n24), .B(n25), .C(n26), .Y(n23) );
  XOR2X1 U20 ( .A(n17), .B(N26), .Y(n26) );
  XOR2X1 U21 ( .A(n12), .B(N24), .Y(n25) );
  XOR2X1 U22 ( .A(n16), .B(N25), .Y(n24) );
  NAND2X1 U23 ( .A(n27), .B(n28), .Y(n22) );
  XOR2X1 U24 ( .A(n18), .B(N27), .Y(n28) );
  NOR2X1 U25 ( .A(N28), .B(n29), .Y(n27) );
  OAI21X1 U26 ( .A(n30), .B(n18), .C(n31), .Y(n40) );
  NAND3X1 U27 ( .A(n32), .B(n33), .C(n34), .Y(n31) );
  NOR2X1 U28 ( .A(count_out[3]), .B(n17), .Y(n34) );
  AOI21X1 U29 ( .A(n32), .B(n17), .C(n35), .Y(n30) );
  OAI21X1 U30 ( .A(n6), .B(n17), .C(n36), .Y(n41) );
  NAND3X1 U31 ( .A(n33), .B(n17), .C(n32), .Y(n36) );
  OAI21X1 U32 ( .A(n33), .B(n15), .C(n21), .Y(n35) );
  NOR2X1 U33 ( .A(n16), .B(n12), .Y(n33) );
  OAI21X1 U34 ( .A(n13), .B(n16), .C(n37), .Y(n42) );
  NAND3X1 U35 ( .A(count_out[0]), .B(n16), .C(n32), .Y(n37) );
  OAI21X1 U36 ( .A(n15), .B(count_out[0]), .C(n21), .Y(n38) );
  OAI22X1 U37 ( .A(n12), .B(n21), .C(count_out[0]), .D(n15), .Y(n43) );
  NOR2X1 U38 ( .A(n29), .B(rollover_flag), .Y(n32) );
  NAND2X1 U39 ( .A(n19), .B(n29), .Y(n21) );
  NAND2X1 U40 ( .A(count_enable), .B(n19), .Y(n29) );
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
  INVX2 U41 ( .A(n35), .Y(n6) );
  INVX2 U42 ( .A(count_out[0]), .Y(n12) );
  INVX2 U43 ( .A(n38), .Y(n13) );
  INVX2 U44 ( .A(rollover_flag), .Y(n14) );
  INVX2 U45 ( .A(n32), .Y(n15) );
  INVX2 U46 ( .A(count_out[1]), .Y(n16) );
  INVX2 U47 ( .A(count_out[2]), .Y(n17) );
  INVX2 U48 ( .A(count_out[3]), .Y(n18) );
  INVX2 U49 ( .A(clear), .Y(n19) );
endmodule


module flex_counter_NUM_CNT_BITS16_DW01_dec_0 ( A, SUM );
  input [16:0] A;
  output [16:0] SUM;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38;

  INVX2 U1 ( .A(n30), .Y(SUM[1]) );
  INVX2 U2 ( .A(n37), .Y(SUM[11]) );
  INVX2 U3 ( .A(n34), .Y(SUM[13]) );
  INVX2 U4 ( .A(n31), .Y(SUM[15]) );
  INVX2 U5 ( .A(n17), .Y(SUM[9]) );
  INVX2 U6 ( .A(n21), .Y(SUM[7]) );
  INVX2 U7 ( .A(n24), .Y(SUM[5]) );
  INVX2 U8 ( .A(n27), .Y(SUM[3]) );
  INVX2 U9 ( .A(A[0]), .Y(SUM[0]) );
  INVX2 U10 ( .A(A[2]), .Y(n10) );
  INVX2 U11 ( .A(A[4]), .Y(n11) );
  INVX2 U12 ( .A(A[6]), .Y(n12) );
  INVX2 U13 ( .A(A[8]), .Y(n13) );
  INVX2 U14 ( .A(A[10]), .Y(n14) );
  INVX2 U15 ( .A(A[12]), .Y(n15) );
  INVX2 U16 ( .A(A[14]), .Y(n16) );
  AOI21X1 U17 ( .A(n18), .B(A[9]), .C(n19), .Y(n17) );
  OAI21X1 U18 ( .A(n20), .B(n13), .C(n18), .Y(SUM[8]) );
  AOI21X1 U19 ( .A(n22), .B(A[7]), .C(n20), .Y(n21) );
  OAI21X1 U20 ( .A(n23), .B(n12), .C(n22), .Y(SUM[6]) );
  AOI21X1 U21 ( .A(n25), .B(A[5]), .C(n23), .Y(n24) );
  OAI21X1 U22 ( .A(n26), .B(n11), .C(n25), .Y(SUM[4]) );
  AOI21X1 U23 ( .A(n28), .B(A[3]), .C(n26), .Y(n27) );
  OAI21X1 U24 ( .A(n29), .B(n10), .C(n28), .Y(SUM[2]) );
  AOI21X1 U25 ( .A(A[0]), .B(A[1]), .C(n29), .Y(n30) );
  AOI21X1 U26 ( .A(n32), .B(A[15]), .C(SUM[16]), .Y(n31) );
  NOR2X1 U27 ( .A(n32), .B(A[15]), .Y(SUM[16]) );
  OAI21X1 U28 ( .A(n33), .B(n16), .C(n32), .Y(SUM[14]) );
  NAND2X1 U29 ( .A(n33), .B(n16), .Y(n32) );
  AOI21X1 U30 ( .A(n35), .B(A[13]), .C(n33), .Y(n34) );
  NOR2X1 U31 ( .A(n35), .B(A[13]), .Y(n33) );
  OAI21X1 U32 ( .A(n36), .B(n15), .C(n35), .Y(SUM[12]) );
  NAND2X1 U33 ( .A(n36), .B(n15), .Y(n35) );
  AOI21X1 U34 ( .A(n38), .B(A[11]), .C(n36), .Y(n37) );
  NOR2X1 U35 ( .A(n38), .B(A[11]), .Y(n36) );
  OAI21X1 U36 ( .A(n19), .B(n14), .C(n38), .Y(SUM[10]) );
  NAND2X1 U37 ( .A(n19), .B(n14), .Y(n38) );
  NOR2X1 U38 ( .A(n18), .B(A[9]), .Y(n19) );
  NAND2X1 U39 ( .A(n20), .B(n13), .Y(n18) );
  NOR2X1 U40 ( .A(n22), .B(A[7]), .Y(n20) );
  NAND2X1 U41 ( .A(n23), .B(n12), .Y(n22) );
  NOR2X1 U42 ( .A(n25), .B(A[5]), .Y(n23) );
  NAND2X1 U43 ( .A(n26), .B(n11), .Y(n25) );
  NOR2X1 U44 ( .A(n28), .B(A[3]), .Y(n26) );
  NAND2X1 U45 ( .A(n29), .B(n10), .Y(n28) );
  NOR2X1 U46 ( .A(A[1]), .B(A[0]), .Y(n29) );
endmodule


module flex_counter_NUM_CNT_BITS16_DW01_inc_0 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1;
  wire   [15:2] carry;

  HAX1 U1_1_14 ( .A(A[14]), .B(carry[14]), .YC(carry[15]), .YS(SUM[14]) );
  HAX1 U1_1_13 ( .A(A[13]), .B(carry[13]), .YC(carry[14]), .YS(SUM[13]) );
  HAX1 U1_1_12 ( .A(A[12]), .B(carry[12]), .YC(carry[13]), .YS(SUM[12]) );
  HAX1 U1_1_11 ( .A(A[11]), .B(carry[11]), .YC(carry[12]), .YS(SUM[11]) );
  HAX1 U1_1_10 ( .A(A[10]), .B(carry[10]), .YC(carry[11]), .YS(SUM[10]) );
  HAX1 U1_1_9 ( .A(A[9]), .B(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  HAX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  HAX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  HAX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  HAX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  HAX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  HAX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  HAX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  HAX1 U1_1_1 ( .A(A[1]), .B(A[0]), .YC(carry[2]), .YS(SUM[1]) );
  INVX2 U1 ( .A(A[15]), .Y(n1) );
  XNOR2X1 U2 ( .A(carry[15]), .B(n1), .Y(SUM[15]) );
  INVX1 U3 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module flex_counter_NUM_CNT_BITS16 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [15:0] rollover_val;
  output [15:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   n109, n110, n111, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18,
         N19, N20, N21, N22, N23, N60, N61, N62, N63, N64, N65, N66, N67, N68,
         N69, N70, N71, N72, N73, N74, N75, N76, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n2, n4, n5, n24, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n107, n108;

  DFFSR \count_out_reg[0]  ( .D(n106), .CLK(clk), .R(n27), .S(1'b1), .Q(n111)
         );
  DFFSR rollover_flag_reg ( .D(n105), .CLK(clk), .R(n27), .S(1'b1), .Q(
        rollover_flag) );
  DFFSR \count_out_reg[1]  ( .D(n104), .CLK(clk), .R(n27), .S(1'b1), .Q(n110)
         );
  DFFSR \count_out_reg[2]  ( .D(n103), .CLK(clk), .R(n27), .S(1'b1), .Q(n109)
         );
  DFFSR \count_out_reg[3]  ( .D(n102), .CLK(clk), .R(n27), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR \count_out_reg[4]  ( .D(n101), .CLK(clk), .R(n27), .S(1'b1), .Q(
        count_out[4]) );
  DFFSR \count_out_reg[5]  ( .D(n100), .CLK(clk), .R(n27), .S(1'b1), .Q(
        count_out[5]) );
  DFFSR \count_out_reg[6]  ( .D(n99), .CLK(clk), .R(n27), .S(1'b1), .Q(
        count_out[6]) );
  DFFSR \count_out_reg[7]  ( .D(n98), .CLK(clk), .R(n27), .S(1'b1), .Q(
        count_out[7]) );
  DFFSR \count_out_reg[8]  ( .D(n97), .CLK(clk), .R(n27), .S(1'b1), .Q(
        count_out[8]) );
  DFFSR \count_out_reg[9]  ( .D(n96), .CLK(clk), .R(n27), .S(1'b1), .Q(
        count_out[9]) );
  DFFSR \count_out_reg[10]  ( .D(n95), .CLK(clk), .R(n27), .S(1'b1), .Q(
        count_out[10]) );
  DFFSR \count_out_reg[11]  ( .D(n94), .CLK(clk), .R(n27), .S(1'b1), .Q(
        count_out[11]) );
  DFFSR \count_out_reg[12]  ( .D(n93), .CLK(clk), .R(n27), .S(1'b1), .Q(
        count_out[12]) );
  DFFSR \count_out_reg[13]  ( .D(n92), .CLK(clk), .R(n27), .S(1'b1), .Q(
        count_out[13]) );
  DFFSR \count_out_reg[14]  ( .D(n91), .CLK(clk), .R(n27), .S(1'b1), .Q(
        count_out[14]) );
  DFFSR \count_out_reg[15]  ( .D(n90), .CLK(clk), .R(n27), .S(1'b1), .Q(
        count_out[15]) );
  NAND2X1 U40 ( .A(N23), .B(n44), .Y(n43) );
  OAI21X1 U41 ( .A(n26), .B(n42), .C(n45), .Y(n91) );
  NAND2X1 U42 ( .A(N22), .B(n44), .Y(n45) );
  OAI21X1 U43 ( .A(n26), .B(n41), .C(n46), .Y(n92) );
  NAND2X1 U44 ( .A(N21), .B(n44), .Y(n46) );
  OAI21X1 U45 ( .A(n26), .B(n40), .C(n47), .Y(n93) );
  NAND2X1 U46 ( .A(N20), .B(n44), .Y(n47) );
  OAI21X1 U47 ( .A(n26), .B(n39), .C(n48), .Y(n94) );
  NAND2X1 U48 ( .A(N19), .B(n44), .Y(n48) );
  OAI21X1 U49 ( .A(n26), .B(n38), .C(n49), .Y(n95) );
  NAND2X1 U50 ( .A(N18), .B(n44), .Y(n49) );
  OAI21X1 U51 ( .A(n26), .B(n37), .C(n50), .Y(n96) );
  NAND2X1 U52 ( .A(N17), .B(n44), .Y(n50) );
  OAI21X1 U53 ( .A(n26), .B(n36), .C(n51), .Y(n97) );
  NAND2X1 U54 ( .A(N16), .B(n44), .Y(n51) );
  OAI21X1 U55 ( .A(n26), .B(n35), .C(n52), .Y(n98) );
  NAND2X1 U56 ( .A(N15), .B(n44), .Y(n52) );
  OAI21X1 U57 ( .A(n26), .B(n34), .C(n53), .Y(n99) );
  NAND2X1 U58 ( .A(N14), .B(n44), .Y(n53) );
  OAI21X1 U59 ( .A(n26), .B(n33), .C(n54), .Y(n100) );
  NAND2X1 U60 ( .A(N13), .B(n44), .Y(n54) );
  OAI21X1 U61 ( .A(n26), .B(n32), .C(n55), .Y(n101) );
  NAND2X1 U62 ( .A(N12), .B(n44), .Y(n55) );
  OAI21X1 U63 ( .A(n26), .B(n31), .C(n56), .Y(n102) );
  NAND2X1 U64 ( .A(N11), .B(n44), .Y(n56) );
  OAI21X1 U65 ( .A(n26), .B(n30), .C(n57), .Y(n103) );
  NAND2X1 U66 ( .A(N10), .B(n44), .Y(n57) );
  OAI21X1 U67 ( .A(n26), .B(n24), .C(n58), .Y(n104) );
  NAND2X1 U68 ( .A(N9), .B(n44), .Y(n58) );
  OAI21X1 U69 ( .A(n26), .B(n29), .C(n59), .Y(n105) );
  NAND2X1 U70 ( .A(n60), .B(n61), .Y(n59) );
  NOR2X1 U71 ( .A(n62), .B(n63), .Y(n61) );
  NAND3X1 U72 ( .A(n64), .B(n65), .C(n66), .Y(n63) );
  NOR2X1 U73 ( .A(n67), .B(n68), .Y(n66) );
  XNOR2X1 U74 ( .A(n40), .B(N72), .Y(n68) );
  XNOR2X1 U75 ( .A(n5), .B(N60), .Y(n67) );
  XNOR2X1 U76 ( .A(count_out[9]), .B(N69), .Y(n65) );
  XNOR2X1 U77 ( .A(count_out[6]), .B(N66), .Y(n64) );
  NAND3X1 U78 ( .A(n69), .B(n70), .C(n71), .Y(n62) );
  NOR2X1 U79 ( .A(n72), .B(n73), .Y(n71) );
  XNOR2X1 U80 ( .A(n33), .B(N65), .Y(n73) );
  XNOR2X1 U81 ( .A(n24), .B(N61), .Y(n72) );
  XNOR2X1 U82 ( .A(count_out[2]), .B(N62), .Y(n70) );
  NOR2X1 U83 ( .A(N76), .B(n74), .Y(n69) );
  NOR2X1 U84 ( .A(n75), .B(n76), .Y(n60) );
  NAND3X1 U85 ( .A(n77), .B(n78), .C(n79), .Y(n76) );
  NOR2X1 U86 ( .A(n80), .B(n81), .Y(n79) );
  XNOR2X1 U87 ( .A(n42), .B(N74), .Y(n81) );
  XNOR2X1 U88 ( .A(n107), .B(N75), .Y(n80) );
  XNOR2X1 U89 ( .A(count_out[11]), .B(N71), .Y(n78) );
  XNOR2X1 U90 ( .A(count_out[10]), .B(N70), .Y(n77) );
  NAND3X1 U91 ( .A(n82), .B(n83), .C(n84), .Y(n75) );
  NOR2X1 U92 ( .A(n85), .B(n86), .Y(n84) );
  XNOR2X1 U93 ( .A(n41), .B(N73), .Y(n86) );
  XNOR2X1 U94 ( .A(n31), .B(N63), .Y(n85) );
  XNOR2X1 U95 ( .A(count_out[4]), .B(N64), .Y(n83) );
  NOR2X1 U96 ( .A(n87), .B(n88), .Y(n82) );
  XNOR2X1 U97 ( .A(n36), .B(N68), .Y(n88) );
  XNOR2X1 U98 ( .A(n35), .B(N67), .Y(n87) );
  OAI21X1 U99 ( .A(n26), .B(n5), .C(n89), .Y(n106) );
  NAND2X1 U100 ( .A(N8), .B(n44), .Y(n89) );
  NOR2X1 U101 ( .A(n74), .B(rollover_flag), .Y(n44) );
  NAND2X1 U103 ( .A(count_enable), .B(n108), .Y(n74) );
  flex_counter_NUM_CNT_BITS16_DW01_dec_0 sub_580 ( .A({1'b0, rollover_val}), 
        .SUM({N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, 
        N63, N62, N61, N60}) );
  flex_counter_NUM_CNT_BITS16_DW01_inc_0 add_573 ( .A({count_out[15:2], n110, 
        n111}), .SUM({N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, 
        N12, N11, N10, N9, N8}) );
  BUFX2 U21 ( .A(n109), .Y(count_out[2]) );
  INVX2 U22 ( .A(n2), .Y(n26) );
  AND2X2 U23 ( .A(n108), .B(n74), .Y(n2) );
  INVX2 U24 ( .A(n28), .Y(n27) );
  INVX2 U25 ( .A(n_rst), .Y(n28) );
  INVX1 U26 ( .A(n111), .Y(n5) );
  INVX1 U27 ( .A(n110), .Y(n24) );
  INVX1 U28 ( .A(count_out[2]), .Y(n30) );
  INVX2 U29 ( .A(n5), .Y(count_out[0]) );
  INVX2 U30 ( .A(n24), .Y(count_out[1]) );
  OR2X2 U31 ( .A(n26), .B(n107), .Y(n4) );
  NAND2X1 U32 ( .A(n4), .B(n43), .Y(n90) );
  INVX2 U33 ( .A(rollover_flag), .Y(n29) );
  INVX2 U34 ( .A(count_out[3]), .Y(n31) );
  INVX2 U35 ( .A(count_out[4]), .Y(n32) );
  INVX2 U36 ( .A(count_out[5]), .Y(n33) );
  INVX2 U37 ( .A(count_out[6]), .Y(n34) );
  INVX2 U38 ( .A(count_out[7]), .Y(n35) );
  INVX2 U39 ( .A(count_out[8]), .Y(n36) );
  INVX2 U102 ( .A(count_out[9]), .Y(n37) );
  INVX2 U104 ( .A(count_out[10]), .Y(n38) );
  INVX2 U105 ( .A(count_out[11]), .Y(n39) );
  INVX2 U106 ( .A(count_out[12]), .Y(n40) );
  INVX2 U107 ( .A(count_out[13]), .Y(n41) );
  INVX2 U108 ( .A(count_out[14]), .Y(n42) );
  INVX2 U109 ( .A(count_out[15]), .Y(n107) );
  INVX2 U110 ( .A(clear), .Y(n108) );
endmodule


module flex_counter_NUM_CNT_BITS4_5 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   N24, N25, N26, N28, n1, n2, n3, n4, n5, n6, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64;

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
  XNOR2X1 U7 ( .A(n18), .B(n4), .Y(n57) );
  NOR2X1 U9 ( .A(rollover_val[1]), .B(rollover_val[0]), .Y(n2) );
  AOI21X1 U10 ( .A(rollover_val[0]), .B(rollover_val[1]), .C(n2), .Y(n1) );
  NAND2X1 U11 ( .A(n2), .B(n5), .Y(n3) );
  OAI21X1 U12 ( .A(n2), .B(n5), .C(n3), .Y(N26) );
  NOR2X1 U13 ( .A(n3), .B(rollover_val[3]), .Y(N28) );
  AOI21X1 U14 ( .A(n3), .B(rollover_val[3]), .C(N28), .Y(n4) );
  INVX2 U15 ( .A(rollover_val[2]), .Y(n5) );
  INVX2 U16 ( .A(rollover_val[0]), .Y(N24) );
  INVX2 U17 ( .A(n1), .Y(N25) );
  INVX2 U24 ( .A(n50), .Y(n6) );
  INVX2 U41 ( .A(count_out[0]), .Y(n12) );
  INVX2 U42 ( .A(n47), .Y(n13) );
  INVX2 U43 ( .A(rollover_flag), .Y(n14) );
  INVX2 U44 ( .A(n53), .Y(n15) );
  INVX2 U45 ( .A(count_out[1]), .Y(n16) );
  INVX2 U46 ( .A(count_out[2]), .Y(n17) );
  INVX2 U47 ( .A(count_out[3]), .Y(n18) );
  INVX2 U48 ( .A(clear), .Y(n19) );
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
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N36, N37, N38, N39, N40, N41,
         N42, N43, N44, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n60, n61, n62,
         n63, n64, n65, n66, n67, n68;

  DFFSR \count_out_reg[5]  ( .D(n53), .CLK(clk), .R(n10), .S(1'b1), .Q(
        count_out[5]) );
  DFFSR \count_out_reg[6]  ( .D(n52), .CLK(clk), .R(n10), .S(1'b1), .Q(
        count_out[6]) );
  DFFSR \count_out_reg[7]  ( .D(n51), .CLK(clk), .R(n10), .S(1'b1), .Q(
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
  XNOR2X1 U50 ( .A(count_out[0]), .B(N36), .Y(n45) );
  NOR2X1 U51 ( .A(N44), .B(n49), .Y(n44) );
  OAI21X1 U52 ( .A(n26), .B(n25), .C(n50), .Y(n59) );
  NAND2X1 U53 ( .A(N8), .B(n28), .Y(n50) );
  NOR2X1 U54 ( .A(n49), .B(rollover_flag), .Y(n28) );
  NAND2X1 U55 ( .A(n68), .B(n49), .Y(n26) );
  NAND2X1 U56 ( .A(count_enable), .B(n68), .Y(n49) );
  flex_counter_NUM_CNT_BITS8_DW01_inc_0 add_573 ( .A(count_out), .SUM({N15, 
        N14, N13, N12, N11, N10, N9, N8}) );
  DFFSR rollover_flag_reg ( .D(n58), .CLK(clk), .R(n10), .S(1'b1), .Q(
        rollover_flag) );
  DFFSR \count_out_reg[3]  ( .D(n55), .CLK(clk), .R(n10), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR \count_out_reg[2]  ( .D(n56), .CLK(clk), .R(n10), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[1]  ( .D(n57), .CLK(clk), .R(n10), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[0]  ( .D(n59), .CLK(clk), .R(n10), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR \count_out_reg[4]  ( .D(n54), .CLK(clk), .R(n10), .S(1'b1), .Q(
        count_out[4]) );
  INVX2 U12 ( .A(n11), .Y(n10) );
  INVX2 U13 ( .A(n_rst), .Y(n11) );
  NOR2X1 U14 ( .A(rollover_val[1]), .B(rollover_val[0]), .Y(n13) );
  AOI21X1 U15 ( .A(rollover_val[0]), .B(rollover_val[1]), .C(n13), .Y(n12) );
  NAND2X1 U16 ( .A(n13), .B(n24), .Y(n14) );
  OAI21X1 U17 ( .A(n13), .B(n24), .C(n14), .Y(N38) );
  NOR2X1 U18 ( .A(n14), .B(rollover_val[3]), .Y(n16) );
  AOI21X1 U19 ( .A(n14), .B(rollover_val[3]), .C(n16), .Y(n15) );
  NAND2X1 U20 ( .A(n16), .B(n23), .Y(n17) );
  OAI21X1 U21 ( .A(n16), .B(n23), .C(n17), .Y(N40) );
  NOR2X1 U22 ( .A(n17), .B(rollover_val[5]), .Y(n19) );
  AOI21X1 U57 ( .A(n17), .B(rollover_val[5]), .C(n19), .Y(n18) );
  NAND2X1 U58 ( .A(n19), .B(n22), .Y(n20) );
  OAI21X1 U59 ( .A(n19), .B(n22), .C(n20), .Y(N42) );
  NOR2X1 U60 ( .A(n20), .B(rollover_val[7]), .Y(N44) );
  AOI21X1 U61 ( .A(n20), .B(rollover_val[7]), .C(N44), .Y(n21) );
  INVX2 U62 ( .A(rollover_val[6]), .Y(n22) );
  INVX2 U63 ( .A(rollover_val[4]), .Y(n23) );
  INVX2 U64 ( .A(rollover_val[2]), .Y(n24) );
  INVX2 U65 ( .A(rollover_val[0]), .Y(N36) );
  INVX2 U66 ( .A(n21), .Y(N43) );
  INVX2 U67 ( .A(n18), .Y(N41) );
  INVX2 U68 ( .A(n15), .Y(N39) );
  INVX2 U69 ( .A(n12), .Y(N37) );
  INVX2 U70 ( .A(count_out[0]), .Y(n25) );
  INVX2 U71 ( .A(rollover_flag), .Y(n60) );
  INVX2 U72 ( .A(count_out[1]), .Y(n61) );
  INVX2 U73 ( .A(count_out[2]), .Y(n62) );
  INVX2 U74 ( .A(count_out[3]), .Y(n63) );
  INVX2 U75 ( .A(count_out[4]), .Y(n64) );
  INVX2 U76 ( .A(count_out[5]), .Y(n65) );
  INVX2 U77 ( .A(count_out[6]), .Y(n66) );
  INVX2 U78 ( .A(count_out[7]), .Y(n67) );
  INVX2 U79 ( .A(clear), .Y(n68) );
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
  wire   inc_input, input_rollover, flashClear, neuronClear, neuron_rollover,
         N717, N718, N719, N730, N731, N732, N733, N734, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n173, n174, n175, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n341, n342, n343, n345, n346, n347, n348, n349,
         n350, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n3, n4, n5, n6, n46, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154;
  wire   [3:0] flash_counter;
  wire   [4:0] topState;
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
  assign sigmoidData_in[3] = ALUOutput[3];
  assign sigmoidData_in[2] = ALUOutput[2];
  assign sigmoidData_in[1] = ALUOutput[1];
  assign sigmoidData_in[0] = ALUOutput[0];

  DFFSR \layer1State_reg[0]  ( .D(nxt_layer1State[0]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(layer1State[0]) );
  DFFSR \layer1State_reg[2]  ( .D(nxt_layer1State[2]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(layer1State[2]) );
  DFFSR \layer2State_reg[0]  ( .D(nxt_layer2State[0]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(layer2State[0]) );
  DFFSR \layer2State_reg[3]  ( .D(nxt_layer2State[3]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(layer2State[3]) );
  DFFSR \layer2State_reg[1]  ( .D(n76), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        layer2State[1]) );
  DFFSR \layer1State_reg[4]  ( .D(nxt_layer1State[4]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(layer1State[4]) );
  DFFSR \layer1State_reg[1]  ( .D(nxt_layer1State[1]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(layer1State[1]) );
  DFFSR \topState_reg[0]  ( .D(n383), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        topState[0]) );
  DFFSR \topState_reg[1]  ( .D(n384), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        topState[1]) );
  DFFSR \layer2State_reg[2]  ( .D(nxt_layer2State[2]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(layer2State[2]) );
  DFFSR \layer2State_reg[4]  ( .D(nxt_layer2State[4]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(layer2State[4]) );
  DFFSR \weight1_reg[0]  ( .D(n91), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        weight1[0]) );
  DFFSR \weight1_reg[1]  ( .D(n90), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        weight1[1]) );
  DFFSR \weight1_reg[2]  ( .D(n89), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        weight1[2]) );
  DFFSR \weight1_reg[3]  ( .D(n88), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        weight1[3]) );
  DFFSR \weight2_reg[0]  ( .D(n95), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        weight2[0]) );
  DFFSR \weight2_reg[1]  ( .D(n94), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        weight2[1]) );
  DFFSR \weight2_reg[2]  ( .D(n93), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        weight2[2]) );
  DFFSR \weight2_reg[3]  ( .D(n92), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        weight2[3]) );
  DFFSR \weight3_reg[0]  ( .D(n99), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        weight3[0]) );
  DFFSR \weight3_reg[1]  ( .D(n98), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        weight3[1]) );
  DFFSR \weight3_reg[2]  ( .D(n97), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        weight3[2]) );
  DFFSR \weight3_reg[3]  ( .D(n96), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        weight3[3]) );
  DFFSR \weight4_reg[0]  ( .D(nxt_weight4[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(weight4[0]) );
  DFFSR \weight4_reg[1]  ( .D(nxt_weight4[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(weight4[1]) );
  DFFSR \weight4_reg[2]  ( .D(nxt_weight4[2]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(weight4[2]) );
  DFFSR \weight4_reg[3]  ( .D(nxt_weight4[3]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(weight4[3]) );
  DFFSR \input4_reg[3]  ( .D(nxt_input4[3]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(input4[3]) );
  DFFSR \input3_reg[3]  ( .D(nxt_input3[3]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(input3[3]) );
  DFFSR \input2_reg[3]  ( .D(nxt_input2[3]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(input2[3]) );
  DFFSR \input1_reg[3]  ( .D(nxt_input1[3]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(input1[3]) );
  DFFSR \input4_reg[2]  ( .D(nxt_input4[2]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(input4[2]) );
  DFFSR \input3_reg[2]  ( .D(nxt_input3[2]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(input3[2]) );
  DFFSR \input2_reg[2]  ( .D(nxt_input2[2]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(input2[2]) );
  DFFSR \input1_reg[2]  ( .D(nxt_input1[2]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(input1[2]) );
  DFFSR \input4_reg[1]  ( .D(nxt_input4[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(input4[1]) );
  DFFSR \input3_reg[1]  ( .D(nxt_input3[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(input3[1]) );
  DFFSR \input2_reg[1]  ( .D(nxt_input2[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(input2[1]) );
  DFFSR \input1_reg[1]  ( .D(nxt_input1[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(input1[1]) );
  DFFSR \input4_reg[0]  ( .D(nxt_input4[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(input4[0]) );
  DFFSR \input3_reg[0]  ( .D(nxt_input3[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(input3[0]) );
  DFFSR \input2_reg[0]  ( .D(nxt_input2[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(input2[0]) );
  DFFSR \input1_reg[0]  ( .D(nxt_input1[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(input1[0]) );
  DFFSR \layer1State_reg[3]  ( .D(nxt_layer1State[3]), .CLK(clk), .R(n_rst), 
        .S(1'b1), .Q(layer1State[3]) );
  DFFSR \bias_reg[0]  ( .D(nxt_bias[0]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        bias[0]) );
  DFFSR \bias_reg[1]  ( .D(nxt_bias[1]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        bias[1]) );
  DFFSR \bias_reg[2]  ( .D(nxt_bias[2]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        bias[2]) );
  DFFSR \bias_reg[3]  ( .D(nxt_bias[3]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        bias[3]) );
  AND2X2 U57 ( .A(n197), .B(n173), .Y(n170) );
  AND2X2 U58 ( .A(n326), .B(n177), .Y(n174) );
  AND2X2 U60 ( .A(n250), .B(n223), .Y(n249) );
  AND2X2 U61 ( .A(n278), .B(n262), .Y(n270) );
  AND2X2 U62 ( .A(n287), .B(n288), .Y(n178) );
  AND2X2 U63 ( .A(sigmoidData_out[3]), .B(n319), .Y(n303) );
  AND2X2 U64 ( .A(sigmoidData_out[2]), .B(n319), .Y(n305) );
  AND2X2 U65 ( .A(sigmoidData_out[1]), .B(n319), .Y(n307) );
  AND2X2 U66 ( .A(sigmoidData_out[0]), .B(n319), .Y(n309) );
  AND2X2 U68 ( .A(n375), .B(layer1State[2]), .Y(n366) );
  AND2X2 U69 ( .A(n369), .B(n109), .Y(n371) );
  AND2X2 U70 ( .A(n375), .B(n116), .Y(n376) );
  AOI21X1 U171 ( .A(n156), .B(n157), .C(n4), .Y(sigmoid_address[4]) );
  AOI21X1 U172 ( .A(N719), .B(n124), .C(n59), .Y(n157) );
  AOI22X1 U173 ( .A(N734), .B(n127), .C(N719), .D(n122), .Y(n158) );
  AOI22X1 U174 ( .A(N719), .B(n120), .C(N719), .D(n125), .Y(n156) );
  OAI21X1 U175 ( .A(n58), .B(n4), .C(n159), .Y(sigmoid_address[3]) );
  NAND3X1 U176 ( .A(n137), .B(n160), .C(N734), .Y(n159) );
  NAND3X1 U177 ( .A(n162), .B(n163), .C(n164), .Y(n161) );
  AOI22X1 U178 ( .A(N718), .B(n120), .C(N718), .D(n125), .Y(n164) );
  NAND2X1 U179 ( .A(N718), .B(n124), .Y(n163) );
  AOI22X1 U180 ( .A(N733), .B(n127), .C(N718), .D(n122), .Y(n162) );
  OAI21X1 U181 ( .A(n57), .B(n4), .C(n165), .Y(sigmoid_address[2]) );
  NAND3X1 U182 ( .A(n137), .B(n160), .C(N732), .Y(n165) );
  NAND3X1 U183 ( .A(n167), .B(n168), .C(n169), .Y(n166) );
  AOI22X1 U184 ( .A(N717), .B(n120), .C(N717), .D(n125), .Y(n169) );
  NAND2X1 U185 ( .A(N717), .B(n124), .Y(n168) );
  AOI22X1 U186 ( .A(N732), .B(n127), .C(N717), .D(n122), .Y(n167) );
  OAI21X1 U187 ( .A(n170), .B(n4), .C(n171), .Y(sigmoid_address[1]) );
  NAND3X1 U188 ( .A(n137), .B(n160), .C(N731), .Y(n171) );
  OAI21X1 U191 ( .A(n174), .B(n4), .C(n175), .Y(sigmoid_address[0]) );
  NAND3X1 U192 ( .A(n137), .B(n160), .C(N730), .Y(n175) );
  NOR2X1 U195 ( .A(n178), .B(n347), .Y(shift_network) );
  OAI21X1 U196 ( .A(n5), .B(n100), .C(n179), .Y(nxt_weight4[3]) );
  NAND2X1 U197 ( .A(weight4[3]), .B(n5), .Y(n179) );
  OAI21X1 U198 ( .A(n5), .B(n101), .C(n180), .Y(nxt_weight4[2]) );
  NAND2X1 U199 ( .A(weight4[2]), .B(n5), .Y(n180) );
  OAI21X1 U200 ( .A(n5), .B(n102), .C(n181), .Y(nxt_weight4[1]) );
  NAND2X1 U201 ( .A(weight4[1]), .B(n5), .Y(n181) );
  OAI21X1 U202 ( .A(n5), .B(n87), .C(n182), .Y(nxt_weight4[0]) );
  NAND2X1 U203 ( .A(weight4[0]), .B(n5), .Y(n182) );
  AOI22X1 U204 ( .A(weight3[3]), .B(n5), .C(flashData_out[7]), .D(n6), .Y(n183) );
  AOI22X1 U205 ( .A(weight3[2]), .B(n5), .C(flashData_out[6]), .D(n6), .Y(n185) );
  AOI22X1 U206 ( .A(weight3[1]), .B(n5), .C(flashData_out[5]), .D(n6), .Y(n186) );
  AOI22X1 U207 ( .A(weight3[0]), .B(n5), .C(flashData_out[4]), .D(n6), .Y(n187) );
  AOI22X1 U208 ( .A(weight2[3]), .B(n5), .C(flashData_out[11]), .D(n6), .Y(
        n188) );
  AOI22X1 U209 ( .A(weight2[2]), .B(n5), .C(flashData_out[10]), .D(n6), .Y(
        n189) );
  AOI22X1 U210 ( .A(weight2[1]), .B(n5), .C(flashData_out[9]), .D(n6), .Y(n190) );
  AOI22X1 U211 ( .A(weight2[0]), .B(n5), .C(flashData_out[8]), .D(n6), .Y(n191) );
  AOI22X1 U212 ( .A(weight1[3]), .B(n5), .C(flashData_out[15]), .D(n6), .Y(
        n192) );
  AOI22X1 U213 ( .A(weight1[2]), .B(n5), .C(flashData_out[14]), .D(n6), .Y(
        n193) );
  AOI22X1 U214 ( .A(weight1[1]), .B(n5), .C(flashData_out[13]), .D(n6), .Y(
        n194) );
  AOI22X1 U215 ( .A(weight1[0]), .B(n5), .C(flashData_out[12]), .D(n6), .Y(
        n195) );
  NAND3X1 U216 ( .A(n196), .B(n197), .C(n198), .Y(nxt_layer2State[4]) );
  NOR2X1 U217 ( .A(n199), .B(n200), .Y(n198) );
  OAI21X1 U218 ( .A(n77), .B(n145), .C(n201), .Y(n200) );
  NOR2X1 U219 ( .A(n125), .B(n120), .Y(n196) );
  NAND3X1 U220 ( .A(n78), .B(n202), .C(n203), .Y(nxt_layer2State[3]) );
  NOR2X1 U221 ( .A(n204), .B(n205), .Y(n203) );
  OAI21X1 U222 ( .A(n206), .B(n207), .C(n208), .Y(n205) );
  NOR2X1 U223 ( .A(n127), .B(n125), .Y(n202) );
  OAI21X1 U224 ( .A(n130), .B(n79), .C(n212), .Y(n211) );
  OR2X1 U225 ( .A(n213), .B(n214), .Y(nxt_layer2State[2]) );
  OAI21X1 U226 ( .A(n77), .B(n144), .C(n81), .Y(n214) );
  NAND3X1 U227 ( .A(n215), .B(n216), .C(n82), .Y(n199) );
  OAI22X1 U228 ( .A(n218), .B(n219), .C(n220), .D(n4), .Y(n217) );
  NAND3X1 U229 ( .A(n221), .B(n222), .C(n223), .Y(n213) );
  NOR3X1 U230 ( .A(n225), .B(n204), .C(n226), .Y(n224) );
  OAI21X1 U231 ( .A(n133), .B(n77), .C(n216), .Y(n226) );
  NAND3X1 U232 ( .A(n227), .B(n197), .C(n85), .Y(n204) );
  OAI21X1 U233 ( .A(n207), .B(n219), .C(n221), .Y(n228) );
  NAND3X1 U234 ( .A(n229), .B(n70), .C(n230), .Y(nxt_layer2State[0]) );
  NOR2X1 U235 ( .A(n231), .B(n232), .Y(n230) );
  OAI21X1 U236 ( .A(n77), .B(n123), .C(n233), .Y(n232) );
  NAND3X1 U237 ( .A(n132), .B(n123), .C(n84), .Y(n233) );
  OAI21X1 U238 ( .A(n84), .B(n206), .C(n79), .Y(n234) );
  OAI21X1 U239 ( .A(n219), .B(n236), .C(n237), .Y(n235) );
  NAND2X1 U240 ( .A(n238), .B(n239), .Y(n237) );
  NOR2X1 U241 ( .A(n240), .B(n241), .Y(n239) );
  NAND3X1 U242 ( .A(n215), .B(n201), .C(n219), .Y(n241) );
  NAND3X1 U243 ( .A(layer2State[3]), .B(n56), .C(n134), .Y(n201) );
  NAND3X1 U244 ( .A(n209), .B(n210), .C(n197), .Y(n240) );
  NOR2X1 U245 ( .A(n242), .B(n243), .Y(n238) );
  NAND3X1 U246 ( .A(n117), .B(n244), .C(n208), .Y(n243) );
  NAND3X1 U247 ( .A(n227), .B(n206), .C(n221), .Y(n242) );
  NAND3X1 U248 ( .A(layer2State[2]), .B(n133), .C(n245), .Y(n221) );
  NAND3X1 U249 ( .A(n56), .B(n130), .C(n134), .Y(n206) );
  OAI21X1 U250 ( .A(n56), .B(n247), .C(n212), .Y(n231) );
  OAI22X1 U251 ( .A(n219), .B(n73), .C(n216), .D(neuron_rollover), .Y(n248) );
  NAND3X1 U252 ( .A(n123), .B(n133), .C(n129), .Y(n219) );
  NOR2X1 U253 ( .A(n119), .B(n225), .Y(n229) );
  OAI21X1 U254 ( .A(n4), .B(n220), .C(n249), .Y(n225) );
  NAND3X1 U255 ( .A(n251), .B(n144), .C(n252), .Y(n220) );
  NOR2X1 U256 ( .A(layer2State[1]), .B(n56), .Y(n252) );
  NOR2X1 U257 ( .A(layer2State[4]), .B(layer2State[3]), .Y(n251) );
  NAND3X1 U258 ( .A(n80), .B(n68), .C(n253), .Y(nxt_layer1State[4]) );
  AOI21X1 U259 ( .A(layer1State[4]), .B(n254), .C(n255), .Y(n253) );
  NAND2X1 U260 ( .A(n256), .B(n257), .Y(n255) );
  NAND3X1 U261 ( .A(n71), .B(n83), .C(n258), .Y(nxt_layer1State[3]) );
  NOR2X1 U262 ( .A(n259), .B(n260), .Y(n258) );
  NAND2X1 U263 ( .A(n261), .B(n262), .Y(n260) );
  OAI21X1 U264 ( .A(n110), .B(n263), .C(layer1State[3]), .Y(n261) );
  NAND2X1 U265 ( .A(n264), .B(n265), .Y(n259) );
  OAI22X1 U266 ( .A(n267), .B(n207), .C(n268), .D(neuron_rollover), .Y(n266)
         );
  NAND3X1 U267 ( .A(n269), .B(n270), .C(n271), .Y(nxt_layer1State[2]) );
  NOR2X1 U268 ( .A(n272), .B(n273), .Y(n271) );
  OAI21X1 U269 ( .A(n347), .B(n274), .C(n80), .Y(n273) );
  OAI21X1 U270 ( .A(n218), .B(n276), .C(n277), .Y(n275) );
  AOI21X1 U271 ( .A(layer1State[2]), .B(n254), .C(n111), .Y(n269) );
  NAND3X1 U272 ( .A(n83), .B(n68), .C(n279), .Y(nxt_layer1State[1]) );
  AOI21X1 U273 ( .A(n114), .B(n137), .C(n280), .Y(n279) );
  NAND2X1 U274 ( .A(n281), .B(n282), .Y(n280) );
  OAI21X1 U275 ( .A(n110), .B(n254), .C(layer1State[1]), .Y(n281) );
  NAND3X1 U276 ( .A(n284), .B(n116), .C(n285), .Y(n274) );
  NOR2X1 U277 ( .A(layer1State[4]), .B(layer1State[3]), .Y(n284) );
  OAI21X1 U278 ( .A(n268), .B(n69), .C(n178), .Y(n286) );
  NAND3X1 U279 ( .A(n278), .B(n290), .C(n291), .Y(n289) );
  AOI21X1 U280 ( .A(n84), .B(n292), .C(n111), .Y(n291) );
  OR2X1 U281 ( .A(n294), .B(n295), .Y(nxt_layer1State[0]) );
  OAI21X1 U282 ( .A(n207), .B(n283), .C(n296), .Y(n295) );
  OAI22X1 U283 ( .A(n73), .B(n276), .C(n74), .D(n109), .Y(n294) );
  OAI21X1 U284 ( .A(n84), .B(n267), .C(n75), .Y(n254) );
  OAI21X1 U285 ( .A(n236), .B(n276), .C(n160), .Y(n263) );
  NAND2X1 U286 ( .A(n207), .B(n218), .Y(n236) );
  NAND3X1 U287 ( .A(input_rollover), .B(flash_counter[3]), .C(n297), .Y(n218)
         );
  NOR2X1 U288 ( .A(n86), .B(n298), .Y(n297) );
  OR2X1 U289 ( .A(flash_counter[0]), .B(flash_counter[2]), .Y(n298) );
  NAND3X1 U290 ( .A(flash_counter[0]), .B(flash_counter[3]), .C(n299), .Y(n207) );
  NOR2X1 U291 ( .A(flash_counter[2]), .B(n86), .Y(n299) );
  OAI21X1 U292 ( .A(n300), .B(n146), .C(n301), .Y(nxt_input4[3]) );
  AOI22X1 U293 ( .A(n302), .B(n303), .C(pixel_data1[7]), .D(n46), .Y(n301) );
  OAI21X1 U294 ( .A(n300), .B(n148), .C(n304), .Y(nxt_input4[2]) );
  AOI22X1 U295 ( .A(n305), .B(n302), .C(pixel_data1[6]), .D(n46), .Y(n304) );
  OAI21X1 U296 ( .A(n300), .B(n150), .C(n306), .Y(nxt_input4[1]) );
  AOI22X1 U297 ( .A(n307), .B(n302), .C(pixel_data1[5]), .D(n46), .Y(n306) );
  OAI21X1 U298 ( .A(n300), .B(n152), .C(n308), .Y(nxt_input4[0]) );
  AOI22X1 U299 ( .A(n309), .B(n302), .C(pixel_data1[4]), .D(n46), .Y(n308) );
  NOR2X1 U300 ( .A(n310), .B(n311), .Y(n300) );
  OAI21X1 U301 ( .A(n312), .B(n60), .C(n313), .Y(nxt_input3[3]) );
  AOI22X1 U302 ( .A(n311), .B(n303), .C(input3[3]), .D(n314), .Y(n313) );
  OAI21X1 U303 ( .A(n312), .B(n61), .C(n315), .Y(nxt_input3[2]) );
  AOI22X1 U304 ( .A(n311), .B(n305), .C(input3[2]), .D(n314), .Y(n315) );
  OAI21X1 U305 ( .A(n312), .B(n62), .C(n316), .Y(nxt_input3[1]) );
  AOI22X1 U306 ( .A(n311), .B(n307), .C(input3[1]), .D(n314), .Y(n316) );
  OAI21X1 U307 ( .A(n312), .B(n63), .C(n317), .Y(nxt_input3[0]) );
  AOI22X1 U308 ( .A(n311), .B(n309), .C(input3[0]), .D(n314), .Y(n317) );
  OR2X1 U309 ( .A(n310), .B(n302), .Y(n314) );
  NOR2X1 U310 ( .A(n318), .B(n124), .Y(n302) );
  NAND3X1 U311 ( .A(n121), .B(n126), .C(n319), .Y(n310) );
  NOR2X1 U312 ( .A(n318), .B(n197), .Y(n311) );
  OAI21X1 U313 ( .A(n113), .B(n147), .C(n321), .Y(nxt_input2[3]) );
  AOI22X1 U314 ( .A(n320), .B(n303), .C(pixel_data2[7]), .D(n46), .Y(n321) );
  OAI21X1 U315 ( .A(n113), .B(n149), .C(n322), .Y(nxt_input2[2]) );
  AOI22X1 U316 ( .A(n320), .B(n305), .C(pixel_data2[6]), .D(n46), .Y(n322) );
  OAI21X1 U317 ( .A(n113), .B(n151), .C(n323), .Y(nxt_input2[1]) );
  AOI22X1 U318 ( .A(n320), .B(n307), .C(pixel_data2[5]), .D(n46), .Y(n323) );
  OAI21X1 U319 ( .A(n113), .B(n153), .C(n324), .Y(nxt_input2[0]) );
  AOI22X1 U320 ( .A(n320), .B(n309), .C(pixel_data2[4]), .D(n46), .Y(n324) );
  NOR2X1 U321 ( .A(n325), .B(n326), .Y(n320) );
  NAND3X1 U322 ( .A(n318), .B(n126), .C(n319), .Y(n327) );
  OR2X1 U323 ( .A(n325), .B(n120), .Y(n318) );
  OAI21X1 U324 ( .A(n312), .B(n64), .C(n329), .Y(nxt_input1[3]) );
  AOI22X1 U325 ( .A(n328), .B(n303), .C(input1[3]), .D(n330), .Y(n329) );
  OAI21X1 U326 ( .A(n312), .B(n65), .C(n331), .Y(nxt_input1[2]) );
  AOI22X1 U327 ( .A(n328), .B(n305), .C(input1[2]), .D(n330), .Y(n331) );
  OAI21X1 U328 ( .A(n312), .B(n66), .C(n332), .Y(nxt_input1[1]) );
  AOI22X1 U329 ( .A(n328), .B(n307), .C(input1[1]), .D(n330), .Y(n332) );
  OAI21X1 U330 ( .A(n312), .B(n67), .C(n333), .Y(nxt_input1[0]) );
  AOI22X1 U331 ( .A(n328), .B(n309), .C(input1[0]), .D(n330), .Y(n333) );
  NAND2X1 U332 ( .A(n319), .B(n325), .Y(n330) );
  NAND2X1 U333 ( .A(n209), .B(n347), .Y(n325) );
  NOR2X1 U334 ( .A(n209), .B(n137), .Y(n328) );
  NAND2X1 U335 ( .A(n137), .B(n319), .Y(n312) );
  NAND2X1 U336 ( .A(n5), .B(n334), .Y(n319) );
  OAI21X1 U337 ( .A(n124), .B(n119), .C(n3), .Y(n334) );
  NOR2X1 U338 ( .A(n120), .B(n122), .Y(n208) );
  NAND3X1 U339 ( .A(layer2State[4]), .B(n123), .C(n132), .Y(n222) );
  NAND3X1 U340 ( .A(layer2State[4]), .B(n123), .C(n131), .Y(n326) );
  NAND3X1 U341 ( .A(n56), .B(layer2State[4]), .C(n131), .Y(n197) );
  OAI22X1 U342 ( .A(n4), .B(n209), .C(n347), .D(n262), .Y(n184) );
  NAND3X1 U343 ( .A(n56), .B(n129), .C(layer2State[1]), .Y(n209) );
  OAI21X1 U344 ( .A(n106), .B(n100), .C(n335), .Y(nxt_bias[3]) );
  NAND2X1 U345 ( .A(bias[3]), .B(n106), .Y(n335) );
  OAI21X1 U346 ( .A(n106), .B(n101), .C(n336), .Y(nxt_bias[2]) );
  NAND2X1 U347 ( .A(bias[2]), .B(n106), .Y(n336) );
  OAI21X1 U348 ( .A(n106), .B(n102), .C(n337), .Y(nxt_bias[1]) );
  NAND2X1 U349 ( .A(bias[1]), .B(n106), .Y(n337) );
  OAI21X1 U350 ( .A(n106), .B(n87), .C(n338), .Y(nxt_bias[0]) );
  NAND2X1 U351 ( .A(bias[0]), .B(n106), .Y(n338) );
  OAI21X1 U353 ( .A(n72), .B(n140), .C(n342), .Y(n383) );
  AOI22X1 U354 ( .A(n343), .B(n103), .C(n103), .D(n345), .Y(n342) );
  NAND2X1 U355 ( .A(n339), .B(n346), .Y(n345) );
  NAND3X1 U356 ( .A(n140), .B(n142), .C(topState[2]), .Y(n339) );
  NOR2X1 U357 ( .A(n347), .B(n348), .Y(n343) );
  OAI22X1 U358 ( .A(n357), .B(n349), .C(n72), .D(n142), .Y(n384) );
  OAI21X1 U359 ( .A(n118), .B(n4), .C(n352), .Y(n350) );
  OAI21X1 U360 ( .A(n352), .B(n143), .C(n353), .Y(n385) );
  NAND3X1 U361 ( .A(n118), .B(n3), .C(n103), .Y(n353) );
  NOR2X1 U362 ( .A(n357), .B(n354), .Y(n352) );
  OAI21X1 U363 ( .A(digit_done), .B(n355), .C(n356), .Y(n354) );
  NAND3X1 U364 ( .A(n349), .B(n4), .C(n355), .Y(n356) );
  AOI22X1 U366 ( .A(n349), .B(write_en), .C(n104), .D(n346), .Y(n357) );
  NAND2X1 U367 ( .A(n358), .B(topState[0]), .Y(n349) );
  NAND3X1 U369 ( .A(topState[0]), .B(n142), .C(topState[2]), .Y(n355) );
  OAI22X1 U370 ( .A(n4), .B(n244), .C(n347), .D(n348), .Y(neuronClear) );
  NAND3X1 U371 ( .A(n129), .B(n123), .C(layer2State[1]), .Y(n244) );
  OAI21X1 U372 ( .A(n4), .B(n215), .C(n359), .Y(inc_input) );
  AOI21X1 U373 ( .A(n105), .B(n137), .C(sigmoid_write_en), .Y(n359) );
  OAI22X1 U374 ( .A(n210), .B(n4), .C(n347), .D(n265), .Y(sigmoid_write_en) );
  NAND3X1 U375 ( .A(n129), .B(n133), .C(n56), .Y(n210) );
  NAND3X1 U376 ( .A(layer2State[2]), .B(n130), .C(layer2State[4]), .Y(n360) );
  NAND3X1 U377 ( .A(layer2State[1]), .B(n56), .C(n128), .Y(n215) );
  AOI21X1 U378 ( .A(n137), .B(n160), .C(n3), .Y(flashClear) );
  NAND3X1 U379 ( .A(n361), .B(n362), .C(n363), .Y(n160) );
  NOR2X1 U380 ( .A(n364), .B(n365), .Y(n363) );
  NAND3X1 U381 ( .A(n278), .B(n268), .C(n257), .Y(n365) );
  NAND2X1 U382 ( .A(n366), .B(n367), .Y(n257) );
  NAND2X1 U383 ( .A(n366), .B(n368), .Y(n278) );
  NAND3X1 U384 ( .A(n267), .B(n265), .C(n290), .Y(n364) );
  NAND3X1 U385 ( .A(n368), .B(n369), .C(layer1State[4]), .Y(n265) );
  NAND3X1 U386 ( .A(n369), .B(n135), .C(n367), .Y(n267) );
  NOR2X1 U387 ( .A(n108), .B(n370), .Y(n362) );
  NAND2X1 U388 ( .A(n277), .B(n287), .Y(n370) );
  NAND2X1 U389 ( .A(n115), .B(n368), .Y(n287) );
  NAND2X1 U390 ( .A(n115), .B(n367), .Y(n277) );
  NAND3X1 U391 ( .A(layer1State[1]), .B(layer1State[4]), .C(n371), .Y(n348) );
  NOR2X1 U392 ( .A(n292), .B(n107), .Y(n361) );
  NOR2X1 U393 ( .A(n372), .B(n373), .Y(n296) );
  NAND3X1 U394 ( .A(n256), .B(n293), .C(n288), .Y(n373) );
  NAND2X1 U395 ( .A(n374), .B(n115), .Y(n288) );
  NAND2X1 U396 ( .A(n374), .B(n366), .Y(n293) );
  NAND3X1 U397 ( .A(n264), .B(n282), .C(n262), .Y(n372) );
  NAND2X1 U398 ( .A(n285), .B(n366), .Y(n262) );
  NAND2X1 U399 ( .A(n283), .B(n276), .Y(n292) );
  NAND3X1 U400 ( .A(layer1State[4]), .B(n136), .C(n371), .Y(n276) );
  NAND2X1 U401 ( .A(n374), .B(n376), .Y(n283) );
  NOR2X1 U402 ( .A(n136), .B(layer1State[0]), .Y(n374) );
  NAND2X1 U404 ( .A(n358), .B(n140), .Y(n346) );
  NOR2X1 U405 ( .A(topState[1]), .B(topState[2]), .Y(n358) );
  OAI22X1 U406 ( .A(n4), .B(n227), .C(n347), .D(n290), .Y(clear) );
  NAND2X1 U407 ( .A(n376), .B(n368), .Y(n290) );
  NOR2X1 U408 ( .A(n109), .B(layer1State[1]), .Y(n368) );
  NAND2X1 U409 ( .A(n246), .B(n131), .Y(n227) );
  OAI21X1 U410 ( .A(n117), .B(n4), .C(n377), .Y(flash_ready) );
  OAI21X1 U411 ( .A(n112), .B(n272), .C(n137), .Y(n377) );
  NAND2X1 U412 ( .A(n282), .B(n268), .Y(n272) );
  NAND2X1 U413 ( .A(n376), .B(n367), .Y(n268) );
  NOR2X1 U414 ( .A(n136), .B(n109), .Y(n367) );
  NAND3X1 U415 ( .A(layer1State[1]), .B(n135), .C(n371), .Y(n282) );
  NOR2X1 U416 ( .A(n116), .B(layer1State[3]), .Y(n369) );
  NAND2X1 U417 ( .A(n285), .B(n376), .Y(n264) );
  NOR2X1 U418 ( .A(n154), .B(layer1State[4]), .Y(n375) );
  NAND3X1 U419 ( .A(n223), .B(n216), .C(n212), .Y(n378) );
  NAND3X1 U420 ( .A(n123), .B(n145), .C(n131), .Y(n212) );
  NAND3X1 U421 ( .A(n133), .B(n144), .C(layer2State[3]), .Y(n379) );
  NAND2X1 U422 ( .A(n246), .B(n132), .Y(n216) );
  NAND3X1 U423 ( .A(layer2State[1]), .B(n144), .C(layer2State[3]), .Y(n380) );
  NOR2X1 U424 ( .A(n123), .B(layer2State[4]), .Y(n246) );
  NAND3X1 U425 ( .A(n123), .B(n130), .C(n134), .Y(n223) );
  NAND3X1 U426 ( .A(layer2State[2]), .B(n145), .C(layer2State[1]), .Y(n247) );
  OAI22X1 U427 ( .A(n4), .B(n250), .C(n347), .D(n256), .Y(accumulate) );
  NAND2X1 U428 ( .A(n285), .B(n115), .Y(n256) );
  NAND3X1 U429 ( .A(n116), .B(n154), .C(layer1State[4]), .Y(n381) );
  NOR2X1 U430 ( .A(layer1State[1]), .B(layer1State[0]), .Y(n285) );
  NAND2X1 U432 ( .A(n341), .B(n140), .Y(n347) );
  NAND3X1 U433 ( .A(n123), .B(n133), .C(n128), .Y(n250) );
  NAND3X1 U434 ( .A(n144), .B(n130), .C(layer2State[4]), .Y(n382) );
  NOR2X1 U438 ( .A(n142), .B(topState[2]), .Y(n341) );
  flex_counter_NUM_CNT_BITS6 inputCounter ( .clk(clk), .n_rst(n_rst), .clear(
        neuronClear), .count_enable(inc_input), .rollover_val({n137, 1'b0, 
        1'b0, n137, n3, 1'b0}), .count_out({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, N719, N718, N717}), 
        .rollover_flag(input_rollover) );
  flex_counter_NUM_CNT_BITS4_6 flashCounter ( .clk(clk), .n_rst(n_rst), 
        .clear(flashClear), .count_enable(1'b1), .rollover_val({1'b1, 1'b0, 
        1'b1, 1'b1}), .count_out(flash_counter) );
  flex_counter_NUM_CNT_BITS16 flashAddressCounter ( .clk(clk), .n_rst(n_rst), 
        .clear(data_ready), .count_enable(flash_ready), .rollover_val({1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1}), .count_out(flash_address) );
  flex_counter_NUM_CNT_BITS4_5 neuronCounter ( .clk(clk), .n_rst(n_rst), 
        .clear(neuronClear), .count_enable(sigmoid_write_en), .rollover_val({
        network_calc, 1'b0, n3, 1'b0}), .count_out({N734, N732, N731, N730}), 
        .rollover_flag(neuron_rollover) );
  flex_counter_NUM_CNT_BITS8 detectCounter ( .clk(clk), .n_rst(n_rst), .clear(
        1'b0), .count_enable(n141), .rollover_val({1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1}), .rollover_flag(digit_done) );
  DFFSR \topState_reg[2]  ( .D(n385), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        topState[2]) );
  INVX4 U5 ( .A(n184), .Y(n5) );
  INVX2 U6 ( .A(n3), .Y(n4) );
  INVX1 U45 ( .A(input2[2]), .Y(n149) );
  INVX1 U55 ( .A(n312), .Y(n46) );
  INVX1 U56 ( .A(n209), .Y(n125) );
  AND2X1 U59 ( .A(layer2State[3]), .B(n246), .Y(n245) );
  INVX1 U67 ( .A(topState[2]), .Y(n143) );
  BUFX2 U71 ( .A(n341), .Y(network_calc) );
  INVX2 U72 ( .A(n347), .Y(n137) );
  INVX2 U73 ( .A(n5), .Y(n6) );
  INVX2 U74 ( .A(n56), .Y(n123) );
  BUFX2 U75 ( .A(layer2State[0]), .Y(n56) );
  AND2X2 U76 ( .A(topState[0]), .B(n341), .Y(n3) );
  INVX1 U77 ( .A(input2[3]), .Y(n147) );
  INVX2 U78 ( .A(N734), .Y(N733) );
  INVX2 U79 ( .A(n166), .Y(n57) );
  INVX2 U80 ( .A(n161), .Y(n58) );
  INVX2 U81 ( .A(n158), .Y(n59) );
  INVX2 U82 ( .A(pixel_data1[3]), .Y(n60) );
  INVX2 U83 ( .A(pixel_data1[2]), .Y(n61) );
  INVX2 U84 ( .A(pixel_data1[1]), .Y(n62) );
  INVX2 U85 ( .A(pixel_data1[0]), .Y(n63) );
  INVX2 U86 ( .A(pixel_data2[3]), .Y(n64) );
  INVX2 U87 ( .A(pixel_data2[2]), .Y(n65) );
  INVX2 U88 ( .A(pixel_data2[1]), .Y(n66) );
  INVX2 U89 ( .A(pixel_data2[0]), .Y(n67) );
  INVX2 U90 ( .A(n286), .Y(n68) );
  INVX2 U91 ( .A(neuron_rollover), .Y(n69) );
  INVX2 U92 ( .A(n248), .Y(n70) );
  INVX2 U93 ( .A(n266), .Y(n71) );
  INVX2 U94 ( .A(n350), .Y(n72) );
  INVX2 U95 ( .A(n236), .Y(n73) );
  INVX2 U96 ( .A(n254), .Y(n74) );
  INVX2 U97 ( .A(n263), .Y(n75) );
  INVX2 U98 ( .A(n224), .Y(n76) );
  INVX2 U99 ( .A(n234), .Y(n77) );
  INVX2 U100 ( .A(n211), .Y(n78) );
  INVX2 U101 ( .A(n235), .Y(n79) );
  INVX2 U102 ( .A(n275), .Y(n80) );
  INVX2 U103 ( .A(n199), .Y(n81) );
  INVX2 U104 ( .A(n217), .Y(n82) );
  INVX2 U105 ( .A(n289), .Y(n83) );
  INVX2 U106 ( .A(n207), .Y(n84) );
  INVX2 U107 ( .A(n228), .Y(n85) );
  INVX2 U108 ( .A(flash_counter[1]), .Y(n86) );
  INVX2 U109 ( .A(flashData_out[0]), .Y(n87) );
  INVX2 U110 ( .A(n192), .Y(n88) );
  INVX2 U111 ( .A(n193), .Y(n89) );
  INVX2 U112 ( .A(n194), .Y(n90) );
  INVX2 U113 ( .A(n195), .Y(n91) );
  INVX2 U114 ( .A(n188), .Y(n92) );
  INVX2 U115 ( .A(n189), .Y(n93) );
  INVX2 U116 ( .A(n190), .Y(n94) );
  INVX2 U117 ( .A(n191), .Y(n95) );
  INVX2 U118 ( .A(n183), .Y(n96) );
  INVX2 U119 ( .A(n185), .Y(n97) );
  INVX2 U120 ( .A(n186), .Y(n98) );
  INVX2 U121 ( .A(n187), .Y(n99) );
  INVX2 U122 ( .A(flashData_out[3]), .Y(n100) );
  INVX2 U123 ( .A(flashData_out[2]), .Y(n101) );
  INVX2 U124 ( .A(flashData_out[1]), .Y(n102) );
  INVX2 U125 ( .A(n357), .Y(n103) );
  INVX2 U126 ( .A(write_en), .Y(n104) );
  INVX2 U127 ( .A(n277), .Y(n105) );
  INVX2 U128 ( .A(clear), .Y(n106) );
  INVX2 U129 ( .A(n296), .Y(n107) );
  INVX2 U130 ( .A(n348), .Y(n108) );
  INVX2 U131 ( .A(layer1State[0]), .Y(n109) );
  INVX2 U132 ( .A(n283), .Y(n110) );
  INVX2 U133 ( .A(n293), .Y(n111) );
  INVX2 U134 ( .A(n264), .Y(n112) );
  INVX2 U135 ( .A(n327), .Y(n113) );
  INVX2 U136 ( .A(n274), .Y(n114) );
  INVX2 U137 ( .A(n381), .Y(n115) );
  INVX2 U138 ( .A(layer1State[2]), .Y(n116) );
  INVX2 U139 ( .A(n378), .Y(n117) );
  INVX2 U140 ( .A(n244), .Y(n118) );
  INVX2 U141 ( .A(n208), .Y(n119) );
  INVX2 U142 ( .A(n326), .Y(n120) );
  INVX2 U143 ( .A(n320), .Y(n121) );
  INVX2 U144 ( .A(n222), .Y(n122) );
  INVX2 U145 ( .A(n197), .Y(n124) );
  INVX2 U146 ( .A(n328), .Y(n126) );
  INVX2 U147 ( .A(n210), .Y(n127) );
  INVX2 U148 ( .A(n382), .Y(n128) );
  INVX2 U149 ( .A(n360), .Y(n129) );
  INVX2 U150 ( .A(layer2State[3]), .Y(n130) );
  INVX2 U151 ( .A(n379), .Y(n131) );
  INVX2 U152 ( .A(n380), .Y(n132) );
  INVX2 U153 ( .A(layer2State[1]), .Y(n133) );
  INVX2 U154 ( .A(n247), .Y(n134) );
  INVX2 U155 ( .A(layer1State[4]), .Y(n135) );
  INVX2 U156 ( .A(layer1State[1]), .Y(n136) );
  INVX2 U157 ( .A(n346), .Y(data_ready) );
  INVX2 U158 ( .A(n339), .Y(network_done) );
  INVX2 U159 ( .A(topState[0]), .Y(n140) );
  INVX2 U160 ( .A(n355), .Y(n141) );
  INVX2 U161 ( .A(topState[1]), .Y(n142) );
  INVX2 U162 ( .A(layer2State[2]), .Y(n144) );
  INVX2 U163 ( .A(layer2State[4]), .Y(n145) );
  INVX2 U164 ( .A(input4[3]), .Y(n146) );
  INVX2 U165 ( .A(input4[2]), .Y(n148) );
  INVX2 U166 ( .A(input4[1]), .Y(n150) );
  INVX2 U167 ( .A(input2[1]), .Y(n151) );
  INVX2 U168 ( .A(input4[0]), .Y(n152) );
  INVX2 U169 ( .A(input2[0]), .Y(n153) );
  INVX2 U170 ( .A(layer1State[3]), .Y(n154) );
  AOI21X1 U189 ( .A(N730), .B(n127), .C(n122), .Y(n177) );
  AOI21X1 U190 ( .A(N731), .B(n127), .C(n122), .Y(n173) );
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
         n51, n52, n53, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n54, n55, n56, n57, n58, n59;

  DFFSR \count_out_reg[5]  ( .D(n47), .CLK(clk), .R(n9), .S(1'b1), .Q(
        count_out[5]) );
  DFFSR \count_out_reg[6]  ( .D(n46), .CLK(clk), .R(n9), .S(1'b1), .Q(
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
  flex_counter_NUM_CNT_BITS7_DW01_inc_0 add_573 ( .A(count_out), .SUM({N14, 
        N13, N12, N11, N10, N9, N8}) );
  DFFSR rollover_flag_reg ( .D(n52), .CLK(clk), .R(n9), .S(1'b1), .Q(
        rollover_flag) );
  DFFSR \count_out_reg[4]  ( .D(n48), .CLK(clk), .R(n9), .S(1'b1), .Q(
        count_out[4]) );
  DFFSR \count_out_reg[3]  ( .D(n49), .CLK(clk), .R(n9), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR \count_out_reg[2]  ( .D(n50), .CLK(clk), .R(n9), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[1]  ( .D(n51), .CLK(clk), .R(n9), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[0]  ( .D(n53), .CLK(clk), .R(n9), .S(1'b1), .Q(
        count_out[0]) );
  INVX2 U11 ( .A(n10), .Y(n9) );
  INVX2 U12 ( .A(n_rst), .Y(n10) );
  NOR2X1 U13 ( .A(rollover_val[1]), .B(rollover_val[0]), .Y(n12) );
  AOI21X1 U14 ( .A(rollover_val[0]), .B(rollover_val[1]), .C(n12), .Y(n11) );
  NAND2X1 U15 ( .A(n12), .B(n19), .Y(n13) );
  OAI21X1 U16 ( .A(n12), .B(n19), .C(n13), .Y(N35) );
  NOR2X1 U17 ( .A(n13), .B(rollover_val[3]), .Y(n15) );
  AOI21X1 U18 ( .A(n13), .B(rollover_val[3]), .C(n15), .Y(n14) );
  NAND2X1 U19 ( .A(n15), .B(n18), .Y(n16) );
  OAI21X1 U20 ( .A(n15), .B(n18), .C(n16), .Y(N37) );
  XNOR2X1 U51 ( .A(rollover_val[5]), .B(n16), .Y(N38) );
  NOR3X1 U52 ( .A(rollover_val[5]), .B(rollover_val[6]), .C(n16), .Y(N40) );
  OAI21X1 U53 ( .A(rollover_val[5]), .B(n16), .C(rollover_val[6]), .Y(n17) );
  NAND2X1 U54 ( .A(n20), .B(n17), .Y(N39) );
  INVX2 U55 ( .A(rollover_val[4]), .Y(n18) );
  INVX2 U56 ( .A(rollover_val[2]), .Y(n19) );
  INVX2 U57 ( .A(rollover_val[0]), .Y(N33) );
  INVX2 U58 ( .A(n11), .Y(N34) );
  INVX2 U59 ( .A(N40), .Y(n20) );
  INVX2 U60 ( .A(n14), .Y(N36) );
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
         n91, n94, n95, n96, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n88, n89, n90, n92, n93,
         n97, n98;
  wire   [7:0] parallel_out;
  wire   [2:0] state;
  wire   [0:9] temp_label;

  DFFSR \SPI_in_reg[7]  ( .D(n87), .CLK(clk), .R(1'b1), .S(n56), .Q(SPI_in[7])
         );
  DFFSR \SPI_in_reg[0]  ( .D(n85), .CLK(clk), .R(1'b1), .S(n56), .Q(SPI_in[0])
         );
  DFFSR \SPI_in_reg[1]  ( .D(n83), .CLK(clk), .R(1'b1), .S(n56), .Q(SPI_in[1])
         );
  DFFSR \SPI_in_reg[2]  ( .D(n81), .CLK(clk), .R(1'b1), .S(n56), .Q(SPI_in[2])
         );
  DFFSR \SPI_in_reg[3]  ( .D(n79), .CLK(clk), .R(1'b1), .S(n56), .Q(SPI_in[3])
         );
  DFFSR \SPI_in_reg[4]  ( .D(n77), .CLK(clk), .R(1'b1), .S(n56), .Q(SPI_in[4])
         );
  DFFSR \SPI_in_reg[5]  ( .D(n75), .CLK(clk), .R(1'b1), .S(n56), .Q(SPI_in[5])
         );
  DFFSR \SPI_in_reg[6]  ( .D(n73), .CLK(clk), .R(1'b1), .S(n56), .Q(SPI_in[6])
         );
  NOR2X1 U3 ( .A(n1), .B(n66), .Y(temp_label[9]) );
  NOR2X1 U4 ( .A(SPI_in[0]), .B(n1), .Y(temp_label[8]) );
  NAND3X1 U5 ( .A(SPI_in[3]), .B(n65), .C(n4), .Y(n1) );
  NOR2X1 U6 ( .A(SPI_in[2]), .B(SPI_in[1]), .Y(n4) );
  NOR2X1 U7 ( .A(n67), .B(n6), .Y(temp_label[7]) );
  NAND2X1 U8 ( .A(n61), .B(SPI_in[0]), .Y(n6) );
  NOR2X1 U9 ( .A(n67), .B(n8), .Y(temp_label[6]) );
  NAND2X1 U10 ( .A(n61), .B(n66), .Y(n8) );
  NOR2X1 U12 ( .A(n9), .B(n10), .Y(temp_label[5]) );
  NAND2X1 U13 ( .A(SPI_in[0]), .B(n67), .Y(n10) );
  NOR2X1 U14 ( .A(n9), .B(n11), .Y(temp_label[4]) );
  NAND2X1 U15 ( .A(n66), .B(n67), .Y(n11) );
  NAND3X1 U16 ( .A(n65), .B(n69), .C(SPI_in[2]), .Y(n9) );
  NOR2X1 U17 ( .A(n13), .B(n14), .Y(temp_label[3]) );
  NAND2X1 U18 ( .A(SPI_in[1]), .B(SPI_in[0]), .Y(n14) );
  NOR2X1 U19 ( .A(n13), .B(n15), .Y(temp_label[2]) );
  NAND2X1 U20 ( .A(SPI_in[1]), .B(n66), .Y(n15) );
  OAI21X1 U22 ( .A(N60), .B(n88), .C(n18), .Y(n73) );
  NAND2X1 U23 ( .A(parallel_out[6]), .B(n54), .Y(n18) );
  OAI21X1 U25 ( .A(N60), .B(n71), .C(n20), .Y(n75) );
  NAND2X1 U26 ( .A(parallel_out[5]), .B(n54), .Y(n20) );
  OAI21X1 U27 ( .A(N60), .B(n70), .C(n22), .Y(n77) );
  NAND2X1 U28 ( .A(parallel_out[4]), .B(n54), .Y(n22) );
  OAI21X1 U29 ( .A(N60), .B(n69), .C(n23), .Y(n79) );
  NAND2X1 U30 ( .A(parallel_out[3]), .B(n54), .Y(n23) );
  OAI21X1 U31 ( .A(N60), .B(n68), .C(n25), .Y(n81) );
  NAND2X1 U32 ( .A(parallel_out[2]), .B(n54), .Y(n25) );
  OAI21X1 U33 ( .A(n54), .B(n67), .C(n26), .Y(n83) );
  NAND2X1 U34 ( .A(parallel_out[1]), .B(n54), .Y(n26) );
  OAI21X1 U35 ( .A(n54), .B(n66), .C(n27), .Y(n85) );
  NAND2X1 U36 ( .A(parallel_out[0]), .B(n54), .Y(n27) );
  OAI21X1 U37 ( .A(n54), .B(n60), .C(n29), .Y(n87) );
  NAND2X1 U38 ( .A(parallel_out[7]), .B(n54), .Y(n29) );
  NAND3X1 U41 ( .A(n31), .B(n32), .C(n33), .Y(n94) );
  OAI21X1 U42 ( .A(n59), .B(state[2]), .C(state[1]), .Y(n33) );
  NAND3X1 U44 ( .A(pixel_rollover), .B(write_en), .C(shift_SPI), .Y(n31) );
  NAND3X1 U45 ( .A(n32), .B(n30), .C(n36), .Y(n95) );
  AOI22X1 U46 ( .A(n37), .B(n38), .C(state[0]), .D(n39), .Y(n36) );
  NOR2X1 U47 ( .A(state[1]), .B(state[0]), .Y(n38) );
  NAND3X1 U50 ( .A(n66), .B(n67), .C(n64), .Y(n40) );
  NAND3X1 U52 ( .A(n93), .B(n92), .C(state[2]), .Y(n30) );
  NAND3X1 U53 ( .A(n91), .B(n63), .C(data_ready), .Y(n32) );
  NAND3X1 U55 ( .A(SPI_in[0]), .B(n67), .C(n64), .Y(n44) );
  NAND3X1 U57 ( .A(n68), .B(n69), .C(n65), .Y(n13) );
  NAND3X1 U59 ( .A(n70), .B(n71), .C(n46), .Y(n45) );
  NOR2X1 U60 ( .A(SPI_in[7]), .B(SPI_in[6]), .Y(n46) );
  NOR2X1 U66 ( .A(n47), .B(state[0]), .Y(n91) );
  OAI21X1 U67 ( .A(n57), .B(n97), .C(n50), .Y(n96) );
  NAND3X1 U68 ( .A(state[0]), .B(n35), .C(state[1]), .Y(n50) );
  NAND3X1 U70 ( .A(n51), .B(n35), .C(n52), .Y(n39) );
  OAI21X1 U71 ( .A(n58), .B(n89), .C(write_en), .Y(n52) );
  NOR2X1 U72 ( .A(n93), .B(n47), .Y(write_en) );
  NAND3X1 U75 ( .A(n47), .B(n53), .C(state[0]), .Y(n35) );
  NAND2X1 U77 ( .A(n97), .B(n92), .Y(n47) );
  OAI21X1 U80 ( .A(state[1]), .B(n93), .C(state[2]), .Y(n51) );
  AND2X2 U21 ( .A(SCK), .B(n98), .Y(sig) );
  AND2X2 U48 ( .A(data_ready), .B(n62), .Y(n37) );
  AND2X2 U82 ( .A(sig_edge), .B(flag_long), .Y(flag) );
  AND2X2 U83 ( .A(MOSI), .B(n98), .Y(async_in) );
  flex_counter_NUM_CNT_BITS7 spi_input_7bit_counter ( .clk(clk), .n_rst(n55), 
        .clear(n91), .count_enable(n54), .rollover_val({1'b1, 1'b0, 1'b0, 1'b1, 
        1'b0, 1'b0, 1'b0}), .rollover_flag(pixel_rollover) );
  flex_counter_NUM_CNT_BITS4_4 spi_input_4bit_counter ( .clk(clk), .n_rst(n55), 
        .clear(1'b0), .count_enable(sig_edge), .rollover_val({1'b0, 1'b1, 1'b1, 
        1'b1}), .rollover_flag(flag_long) );
  gen_stp_sr_NUM_BITS8_SHIFT_MSB0 spi_input_stpsr ( .clk(clk), .n_rst(n55), 
        .shift_enable(sig_edge), .serial_in(sync_out), .parallel_out(
        parallel_out) );
  gen_sync_1 spi_input_sync ( .clk(clk), .n_rst(n55), .async_in(async_in), 
        .sync_out(sync_out) );
  gen_pos_edge_detect spi_input_pos_edge ( .clk(clk), .n_rst(n55), .sig(sig), 
        .sig_edge(sig_edge) );
  DFFSR shift_SPI_reg ( .D(delay2), .CLK(clk), .R(n56), .S(1'b1), .Q(shift_SPI) );
  DFFSR delay2_reg ( .D(N60), .CLK(clk), .R(n56), .S(1'b1), .Q(delay2) );
  DFFSR delay1_reg ( .D(flag), .CLK(clk), .R(n56), .S(1'b1), .Q(N60) );
  DFFSR calculate_cost_reg ( .D(n90), .CLK(clk), .R(n56), .S(1'b1), .Q(
        calculate_cost) );
  DFFSR \expected_label_reg[1]  ( .D(temp_label[8]), .CLK(clk), .R(n56), .S(
        1'b1), .Q(expected_label[1]) );
  DFFSR \expected_label_reg[0]  ( .D(temp_label[9]), .CLK(clk), .R(n56), .S(
        1'b1), .Q(expected_label[0]) );
  DFFSR \expected_label_reg[7]  ( .D(temp_label[2]), .CLK(clk), .R(n56), .S(
        1'b1), .Q(expected_label[7]) );
  DFFSR \expected_label_reg[6]  ( .D(temp_label[3]), .CLK(clk), .R(n56), .S(
        1'b1), .Q(expected_label[6]) );
  DFFSR \expected_label_reg[5]  ( .D(temp_label[4]), .CLK(clk), .R(n56), .S(
        1'b1), .Q(expected_label[5]) );
  DFFSR \expected_label_reg[4]  ( .D(temp_label[5]), .CLK(clk), .R(n56), .S(
        1'b1), .Q(expected_label[4]) );
  DFFSR \expected_label_reg[9]  ( .D(n62), .CLK(clk), .R(n56), .S(1'b1), .Q(
        expected_label[9]) );
  DFFSR \expected_label_reg[8]  ( .D(n63), .CLK(clk), .R(n56), .S(1'b1), .Q(
        expected_label[8]) );
  DFFSR \expected_label_reg[3]  ( .D(temp_label[6]), .CLK(clk), .R(n56), .S(
        1'b1), .Q(expected_label[3]) );
  DFFSR \expected_label_reg[2]  ( .D(temp_label[7]), .CLK(clk), .R(n56), .S(
        1'b1), .Q(expected_label[2]) );
  DFFSR \state_reg[1]  ( .D(n94), .CLK(clk), .R(n56), .S(1'b1), .Q(state[1])
         );
  DFFSR \state_reg[2]  ( .D(n96), .CLK(clk), .R(n56), .S(1'b1), .Q(state[2])
         );
  DFFSR \state_reg[0]  ( .D(n95), .CLK(clk), .R(n56), .S(1'b1), .Q(state[0])
         );
  INVX2 U74 ( .A(n53), .Y(n54) );
  INVX2 U76 ( .A(N60), .Y(n53) );
  BUFX2 U78 ( .A(n_rst), .Y(n55) );
  BUFX4 U79 ( .A(n_rst), .Y(n56) );
  INVX2 U81 ( .A(n39), .Y(n57) );
  INVX2 U84 ( .A(pixel_rollover), .Y(n58) );
  INVX2 U85 ( .A(n35), .Y(n59) );
  INVX2 U86 ( .A(SPI_in[7]), .Y(n60) );
  INVX2 U87 ( .A(n9), .Y(n61) );
  INVX2 U88 ( .A(n40), .Y(n62) );
  INVX2 U89 ( .A(n44), .Y(n63) );
  INVX2 U90 ( .A(n13), .Y(n64) );
  INVX2 U91 ( .A(n45), .Y(n65) );
  INVX2 U92 ( .A(SPI_in[0]), .Y(n66) );
  INVX2 U93 ( .A(SPI_in[1]), .Y(n67) );
  INVX2 U94 ( .A(SPI_in[2]), .Y(n68) );
  INVX2 U95 ( .A(SPI_in[3]), .Y(n69) );
  INVX2 U96 ( .A(SPI_in[4]), .Y(n70) );
  INVX2 U97 ( .A(SPI_in[5]), .Y(n71) );
  INVX2 U98 ( .A(SPI_in[6]), .Y(n88) );
  INVX2 U99 ( .A(shift_SPI), .Y(n89) );
  INVX2 U100 ( .A(n30), .Y(n90) );
  INVX2 U109 ( .A(state[1]), .Y(n92) );
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
         n32, n33, n34, n35, n36, n37, n39, n46, n47, n3, n4, n5, n7, n21, n24,
         n25, n28, n29, n30, n38, n40, n41, n43, n45;
  wire   [2:0] state;
  wire   [7:0] parallel_data;
  tri   MISO;

  DFFSR \state_reg[0]  ( .D(n5), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[0])
         );
  DFFSR \state_reg[2]  ( .D(n47), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[2])
         );
  OAI21X1 U3 ( .A(n1), .B(n30), .C(data_ready), .Y(parallel_data[7]) );
  OAI21X1 U5 ( .A(n1), .B(n29), .C(data_ready), .Y(parallel_data[6]) );
  OAI21X1 U7 ( .A(n1), .B(n28), .C(data_ready), .Y(parallel_data[5]) );
  OAI21X1 U9 ( .A(n1), .B(n25), .C(data_ready), .Y(parallel_data[4]) );
  NAND2X1 U11 ( .A(n6), .B(data_ready), .Y(parallel_data[3]) );
  AOI22X1 U12 ( .A(cost_output[3]), .B(n3), .C(detected_digit[3]), .D(n1), .Y(
        n6) );
  NAND2X1 U13 ( .A(n8), .B(data_ready), .Y(parallel_data[2]) );
  AOI22X1 U14 ( .A(cost_output[2]), .B(n3), .C(detected_digit[2]), .D(n1), .Y(
        n8) );
  NAND2X1 U15 ( .A(n9), .B(data_ready), .Y(parallel_data[1]) );
  AOI22X1 U16 ( .A(cost_output[1]), .B(n3), .C(detected_digit[1]), .D(n1), .Y(
        n9) );
  NAND2X1 U17 ( .A(n10), .B(data_ready), .Y(parallel_data[0]) );
  AOI22X1 U18 ( .A(cost_output[0]), .B(n3), .C(detected_digit[0]), .D(n1), .Y(
        n10) );
  AOI21X1 U20 ( .A(state[0]), .B(n12), .C(n13), .Y(n11) );
  OAI21X1 U21 ( .A(n14), .B(n15), .C(n16), .Y(n13) );
  NAND3X1 U22 ( .A(SPI_in[0]), .B(n17), .C(n18), .Y(n15) );
  NOR2X1 U24 ( .A(SPI_in[2]), .B(SPI_in[1]), .Y(n19) );
  NAND3X1 U25 ( .A(n20), .B(n41), .C(n22), .Y(n14) );
  NOR2X1 U26 ( .A(SPI_in[6]), .B(n23), .Y(n22) );
  OR2X1 U27 ( .A(state[2]), .B(SPI_in[7]), .Y(n23) );
  NOR2X1 U29 ( .A(SPI_in[5]), .B(SPI_in[4]), .Y(n20) );
  OAI21X1 U30 ( .A(n7), .B(n38), .C(n26), .Y(n46) );
  AOI21X1 U31 ( .A(n27), .B(cost_ready), .C(n24), .Y(n26) );
  NAND3X1 U33 ( .A(n17), .B(n40), .C(network_done), .Y(n16) );
  NOR2X1 U34 ( .A(flag_short), .B(n1), .Y(n27) );
  OAI21X1 U35 ( .A(n4), .B(n40), .C(n31), .Y(n47) );
  OAI21X1 U37 ( .A(n1), .B(n32), .C(n7), .Y(n12) );
  OAI21X1 U39 ( .A(flag_short), .B(n34), .C(n35), .Y(n33) );
  AOI22X1 U40 ( .A(n36), .B(n37), .C(n17), .D(n43), .Y(n35) );
  NOR2X1 U42 ( .A(n17), .B(n3), .Y(n37) );
  NOR2X1 U44 ( .A(state[0]), .B(state[1]), .Y(n17) );
  NAND3X1 U46 ( .A(state[0]), .B(n40), .C(state[1]), .Y(n31) );
  NAND2X1 U47 ( .A(n39), .B(n40), .Y(n34) );
  OR2X1 U48 ( .A(flag_short), .B(cost_ready), .Y(n32) );
  NAND3X1 U49 ( .A(n38), .B(n40), .C(state[0]), .Y(n1) );
  NOR2X1 U51 ( .A(state[2]), .B(n39), .Y(load_en) );
  NOR2X1 U52 ( .A(n38), .B(state[0]), .Y(n39) );
  AND2X2 U23 ( .A(n19), .B(data_ready), .Y(n18) );
  AND2X2 U45 ( .A(n34), .B(n31), .Y(n36) );
  AND2X2 U54 ( .A(shift_SPI), .B(flag_long), .Y(flag_short) );
  flex_counter_NUM_CNT_BITS4_3 spi_input_4bit_counter ( .clk(clk), .n_rst(
        n_rst), .clear(flag_short), .count_enable(shift_SPI), .rollover_val({
        1'b1, 1'b0, 1'b0, 1'b0}), .rollover_flag(flag_long) );
  gen_pts_sr_NUM_BITS8_SHIFT_MSB0 spi_output_ptssr ( .clk(clk), .n_rst(n_rst), 
        .shift_enable(sig_edge), .load_enable(load_en), .parallel_in(
        parallel_data), .serial_out(serial_data) );
  TBUFX1 MISO_tri ( .A(n21), .EN(n45), .Y(MISO) );
  DFFSR \state_reg[1]  ( .D(n46), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[1])
         );
  INVX2 U6 ( .A(n1), .Y(n3) );
  INVX2 U8 ( .A(n12), .Y(n4) );
  INVX2 U10 ( .A(n11), .Y(n5) );
  INVX2 U19 ( .A(n33), .Y(n7) );
  INVX2 U28 ( .A(serial_data), .Y(n21) );
  INVX2 U32 ( .A(n16), .Y(n24) );
  INVX2 U36 ( .A(cost_output[4]), .Y(n25) );
  INVX2 U38 ( .A(cost_output[5]), .Y(n28) );
  INVX2 U41 ( .A(cost_output[6]), .Y(n29) );
  INVX2 U43 ( .A(cost_output[7]), .Y(n30) );
  INVX2 U50 ( .A(state[1]), .Y(n38) );
  INVX2 U53 ( .A(state[2]), .Y(n40) );
  INVX2 U55 ( .A(SPI_in[3]), .Y(n41) );
  INVX2 U56 ( .A(shift_SPI), .Y(n43) );
  INVX2 U58 ( .A(SS), .Y(n45) );
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
  wire   n12, n13, n14, n15, n16, n17, n18, n19, n20, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53;
  wire   [559:0] pixelData;

  AOI22X1 U12 ( .A(shift_SPI), .B(n53), .C(shift_network), .D(network_calc), 
        .Y(n12) );
  AOI22X1 U13 ( .A(pixel_data_2[7]), .B(n1), .C(n2), .D(spi_in[7]), .Y(n13) );
  AOI22X1 U14 ( .A(pixel_data_2[6]), .B(n1), .C(spi_in[6]), .D(n2), .Y(n14) );
  AOI22X1 U15 ( .A(pixel_data_2[5]), .B(n1), .C(spi_in[5]), .D(n2), .Y(n15) );
  AOI22X1 U16 ( .A(pixel_data_2[4]), .B(n1), .C(spi_in[4]), .D(n2), .Y(n16) );
  AOI22X1 U17 ( .A(pixel_data_2[3]), .B(n1), .C(spi_in[3]), .D(n2), .Y(n17) );
  AOI22X1 U18 ( .A(pixel_data_2[2]), .B(n1), .C(spi_in[2]), .D(n2), .Y(n18) );
  AOI22X1 U19 ( .A(pixel_data_2[1]), .B(n1), .C(spi_in[1]), .D(n2), .Y(n19) );
  AOI22X1 U20 ( .A(pixel_data_2[0]), .B(n1), .C(spi_in[0]), .D(n2), .Y(n20) );
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
        .parallel_in(pixelData[559:552]), .parallel_out(pixel_data_1) );
  pixelData_PTPSR_0 \genblk1[71].dataReg  ( .shift_en(n43), .clk(clk), 
        .parallel_in(pixel_data_1), .parallel_out(pixel_data_2) );
  INVX2 U1 ( .A(n1), .Y(n2) );
  INVX2 U2 ( .A(write_en), .Y(n1) );
  BUFX2 U3 ( .A(n3), .Y(n11) );
  BUFX2 U4 ( .A(n3), .Y(n21) );
  BUFX2 U5 ( .A(n3), .Y(n22) );
  BUFX2 U6 ( .A(n4), .Y(n23) );
  BUFX2 U7 ( .A(n4), .Y(n24) );
  BUFX2 U8 ( .A(n4), .Y(n25) );
  BUFX2 U9 ( .A(n5), .Y(n26) );
  BUFX2 U10 ( .A(n5), .Y(n27) );
  BUFX2 U11 ( .A(n5), .Y(n28) );
  BUFX2 U21 ( .A(n6), .Y(n29) );
  BUFX2 U22 ( .A(n6), .Y(n30) );
  BUFX2 U23 ( .A(n6), .Y(n31) );
  BUFX2 U24 ( .A(n7), .Y(n32) );
  BUFX2 U25 ( .A(n7), .Y(n33) );
  BUFX2 U26 ( .A(n7), .Y(n34) );
  BUFX2 U27 ( .A(n8), .Y(n35) );
  BUFX2 U28 ( .A(n8), .Y(n36) );
  BUFX2 U29 ( .A(n8), .Y(n37) );
  BUFX2 U30 ( .A(n9), .Y(n38) );
  BUFX2 U31 ( .A(n9), .Y(n39) );
  BUFX2 U32 ( .A(n9), .Y(n40) );
  BUFX2 U33 ( .A(n10), .Y(n41) );
  BUFX2 U34 ( .A(n10), .Y(n42) );
  BUFX2 U35 ( .A(n10), .Y(n43) );
  BUFX2 U36 ( .A(n52), .Y(n3) );
  BUFX2 U37 ( .A(n52), .Y(n4) );
  BUFX2 U38 ( .A(n52), .Y(n5) );
  BUFX2 U39 ( .A(n52), .Y(n6) );
  BUFX2 U40 ( .A(n52), .Y(n7) );
  BUFX2 U41 ( .A(n52), .Y(n8) );
  BUFX2 U42 ( .A(n52), .Y(n9) );
  BUFX2 U43 ( .A(n52), .Y(n10) );
  INVX2 U44 ( .A(n13), .Y(n44) );
  INVX2 U45 ( .A(n14), .Y(n45) );
  INVX2 U46 ( .A(n15), .Y(n46) );
  INVX2 U47 ( .A(n16), .Y(n47) );
  INVX2 U48 ( .A(n17), .Y(n48) );
  INVX2 U49 ( .A(n18), .Y(n49) );
  INVX2 U50 ( .A(n19), .Y(n50) );
  INVX2 U51 ( .A(n20), .Y(n51) );
  INVX2 U52 ( .A(n12), .Y(n52) );
  INVX2 U53 ( .A(network_calc), .Y(n53) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS0 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n2, n10, n11, n12, n13;

  DFFPOSX1 \currentData_reg[3]  ( .D(n12), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n11), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n10), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n2), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n13), .C(data_out[0]), .D(n3), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n13), .C(data_out[1]), .D(n3), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n13), .C(data_out[2]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n13), .C(data_out[3]), .D(n3), .Y(n6) );
  NAND3X1 U11 ( .A(n7), .B(write_en), .C(n8), .Y(n3) );
  NOR2X1 U12 ( .A(address_in[2]), .B(n9), .Y(n8) );
  OR2X1 U13 ( .A(address_in[4]), .B(address_in[3]), .Y(n9) );
  NOR2X1 U14 ( .A(address_in[1]), .B(address_in[0]), .Y(n7) );
  INVX2 U2 ( .A(n1), .Y(n2) );
  INVX2 U4 ( .A(n4), .Y(n10) );
  INVX2 U6 ( .A(n5), .Y(n11) );
  INVX2 U8 ( .A(n6), .Y(n12) );
  INVX2 U10 ( .A(n3), .Y(n13) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS1 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n2, n10, n11, n12, n13, n14;

  DFFPOSX1 \currentData_reg[3]  ( .D(n12), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n11), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n10), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n2), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n13), .C(data_out[0]), .D(n3), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n13), .C(data_out[1]), .D(n3), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n13), .C(data_out[2]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n13), .C(data_out[3]), .D(n3), .Y(n6) );
  NAND3X1 U11 ( .A(n7), .B(write_en), .C(n8), .Y(n3) );
  NOR2X1 U12 ( .A(address_in[2]), .B(n9), .Y(n8) );
  OR2X1 U13 ( .A(address_in[4]), .B(address_in[3]), .Y(n9) );
  NOR2X1 U14 ( .A(address_in[1]), .B(n14), .Y(n7) );
  INVX2 U2 ( .A(n1), .Y(n2) );
  INVX2 U4 ( .A(n4), .Y(n10) );
  INVX2 U6 ( .A(n5), .Y(n11) );
  INVX2 U8 ( .A(n6), .Y(n12) );
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

  DFFPOSX1 \currentData_reg[3]  ( .D(n12), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n11), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n10), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n2), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n13), .C(data_out[0]), .D(n3), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n13), .C(data_out[1]), .D(n3), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n13), .C(data_out[2]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n13), .C(data_out[3]), .D(n3), .Y(n6) );
  NAND3X1 U11 ( .A(n7), .B(write_en), .C(n8), .Y(n3) );
  NOR2X1 U12 ( .A(address_in[2]), .B(n9), .Y(n8) );
  OR2X1 U13 ( .A(address_in[4]), .B(address_in[3]), .Y(n9) );
  NOR2X1 U14 ( .A(address_in[0]), .B(n14), .Y(n7) );
  INVX2 U2 ( .A(n1), .Y(n2) );
  INVX2 U4 ( .A(n4), .Y(n10) );
  INVX2 U6 ( .A(n5), .Y(n11) );
  INVX2 U8 ( .A(n6), .Y(n12) );
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

  DFFPOSX1 \currentData_reg[3]  ( .D(n12), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n11), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n10), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n2), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n13), .C(data_out[0]), .D(n3), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n13), .C(data_out[1]), .D(n3), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n13), .C(data_out[2]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n13), .C(data_out[3]), .D(n3), .Y(n6) );
  NAND3X1 U11 ( .A(n7), .B(write_en), .C(n8), .Y(n3) );
  NOR2X1 U12 ( .A(address_in[2]), .B(n9), .Y(n8) );
  OR2X1 U13 ( .A(address_in[4]), .B(address_in[3]), .Y(n9) );
  AND2X2 U14 ( .A(address_in[1]), .B(address_in[0]), .Y(n7) );
  INVX2 U2 ( .A(n1), .Y(n2) );
  INVX2 U4 ( .A(n4), .Y(n10) );
  INVX2 U6 ( .A(n5), .Y(n11) );
  INVX2 U8 ( .A(n6), .Y(n12) );
  INVX2 U10 ( .A(n3), .Y(n13) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS4 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n2, n10, n11, n12, n13, n14;

  DFFPOSX1 \currentData_reg[3]  ( .D(n12), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n11), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n10), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n2), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n13), .C(data_out[0]), .D(n3), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n13), .C(data_out[1]), .D(n3), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n13), .C(data_out[2]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n13), .C(data_out[3]), .D(n3), .Y(n6) );
  NAND3X1 U11 ( .A(n7), .B(write_en), .C(n8), .Y(n3) );
  NOR2X1 U12 ( .A(address_in[1]), .B(n9), .Y(n8) );
  OR2X1 U13 ( .A(address_in[4]), .B(address_in[3]), .Y(n9) );
  NOR2X1 U14 ( .A(address_in[0]), .B(n14), .Y(n7) );
  INVX2 U2 ( .A(n1), .Y(n2) );
  INVX2 U4 ( .A(n4), .Y(n10) );
  INVX2 U6 ( .A(n5), .Y(n11) );
  INVX2 U8 ( .A(n6), .Y(n12) );
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

  DFFPOSX1 \currentData_reg[3]  ( .D(n12), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n11), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n10), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n2), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n13), .C(data_out[0]), .D(n3), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n13), .C(data_out[1]), .D(n3), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n13), .C(data_out[2]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n13), .C(data_out[3]), .D(n3), .Y(n6) );
  NAND3X1 U11 ( .A(n7), .B(write_en), .C(n8), .Y(n3) );
  NOR2X1 U12 ( .A(address_in[1]), .B(n9), .Y(n8) );
  OR2X1 U13 ( .A(address_in[4]), .B(address_in[3]), .Y(n9) );
  AND2X2 U14 ( .A(address_in[2]), .B(address_in[0]), .Y(n7) );
  INVX2 U2 ( .A(n1), .Y(n2) );
  INVX2 U4 ( .A(n4), .Y(n10) );
  INVX2 U6 ( .A(n5), .Y(n11) );
  INVX2 U8 ( .A(n6), .Y(n12) );
  INVX2 U10 ( .A(n3), .Y(n13) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS6 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n2, n10, n11, n12, n13;

  DFFPOSX1 \currentData_reg[3]  ( .D(n12), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n11), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n10), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n2), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n13), .C(data_out[0]), .D(n3), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n13), .C(data_out[1]), .D(n3), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n13), .C(data_out[2]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n13), .C(data_out[3]), .D(n3), .Y(n6) );
  NAND3X1 U11 ( .A(n7), .B(write_en), .C(n8), .Y(n3) );
  NOR2X1 U12 ( .A(address_in[0]), .B(n9), .Y(n8) );
  OR2X1 U13 ( .A(address_in[4]), .B(address_in[3]), .Y(n9) );
  AND2X2 U14 ( .A(address_in[2]), .B(address_in[1]), .Y(n7) );
  INVX2 U2 ( .A(n1), .Y(n2) );
  INVX2 U4 ( .A(n4), .Y(n10) );
  INVX2 U6 ( .A(n5), .Y(n11) );
  INVX2 U8 ( .A(n6), .Y(n12) );
  INVX2 U10 ( .A(n3), .Y(n13) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS7 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n3, n10, n11, n12, n13;

  DFFPOSX1 \currentData_reg[3]  ( .D(n12), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n11), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n10), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n3), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n2), .C(data_out[0]), .D(n13), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n2), .C(data_out[1]), .D(n13), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n2), .C(data_out[2]), .D(n13), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n2), .C(data_out[3]), .D(n13), .Y(n6) );
  NOR2X1 U11 ( .A(n7), .B(n8), .Y(n2) );
  NAND3X1 U12 ( .A(address_in[2]), .B(address_in[1]), .C(write_en), .Y(n8) );
  NAND2X1 U13 ( .A(n9), .B(address_in[0]), .Y(n7) );
  NOR2X1 U14 ( .A(address_in[4]), .B(address_in[3]), .Y(n9) );
  INVX2 U2 ( .A(n1), .Y(n3) );
  INVX2 U4 ( .A(n4), .Y(n10) );
  INVX2 U6 ( .A(n5), .Y(n11) );
  INVX2 U8 ( .A(n6), .Y(n12) );
  INVX2 U10 ( .A(n2), .Y(n13) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS8 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n2, n10, n11, n12, n13, n14;

  DFFPOSX1 \currentData_reg[3]  ( .D(n12), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n11), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n10), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n2), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n13), .C(data_out[0]), .D(n3), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n13), .C(data_out[1]), .D(n3), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n13), .C(data_out[2]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n13), .C(data_out[3]), .D(n3), .Y(n6) );
  NAND3X1 U11 ( .A(n7), .B(write_en), .C(n8), .Y(n3) );
  NOR2X1 U12 ( .A(address_in[1]), .B(n9), .Y(n8) );
  OR2X1 U13 ( .A(address_in[4]), .B(address_in[2]), .Y(n9) );
  NOR2X1 U14 ( .A(address_in[0]), .B(n14), .Y(n7) );
  INVX2 U2 ( .A(n1), .Y(n2) );
  INVX2 U4 ( .A(n4), .Y(n10) );
  INVX2 U6 ( .A(n5), .Y(n11) );
  INVX2 U8 ( .A(n6), .Y(n12) );
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

  DFFPOSX1 \currentData_reg[3]  ( .D(n12), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n11), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n10), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n2), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n13), .C(data_out[0]), .D(n3), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n13), .C(data_out[1]), .D(n3), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n13), .C(data_out[2]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n13), .C(data_out[3]), .D(n3), .Y(n6) );
  NAND3X1 U11 ( .A(n7), .B(write_en), .C(n8), .Y(n3) );
  NOR2X1 U12 ( .A(address_in[1]), .B(n9), .Y(n8) );
  OR2X1 U13 ( .A(address_in[4]), .B(address_in[2]), .Y(n9) );
  AND2X2 U14 ( .A(address_in[3]), .B(address_in[0]), .Y(n7) );
  INVX2 U2 ( .A(n1), .Y(n2) );
  INVX2 U4 ( .A(n4), .Y(n10) );
  INVX2 U6 ( .A(n5), .Y(n11) );
  INVX2 U8 ( .A(n6), .Y(n12) );
  INVX2 U10 ( .A(n3), .Y(n13) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS10 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n2, n10, n11, n12, n13;

  DFFPOSX1 \currentData_reg[3]  ( .D(n12), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n11), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n10), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n2), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n13), .C(data_out[0]), .D(n3), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n13), .C(data_out[1]), .D(n3), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n13), .C(data_out[2]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n13), .C(data_out[3]), .D(n3), .Y(n6) );
  NAND3X1 U11 ( .A(n7), .B(write_en), .C(n8), .Y(n3) );
  NOR2X1 U12 ( .A(address_in[0]), .B(n9), .Y(n8) );
  OR2X1 U13 ( .A(address_in[4]), .B(address_in[2]), .Y(n9) );
  AND2X2 U14 ( .A(address_in[3]), .B(address_in[1]), .Y(n7) );
  INVX2 U2 ( .A(n1), .Y(n2) );
  INVX2 U4 ( .A(n4), .Y(n10) );
  INVX2 U6 ( .A(n5), .Y(n11) );
  INVX2 U8 ( .A(n6), .Y(n12) );
  INVX2 U10 ( .A(n3), .Y(n13) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS11 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n3, n10, n11, n12, n13;

  DFFPOSX1 \currentData_reg[3]  ( .D(n12), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n11), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n10), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n3), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n2), .C(data_out[0]), .D(n13), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n2), .C(data_out[1]), .D(n13), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n2), .C(data_out[2]), .D(n13), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n2), .C(data_out[3]), .D(n13), .Y(n6) );
  NOR2X1 U11 ( .A(n7), .B(n8), .Y(n2) );
  NAND3X1 U12 ( .A(address_in[3]), .B(address_in[1]), .C(write_en), .Y(n8) );
  NAND2X1 U13 ( .A(n9), .B(address_in[0]), .Y(n7) );
  NOR2X1 U14 ( .A(address_in[4]), .B(address_in[2]), .Y(n9) );
  INVX2 U2 ( .A(n1), .Y(n3) );
  INVX2 U4 ( .A(n4), .Y(n10) );
  INVX2 U6 ( .A(n5), .Y(n11) );
  INVX2 U8 ( .A(n6), .Y(n12) );
  INVX2 U10 ( .A(n2), .Y(n13) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS12 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n2, n10, n11, n12, n13;

  DFFPOSX1 \currentData_reg[3]  ( .D(n12), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n11), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n10), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n2), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n13), .C(data_out[0]), .D(n3), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n13), .C(data_out[1]), .D(n3), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n13), .C(data_out[2]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n13), .C(data_out[3]), .D(n3), .Y(n6) );
  NAND3X1 U11 ( .A(n7), .B(write_en), .C(n8), .Y(n3) );
  NOR2X1 U12 ( .A(address_in[0]), .B(n9), .Y(n8) );
  OR2X1 U13 ( .A(address_in[4]), .B(address_in[1]), .Y(n9) );
  AND2X2 U14 ( .A(address_in[3]), .B(address_in[2]), .Y(n7) );
  INVX2 U2 ( .A(n1), .Y(n2) );
  INVX2 U4 ( .A(n4), .Y(n10) );
  INVX2 U6 ( .A(n5), .Y(n11) );
  INVX2 U8 ( .A(n6), .Y(n12) );
  INVX2 U10 ( .A(n3), .Y(n13) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS13 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n3, n10, n11, n12, n13;

  DFFPOSX1 \currentData_reg[3]  ( .D(n12), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n11), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n10), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n3), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n2), .C(data_out[0]), .D(n13), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n2), .C(data_out[1]), .D(n13), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n2), .C(data_out[2]), .D(n13), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n2), .C(data_out[3]), .D(n13), .Y(n6) );
  NOR2X1 U11 ( .A(n7), .B(n8), .Y(n2) );
  NAND3X1 U12 ( .A(address_in[3]), .B(address_in[2]), .C(write_en), .Y(n8) );
  NAND2X1 U13 ( .A(n9), .B(address_in[0]), .Y(n7) );
  NOR2X1 U14 ( .A(address_in[4]), .B(address_in[1]), .Y(n9) );
  INVX2 U2 ( .A(n1), .Y(n3) );
  INVX2 U4 ( .A(n4), .Y(n10) );
  INVX2 U6 ( .A(n5), .Y(n11) );
  INVX2 U8 ( .A(n6), .Y(n12) );
  INVX2 U10 ( .A(n2), .Y(n13) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS14 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n3, n10, n11, n12, n13;

  DFFPOSX1 \currentData_reg[3]  ( .D(n12), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n11), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n10), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n3), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n2), .C(data_out[0]), .D(n13), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n2), .C(data_out[1]), .D(n13), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n2), .C(data_out[2]), .D(n13), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n2), .C(data_out[3]), .D(n13), .Y(n6) );
  NOR2X1 U11 ( .A(n7), .B(n8), .Y(n2) );
  NAND3X1 U12 ( .A(address_in[3]), .B(address_in[2]), .C(write_en), .Y(n8) );
  NAND2X1 U13 ( .A(n9), .B(address_in[1]), .Y(n7) );
  NOR2X1 U14 ( .A(address_in[4]), .B(address_in[0]), .Y(n9) );
  INVX2 U2 ( .A(n1), .Y(n3) );
  INVX2 U4 ( .A(n4), .Y(n10) );
  INVX2 U6 ( .A(n5), .Y(n11) );
  INVX2 U8 ( .A(n6), .Y(n12) );
  INVX2 U10 ( .A(n2), .Y(n13) );
endmodule


module sigmoidRegisters_addressableReg_ADDRESS15 ( write_en, clk, data_in, 
        address_in, data_out );
  input [3:0] data_in;
  input [4:0] address_in;
  output [3:0] data_out;
  input write_en, clk;
  wire   n1, n2, n4, n5, n6, n7, n8, n3, n9, n10, n11, n12, n13;

  DFFPOSX1 \currentData_reg[3]  ( .D(n11), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n10), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n9), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n3), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n2), .C(data_out[0]), .D(n12), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n2), .C(data_out[1]), .D(n12), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n2), .C(data_out[2]), .D(n12), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n2), .C(data_out[3]), .D(n12), .Y(n6) );
  NOR2X1 U11 ( .A(n7), .B(n8), .Y(n2) );
  NAND3X1 U12 ( .A(address_in[3]), .B(address_in[2]), .C(write_en), .Y(n8) );
  NAND3X1 U13 ( .A(address_in[0]), .B(n13), .C(address_in[1]), .Y(n7) );
  INVX2 U2 ( .A(n1), .Y(n3) );
  INVX2 U4 ( .A(n4), .Y(n9) );
  INVX2 U6 ( .A(n5), .Y(n10) );
  INVX2 U8 ( .A(n6), .Y(n11) );
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

  DFFPOSX1 \currentData_reg[3]  ( .D(n12), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n11), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n10), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n2), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n13), .C(data_out[0]), .D(n3), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n13), .C(data_out[1]), .D(n3), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n13), .C(data_out[2]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n13), .C(data_out[3]), .D(n3), .Y(n6) );
  NAND3X1 U11 ( .A(n7), .B(write_en), .C(n8), .Y(n3) );
  NOR2X1 U12 ( .A(address_in[1]), .B(n9), .Y(n8) );
  OR2X1 U13 ( .A(address_in[3]), .B(address_in[2]), .Y(n9) );
  NOR2X1 U14 ( .A(address_in[0]), .B(n14), .Y(n7) );
  INVX2 U2 ( .A(n1), .Y(n2) );
  INVX2 U4 ( .A(n4), .Y(n10) );
  INVX2 U6 ( .A(n5), .Y(n11) );
  INVX2 U8 ( .A(n6), .Y(n12) );
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

  DFFPOSX1 \currentData_reg[3]  ( .D(n12), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \currentData_reg[2]  ( .D(n11), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \currentData_reg[1]  ( .D(n10), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \currentData_reg[0]  ( .D(n2), .CLK(clk), .Q(data_out[0]) );
  AOI22X1 U3 ( .A(data_in[0]), .B(n13), .C(data_out[0]), .D(n3), .Y(n1) );
  AOI22X1 U5 ( .A(data_in[1]), .B(n13), .C(data_out[1]), .D(n3), .Y(n4) );
  AOI22X1 U7 ( .A(data_in[2]), .B(n13), .C(data_out[2]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(data_in[3]), .B(n13), .C(data_out[3]), .D(n3), .Y(n6) );
  NAND3X1 U11 ( .A(n7), .B(write_en), .C(n8), .Y(n3) );
  NOR2X1 U12 ( .A(address_in[1]), .B(n9), .Y(n8) );
  OR2X1 U13 ( .A(address_in[3]), .B(address_in[2]), .Y(n9) );
  AND2X2 U14 ( .A(address_in[4]), .B(address_in[0]), .Y(n7) );
  INVX2 U2 ( .A(n1), .Y(n2) );
  INVX2 U4 ( .A(n4), .Y(n10) );
  INVX2 U6 ( .A(n5), .Y(n11) );
  INVX2 U8 ( .A(n6), .Y(n12) );
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
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79;

  NAND3X1 U20 ( .A(n19), .B(n20), .C(n21), .Y(data_out[3]) );
  NOR2X1 U21 ( .A(n22), .B(n68), .Y(n21) );
  AOI22X1 U22 ( .A(\outputs[4][3] ), .B(n71), .C(\outputs[3][3] ), .D(n69), 
        .Y(n23) );
  OAI21X1 U23 ( .A(n24), .B(n76), .C(n25), .Y(n22) );
  AOI22X1 U24 ( .A(\outputs[7][3] ), .B(n73), .C(\outputs[6][3] ), .D(n72), 
        .Y(n25) );
  AOI22X1 U25 ( .A(\outputs[2][3] ), .B(n63), .C(\outputs[1][3] ), .D(n64), 
        .Y(n20) );
  AOI21X1 U26 ( .A(\outputs[0][3] ), .B(n62), .C(n26), .Y(n19) );
  NAND3X1 U27 ( .A(n27), .B(n28), .C(n29), .Y(data_out[2]) );
  NOR2X1 U28 ( .A(n30), .B(n67), .Y(n29) );
  AOI22X1 U29 ( .A(\outputs[4][2] ), .B(n71), .C(\outputs[3][2] ), .D(n69), 
        .Y(n31) );
  OAI21X1 U30 ( .A(n24), .B(n77), .C(n32), .Y(n30) );
  AOI22X1 U31 ( .A(\outputs[7][2] ), .B(n73), .C(\outputs[6][2] ), .D(n72), 
        .Y(n32) );
  AOI22X1 U32 ( .A(\outputs[2][2] ), .B(n63), .C(\outputs[1][2] ), .D(n64), 
        .Y(n28) );
  AOI21X1 U33 ( .A(\outputs[0][2] ), .B(n62), .C(n26), .Y(n27) );
  NAND3X1 U34 ( .A(n33), .B(n34), .C(n35), .Y(data_out[1]) );
  NOR2X1 U35 ( .A(n36), .B(n66), .Y(n35) );
  AOI22X1 U36 ( .A(\outputs[4][1] ), .B(n71), .C(\outputs[3][1] ), .D(n69), 
        .Y(n37) );
  OAI21X1 U37 ( .A(n24), .B(n78), .C(n38), .Y(n36) );
  AOI22X1 U38 ( .A(\outputs[7][1] ), .B(n73), .C(\outputs[6][1] ), .D(n72), 
        .Y(n38) );
  AOI22X1 U39 ( .A(\outputs[2][1] ), .B(n63), .C(\outputs[1][1] ), .D(n64), 
        .Y(n34) );
  AOI21X1 U40 ( .A(\outputs[0][1] ), .B(n62), .C(n26), .Y(n33) );
  NAND3X1 U41 ( .A(n39), .B(n40), .C(n41), .Y(data_out[0]) );
  NOR2X1 U42 ( .A(n42), .B(n65), .Y(n41) );
  AOI22X1 U43 ( .A(\outputs[4][0] ), .B(n71), .C(\outputs[3][0] ), .D(n69), 
        .Y(n43) );
  NAND3X1 U44 ( .A(n3), .B(n70), .C(n5), .Y(n44) );
  NAND3X1 U45 ( .A(n75), .B(n74), .C(n8), .Y(n45) );
  OAI21X1 U46 ( .A(n24), .B(n79), .C(n46), .Y(n42) );
  AOI22X1 U47 ( .A(\outputs[7][0] ), .B(n73), .C(\outputs[6][0] ), .D(n72), 
        .Y(n46) );
  NAND3X1 U48 ( .A(n6), .B(n75), .C(n8), .Y(n47) );
  NAND3X1 U49 ( .A(n6), .B(n3), .C(n8), .Y(n48) );
  NAND3X1 U50 ( .A(n2), .B(n74), .C(n8), .Y(n24) );
  AOI22X1 U51 ( .A(\outputs[2][0] ), .B(n63), .C(\outputs[1][0] ), .D(n64), 
        .Y(n40) );
  NAND3X1 U52 ( .A(n74), .B(n70), .C(n2), .Y(n49) );
  NAND3X1 U53 ( .A(n75), .B(n70), .C(n5), .Y(n50) );
  AOI21X1 U54 ( .A(\outputs[0][0] ), .B(n62), .C(n26), .Y(n39) );
  OR2X1 U55 ( .A(n11), .B(n14), .Y(n26) );
  NAND3X1 U56 ( .A(n74), .B(n70), .C(n75), .Y(n51) );
  sigmoidRegisters_addressableReg_ADDRESS0 \genblk1[0].neuronReg  ( .write_en(
        n61), .clk(clk), .data_in({n59, n56, n53, n17}), .address_in({n14, n12, 
        n8, n6, n3}), .data_out({\outputs[0][3] , \outputs[0][2] , 
        \outputs[0][1] , \outputs[0][0] }) );
  sigmoidRegisters_addressableReg_ADDRESS1 \genblk1[1].neuronReg  ( .write_en(
        n61), .clk(clk), .data_in({n58, n55, n52, n16}), .address_in({n14, n12, 
        n8, n6, n2}), .data_out({\outputs[1][3] , \outputs[1][2] , 
        \outputs[1][1] , \outputs[1][0] }) );
  sigmoidRegisters_addressableReg_ADDRESS2 \genblk1[2].neuronReg  ( .write_en(
        n61), .clk(clk), .data_in({n59, n56, n53, n17}), .address_in({n14, n12, 
        n8, n5, n3}), .data_out({\outputs[2][3] , \outputs[2][2] , 
        \outputs[2][1] , \outputs[2][0] }) );
  sigmoidRegisters_addressableReg_ADDRESS3 \genblk1[3].neuronReg  ( .write_en(
        n61), .clk(clk), .data_in({n58, n55, n52, n16}), .address_in({n14, n11, 
        n8, n6, n2}), .data_out({\outputs[3][3] , \outputs[3][2] , 
        \outputs[3][1] , \outputs[3][0] }) );
  sigmoidRegisters_addressableReg_ADDRESS4 \genblk1[4].neuronReg  ( .write_en(
        n61), .clk(clk), .data_in({n59, n56, n53, n17}), .address_in({
        address[4], n11, n8, n6, n2}), .data_out({\outputs[4][3] , 
        \outputs[4][2] , \outputs[4][1] , \outputs[4][0] }) );
  sigmoidRegisters_addressableReg_ADDRESS5 \genblk1[5].neuronReg  ( .write_en(
        n61), .clk(clk), .data_in({n58, n55, n52, n16}), .address_in({
        address[4], n11, n9, n5, n3}), .data_out({\outputs[5][3] , 
        \outputs[5][2] , \outputs[5][1] , \outputs[5][0] }) );
  sigmoidRegisters_addressableReg_ADDRESS6 \genblk1[6].neuronReg  ( .write_en(
        n61), .clk(clk), .data_in({n59, n56, n53, n17}), .address_in({
        address[4], n11, n9, n6, n3}), .data_out({\outputs[6][3] , 
        \outputs[6][2] , \outputs[6][1] , \outputs[6][0] }) );
  sigmoidRegisters_addressableReg_ADDRESS7 \genblk1[7].neuronReg  ( .write_en(
        n61), .clk(clk), .data_in({n58, n55, n52, n16}), .address_in({n14, n11, 
        n9, n6, n2}), .data_out({\outputs[7][3] , \outputs[7][2] , 
        \outputs[7][1] , \outputs[7][0] }) );
  sigmoidRegisters_addressableReg_ADDRESS8 \genblk2[0].weightReg  ( .write_en(
        n61), .clk(clk), .data_in({n59, n56, n53, n17}), .address_in({
        address[4], n11, n9, n5, n2}), .data_out({\digit_weights[0][3] , 
        \digit_weights[0][2] , \digit_weights[0][1] , \digit_weights[0][0] })
         );
  sigmoidRegisters_addressableReg_ADDRESS9 \genblk2[1].weightReg  ( .write_en(
        n61), .clk(clk), .data_in({n58, n55, n52, n16}), .address_in({n14, n12, 
        n9, n5, n2}), .data_out({\digit_weights[1][3] , \digit_weights[1][2] , 
        \digit_weights[1][1] , \digit_weights[1][0] }) );
  sigmoidRegisters_addressableReg_ADDRESS10 \genblk2[2].weightReg  ( 
        .write_en(n61), .clk(clk), .data_in({n59, n56, n53, n17}), 
        .address_in({address[4], n12, n9, n6, n3}), .data_out({
        \digit_weights[2][3] , \digit_weights[2][2] , \digit_weights[2][1] , 
        \digit_weights[2][0] }) );
  sigmoidRegisters_addressableReg_ADDRESS11 \genblk2[3].weightReg  ( 
        .write_en(n61), .clk(clk), .data_in({n58, n55, n52, n16}), 
        .address_in({n14, n12, n8, n6, n3}), .data_out({\digit_weights[3][3] , 
        \digit_weights[3][2] , \digit_weights[3][1] , \digit_weights[3][0] })
         );
  sigmoidRegisters_addressableReg_ADDRESS12 \genblk2[4].weightReg  ( 
        .write_en(n61), .clk(clk), .data_in({n59, n56, n53, n17}), 
        .address_in({address[4], n12, n9, n6, n2}), .data_out({
        \digit_weights[4][3] , \digit_weights[4][2] , \digit_weights[4][1] , 
        \digit_weights[4][0] }) );
  sigmoidRegisters_addressableReg_ADDRESS13 \genblk2[5].weightReg  ( 
        .write_en(n61), .clk(clk), .data_in({n58, n55, n52, n16}), 
        .address_in({n14, n12, n9, n5, n2}), .data_out({\digit_weights[5][3] , 
        \digit_weights[5][2] , \digit_weights[5][1] , \digit_weights[5][0] })
         );
  sigmoidRegisters_addressableReg_ADDRESS14 \genblk2[6].weightReg  ( 
        .write_en(n61), .clk(clk), .data_in({n59, n56, n53, n17}), 
        .address_in({n14, n12, n9, n6, n2}), .data_out({\digit_weights[6][3] , 
        \digit_weights[6][2] , \digit_weights[6][1] , \digit_weights[6][0] })
         );
  sigmoidRegisters_addressableReg_ADDRESS15 \genblk2[7].weightReg  ( 
        .write_en(n61), .clk(clk), .data_in({n58, n55, n52, n16}), 
        .address_in({address[4], n12, n9, n5, n2}), .data_out({
        \digit_weights[7][3] , \digit_weights[7][2] , \digit_weights[7][1] , 
        \digit_weights[7][0] }) );
  sigmoidRegisters_addressableReg_ADDRESS16 \genblk2[8].weightReg  ( 
        .write_en(n61), .clk(clk), .data_in({n59, n56, n53, n17}), 
        .address_in({address[4], n11, n9, n5, n3}), .data_out({
        \digit_weights[8][3] , \digit_weights[8][2] , \digit_weights[8][1] , 
        \digit_weights[8][0] }) );
  sigmoidRegisters_addressableReg_ADDRESS17 \genblk2[9].weightReg  ( 
        .write_en(n61), .clk(clk), .data_in({n58, n55, n52, n16}), 
        .address_in({n14, n11, n9, n5, n3}), .data_out({\digit_weights[9][3] , 
        \digit_weights[9][2] , \digit_weights[9][1] , \digit_weights[9][0] })
         );
  INVX2 U2 ( .A(n4), .Y(n5) );
  INVX2 U3 ( .A(n1), .Y(n3) );
  INVX2 U4 ( .A(n60), .Y(n61) );
  INVX2 U5 ( .A(write_en), .Y(n60) );
  INVX2 U6 ( .A(n7), .Y(n8) );
  INVX2 U7 ( .A(n1), .Y(n2) );
  INVX2 U8 ( .A(n7), .Y(n9) );
  INVX2 U9 ( .A(n4), .Y(n6) );
  INVX2 U10 ( .A(n13), .Y(n14) );
  INVX2 U11 ( .A(n10), .Y(n12) );
  INVX2 U12 ( .A(n10), .Y(n11) );
  INVX2 U13 ( .A(n15), .Y(n16) );
  INVX2 U14 ( .A(n15), .Y(n17) );
  INVX2 U15 ( .A(n57), .Y(n58) );
  INVX2 U16 ( .A(n57), .Y(n59) );
  INVX2 U17 ( .A(n18), .Y(n52) );
  INVX2 U18 ( .A(n18), .Y(n53) );
  INVX2 U19 ( .A(n54), .Y(n55) );
  INVX2 U57 ( .A(n54), .Y(n56) );
  INVX2 U58 ( .A(address[4]), .Y(n13) );
  INVX2 U59 ( .A(address[1]), .Y(n4) );
  INVX2 U60 ( .A(address[2]), .Y(n7) );
  INVX2 U61 ( .A(address[0]), .Y(n1) );
  INVX2 U62 ( .A(address[3]), .Y(n10) );
  INVX2 U63 ( .A(data_in[3]), .Y(n57) );
  INVX2 U64 ( .A(data_in[1]), .Y(n18) );
  INVX2 U65 ( .A(data_in[2]), .Y(n54) );
  INVX2 U66 ( .A(data_in[0]), .Y(n15) );
  INVX2 U67 ( .A(n51), .Y(n62) );
  INVX2 U68 ( .A(n50), .Y(n63) );
  INVX2 U69 ( .A(n49), .Y(n64) );
  INVX2 U70 ( .A(n43), .Y(n65) );
  INVX2 U71 ( .A(n37), .Y(n66) );
  INVX2 U72 ( .A(n31), .Y(n67) );
  INVX2 U73 ( .A(n23), .Y(n68) );
  INVX2 U74 ( .A(n44), .Y(n69) );
  INVX2 U75 ( .A(n8), .Y(n70) );
  INVX2 U76 ( .A(n45), .Y(n71) );
  INVX2 U77 ( .A(n47), .Y(n72) );
  INVX2 U78 ( .A(n48), .Y(n73) );
  INVX2 U79 ( .A(n5), .Y(n74) );
  INVX2 U80 ( .A(n3), .Y(n75) );
  INVX2 U81 ( .A(\outputs[5][3] ), .Y(n76) );
  INVX2 U82 ( .A(\outputs[5][2] ), .Y(n77) );
  INVX2 U83 ( .A(\outputs[5][1] ), .Y(n78) );
  INVX2 U84 ( .A(\outputs[5][0] ), .Y(n79) );
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
         n115, n71, n73, n75, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n112,
         n113;
  wire   [3:0] count_out;
  wire   [1:0] state;
  assign we = 1'b1;

  DFFSR \state_reg[0]  ( .D(n115), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[0]) );
  DFFSR \address_in_reg[15]  ( .D(n93), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[15]) );
  DFFSR \address_in_reg[14]  ( .D(n92), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[14]) );
  DFFSR \address_in_reg[13]  ( .D(n91), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[13]) );
  DFFSR \address_in_reg[12]  ( .D(n90), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[12]) );
  DFFSR \address_in_reg[11]  ( .D(n89), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[11]) );
  DFFSR \address_in_reg[10]  ( .D(n88), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[10]) );
  DFFSR \address_in_reg[9]  ( .D(n87), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[9]) );
  DFFSR \address_in_reg[8]  ( .D(n86), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[8]) );
  DFFSR \address_in_reg[7]  ( .D(n85), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[7]) );
  DFFSR \address_in_reg[6]  ( .D(n84), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[6]) );
  DFFSR \address_in_reg[5]  ( .D(n83), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[5]) );
  DFFSR \address_in_reg[4]  ( .D(n82), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[4]) );
  DFFSR \address_in_reg[3]  ( .D(n81), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[3]) );
  DFFSR \address_in_reg[2]  ( .D(n80), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[2]) );
  DFFSR \address_in_reg[1]  ( .D(n79), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[1]) );
  DFFSR \address_in_reg[0]  ( .D(n78), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        address_in[0]) );
  AOI22X1 U4 ( .A(n75), .B(address[0]), .C(address_in[0]), .D(n73), .Y(n1) );
  AOI22X1 U6 ( .A(address[1]), .B(n75), .C(address_in[1]), .D(n73), .Y(n3) );
  AOI22X1 U8 ( .A(address[2]), .B(n75), .C(address_in[2]), .D(n73), .Y(n4) );
  AOI22X1 U10 ( .A(address[3]), .B(n75), .C(address_in[3]), .D(n73), .Y(n5) );
  AOI22X1 U12 ( .A(address[4]), .B(n75), .C(address_in[4]), .D(n73), .Y(n6) );
  AOI22X1 U14 ( .A(address[5]), .B(n75), .C(address_in[5]), .D(n73), .Y(n7) );
  AOI22X1 U16 ( .A(address[6]), .B(n75), .C(address_in[6]), .D(n73), .Y(n8) );
  AOI22X1 U18 ( .A(address[7]), .B(n75), .C(address_in[7]), .D(n73), .Y(n9) );
  AOI22X1 U20 ( .A(address[8]), .B(n75), .C(address_in[8]), .D(n73), .Y(n10)
         );
  AOI22X1 U22 ( .A(address[9]), .B(n75), .C(address_in[9]), .D(n73), .Y(n11)
         );
  AOI22X1 U24 ( .A(address[10]), .B(n75), .C(address_in[10]), .D(n73), .Y(n12)
         );
  AOI22X1 U26 ( .A(address[11]), .B(n75), .C(address_in[11]), .D(n73), .Y(n13)
         );
  AOI22X1 U28 ( .A(address[12]), .B(n75), .C(address_in[12]), .D(n73), .Y(n14)
         );
  AOI22X1 U30 ( .A(address[13]), .B(n75), .C(address_in[13]), .D(n73), .Y(n15)
         );
  AOI22X1 U32 ( .A(address[14]), .B(n75), .C(address_in[14]), .D(n73), .Y(n16)
         );
  AOI22X1 U34 ( .A(address[15]), .B(n75), .C(address_in[15]), .D(n73), .Y(n17)
         );
  AOI22X1 U36 ( .A(data[1]), .B(n77), .C(data_out[1]), .D(n71), .Y(n18) );
  AOI22X1 U38 ( .A(data[2]), .B(n77), .C(data_out[2]), .D(n71), .Y(n21) );
  AOI22X1 U40 ( .A(data[3]), .B(n77), .C(data_out[3]), .D(n71), .Y(n22) );
  AOI22X1 U42 ( .A(data[4]), .B(n77), .C(data_out[4]), .D(n71), .Y(n23) );
  AOI22X1 U44 ( .A(data[5]), .B(n77), .C(data_out[5]), .D(n71), .Y(n24) );
  AOI22X1 U46 ( .A(data[6]), .B(n77), .C(data_out[6]), .D(n71), .Y(n25) );
  AOI22X1 U48 ( .A(data[7]), .B(n77), .C(data_out[7]), .D(n71), .Y(n26) );
  AOI22X1 U50 ( .A(data[8]), .B(n77), .C(data_out[8]), .D(n71), .Y(n27) );
  AOI22X1 U52 ( .A(data[9]), .B(n77), .C(data_out[9]), .D(n71), .Y(n28) );
  AOI22X1 U54 ( .A(data[10]), .B(n77), .C(data_out[10]), .D(n71), .Y(n29) );
  AOI22X1 U56 ( .A(data[11]), .B(n77), .C(data_out[11]), .D(n71), .Y(n30) );
  AOI22X1 U58 ( .A(data[12]), .B(n77), .C(data_out[12]), .D(n71), .Y(n31) );
  AOI22X1 U60 ( .A(data[13]), .B(n77), .C(data_out[13]), .D(n71), .Y(n32) );
  AOI22X1 U62 ( .A(data[14]), .B(n77), .C(data_out[14]), .D(n71), .Y(n33) );
  AOI22X1 U64 ( .A(data[15]), .B(n77), .C(data_out[15]), .D(n71), .Y(n34) );
  AOI22X1 U66 ( .A(data[0]), .B(n77), .C(data_out[0]), .D(n71), .Y(n35) );
  OAI21X1 U71 ( .A(n37), .B(n112), .C(n39), .Y(n114) );
  OAI21X1 U72 ( .A(count_en), .B(n73), .C(n40), .Y(n115) );
  AOI22X1 U73 ( .A(n41), .B(n42), .C(n43), .D(n37), .Y(n40) );
  NAND3X1 U74 ( .A(count_out[2]), .B(count_out[0]), .C(n44), .Y(n37) );
  NOR2X1 U75 ( .A(count_out[3]), .B(count_out[1]), .Y(n44) );
  NOR2X1 U76 ( .A(n39), .B(n45), .Y(n42) );
  OR2X1 U77 ( .A(count_out[0]), .B(count_out[2]), .Y(n45) );
  NOR2X1 U80 ( .A(state[1]), .B(state[0]), .Y(ce) );
  NAND2X1 U81 ( .A(n39), .B(n112), .Y(count_en) );
  NOR2X1 U83 ( .A(n113), .B(state[1]), .Y(n43) );
  NAND2X1 U84 ( .A(state[1]), .B(n113), .Y(n39) );
  AND2X2 U78 ( .A(count_out[1]), .B(count_out[3]), .Y(n41) );
  flex_counter_NUM_CNT_BITS4_2 fmc_counter ( .clk(clk), .n_rst(n_rst), .clear(
        n110), .count_enable(count_en), .rollover_val({1'b1, 1'b1, 1'b0, 1'b0}), .count_out(count_out) );
  DFFSR \state_reg[1]  ( .D(n114), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[1]) );
  DFFSR \data_out_reg[15]  ( .D(n108), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[15]) );
  DFFSR \data_out_reg[14]  ( .D(n107), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[14]) );
  DFFSR \data_out_reg[13]  ( .D(n106), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[13]) );
  DFFSR \data_out_reg[12]  ( .D(n105), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[12]) );
  DFFSR \data_out_reg[11]  ( .D(n104), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[11]) );
  DFFSR \data_out_reg[10]  ( .D(n103), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[10]) );
  DFFSR \data_out_reg[9]  ( .D(n102), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[9]) );
  DFFSR \data_out_reg[8]  ( .D(n101), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[8]) );
  DFFSR \data_out_reg[7]  ( .D(n100), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[7]) );
  DFFSR \data_out_reg[6]  ( .D(n99), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[6]) );
  DFFSR \data_out_reg[5]  ( .D(n98), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[5]) );
  DFFSR \data_out_reg[4]  ( .D(n97), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[4]) );
  DFFSR \data_out_reg[3]  ( .D(n96), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[3]) );
  DFFSR \data_out_reg[2]  ( .D(n95), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[2]) );
  DFFSR \data_out_reg[1]  ( .D(n94), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[1]) );
  DFFSR \data_out_reg[0]  ( .D(n109), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        data_out[0]) );
  OR2X2 U3 ( .A(n113), .B(oe), .Y(n71) );
  INVX2 U39 ( .A(n73), .Y(n75) );
  INVX2 U41 ( .A(ready), .Y(n73) );
  INVX2 U43 ( .A(n71), .Y(n77) );
  INVX2 U45 ( .A(n1), .Y(n78) );
  INVX2 U47 ( .A(n3), .Y(n79) );
  INVX2 U49 ( .A(n4), .Y(n80) );
  INVX2 U51 ( .A(n5), .Y(n81) );
  INVX2 U53 ( .A(n6), .Y(n82) );
  INVX2 U55 ( .A(n7), .Y(n83) );
  INVX2 U57 ( .A(n8), .Y(n84) );
  INVX2 U59 ( .A(n9), .Y(n85) );
  INVX2 U61 ( .A(n10), .Y(n86) );
  INVX2 U63 ( .A(n11), .Y(n87) );
  INVX2 U65 ( .A(n12), .Y(n88) );
  INVX2 U67 ( .A(n13), .Y(n89) );
  INVX2 U68 ( .A(n14), .Y(n90) );
  INVX2 U69 ( .A(n15), .Y(n91) );
  INVX2 U70 ( .A(n16), .Y(n92) );
  INVX2 U79 ( .A(n17), .Y(n93) );
  INVX2 U82 ( .A(n18), .Y(n94) );
  INVX2 U85 ( .A(n21), .Y(n95) );
  INVX2 U102 ( .A(n22), .Y(n96) );
  INVX2 U103 ( .A(n23), .Y(n97) );
  INVX2 U104 ( .A(n24), .Y(n98) );
  INVX2 U105 ( .A(n25), .Y(n99) );
  INVX2 U106 ( .A(n26), .Y(n100) );
  INVX2 U107 ( .A(n27), .Y(n101) );
  INVX2 U108 ( .A(n28), .Y(n102) );
  INVX2 U109 ( .A(n29), .Y(n103) );
  INVX2 U110 ( .A(n30), .Y(n104) );
  INVX2 U111 ( .A(n31), .Y(n105) );
  INVX2 U112 ( .A(n32), .Y(n106) );
  INVX2 U113 ( .A(n33), .Y(n107) );
  INVX2 U114 ( .A(n34), .Y(n108) );
  INVX2 U115 ( .A(n35), .Y(n109) );
  INVX2 U116 ( .A(count_en), .Y(n110) );
  INVX2 U117 ( .A(n43), .Y(n112) );
  INVX2 U118 ( .A(state[0]), .Y(n113) );
  INVX2 U120 ( .A(state[1]), .Y(oe) );
endmodule


module sigmoid_ALU_multiplier_3_DW_mult_tc_2 ( a, b, product );
  input [3:0] a;
  input [4:0] b;
  output [8:0] product;
  wire   n1, n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n29, n30, n31,
         n32, n34, n35, n36, n37, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n51, n52, n53, n54, n55, n56, n57, n59, n62, n63, n64, n65,
         n66, n67, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121;

  XOR2X1 U2 ( .A(n108), .B(n1), .Y(product[6]) );
  OAI21X1 U3 ( .A(n10), .B(n8), .C(n9), .Y(n7) );
  NAND2X1 U4 ( .A(n9), .B(n28), .Y(n1) );
  NOR2X1 U6 ( .A(n46), .B(n34), .Y(n8) );
  NAND2X1 U7 ( .A(n46), .B(n34), .Y(n9) );
  XNOR2X1 U8 ( .A(n15), .B(n2), .Y(product[5]) );
  AOI21X1 U9 ( .A(n107), .B(n11), .C(n12), .Y(n10) );
  NOR2X1 U10 ( .A(n117), .B(n16), .Y(n11) );
  OAI21X1 U11 ( .A(n13), .B(n17), .C(n14), .Y(n12) );
  NAND2X1 U12 ( .A(n14), .B(n29), .Y(n2) );
  NOR2X1 U14 ( .A(n35), .B(n36), .Y(n13) );
  NAND2X1 U15 ( .A(n36), .B(n35), .Y(n14) );
  XOR2X1 U16 ( .A(n18), .B(n3), .Y(product[4]) );
  OAI21X1 U17 ( .A(n118), .B(n109), .C(n17), .Y(n15) );
  NAND2X1 U18 ( .A(n17), .B(n30), .Y(n3) );
  NOR2X1 U20 ( .A(n40), .B(n37), .Y(n16) );
  NAND2X1 U21 ( .A(n37), .B(n40), .Y(n17) );
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
  NAND2X1 U40 ( .A(n57), .B(n94), .Y(n27) );
  HAX1 U47 ( .A(n59), .B(n56), .YC(n44), .YS(n45) );
  OR2X1 U49 ( .A(n65), .B(n62), .Y(n47) );
  NOR2X1 U53 ( .A(n62), .B(n66), .Y(n51) );
  NOR2X1 U54 ( .A(n63), .B(n66), .Y(n52) );
  NOR2X1 U55 ( .A(n64), .B(n66), .Y(n53) );
  NOR2X1 U57 ( .A(n62), .B(n67), .Y(n55) );
  NOR2X1 U58 ( .A(n63), .B(n67), .Y(n56) );
  NOR2X1 U59 ( .A(n64), .B(n67), .Y(n57) );
  INVX2 U75 ( .A(n48), .Y(n105) );
  AND2X2 U76 ( .A(n27), .B(n96), .Y(product[1]) );
  AND2X2 U77 ( .A(b[3]), .B(a[2]), .Y(n92) );
  AND2X2 U78 ( .A(n54), .B(n51), .Y(n93) );
  NOR2X1 U79 ( .A(n63), .B(n99), .Y(n94) );
  AND2X2 U80 ( .A(b[3]), .B(a[0]), .Y(n95) );
  OR2X2 U81 ( .A(n57), .B(n94), .Y(n96) );
  XNOR2X1 U82 ( .A(n44), .B(n97), .Y(n41) );
  XNOR2X1 U83 ( .A(n52), .B(n49), .Y(n97) );
  INVX2 U84 ( .A(n107), .Y(n18) );
  XNOR2X1 U85 ( .A(n103), .B(n51), .Y(n39) );
  OR2X1 U86 ( .A(n98), .B(n65), .Y(n46) );
  NOR2X1 U87 ( .A(n64), .B(n99), .Y(product[0]) );
  NOR2X1 U88 ( .A(n62), .B(n99), .Y(n59) );
  NAND2X1 U89 ( .A(n100), .B(n101), .Y(n42) );
  INVX2 U90 ( .A(a[0]), .Y(n99) );
  INVX2 U91 ( .A(b[3]), .Y(n98) );
  NAND2X1 U92 ( .A(b[3]), .B(a[0]), .Y(n102) );
  OR2X1 U93 ( .A(n67), .B(n98), .Y(n103) );
  INVX2 U94 ( .A(n103), .Y(n54) );
  INVX2 U95 ( .A(n55), .Y(n100) );
  NAND2X1 U96 ( .A(b[3]), .B(a[0]), .Y(n101) );
  MUX2X1 U97 ( .B(n102), .A(n95), .S(n55), .Y(n104) );
  INVX2 U98 ( .A(n104), .Y(n43) );
  XOR2X1 U99 ( .A(n42), .B(n105), .Y(n106) );
  XNOR2X1 U100 ( .A(n106), .B(n39), .Y(n37) );
  OAI21X1 U101 ( .A(n20), .B(n22), .C(n21), .Y(n107) );
  NAND2X1 U102 ( .A(a[3]), .B(b[0]), .Y(n49) );
  INVX2 U103 ( .A(n23), .Y(n22) );
  INVX1 U104 ( .A(n24), .Y(n32) );
  AOI21X1 U105 ( .A(n107), .B(n11), .C(n12), .Y(n108) );
  INVX2 U106 ( .A(n30), .Y(n109) );
  INVX2 U107 ( .A(n16), .Y(n30) );
  NAND2X1 U108 ( .A(n42), .B(n39), .Y(n110) );
  NAND2X1 U109 ( .A(n39), .B(n48), .Y(n111) );
  NAND2X1 U110 ( .A(n42), .B(n48), .Y(n112) );
  NAND3X1 U111 ( .A(n111), .B(n110), .C(n112), .Y(n36) );
  OR2X2 U112 ( .A(n65), .B(n63), .Y(n48) );
  XOR2X1 U113 ( .A(n92), .B(n47), .Y(n113) );
  XOR2X1 U114 ( .A(n93), .B(n113), .Y(n35) );
  NAND2X1 U115 ( .A(n93), .B(n92), .Y(n114) );
  NAND2X1 U116 ( .A(n93), .B(n47), .Y(n115) );
  NAND2X1 U117 ( .A(n92), .B(n47), .Y(n116) );
  NAND3X1 U118 ( .A(n115), .B(n114), .C(n116), .Y(n34) );
  NOR2X1 U119 ( .A(n36), .B(n35), .Y(n117) );
  INVX2 U120 ( .A(n19), .Y(n118) );
  NAND2X1 U121 ( .A(n44), .B(n52), .Y(n119) );
  NAND2X1 U122 ( .A(n44), .B(n49), .Y(n120) );
  NAND2X1 U123 ( .A(n52), .B(n49), .Y(n121) );
  NAND3X1 U124 ( .A(n120), .B(n119), .C(n121), .Y(n40) );
  INVX1 U125 ( .A(n20), .Y(n31) );
  INVX1 U126 ( .A(n117), .Y(n29) );
  INVX2 U127 ( .A(n7), .Y(product[7]) );
  INVX2 U128 ( .A(a[1]), .Y(n67) );
  INVX2 U129 ( .A(a[2]), .Y(n66) );
  INVX2 U130 ( .A(a[3]), .Y(n65) );
  INVX2 U131 ( .A(b[0]), .Y(n64) );
  INVX2 U132 ( .A(b[1]), .Y(n63) );
  INVX2 U133 ( .A(b[2]), .Y(n62) );
  INVX2 U134 ( .A(n8), .Y(n28) );
endmodule


module sigmoid_ALU_multiplier_3 ( signval, unsignval, out );
  input [3:0] signval;
  input [3:0] unsignval;
  output [7:0] out;

  wire   SYNOPSYS_UNCONNECTED__0;

  sigmoid_ALU_multiplier_3_DW_mult_tc_2 mult_1488 ( .a(signval), .b({1'b0, 
        unsignval}), .product({SYNOPSYS_UNCONNECTED__0, out}) );
endmodule


module sigmoid_ALU_multiplier_2_DW_mult_tc_2 ( a, b, product );
  input [3:0] a;
  input [4:0] b;
  output [8:0] product;
  wire   n1, n2, n3, n4, n5, n7, n8, n9, n10, n12, n14, n15, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n32, n34, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n52, n56, n58, n59, n60, n61,
         n63, n64, n65, n68, net20387, net20394, net20412, net20415, net20414,
         net20413, net20393, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132;

  XOR2X1 U2 ( .A(net20412), .B(n1), .Y(product[6]) );
  OAI21X1 U3 ( .A(n10), .B(n8), .C(n9), .Y(n7) );
  NAND2X1 U4 ( .A(n9), .B(n28), .Y(n1) );
  NOR2X1 U6 ( .A(n46), .B(n34), .Y(n8) );
  NAND2X1 U7 ( .A(n46), .B(n34), .Y(n9) );
  XNOR2X1 U8 ( .A(n15), .B(n2), .Y(product[5]) );
  OAI21X1 U11 ( .A(net20393), .B(n17), .C(n130), .Y(n12) );
  NAND2X1 U12 ( .A(n14), .B(n29), .Y(n2) );
  XOR2X1 U16 ( .A(n18), .B(n3), .Y(product[4]) );
  OAI21X1 U17 ( .A(net20387), .B(net20394), .C(n100), .Y(n15) );
  NAND2X1 U18 ( .A(n100), .B(n30), .Y(n3) );
  XOR2X1 U22 ( .A(n4), .B(n22), .Y(product[3]) );
  OAI21X1 U24 ( .A(n101), .B(n22), .C(n21), .Y(n19) );
  NAND2X1 U25 ( .A(n21), .B(n31), .Y(n4) );
  NOR2X1 U27 ( .A(n43), .B(n41), .Y(n20) );
  NAND2X1 U28 ( .A(n43), .B(n41), .Y(n21) );
  XOR2X1 U29 ( .A(n5), .B(n27), .Y(product[2]) );
  OAI21X1 U31 ( .A(n24), .B(n27), .C(n25), .Y(n23) );
  NAND2X1 U32 ( .A(n25), .B(n32), .Y(n5) );
  NOR2X1 U34 ( .A(n98), .B(n45), .Y(n24) );
  NAND2X1 U35 ( .A(n98), .B(n45), .Y(n25) );
  NAND2X1 U40 ( .A(n97), .B(n60), .Y(n27) );
  XNOR2X1 U45 ( .A(n94), .B(n58), .Y(n43) );
  OR2X2 U46 ( .A(n94), .B(n58), .Y(n42) );
  HAX1 U47 ( .A(n59), .B(n56), .YC(n44), .YS(n45) );
  OR2X1 U48 ( .A(n65), .B(n61), .Y(n46) );
  OR2X1 U50 ( .A(n65), .B(n63), .Y(n48) );
  OR2X1 U51 ( .A(n65), .B(n64), .Y(n49) );
  NOR2X1 U60 ( .A(n68), .B(n61), .Y(n58) );
  NOR2X1 U62 ( .A(n63), .B(n68), .Y(n60) );
  NOR2X1 U63 ( .A(n64), .B(n68), .Y(product[0]) );
  AOI21X1 U9 ( .A(n96), .B(n102), .C(n12), .Y(n10) );
  BUFX2 U75 ( .A(n44), .Y(n103) );
  AND2X2 U76 ( .A(n27), .B(n99), .Y(product[1]) );
  XNOR2X1 U77 ( .A(n114), .B(n95), .Y(n92) );
  AND2X2 U78 ( .A(a[2]), .B(b[3]), .Y(n93) );
  AND2X2 U79 ( .A(a[1]), .B(b[2]), .Y(n94) );
  AND2X2 U80 ( .A(b[3]), .B(a[1]), .Y(n95) );
  AND2X2 U81 ( .A(n125), .B(n30), .Y(n96) );
  NOR2X1 U82 ( .A(n64), .B(n104), .Y(n97) );
  NOR2X1 U83 ( .A(n64), .B(n113), .Y(n98) );
  OR2X2 U84 ( .A(n97), .B(n60), .Y(n99) );
  AND2X2 U85 ( .A(a[0]), .B(b[2]), .Y(n59) );
  INVX1 U86 ( .A(n107), .Y(n112) );
  BUFX2 U87 ( .A(n17), .Y(n100) );
  NOR2X1 U88 ( .A(n43), .B(n41), .Y(n101) );
  XOR2X1 U89 ( .A(net20413), .B(n115), .Y(n121) );
  OAI21X1 U90 ( .A(n20), .B(n22), .C(n21), .Y(n102) );
  INVX1 U91 ( .A(n30), .Y(net20394) );
  INVX2 U92 ( .A(b[3]), .Y(n61) );
  NOR2X1 U93 ( .A(n63), .B(n104), .Y(n56) );
  NAND2X1 U94 ( .A(a[3]), .B(b[2]), .Y(n47) );
  NAND2X1 U95 ( .A(n93), .B(n105), .Y(net20414) );
  NAND2X1 U96 ( .A(n47), .B(n105), .Y(net20415) );
  NAND2X1 U97 ( .A(n106), .B(n107), .Y(n17) );
  OAI21X1 U98 ( .A(n108), .B(n109), .C(n110), .Y(n107) );
  NAND2X1 U99 ( .A(n111), .B(n112), .Y(n30) );
  INVX2 U100 ( .A(a[2]), .Y(n113) );
  NAND2X1 U101 ( .A(a[2]), .B(b[2]), .Y(n114) );
  INVX2 U102 ( .A(a[1]), .Y(n104) );
  NAND2X1 U103 ( .A(n116), .B(n117), .Y(n115) );
  INVX2 U104 ( .A(n42), .Y(n118) );
  NAND2X1 U105 ( .A(a[2]), .B(b[1]), .Y(n109) );
  NAND2X1 U106 ( .A(n119), .B(n120), .Y(n130) );
  NAND2X1 U107 ( .A(n119), .B(n120), .Y(n14) );
  XNOR2X1 U108 ( .A(n122), .B(n118), .Y(n111) );
  AND2X2 U109 ( .A(a[1]), .B(b[3]), .Y(n116) );
  AOI21X1 U110 ( .A(n42), .B(n48), .C(n124), .Y(n123) );
  INVX2 U111 ( .A(n109), .Y(n52) );
  INVX2 U112 ( .A(n114), .Y(n117) );
  INVX2 U113 ( .A(n115), .Y(n105) );
  NAND3X1 U114 ( .A(n121), .B(n126), .C(n123), .Y(n125) );
  INVX2 U115 ( .A(n125), .Y(net20393) );
  NAND2X1 U116 ( .A(n42), .B(n92), .Y(n126) );
  NAND3X1 U117 ( .A(n127), .B(n128), .C(n129), .Y(n119) );
  OAI21X1 U118 ( .A(n103), .B(n52), .C(n49), .Y(n110) );
  NAND2X1 U119 ( .A(n92), .B(n48), .Y(n129) );
  INVX2 U120 ( .A(n129), .Y(n124) );
  NAND2X1 U121 ( .A(n42), .B(n92), .Y(n128) );
  NAND2X1 U122 ( .A(n42), .B(n48), .Y(n127) );
  INVX2 U123 ( .A(n121), .Y(n120) );
  INVX2 U124 ( .A(n111), .Y(n106) );
  XNOR2X1 U125 ( .A(n92), .B(n48), .Y(n122) );
  INVX1 U126 ( .A(n103), .Y(n108) );
  AOI21X1 U127 ( .A(n96), .B(n102), .C(n12), .Y(net20412) );
  INVX1 U128 ( .A(net20393), .Y(n29) );
  XOR2X1 U129 ( .A(n93), .B(n47), .Y(net20413) );
  NAND2X1 U130 ( .A(n93), .B(n47), .Y(n131) );
  NAND3X1 U131 ( .A(net20415), .B(net20414), .C(n131), .Y(n34) );
  INVX2 U132 ( .A(n19), .Y(net20387) );
  INVX1 U133 ( .A(n102), .Y(n18) );
  XOR2X1 U134 ( .A(n52), .B(n49), .Y(n132) );
  XOR2X1 U135 ( .A(n103), .B(n132), .Y(n41) );
  INVX1 U136 ( .A(n101), .Y(n31) );
  INVX2 U137 ( .A(n7), .Y(product[7]) );
  INVX2 U138 ( .A(a[0]), .Y(n68) );
  INVX2 U139 ( .A(a[3]), .Y(n65) );
  INVX2 U140 ( .A(b[0]), .Y(n64) );
  INVX2 U141 ( .A(b[1]), .Y(n63) );
  INVX2 U142 ( .A(n24), .Y(n32) );
  INVX2 U143 ( .A(n8), .Y(n28) );
  INVX2 U144 ( .A(n23), .Y(n22) );
endmodule


module sigmoid_ALU_multiplier_2 ( signval, unsignval, out );
  input [3:0] signval;
  input [3:0] unsignval;
  output [7:0] out;

  wire   SYNOPSYS_UNCONNECTED__0;

  sigmoid_ALU_multiplier_2_DW_mult_tc_2 mult_1488 ( .a(signval), .b({1'b0, 
        unsignval}), .product({SYNOPSYS_UNCONNECTED__0, out}) );
endmodule


module sigmoid_ALU_multiplier_1_DW_mult_tc_1 ( a, b, product );
  input [3:0] a;
  input [4:0] b;
  output [8:0] product;
  wire   n2, n3, n4, n5, n7, n8, n9, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n32, n34, n35,
         n36, n37, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n53, n56,
         n58, n60, n63, n64, n65, n68, net20462, net20461, net20460, net20478,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130;

  OAI21X1 U3 ( .A(n112), .B(n8), .C(n9), .Y(n7) );
  NOR2X1 U6 ( .A(n46), .B(n34), .Y(n8) );
  NAND2X1 U7 ( .A(n46), .B(n34), .Y(n9) );
  XNOR2X1 U8 ( .A(n15), .B(n2), .Y(product[5]) );
  OAI21X1 U11 ( .A(n13), .B(n17), .C(n14), .Y(n12) );
  NAND2X1 U12 ( .A(n14), .B(n29), .Y(n2) );
  NOR2X1 U14 ( .A(n35), .B(n36), .Y(n13) );
  NAND2X1 U15 ( .A(n115), .B(n114), .Y(n14) );
  XOR2X1 U16 ( .A(n3), .B(n18), .Y(product[4]) );
  OAI21X1 U17 ( .A(n125), .B(n123), .C(n17), .Y(n15) );
  NAND2X1 U18 ( .A(n17), .B(n30), .Y(n3) );
  NOR2X1 U20 ( .A(n40), .B(n37), .Y(n16) );
  NAND2X1 U21 ( .A(n37), .B(n40), .Y(n17) );
  XOR2X1 U22 ( .A(n4), .B(n22), .Y(product[3]) );
  OAI21X1 U24 ( .A(n20), .B(n22), .C(n21), .Y(n19) );
  NAND2X1 U25 ( .A(n21), .B(n31), .Y(n4) );
  NOR2X1 U27 ( .A(n43), .B(n41), .Y(n20) );
  NAND2X1 U28 ( .A(n43), .B(n41), .Y(n21) );
  XOR2X1 U29 ( .A(n5), .B(n27), .Y(product[2]) );
  OAI21X1 U31 ( .A(n24), .B(n27), .C(n25), .Y(n23) );
  NAND2X1 U32 ( .A(n25), .B(n32), .Y(n5) );
  NOR2X1 U34 ( .A(n98), .B(n45), .Y(n24) );
  NAND2X1 U35 ( .A(n45), .B(n98), .Y(n25) );
  NAND2X1 U40 ( .A(n99), .B(n60), .Y(n27) );
  XNOR2X1 U45 ( .A(n58), .B(n96), .Y(n43) );
  OR2X2 U46 ( .A(n58), .B(n96), .Y(n42) );
  HAX1 U47 ( .A(n53), .B(n56), .YC(n44), .YS(n45) );
  NOR2X1 U62 ( .A(n63), .B(n109), .Y(n60) );
  NOR2X1 U63 ( .A(n110), .B(n109), .Y(product[0]) );
  AND2X2 U75 ( .A(n27), .B(n100), .Y(product[1]) );
  AND2X2 U76 ( .A(n104), .B(n105), .Y(n92) );
  AND2X2 U77 ( .A(b[3]), .B(a[2]), .Y(n93) );
  XOR2X1 U78 ( .A(n106), .B(n108), .Y(n94) );
  AND2X2 U79 ( .A(a[1]), .B(b[2]), .Y(n95) );
  AND2X2 U80 ( .A(b[1]), .B(a[2]), .Y(n96) );
  INVX2 U81 ( .A(n23), .Y(n22) );
  AND2X2 U82 ( .A(n9), .B(n28), .Y(n97) );
  NOR2X1 U83 ( .A(n68), .B(n107), .Y(n98) );
  NOR2X1 U84 ( .A(n110), .B(n101), .Y(n99) );
  OR2X2 U85 ( .A(n99), .B(n60), .Y(n100) );
  NOR2X1 U86 ( .A(n63), .B(n101), .Y(n56) );
  OR2X1 U87 ( .A(n102), .B(n65), .Y(n46) );
  NOR2X1 U88 ( .A(n64), .B(n103), .Y(n53) );
  NAND2X1 U89 ( .A(a[3]), .B(b[2]), .Y(n47) );
  NAND2X1 U90 ( .A(n94), .B(net20478), .Y(net20461) );
  NAND2X1 U91 ( .A(n94), .B(n48), .Y(net20462) );
  NAND2X1 U92 ( .A(a[1]), .B(b[3]), .Y(n106) );
  INVX2 U93 ( .A(b[2]), .Y(n107) );
  INVX2 U94 ( .A(a[2]), .Y(n103) );
  INVX2 U95 ( .A(b[3]), .Y(n102) );
  INVX2 U96 ( .A(a[1]), .Y(n101) );
  NAND2X1 U97 ( .A(a[2]), .B(b[2]), .Y(n108) );
  INVX2 U98 ( .A(n108), .Y(n104) );
  INVX2 U99 ( .A(n106), .Y(n105) );
  XOR2X1 U100 ( .A(net20460), .B(n94), .Y(n37) );
  BUFX2 U101 ( .A(n68), .Y(n109) );
  NOR2X1 U102 ( .A(n68), .B(n102), .Y(n58) );
  BUFX2 U103 ( .A(n64), .Y(n110) );
  OAI21X1 U104 ( .A(n20), .B(n22), .C(n21), .Y(n111) );
  OR2X2 U105 ( .A(n65), .B(n64), .Y(n49) );
  AOI21X1 U106 ( .A(n111), .B(n122), .C(n12), .Y(n112) );
  OR2X1 U107 ( .A(n121), .B(n97), .Y(n113) );
  XOR2X1 U108 ( .A(n92), .B(n117), .Y(n114) );
  BUFX2 U109 ( .A(n42), .Y(net20478) );
  NAND3X1 U110 ( .A(net20462), .B(n116), .C(net20461), .Y(n115) );
  XOR2X1 U111 ( .A(n42), .B(n48), .Y(net20460) );
  NAND2X1 U112 ( .A(net20478), .B(n48), .Y(n116) );
  NAND3X1 U113 ( .A(net20462), .B(n116), .C(net20461), .Y(n36) );
  OR2X2 U114 ( .A(n65), .B(n63), .Y(n48) );
  XOR2X1 U115 ( .A(n47), .B(n93), .Y(n117) );
  XOR2X1 U116 ( .A(n92), .B(n117), .Y(n35) );
  NAND2X1 U117 ( .A(n92), .B(n47), .Y(n118) );
  NAND2X1 U118 ( .A(n92), .B(n93), .Y(n119) );
  NAND2X1 U119 ( .A(n47), .B(n93), .Y(n120) );
  NAND3X1 U120 ( .A(n119), .B(n118), .C(n120), .Y(n34) );
  AOI21X1 U121 ( .A(n111), .B(n122), .C(n12), .Y(n121) );
  NOR2X1 U122 ( .A(n130), .B(n16), .Y(n122) );
  BUFX2 U123 ( .A(n16), .Y(n123) );
  NAND2X1 U124 ( .A(n112), .B(n97), .Y(n124) );
  NAND2X1 U125 ( .A(n124), .B(n113), .Y(product[6]) );
  INVX1 U126 ( .A(n123), .Y(n30) );
  INVX2 U127 ( .A(n19), .Y(n125) );
  INVX1 U128 ( .A(n19), .Y(n18) );
  XOR2X1 U129 ( .A(n95), .B(n49), .Y(n126) );
  XOR2X1 U130 ( .A(n44), .B(n126), .Y(n41) );
  NAND2X1 U131 ( .A(n44), .B(n95), .Y(n127) );
  NAND2X1 U132 ( .A(n49), .B(n44), .Y(n128) );
  NAND2X1 U133 ( .A(n95), .B(n49), .Y(n129) );
  NAND3X1 U134 ( .A(n128), .B(n127), .C(n129), .Y(n40) );
  NOR2X1 U135 ( .A(n115), .B(n114), .Y(n130) );
  INVX1 U136 ( .A(n13), .Y(n29) );
  INVX1 U137 ( .A(n20), .Y(n31) );
  INVX2 U138 ( .A(n7), .Y(product[7]) );
  INVX2 U139 ( .A(a[0]), .Y(n68) );
  INVX2 U140 ( .A(a[3]), .Y(n65) );
  INVX2 U141 ( .A(b[0]), .Y(n64) );
  INVX2 U142 ( .A(b[1]), .Y(n63) );
  INVX2 U143 ( .A(n24), .Y(n32) );
  INVX2 U144 ( .A(n8), .Y(n28) );
endmodule


module sigmoid_ALU_multiplier_1 ( signval, unsignval, out );
  input [3:0] signval;
  input [3:0] unsignval;
  output [7:0] out;

  wire   SYNOPSYS_UNCONNECTED__0;

  sigmoid_ALU_multiplier_1_DW_mult_tc_1 mult_1488 ( .a(signval), .b({1'b0, 
        unsignval}), .product({SYNOPSYS_UNCONNECTED__0, out}) );
endmodule


module sigmoid_ALU_multiplier_0_DW_mult_tc_1 ( a, b, product );
  input [3:0] a;
  input [4:0] b;
  output [8:0] product;
  wire   n2, n3, n4, n5, n6, n7, n15, n16, n18, n19, n21, n24, n25, n27, n30,
         n31, n32, n34, n37, n39, n40, n46, n47, n48, n51, n54, n57, n65,
         net18173, net18196, net20366, net20365, net20364, net20448, net20457,
         net20455, net20467, net20466, net20465, net20481, net20726, net20906,
         net20940, net20950, net20486, net18172, n9, n8, n29, n28, n1,
         net20737, n36, n35, n23, n22, n17, n14, n13, n12, n11, n10, net20883,
         net20878, n67, n64, n62, n56, n55, n53, n49, n45, n44, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115;

  XNOR2X1 U8 ( .A(n15), .B(n2), .Y(product[5]) );
  XOR2X1 U16 ( .A(n18), .B(n3), .Y(product[4]) );
  OAI21X1 U17 ( .A(net18173), .B(net18196), .C(net20481), .Y(n15) );
  NAND2X1 U18 ( .A(n30), .B(net20481), .Y(n3) );
  NOR2X1 U20 ( .A(n40), .B(n37), .Y(n16) );
  NAND2X1 U25 ( .A(n113), .B(n31), .Y(n4) );
  XOR2X1 U29 ( .A(n5), .B(n27), .Y(product[2]) );
  NAND2X1 U32 ( .A(n25), .B(n32), .Y(n5) );
  NAND2X1 U37 ( .A(n27), .B(n97), .Y(n6) );
  NAND2X1 U40 ( .A(n57), .B(n94), .Y(n27) );
  NOR2X1 U6 ( .A(n46), .B(n34), .Y(n8) );
  NAND2X1 U7 ( .A(n46), .B(n34), .Y(n9) );
  NAND2X1 U4 ( .A(n9), .B(n28), .Y(n1) );
  NAND2X1 U12 ( .A(n14), .B(n29), .Y(n2) );
  NAND2X1 U15 ( .A(n35), .B(net20486), .Y(n14) );
  NAND2X1 U21 ( .A(n37), .B(n40), .Y(n17) );
  OAI21X1 U31 ( .A(n24), .B(n27), .C(n25), .Y(n23) );
  OAI21X1 U24 ( .A(net20940), .B(n22), .C(n21), .Y(n19) );
  XOR2X1 U22 ( .A(n4), .B(n22), .Y(product[3]) );
  NOR2X1 U10 ( .A(net18172), .B(n16), .Y(n11) );
  NOR2X1 U14 ( .A(n35), .B(n36), .Y(n13) );
  OAI21X1 U11 ( .A(n13), .B(n17), .C(n14), .Y(n12) );
  OAI21X1 U3 ( .A(n10), .B(n8), .C(n9), .Y(n7) );
  XOR2X1 U2 ( .A(n10), .B(n1), .Y(product[6]) );
  AOI21X1 U9 ( .A(net20737), .B(n11), .C(n12), .Y(n10) );
  NOR2X1 U57 ( .A(n67), .B(n62), .Y(n55) );
  NOR2X1 U59 ( .A(n112), .B(n67), .Y(n57) );
  NAND2X1 U35 ( .A(n96), .B(n45), .Y(n25) );
  NOR2X1 U34 ( .A(n96), .B(n45), .Y(n24) );
  HAX1 U47 ( .A(n53), .B(n56), .YC(n44), .YS(n45) );
  INVX4 U75 ( .A(n23), .Y(n22) );
  XOR2X1 U76 ( .A(net20448), .B(n91), .Y(n35) );
  XNOR2X1 U77 ( .A(n92), .B(n47), .Y(n91) );
  AND2X2 U78 ( .A(a[2]), .B(b[3]), .Y(n92) );
  AND2X2 U79 ( .A(a[0]), .B(b[3]), .Y(n93) );
  AND2X2 U80 ( .A(b[1]), .B(a[0]), .Y(n94) );
  AND2X2 U81 ( .A(n106), .B(n105), .Y(n95) );
  NOR2X1 U82 ( .A(n62), .B(n99), .Y(n96) );
  OR2X2 U83 ( .A(n57), .B(n94), .Y(n97) );
  INVX2 U84 ( .A(net20448), .Y(n98) );
  NAND2X1 U85 ( .A(a[3]), .B(b[2]), .Y(n47) );
  INVX2 U86 ( .A(b[1]), .Y(net20883) );
  NAND2X1 U87 ( .A(b[1]), .B(a[3]), .Y(n48) );
  INVX2 U88 ( .A(a[2]), .Y(net20878) );
  NAND2X1 U89 ( .A(n110), .B(n49), .Y(net20366) );
  NAND2X1 U90 ( .A(n110), .B(n109), .Y(net20364) );
  NAND2X1 U91 ( .A(n49), .B(n109), .Y(net20365) );
  NOR2X1 U92 ( .A(n112), .B(n99), .Y(product[0]) );
  OR2X1 U93 ( .A(n100), .B(n65), .Y(n46) );
  NAND2X1 U94 ( .A(n101), .B(n102), .Y(net20950) );
  NAND2X1 U95 ( .A(n103), .B(n104), .Y(n21) );
  AOI21X1 U96 ( .A(n113), .B(n22), .C(n95), .Y(n111) );
  NAND2X1 U97 ( .A(n105), .B(n106), .Y(n31) );
  INVX2 U98 ( .A(a[0]), .Y(n99) );
  INVX2 U99 ( .A(b[3]), .Y(n100) );
  AOI21X1 U100 ( .A(n21), .B(n22), .C(n95), .Y(net20737) );
  MUX2X1 U101 ( .B(n107), .A(n108), .S(n44), .Y(n106) );
  XOR2X1 U102 ( .A(n101), .B(n93), .Y(n104) );
  XOR2X1 U103 ( .A(n55), .B(n49), .Y(n107) );
  XNOR2X1 U104 ( .A(n55), .B(n49), .Y(n108) );
  INVX2 U105 ( .A(n31), .Y(net20940) );
  NAND2X1 U106 ( .A(b[1]), .B(a[2]), .Y(n101) );
  NAND2X1 U107 ( .A(b[3]), .B(a[0]), .Y(n102) );
  INVX2 U108 ( .A(n104), .Y(n105) );
  INVX2 U109 ( .A(n106), .Y(n103) );
  NAND2X1 U110 ( .A(n103), .B(n104), .Y(n113) );
  BUFX2 U111 ( .A(n44), .Y(n109) );
  NOR2X1 U112 ( .A(n67), .B(n100), .Y(n54) );
  BUFX2 U113 ( .A(n55), .Y(n110) );
  BUFX2 U114 ( .A(n64), .Y(n112) );
  NOR2X1 U115 ( .A(n67), .B(net20883), .Y(n56) );
  INVX2 U116 ( .A(a[1]), .Y(n67) );
  NOR2X1 U117 ( .A(n64), .B(net20878), .Y(n53) );
  OR2X2 U118 ( .A(n62), .B(net20878), .Y(net20906) );
  INVX2 U119 ( .A(b[0]), .Y(n64) );
  INVX2 U120 ( .A(b[2]), .Y(n62) );
  NAND2X1 U121 ( .A(a[3]), .B(b[0]), .Y(n49) );
  NAND3X1 U122 ( .A(net20467), .B(net20466), .C(net20465), .Y(n36) );
  INVX1 U123 ( .A(n111), .Y(n18) );
  BUFX2 U124 ( .A(n17), .Y(net20481) );
  NOR2X1 U125 ( .A(n35), .B(net20486), .Y(net18172) );
  NAND2X1 U126 ( .A(n92), .B(n47), .Y(net20457) );
  NAND2X1 U127 ( .A(n98), .B(n92), .Y(net20455) );
  INVX2 U128 ( .A(n8), .Y(n28) );
  NAND3X1 U129 ( .A(net20466), .B(net20467), .C(net20465), .Y(net20486) );
  INVX1 U130 ( .A(net18172), .Y(n29) );
  INVX2 U131 ( .A(n16), .Y(n30) );
  XNOR2X1 U132 ( .A(net20906), .B(n54), .Y(n39) );
  INVX1 U133 ( .A(n24), .Y(n32) );
  INVX2 U134 ( .A(n48), .Y(net20726) );
  INVX2 U135 ( .A(net20906), .Y(n51) );
  INVX2 U136 ( .A(n7), .Y(product[7]) );
  XOR2X1 U137 ( .A(net20950), .B(net20726), .Y(n114) );
  XNOR2X1 U138 ( .A(n39), .B(n114), .Y(n37) );
  NAND2X1 U139 ( .A(net20950), .B(n39), .Y(net20465) );
  NAND2X1 U140 ( .A(n39), .B(n48), .Y(net20466) );
  NAND2X1 U141 ( .A(net20950), .B(n48), .Y(net20467) );
  NAND2X1 U142 ( .A(n98), .B(n47), .Y(n115) );
  NAND3X1 U143 ( .A(n115), .B(net20455), .C(net20457), .Y(n34) );
  NAND2X1 U144 ( .A(n51), .B(n54), .Y(net20448) );
  NAND3X1 U145 ( .A(net20365), .B(net20364), .C(net20366), .Y(n40) );
  INVX2 U146 ( .A(n30), .Y(net18196) );
  INVX2 U147 ( .A(n19), .Y(net18173) );
  INVX2 U148 ( .A(n6), .Y(product[1]) );
  INVX2 U149 ( .A(a[3]), .Y(n65) );
endmodule


module sigmoid_ALU_multiplier_0 ( signval, unsignval, out );
  input [3:0] signval;
  input [3:0] unsignval;
  output [7:0] out;

  wire   SYNOPSYS_UNCONNECTED__0;

  sigmoid_ALU_multiplier_0_DW_mult_tc_1 mult_1488 ( .a(signval), .b({1'b0, 
        unsignval}), .product({SYNOPSYS_UNCONNECTED__0, out}) );
endmodule


module sigmoid_ALU_4_way_adder_DW01_add_5 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n12, n13, n15, n16, n17, n18, n19,
         n20, n21, n23, n24, n25, n26, n27, n29, n31, n32, n33, n34, n35, n37,
         n39, n40, n41, n42, n43, n45, n47, n48, n50, n52, n53, n54, n56, n58,
         n97, n98, n99, n100, n101, n102, n103, n104;

  XOR2X1 U1 ( .A(n13), .B(n1), .Y(SUM[9]) );
  NAND2X1 U2 ( .A(n12), .B(n100), .Y(n1) );
  NAND2X1 U5 ( .A(A[9]), .B(B[8]), .Y(n12) );
  XNOR2X1 U6 ( .A(n99), .B(n2), .Y(SUM[8]) );
  AOI21X1 U7 ( .A(n52), .B(n18), .C(n15), .Y(n13) );
  NAND2X1 U10 ( .A(n17), .B(n52), .Y(n2) );
  NOR2X1 U12 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2X1 U13 ( .A(B[8]), .B(A[8]), .Y(n17) );
  XOR2X1 U14 ( .A(n21), .B(n3), .Y(SUM[7]) );
  OAI21X1 U15 ( .A(n21), .B(n19), .C(n20), .Y(n18) );
  NAND2X1 U16 ( .A(n20), .B(n53), .Y(n3) );
  NOR2X1 U18 ( .A(B[7]), .B(A[7]), .Y(n19) );
  NAND2X1 U19 ( .A(B[7]), .B(A[7]), .Y(n20) );
  XNOR2X1 U20 ( .A(n4), .B(n26), .Y(SUM[6]) );
  AOI21X1 U21 ( .A(n26), .B(n54), .C(n23), .Y(n21) );
  NAND2X1 U24 ( .A(n25), .B(n54), .Y(n4) );
  NOR2X1 U26 ( .A(B[6]), .B(A[6]), .Y(n24) );
  NAND2X1 U27 ( .A(B[6]), .B(A[6]), .Y(n25) );
  XNOR2X1 U28 ( .A(n5), .B(n32), .Y(SUM[5]) );
  AOI21X1 U30 ( .A(n32), .B(n97), .C(n29), .Y(n27) );
  NAND2X1 U33 ( .A(n31), .B(n97), .Y(n5) );
  NAND2X1 U36 ( .A(B[5]), .B(A[5]), .Y(n31) );
  XOR2X1 U37 ( .A(n6), .B(n104), .Y(SUM[4]) );
  OAI21X1 U38 ( .A(n33), .B(n35), .C(n34), .Y(n32) );
  NAND2X1 U39 ( .A(n34), .B(n56), .Y(n6) );
  NOR2X1 U41 ( .A(B[4]), .B(A[4]), .Y(n33) );
  NAND2X1 U42 ( .A(B[4]), .B(A[4]), .Y(n34) );
  XNOR2X1 U43 ( .A(n7), .B(n40), .Y(SUM[3]) );
  AOI21X1 U44 ( .A(n40), .B(n102), .C(n37), .Y(n35) );
  NAND2X1 U47 ( .A(n39), .B(n102), .Y(n7) );
  NAND2X1 U50 ( .A(B[3]), .B(A[3]), .Y(n39) );
  XOR2X1 U51 ( .A(n8), .B(n43), .Y(SUM[2]) );
  OAI21X1 U52 ( .A(n41), .B(n43), .C(n42), .Y(n40) );
  NAND2X1 U53 ( .A(n42), .B(n58), .Y(n8) );
  NOR2X1 U55 ( .A(B[2]), .B(A[2]), .Y(n41) );
  NAND2X1 U56 ( .A(B[2]), .B(A[2]), .Y(n42) );
  XNOR2X1 U57 ( .A(n9), .B(n48), .Y(SUM[1]) );
  AOI21X1 U58 ( .A(n48), .B(n101), .C(n45), .Y(n43) );
  NAND2X1 U61 ( .A(n47), .B(n101), .Y(n9) );
  NAND2X1 U64 ( .A(A[1]), .B(B[1]), .Y(n47) );
  NAND2X1 U70 ( .A(A[0]), .B(B[0]), .Y(n50) );
  AND2X2 U74 ( .A(n50), .B(n98), .Y(SUM[0]) );
  OR2X2 U75 ( .A(B[5]), .B(A[5]), .Y(n97) );
  OR2X2 U76 ( .A(A[0]), .B(B[0]), .Y(n98) );
  INVX1 U77 ( .A(n19), .Y(n53) );
  BUFX2 U78 ( .A(n18), .Y(n99) );
  OR2X2 U79 ( .A(B[3]), .B(A[3]), .Y(n102) );
  OR2X1 U80 ( .A(A[9]), .B(B[8]), .Y(n100) );
  OR2X1 U81 ( .A(A[1]), .B(B[1]), .Y(n101) );
  INVX1 U82 ( .A(n35), .Y(n103) );
  INVX2 U83 ( .A(n103), .Y(n104) );
  INVX2 U84 ( .A(n41), .Y(n58) );
  INVX2 U85 ( .A(n33), .Y(n56) );
  INVX2 U86 ( .A(n50), .Y(n48) );
  INVX2 U87 ( .A(n47), .Y(n45) );
  INVX2 U88 ( .A(n39), .Y(n37) );
  INVX2 U89 ( .A(n31), .Y(n29) );
  INVX2 U90 ( .A(n27), .Y(n26) );
  INVX2 U91 ( .A(n25), .Y(n23) );
  INVX2 U92 ( .A(n24), .Y(n54) );
  INVX2 U93 ( .A(n17), .Y(n15) );
  INVX2 U94 ( .A(n16), .Y(n52) );
endmodule


module sigmoid_ALU_4_way_adder_DW01_add_8 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n26, n28, n29, n30, n31, n32,
         n33, n34, n35, n37, n38, n39, n40, n41, n43, n44, n46, n47, n79, n80,
         n81;

  XOR2X1 U2 ( .A(n12), .B(n1), .Y(SUM[7]) );
  OAI21X1 U3 ( .A(n12), .B(n10), .C(n11), .Y(n9) );
  NAND2X1 U4 ( .A(n11), .B(n38), .Y(n1) );
  NOR2X1 U6 ( .A(n46), .B(n47), .Y(n10) );
  NAND2X1 U7 ( .A(n46), .B(n47), .Y(n11) );
  XNOR2X1 U8 ( .A(n17), .B(n2), .Y(SUM[6]) );
  AOI21X1 U9 ( .A(n21), .B(n13), .C(n14), .Y(n12) );
  NOR2X1 U10 ( .A(n15), .B(n18), .Y(n13) );
  OAI21X1 U11 ( .A(n15), .B(n19), .C(n16), .Y(n14) );
  NAND2X1 U12 ( .A(n16), .B(n39), .Y(n2) );
  NOR2X1 U14 ( .A(B[6]), .B(A[6]), .Y(n15) );
  NAND2X1 U15 ( .A(B[6]), .B(A[6]), .Y(n16) );
  XOR2X1 U16 ( .A(n3), .B(n20), .Y(SUM[5]) );
  OAI21X1 U17 ( .A(n20), .B(n18), .C(n19), .Y(n17) );
  NAND2X1 U18 ( .A(n19), .B(n40), .Y(n3) );
  NOR2X1 U20 ( .A(B[5]), .B(A[5]), .Y(n18) );
  NAND2X1 U21 ( .A(B[5]), .B(A[5]), .Y(n19) );
  XOR2X1 U22 ( .A(n4), .B(n80), .Y(SUM[4]) );
  OAI21X1 U24 ( .A(n24), .B(n22), .C(n23), .Y(n21) );
  NAND2X1 U25 ( .A(n23), .B(n41), .Y(n4) );
  NOR2X1 U27 ( .A(B[4]), .B(A[4]), .Y(n22) );
  NAND2X1 U28 ( .A(B[4]), .B(A[4]), .Y(n23) );
  XNOR2X1 U29 ( .A(n5), .B(n29), .Y(SUM[3]) );
  AOI21X1 U30 ( .A(n29), .B(n81), .C(n26), .Y(n24) );
  NAND2X1 U33 ( .A(n28), .B(n81), .Y(n5) );
  NAND2X1 U36 ( .A(B[3]), .B(A[3]), .Y(n28) );
  XOR2X1 U37 ( .A(n6), .B(n32), .Y(SUM[2]) );
  OAI21X1 U38 ( .A(n30), .B(n32), .C(n31), .Y(n29) );
  NAND2X1 U39 ( .A(n31), .B(n43), .Y(n6) );
  NOR2X1 U41 ( .A(B[2]), .B(A[2]), .Y(n30) );
  NAND2X1 U42 ( .A(B[2]), .B(A[2]), .Y(n31) );
  XOR2X1 U43 ( .A(n7), .B(n37), .Y(SUM[1]) );
  OAI21X1 U45 ( .A(n34), .B(n37), .C(n35), .Y(n33) );
  NAND2X1 U46 ( .A(n35), .B(n44), .Y(n7) );
  NOR2X1 U48 ( .A(B[1]), .B(A[1]), .Y(n34) );
  NAND2X1 U49 ( .A(B[1]), .B(A[1]), .Y(n35) );
  NAND2X1 U54 ( .A(B[0]), .B(A[0]), .Y(n37) );
  OR2X2 U60 ( .A(B[0]), .B(A[0]), .Y(n79) );
  AOI21X1 U61 ( .A(n29), .B(n81), .C(n26), .Y(n80) );
  INVX2 U62 ( .A(n21), .Y(n20) );
  OR2X1 U63 ( .A(B[3]), .B(A[3]), .Y(n81) );
  AND2X2 U64 ( .A(n37), .B(n79), .Y(SUM[0]) );
  INVX2 U65 ( .A(n10), .Y(n38) );
  INVX2 U66 ( .A(A[7]), .Y(n47) );
  INVX2 U67 ( .A(B[7]), .Y(n46) );
  INVX2 U68 ( .A(n15), .Y(n39) );
  INVX2 U69 ( .A(n18), .Y(n40) );
  INVX2 U70 ( .A(n28), .Y(n26) );
  INVX2 U71 ( .A(n22), .Y(n41) );
  INVX2 U72 ( .A(n30), .Y(n43) );
  INVX2 U73 ( .A(n33), .Y(n32) );
  INVX2 U74 ( .A(n34), .Y(n44) );
  INVX2 U75 ( .A(n9), .Y(SUM[8]) );
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
         n41, n42, n43, n44, n45;

  sigmoid_ALU_4_way_adder_DW01_add_5 add_0_root_add_0_root_add_1432_3 ( .A({
        N18, N17, N16, N15, N14, N13, N12, N11, N10, N9}), .B({N8, N8, N7, N6, 
        N5, N4, N3, N2, N1, N0}), .CI(1'b0), .SUM(out) );
  sigmoid_ALU_4_way_adder_DW01_add_8 add_2_root_add_1432_3 ( .A({in1[7], in1}), 
        .B({in2[7], in2}), .CI(1'b0), .SUM({N8, N7, N6, N5, N4, N3, N2, N1, N0}) );
  AND2X2 U1 ( .A(n7), .B(n21), .Y(n1) );
  XOR2X1 U2 ( .A(n2), .B(n3), .Y(N14) );
  XNOR2X1 U3 ( .A(n31), .B(in4[5]), .Y(n2) );
  OAI21X1 U4 ( .A(n33), .B(n15), .C(n14), .Y(n3) );
  INVX1 U5 ( .A(n38), .Y(n39) );
  INVX1 U6 ( .A(in4[7]), .Y(n5) );
  MUX2X1 U7 ( .B(n26), .A(n1), .S(n23), .Y(N17) );
  INVX1 U8 ( .A(in4[6]), .Y(n19) );
  AND2X2 U9 ( .A(in4[0]), .B(in3[0]), .Y(n4) );
  INVX1 U10 ( .A(in4[5]), .Y(n17) );
  INVX2 U11 ( .A(in3[7]), .Y(n6) );
  NAND2X1 U12 ( .A(n6), .B(n5), .Y(n7) );
  NAND2X1 U13 ( .A(in4[7]), .B(in3[7]), .Y(n21) );
  XOR2X1 U14 ( .A(n6), .B(in4[7]), .Y(n26) );
  INVX2 U15 ( .A(n7), .Y(n22) );
  INVX2 U16 ( .A(in3[6]), .Y(n27) );
  INVX2 U17 ( .A(in3[5]), .Y(n31) );
  INVX2 U18 ( .A(in3[4]), .Y(n33) );
  INVX2 U19 ( .A(in4[4]), .Y(n15) );
  INVX2 U20 ( .A(in3[3]), .Y(n37) );
  INVX2 U21 ( .A(in4[3]), .Y(n13) );
  INVX2 U22 ( .A(in3[2]), .Y(n41) );
  INVX2 U23 ( .A(in4[2]), .Y(n11) );
  OAI21X1 U24 ( .A(in4[1]), .B(in3[1]), .C(n4), .Y(n9) );
  NAND2X1 U25 ( .A(in3[1]), .B(in4[1]), .Y(n8) );
  NAND2X1 U26 ( .A(n9), .B(n8), .Y(n42) );
  OAI21X1 U27 ( .A(in4[2]), .B(in3[2]), .C(n42), .Y(n10) );
  OAI21X1 U28 ( .A(n41), .B(n11), .C(n10), .Y(n38) );
  OAI21X1 U29 ( .A(in4[3]), .B(in3[3]), .C(n38), .Y(n12) );
  OAI21X1 U30 ( .A(n37), .B(n13), .C(n12), .Y(n34) );
  OAI21X1 U31 ( .A(in4[4]), .B(in3[4]), .C(n34), .Y(n14) );
  OAI21X1 U32 ( .A(n33), .B(n15), .C(n14), .Y(n32) );
  OAI21X1 U33 ( .A(in4[5]), .B(in3[5]), .C(n32), .Y(n16) );
  OAI21X1 U34 ( .A(n31), .B(n17), .C(n16), .Y(n28) );
  OAI21X1 U35 ( .A(in4[6]), .B(in3[6]), .C(n28), .Y(n18) );
  OAI21X1 U36 ( .A(n27), .B(n19), .C(n18), .Y(n20) );
  INVX2 U37 ( .A(n20), .Y(n25) );
  OAI21X1 U38 ( .A(n22), .B(n25), .C(n21), .Y(n23) );
  INVX2 U39 ( .A(n23), .Y(n24) );
  MUX2X1 U40 ( .B(n1), .A(n26), .S(n24), .Y(N18) );
  MUX2X1 U41 ( .B(n1), .A(n26), .S(n25), .Y(N16) );
  XOR2X1 U42 ( .A(n27), .B(in4[6]), .Y(n30) );
  INVX2 U43 ( .A(n28), .Y(n29) );
  XOR2X1 U44 ( .A(n30), .B(n29), .Y(N15) );
  XOR2X1 U45 ( .A(n33), .B(in4[4]), .Y(n36) );
  INVX2 U46 ( .A(n34), .Y(n35) );
  XOR2X1 U47 ( .A(n36), .B(n35), .Y(N13) );
  XOR2X1 U48 ( .A(n37), .B(in4[3]), .Y(n40) );
  XOR2X1 U49 ( .A(n40), .B(n39), .Y(N12) );
  XOR2X1 U50 ( .A(n41), .B(in4[2]), .Y(n44) );
  INVX2 U51 ( .A(n42), .Y(n43) );
  XOR2X1 U52 ( .A(n44), .B(n43), .Y(N11) );
  XOR2X1 U53 ( .A(in4[1]), .B(in3[1]), .Y(n45) );
  XOR2X1 U54 ( .A(n4), .B(n45), .Y(N10) );
  XOR2X1 U55 ( .A(in4[0]), .B(in3[0]), .Y(N9) );
endmodule


module sigmoid_ALU_accumulator_DW01_add_1 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n15, n16, n17,
         n18, n19, n20, n22, n24, n25, n26, n27, n28, n30, n32, n33, n34, n35,
         n36, n38, n40, n41, n42, n43, n44, n46, n48, n49, n50, n51, n52, n54,
         n56, n57, n58, n59, n60, n62, n64, n65, n67, n68, n70, n72, n74, n76,
         n78, n134, n135, n136, n137, n138, n141, n142;

  XOR2X1 U1 ( .A(n15), .B(n1), .Y(SUM[15]) );
  XOR2X1 U2 ( .A(B[15]), .B(A[10]), .Y(n1) );
  FAX1 U3 ( .A(A[15]), .B(B[14]), .C(n16), .YC(n15), .YS(SUM[14]) );
  FAX1 U4 ( .A(A[9]), .B(B[13]), .C(n17), .YC(n16), .YS(SUM[13]) );
  XOR2X1 U5 ( .A(n20), .B(n2), .Y(SUM[12]) );
  OAI21X1 U6 ( .A(n20), .B(n18), .C(n19), .Y(n17) );
  NAND2X1 U7 ( .A(n19), .B(n68), .Y(n2) );
  NOR2X1 U9 ( .A(A[11]), .B(B[12]), .Y(n18) );
  NAND2X1 U10 ( .A(A[11]), .B(B[12]), .Y(n19) );
  XNOR2X1 U11 ( .A(n25), .B(n3), .Y(SUM[11]) );
  AOI21X1 U12 ( .A(n138), .B(n25), .C(n22), .Y(n20) );
  NAND2X1 U15 ( .A(n24), .B(n138), .Y(n3) );
  NAND2X1 U18 ( .A(A[13]), .B(B[11]), .Y(n24) );
  XOR2X1 U19 ( .A(n28), .B(n4), .Y(SUM[10]) );
  OAI21X1 U20 ( .A(n28), .B(n26), .C(n27), .Y(n25) );
  NAND2X1 U21 ( .A(n27), .B(n70), .Y(n4) );
  NOR2X1 U23 ( .A(A[14]), .B(B[10]), .Y(n26) );
  NAND2X1 U24 ( .A(A[14]), .B(B[10]), .Y(n27) );
  XNOR2X1 U25 ( .A(n33), .B(n5), .Y(SUM[9]) );
  AOI21X1 U26 ( .A(n135), .B(n33), .C(n30), .Y(n28) );
  NAND2X1 U29 ( .A(n32), .B(n135), .Y(n5) );
  NAND2X1 U32 ( .A(A[9]), .B(B[9]), .Y(n32) );
  XOR2X1 U33 ( .A(n36), .B(n6), .Y(SUM[8]) );
  OAI21X1 U34 ( .A(n36), .B(n34), .C(n35), .Y(n33) );
  NAND2X1 U35 ( .A(n35), .B(n72), .Y(n6) );
  NOR2X1 U37 ( .A(A[8]), .B(B[8]), .Y(n34) );
  NAND2X1 U38 ( .A(A[8]), .B(B[8]), .Y(n35) );
  XNOR2X1 U39 ( .A(n41), .B(n7), .Y(SUM[7]) );
  AOI21X1 U40 ( .A(n137), .B(n41), .C(n38), .Y(n36) );
  NAND2X1 U43 ( .A(n40), .B(n137), .Y(n7) );
  NAND2X1 U46 ( .A(A[7]), .B(B[7]), .Y(n40) );
  XOR2X1 U47 ( .A(n44), .B(n8), .Y(SUM[6]) );
  OAI21X1 U48 ( .A(n44), .B(n42), .C(n43), .Y(n41) );
  NAND2X1 U49 ( .A(n43), .B(n74), .Y(n8) );
  NOR2X1 U51 ( .A(A[6]), .B(B[6]), .Y(n42) );
  NAND2X1 U52 ( .A(A[6]), .B(B[6]), .Y(n43) );
  XNOR2X1 U53 ( .A(n49), .B(n9), .Y(SUM[5]) );
  AOI21X1 U54 ( .A(n136), .B(n49), .C(n46), .Y(n44) );
  NAND2X1 U57 ( .A(n48), .B(n136), .Y(n9) );
  NAND2X1 U60 ( .A(A[5]), .B(B[5]), .Y(n48) );
  XOR2X1 U61 ( .A(n52), .B(n10), .Y(SUM[4]) );
  OAI21X1 U62 ( .A(n52), .B(n50), .C(n51), .Y(n49) );
  NAND2X1 U63 ( .A(n51), .B(n76), .Y(n10) );
  NOR2X1 U65 ( .A(A[4]), .B(B[4]), .Y(n50) );
  NAND2X1 U66 ( .A(A[4]), .B(B[4]), .Y(n51) );
  XNOR2X1 U67 ( .A(n57), .B(n11), .Y(SUM[3]) );
  AOI21X1 U68 ( .A(n134), .B(n57), .C(n54), .Y(n52) );
  NAND2X1 U71 ( .A(n56), .B(n134), .Y(n11) );
  NAND2X1 U74 ( .A(A[3]), .B(B[3]), .Y(n56) );
  XOR2X1 U75 ( .A(n12), .B(n60), .Y(SUM[2]) );
  OAI21X1 U76 ( .A(n60), .B(n58), .C(n59), .Y(n57) );
  NAND2X1 U77 ( .A(n59), .B(n78), .Y(n12) );
  NOR2X1 U79 ( .A(A[2]), .B(B[2]), .Y(n58) );
  NAND2X1 U80 ( .A(A[2]), .B(B[2]), .Y(n59) );
  XNOR2X1 U81 ( .A(n13), .B(n65), .Y(SUM[1]) );
  AOI21X1 U82 ( .A(n65), .B(n141), .C(n62), .Y(n60) );
  NAND2X1 U85 ( .A(n64), .B(n141), .Y(n13) );
  NAND2X1 U88 ( .A(A[1]), .B(B[1]), .Y(n64) );
  NAND2X1 U94 ( .A(A[0]), .B(B[0]), .Y(n67) );
  OR2X2 U98 ( .A(A[3]), .B(B[3]), .Y(n134) );
  OR2X2 U99 ( .A(A[15]), .B(B[9]), .Y(n135) );
  OR2X2 U100 ( .A(A[5]), .B(B[5]), .Y(n136) );
  OR2X2 U101 ( .A(A[7]), .B(B[7]), .Y(n137) );
  OR2X2 U102 ( .A(A[12]), .B(B[11]), .Y(n138) );
  AND2X2 U103 ( .A(n67), .B(n142), .Y(SUM[0]) );
  OR2X1 U104 ( .A(A[1]), .B(B[1]), .Y(n141) );
  OR2X1 U105 ( .A(A[0]), .B(B[0]), .Y(n142) );
  INVX2 U106 ( .A(n58), .Y(n78) );
  INVX2 U107 ( .A(n50), .Y(n76) );
  INVX2 U108 ( .A(n42), .Y(n74) );
  INVX2 U109 ( .A(n34), .Y(n72) );
  INVX2 U110 ( .A(n26), .Y(n70) );
  INVX2 U111 ( .A(n18), .Y(n68) );
  INVX2 U112 ( .A(n67), .Y(n65) );
  INVX2 U113 ( .A(n64), .Y(n62) );
  INVX2 U114 ( .A(n56), .Y(n54) );
  INVX2 U115 ( .A(n48), .Y(n46) );
  INVX2 U116 ( .A(n40), .Y(n38) );
  INVX2 U117 ( .A(n32), .Y(n30) );
  INVX2 U118 ( .A(n24), .Y(n22) );
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
  sigmoid_ALU_accumulator_DW01_add_1 add_1464 ( .A({newval[9], newval[9], 
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
         n111, n112, n113, n114;
  assign \sum[0]  = accum[0];

  INVX2 U3 ( .A(n105), .Y(n3) );
  OAI21X1 U4 ( .A(n49), .B(n34), .C(n33), .Y(n1) );
  OR2X2 U5 ( .A(n69), .B(n2), .Y(n110) );
  NAND2X1 U6 ( .A(n3), .B(n96), .Y(n2) );
  XOR2X1 U7 ( .A(n5), .B(bias[3]), .Y(n4) );
  INVX1 U8 ( .A(n4), .Y(n96) );
  XNOR2X1 U9 ( .A(n79), .B(accum[13]), .Y(n5) );
  INVX2 U10 ( .A(n110), .Y(n100) );
  AND2X2 U11 ( .A(n62), .B(n61), .Y(n6) );
  NOR2X1 U12 ( .A(n69), .B(n105), .Y(n7) );
  INVX2 U13 ( .A(n17), .Y(n18) );
  AND2X2 U14 ( .A(n46), .B(n19), .Y(n8) );
  AND2X2 U15 ( .A(accum[1]), .B(bias[0]), .Y(n9) );
  XOR2X1 U16 ( .A(n48), .B(n11), .Y(n10) );
  INVX1 U17 ( .A(n47), .Y(n11) );
  XOR2X1 U18 ( .A(n13), .B(n53), .Y(n12) );
  XNOR2X1 U19 ( .A(n17), .B(accum[4]), .Y(n13) );
  XNOR2X1 U20 ( .A(bias[1]), .B(accum[2]), .Y(n67) );
  INVX2 U21 ( .A(bias[3]), .Y(n17) );
  NAND2X1 U22 ( .A(n60), .B(n6), .Y(n63) );
  INVX1 U23 ( .A(n43), .Y(n47) );
  INVX4 U24 ( .A(n1), .Y(n76) );
  AND2X2 U25 ( .A(n106), .B(n105), .Y(n14) );
  AND2X1 U26 ( .A(n104), .B(n105), .Y(n15) );
  INVX2 U27 ( .A(n99), .Y(n104) );
  INVX1 U28 ( .A(n109), .Y(n103) );
  INVX2 U29 ( .A(n35), .Y(n16) );
  INVX4 U30 ( .A(n24), .Y(n49) );
  XOR2X1 U31 ( .A(n17), .B(accum[9]), .Y(n25) );
  NAND2X1 U32 ( .A(accum[4]), .B(n18), .Y(n52) );
  NAND2X1 U33 ( .A(bias[2]), .B(accum[3]), .Y(n44) );
  NAND2X1 U34 ( .A(n52), .B(n44), .Y(n23) );
  NAND2X1 U35 ( .A(accum[2]), .B(bias[1]), .Y(n42) );
  OAI21X1 U36 ( .A(accum[2]), .B(bias[1]), .C(n9), .Y(n41) );
  INVX2 U37 ( .A(accum[3]), .Y(n46) );
  INVX2 U38 ( .A(bias[2]), .Y(n19) );
  INVX2 U39 ( .A(accum[4]), .Y(n20) );
  NAND2X1 U40 ( .A(n17), .B(n20), .Y(n51) );
  OAI21X1 U41 ( .A(accum[5]), .B(n18), .C(n51), .Y(n21) );
  AOI21X1 U42 ( .A(n8), .B(n52), .C(n21), .Y(n22) );
  OAI21X1 U43 ( .A(n23), .B(n43), .C(n22), .Y(n24) );
  XOR2X1 U44 ( .A(n25), .B(n49), .Y(n84) );
  INVX2 U45 ( .A(n84), .Y(n66) );
  INVX2 U46 ( .A(accum[12]), .Y(n78) );
  XOR2X1 U47 ( .A(n78), .B(bias[3]), .Y(n36) );
  AOI22X1 U48 ( .A(accum[8]), .B(n18), .C(accum[7]), .D(bias[3]), .Y(n27) );
  AOI22X1 U49 ( .A(accum[6]), .B(n18), .C(accum[5]), .D(n18), .Y(n26) );
  NAND2X1 U50 ( .A(n27), .B(n26), .Y(n34) );
  INVX2 U51 ( .A(accum[8]), .Y(n32) );
  INVX2 U52 ( .A(accum[6]), .Y(n29) );
  NOR2X1 U53 ( .A(accum[7]), .B(n18), .Y(n28) );
  AOI21X1 U54 ( .A(n17), .B(n29), .C(n28), .Y(n30) );
  OAI21X1 U55 ( .A(accum[9]), .B(n18), .C(n30), .Y(n31) );
  AOI21X1 U56 ( .A(n17), .B(n32), .C(n31), .Y(n33) );
  OAI21X1 U57 ( .A(n49), .B(n34), .C(n33), .Y(n35) );
  XOR2X1 U58 ( .A(n36), .B(n76), .Y(n87) );
  INVX2 U59 ( .A(n87), .Y(n65) );
  XOR2X1 U60 ( .A(n17), .B(accum[11]), .Y(n37) );
  XOR2X1 U61 ( .A(n37), .B(n76), .Y(n86) );
  XOR2X1 U62 ( .A(n17), .B(accum[7]), .Y(n38) );
  XOR2X1 U63 ( .A(n38), .B(n49), .Y(n93) );
  INVX2 U64 ( .A(n93), .Y(n62) );
  XOR2X1 U65 ( .A(n17), .B(accum[8]), .Y(n39) );
  XOR2X1 U66 ( .A(n39), .B(n49), .Y(n83) );
  INVX2 U67 ( .A(n83), .Y(n61) );
  XOR2X1 U68 ( .A(n17), .B(accum[10]), .Y(n40) );
  XOR2X1 U69 ( .A(n40), .B(n76), .Y(n85) );
  NAND2X1 U70 ( .A(n42), .B(n41), .Y(n43) );
  OAI21X1 U71 ( .A(n8), .B(n47), .C(n44), .Y(n45) );
  INVX2 U72 ( .A(n45), .Y(n53) );
  XOR2X1 U73 ( .A(n46), .B(bias[2]), .Y(n48) );
  NOR2X1 U74 ( .A(n12), .B(n10), .Y(n58) );
  XOR2X1 U75 ( .A(n17), .B(accum[6]), .Y(n50) );
  XOR2X1 U76 ( .A(n50), .B(n49), .Y(n92) );
  INVX2 U77 ( .A(n92), .Y(n57) );
  INVX2 U78 ( .A(n51), .Y(n54) );
  OAI21X1 U79 ( .A(n54), .B(n53), .C(n52), .Y(n56) );
  XOR2X1 U80 ( .A(accum[5]), .B(bias[3]), .Y(n55) );
  XOR2X1 U81 ( .A(n56), .B(n55), .Y(n90) );
  NAND3X1 U82 ( .A(n58), .B(n57), .C(n90), .Y(n59) );
  NOR2X1 U83 ( .A(n59), .B(n85), .Y(n60) );
  NOR2X1 U84 ( .A(n86), .B(n63), .Y(n64) );
  NAND3X1 U85 ( .A(n66), .B(n65), .C(n64), .Y(n69) );
  XOR2X1 U86 ( .A(n67), .B(n9), .Y(n105) );
  INVX2 U87 ( .A(\sum[0] ), .Y(n68) );
  NOR2X1 U88 ( .A(n68), .B(n69), .Y(n80) );
  INVX2 U89 ( .A(bias[0]), .Y(n70) );
  XOR2X1 U90 ( .A(n70), .B(accum[1]), .Y(n106) );
  INVX2 U91 ( .A(n106), .Y(n81) );
  INVX2 U92 ( .A(accum[11]), .Y(n72) );
  AOI22X1 U93 ( .A(accum[10]), .B(n18), .C(accum[9]), .D(n18), .Y(n71) );
  OAI21X1 U94 ( .A(n17), .B(n72), .C(n71), .Y(n75) );
  OAI22X1 U95 ( .A(accum[10]), .B(n18), .C(accum[11]), .D(n18), .Y(n73) );
  AOI21X1 U96 ( .A(n78), .B(n17), .C(n73), .Y(n74) );
  OAI21X1 U97 ( .A(n16), .B(n75), .C(n74), .Y(n77) );
  OAI21X1 U98 ( .A(n17), .B(n78), .C(n77), .Y(n79) );
  NAND3X1 U99 ( .A(n80), .B(n81), .C(n96), .Y(n82) );
  OAI22X1 U100 ( .A(n7), .B(n82), .C(n81), .D(n110), .Y(n109) );
  NAND2X1 U101 ( .A(n84), .B(n83), .Y(n89) );
  NAND3X1 U102 ( .A(n87), .B(n86), .C(n85), .Y(n88) );
  NOR2X1 U103 ( .A(n89), .B(n88), .Y(n98) );
  NAND2X1 U104 ( .A(n10), .B(n12), .Y(n95) );
  INVX2 U105 ( .A(n90), .Y(n91) );
  NAND3X1 U106 ( .A(n93), .B(n92), .C(n91), .Y(n94) );
  NOR2X1 U107 ( .A(n95), .B(n94), .Y(n97) );
  NAND3X1 U108 ( .A(n98), .B(n97), .C(n4), .Y(n99) );
  OAI21X1 U109 ( .A(n100), .B(n15), .C(\sum[0] ), .Y(n102) );
  NAND2X1 U110 ( .A(n14), .B(n104), .Y(n112) );
  NAND2X1 U111 ( .A(n4), .B(n112), .Y(n113) );
  INVX2 U112 ( .A(n113), .Y(n108) );
  NAND3X1 U113 ( .A(n104), .B(n106), .C(n108), .Y(n101) );
  NAND3X1 U114 ( .A(n103), .B(n102), .C(n101), .Y(sigma[0]) );
  OAI21X1 U115 ( .A(n106), .B(n105), .C(n104), .Y(n107) );
  INVX2 U116 ( .A(n107), .Y(n114) );
  NAND2X1 U117 ( .A(n114), .B(n108), .Y(n111) );
  OAI21X1 U118 ( .A(n110), .B(n109), .C(n111), .Y(sigma[1]) );
  NAND2X1 U119 ( .A(n112), .B(n111), .Y(sigma[2]) );
  NOR2X1 U120 ( .A(n114), .B(n113), .Y(sigma[3]) );
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

  wire   [7:0] mult1;
  wire   [7:0] mult2;
  wire   [7:0] mult3;
  wire   [7:0] mult4;
  wire   [9:0] added_nxt;
  wire   [9:0] added_reg;

  DFFPOSX1 \added_reg_reg[9]  ( .D(added_nxt[9]), .CLK(clk), .Q(added_reg[9])
         );
  DFFPOSX1 \added_reg_reg[8]  ( .D(added_nxt[8]), .CLK(clk), .Q(added_reg[8])
         );
  DFFPOSX1 \added_reg_reg[7]  ( .D(added_nxt[7]), .CLK(clk), .Q(added_reg[7])
         );
  DFFPOSX1 \added_reg_reg[6]  ( .D(added_nxt[6]), .CLK(clk), .Q(added_reg[6])
         );
  DFFPOSX1 \added_reg_reg[5]  ( .D(added_nxt[5]), .CLK(clk), .Q(added_reg[5])
         );
  DFFPOSX1 \added_reg_reg[4]  ( .D(added_nxt[4]), .CLK(clk), .Q(added_reg[4])
         );
  DFFPOSX1 \added_reg_reg[3]  ( .D(added_nxt[3]), .CLK(clk), .Q(added_reg[3])
         );
  DFFPOSX1 \added_reg_reg[2]  ( .D(added_nxt[2]), .CLK(clk), .Q(added_reg[2])
         );
  DFFPOSX1 \added_reg_reg[1]  ( .D(added_nxt[1]), .CLK(clk), .Q(added_reg[1])
         );
  DFFPOSX1 \added_reg_reg[0]  ( .D(added_nxt[0]), .CLK(clk), .Q(added_reg[0])
         );
  sigmoid_ALU_multiplier_3 M1 ( .signval(weight1), .unsignval(input1), .out(
        mult1) );
  sigmoid_ALU_multiplier_2 M2 ( .signval(weight2), .unsignval(input2), .out(
        mult2) );
  sigmoid_ALU_multiplier_1 M3 ( .signval(weight3), .unsignval(input3), .out(
        mult3) );
  sigmoid_ALU_multiplier_0 M4 ( .signval(weight4), .unsignval(input4), .out(
        mult4) );
  sigmoid_ALU_4_way_adder ADDER ( .in1(mult1), .in2(mult2), .in3(mult3), .in4(
        mult4), .out(added_nxt) );
  sigmoid_ALU_accumulator ACCUM ( .accumulate(accumulate), .clear(clear), 
        .clk(clk), .newval(added_reg), .out(accum_out) );
  sigmoid_ALU_sigmoid_calculator SIGM ( .accum(accum_out[15:2]), .bias(bias), 
        .sigma(out) );
endmodule


module comparator_0 ( a, b, gt, lt, eq );
  input [3:0] a;
  input [3:0] b;
  output gt, lt, eq;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n19, n20, n21, n22,
         n23, n24;

  NOR2X1 U10 ( .A(gt), .B(lt), .Y(eq) );
  OAI22X1 U11 ( .A(a[3]), .B(n4), .C(n3), .D(n24), .Y(lt) );
  AOI22X1 U12 ( .A(n23), .B(n22), .C(b[2]), .D(n7), .Y(n24) );
  OAI21X1 U13 ( .A(n1), .B(n21), .C(n20), .Y(n22) );
  NAND2X1 U14 ( .A(n19), .B(n5), .Y(n21) );
  OAI21X1 U15 ( .A(n11), .B(n10), .C(n12), .Y(gt) );
  NAND2X1 U16 ( .A(a[3]), .B(n4), .Y(n12) );
  AOI22X1 U17 ( .A(n23), .B(n9), .C(a[2]), .D(n2), .Y(n10) );
  OAI21X1 U18 ( .A(n5), .B(n8), .C(n19), .Y(n9) );
  OR2X1 U19 ( .A(n6), .B(b[1]), .Y(n19) );
  NAND2X1 U20 ( .A(n20), .B(n1), .Y(n8) );
  NAND2X1 U21 ( .A(b[1]), .B(n6), .Y(n20) );
  XNOR2X1 U22 ( .A(a[2]), .B(b[2]), .Y(n23) );
  NOR2X1 U23 ( .A(a[3]), .B(n4), .Y(n11) );
  INVX2 U3 ( .A(b[0]), .Y(n1) );
  INVX2 U4 ( .A(b[2]), .Y(n2) );
  INVX2 U5 ( .A(n12), .Y(n3) );
  INVX2 U6 ( .A(b[3]), .Y(n4) );
  INVX2 U7 ( .A(a[0]), .Y(n5) );
  INVX2 U8 ( .A(a[1]), .Y(n6) );
  INVX2 U9 ( .A(a[2]), .Y(n7) );
endmodule


module abs_subtractor_4bit ( a, b, mag_diff );
  input [3:0] a;
  input [3:0] b;
  output [3:0] mag_diff;
  wire   gt, eq, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10;

  OAI22X1 U11 ( .A(n15), .B(n16), .C(n17), .D(n1), .Y(mag_diff[3]) );
  XOR2X1 U12 ( .A(n18), .B(n19), .Y(n17) );
  OAI21X1 U13 ( .A(a[2]), .B(n4), .C(n20), .Y(n18) );
  OAI21X1 U14 ( .A(n21), .B(n10), .C(b[2]), .Y(n20) );
  XOR2X1 U15 ( .A(n22), .B(n19), .Y(n16) );
  XOR2X1 U16 ( .A(b[3]), .B(a[3]), .Y(n19) );
  OAI21X1 U17 ( .A(n2), .B(n10), .C(n23), .Y(n22) );
  OAI21X1 U18 ( .A(a[2]), .B(n24), .C(n8), .Y(n23) );
  OAI22X1 U19 ( .A(n15), .B(n25), .C(n26), .D(n1), .Y(mag_diff[2]) );
  XNOR2X1 U20 ( .A(n4), .B(n27), .Y(n26) );
  OAI21X1 U21 ( .A(a[1]), .B(n5), .C(n28), .Y(n21) );
  OAI21X1 U22 ( .A(n29), .B(n9), .C(b[1]), .Y(n28) );
  XNOR2X1 U23 ( .A(n2), .B(n27), .Y(n25) );
  XNOR2X1 U24 ( .A(n8), .B(a[2]), .Y(n27) );
  OAI21X1 U25 ( .A(n30), .B(n9), .C(n31), .Y(n24) );
  OAI21X1 U26 ( .A(a[1]), .B(n3), .C(n7), .Y(n31) );
  OAI22X1 U27 ( .A(n15), .B(n32), .C(n33), .D(n1), .Y(mag_diff[1]) );
  XNOR2X1 U28 ( .A(n5), .B(n34), .Y(n33) );
  XNOR2X1 U29 ( .A(n30), .B(n34), .Y(n32) );
  XNOR2X1 U30 ( .A(n7), .B(a[1]), .Y(n34) );
  NOR2X1 U31 ( .A(eq), .B(gt), .Y(n15) );
  NAND2X1 U32 ( .A(n3), .B(n29), .Y(mag_diff[0]) );
  NAND2X1 U33 ( .A(a[0]), .B(n6), .Y(n29) );
  NOR2X1 U34 ( .A(n6), .B(a[0]), .Y(n30) );
  comparator_0 MAG_COMPARATOR ( .a(a), .b(b), .gt(gt), .eq(eq) );
  INVX2 U1 ( .A(n15), .Y(n1) );
  INVX2 U2 ( .A(n24), .Y(n2) );
  INVX2 U3 ( .A(n30), .Y(n3) );
  INVX2 U4 ( .A(n21), .Y(n4) );
  INVX2 U5 ( .A(n29), .Y(n5) );
  INVX2 U6 ( .A(b[0]), .Y(n6) );
  INVX2 U7 ( .A(b[1]), .Y(n7) );
  INVX2 U8 ( .A(b[2]), .Y(n8) );
  INVX2 U9 ( .A(a[1]), .Y(n9) );
  INVX2 U10 ( .A(a[2]), .Y(n10) );
endmodule


module mult_4bit_DW_mult_uns_0 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n31,
         n32, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71;

  FAX1 U2 ( .A(n19), .B(n7), .C(n2), .YC(product[7]), .YS(product[6]) );
  FAX1 U3 ( .A(n8), .B(n9), .C(n3), .YC(n2), .YS(product[5]) );
  FAX1 U4 ( .A(n13), .B(n10), .C(n4), .YC(n3), .YS(product[4]) );
  FAX1 U5 ( .A(n16), .B(n14), .C(n5), .YC(n4), .YS(product[3]) );
  FAX1 U6 ( .A(n26), .B(n6), .C(n18), .YC(n5), .YS(product[2]) );
  FAX1 U8 ( .A(n23), .B(n20), .C(n11), .YC(n7), .YS(n8) );
  FAX1 U9 ( .A(n24), .B(n15), .C(n12), .YC(n9), .YS(n10) );
  HAX1 U10 ( .A(n27), .B(n21), .YC(n11), .YS(n12) );
  FAX1 U11 ( .A(n31), .B(n28), .C(n17), .YC(n13), .YS(n14) );
  HAX1 U12 ( .A(n25), .B(n22), .YC(n15), .YS(n16) );
  HAX1 U13 ( .A(n32), .B(n29), .YC(n17), .YS(n18) );
  INVX2 U40 ( .A(b[3]), .Y(n62) );
  INVX2 U41 ( .A(a[3]), .Y(n63) );
  INVX2 U42 ( .A(b[2]), .Y(n64) );
  INVX2 U43 ( .A(a[2]), .Y(n65) );
  INVX2 U44 ( .A(b[1]), .Y(n66) );
  INVX2 U45 ( .A(a[1]), .Y(n67) );
  INVX2 U46 ( .A(b[0]), .Y(n68) );
  INVX2 U47 ( .A(a[0]), .Y(n69) );
  NOR2X1 U48 ( .A(n69), .B(n68), .Y(product[0]) );
  NOR2X1 U49 ( .A(n70), .B(n71), .Y(n6) );
  NAND2X1 U50 ( .A(b[1]), .B(a[1]), .Y(n71) );
  NAND2X1 U51 ( .A(b[0]), .B(a[0]), .Y(n70) );
  NOR2X1 U52 ( .A(n69), .B(n64), .Y(n32) );
  NOR2X1 U53 ( .A(n69), .B(n62), .Y(n31) );
  NOR2X1 U54 ( .A(n67), .B(n66), .Y(n29) );
  NOR2X1 U55 ( .A(n67), .B(n64), .Y(n28) );
  NOR2X1 U56 ( .A(n67), .B(n62), .Y(n27) );
  NOR2X1 U57 ( .A(n68), .B(n65), .Y(n26) );
  NOR2X1 U58 ( .A(n66), .B(n65), .Y(n25) );
  NOR2X1 U59 ( .A(n64), .B(n65), .Y(n24) );
  NOR2X1 U60 ( .A(n62), .B(n65), .Y(n23) );
  NOR2X1 U61 ( .A(n68), .B(n63), .Y(n22) );
  NOR2X1 U62 ( .A(n66), .B(n63), .Y(n21) );
  NOR2X1 U63 ( .A(n64), .B(n63), .Y(n20) );
  NOR2X1 U64 ( .A(n62), .B(n63), .Y(n19) );
endmodule


module mult_4bit ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;


  mult_4bit_DW_mult_uns_0 mult_854 ( .a(a), .b(b), .product(product) );
endmodule


module adder_1bit_7 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n2, n3;

  XOR2X1 U2 ( .A(carry_in), .B(n2), .Y(sum) );
  AOI22X1 U3 ( .A(b), .B(a), .C(n2), .D(carry_in), .Y(n3) );
  XOR2X1 U4 ( .A(a), .B(b), .Y(n2) );
  INVX2 U1 ( .A(n3), .Y(carry_out) );
endmodule


module adder_1bit_6 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n4, n5;

  XOR2X1 U2 ( .A(carry_in), .B(n5), .Y(sum) );
  AOI22X1 U3 ( .A(b), .B(a), .C(n5), .D(carry_in), .Y(n4) );
  XOR2X1 U4 ( .A(a), .B(b), .Y(n5) );
  INVX2 U1 ( .A(n4), .Y(carry_out) );
endmodule


module adder_1bit_5 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n4, n5;

  XOR2X1 U2 ( .A(carry_in), .B(n5), .Y(sum) );
  AOI22X1 U3 ( .A(b), .B(a), .C(n5), .D(carry_in), .Y(n4) );
  XOR2X1 U4 ( .A(a), .B(b), .Y(n5) );
  INVX2 U1 ( .A(n4), .Y(carry_out) );
endmodule


module adder_1bit_4 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n4, n5;

  XOR2X1 U2 ( .A(carry_in), .B(n5), .Y(sum) );
  AOI22X1 U3 ( .A(b), .B(a), .C(n5), .D(carry_in), .Y(n4) );
  XOR2X1 U4 ( .A(a), .B(b), .Y(n5) );
  INVX2 U1 ( .A(n4), .Y(carry_out) );
endmodule


module adder_1bit_3 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n4, n5;

  XOR2X1 U2 ( .A(carry_in), .B(n5), .Y(sum) );
  AOI22X1 U3 ( .A(b), .B(a), .C(n5), .D(carry_in), .Y(n4) );
  XOR2X1 U4 ( .A(a), .B(b), .Y(n5) );
  INVX2 U1 ( .A(n4), .Y(carry_out) );
endmodule


module adder_1bit_2 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n4, n5;

  XOR2X1 U2 ( .A(carry_in), .B(n5), .Y(sum) );
  AOI22X1 U3 ( .A(b), .B(a), .C(n5), .D(carry_in), .Y(n4) );
  XOR2X1 U4 ( .A(a), .B(b), .Y(n5) );
  INVX2 U1 ( .A(n4), .Y(carry_out) );
endmodule


module adder_1bit_1 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n4, n5;

  XOR2X1 U2 ( .A(carry_in), .B(n5), .Y(sum) );
  AOI22X1 U3 ( .A(b), .B(a), .C(n5), .D(carry_in), .Y(n4) );
  XOR2X1 U4 ( .A(a), .B(b), .Y(n5) );
  INVX2 U1 ( .A(n4), .Y(carry_out) );
endmodule


module adder_1bit_0 ( a, b, carry_in, sum, carry_out );
  input a, b, carry_in;
  output sum, carry_out;
  wire   n4, n5;

  XOR2X1 U2 ( .A(carry_in), .B(n5), .Y(sum) );
  AOI22X1 U3 ( .A(b), .B(a), .C(n5), .D(carry_in), .Y(n4) );
  XOR2X1 U4 ( .A(a), .B(b), .Y(n5) );
  INVX2 U1 ( .A(n4), .Y(carry_out) );
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
        \digit_weights[9][0] }), calculation_complete, cost_output );
  input [0:9] expected_label;
  output [7:0] cost_output;
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
         N163, N164, N165, n1, n2, n3, n4, n6, n7, n9, n10, n12, n13, n14, n15,
         n16, n18, n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42, n44,
         n46, n48, n50, n52, n54, n56, n58, n60, n62, n64, n66, n68, n70, n72,
         n74, n76, n78, n80, n82, n84, n86, n88, n90, n92, n94, n96, n98, n100,
         n102, n104, n106, n108, n110, n112, n114, n116, n118, n120, n121,
         n123, n124, n125, n126, n127, n128, n129, n130, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n179, n180, n181, n184, n185, n186,
         n187, n214, n216, n218, n220, n222, n224, n226, n228, n230, n232,
         n234, n236, n238, n240, n242, n244, n246, n248, n250, n252, n254,
         n256, n258, n260, n262, n264, n266, n268, n270, n272, n274, n276,
         n278, n280, n282, n284, n286, n288, n290, n292, n294, n296, n298,
         n300, n302, n304, n306, n308, n310, n312, n20, n21, n23, n25, n27,
         n29, n31, n33, n35, n37, n39, n41, n43, n45, n47, n49, n51, n53, n55,
         n57, n59, n61, n63, n65, n67, n69, n71, n73, n75, n77, n79, n81, n83,
         n85, n87, n89, n91, n93, n95, n97, n99, n101, n103, n105, n107, n109,
         n111, n113, n115, n117, n119, n122, n131, n132, n133, n145, n176,
         n177, n178, n182, n183, n201, n203, n204, n313, n314, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336;
  wire   [3:0] mux_confidence;
  wire   [3:0] next_sub_reg;
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

  DFFSR \state_reg[0]  ( .D(next_state[0]), .CLK(clk), .R(n41), .S(1'b1), .Q(
        state[0]) );
  DFFSR \label_hold_reg_reg[0]  ( .D(n312), .CLK(clk), .R(n41), .S(1'b1), .Q(
        label_hold_reg[0]) );
  DFFSR \label_hold_reg_reg[1]  ( .D(n310), .CLK(clk), .R(n41), .S(1'b1), .Q(
        label_hold_reg[1]) );
  DFFSR \label_hold_reg_reg[2]  ( .D(n308), .CLK(clk), .R(n39), .S(1'b1), .Q(
        label_hold_reg[2]) );
  DFFSR \label_hold_reg_reg[3]  ( .D(n306), .CLK(clk), .R(n39), .S(1'b1), .Q(
        label_hold_reg[3]) );
  DFFSR \label_hold_reg_reg[4]  ( .D(n304), .CLK(clk), .R(n39), .S(1'b1), .Q(
        label_hold_reg[4]) );
  DFFSR \label_hold_reg_reg[5]  ( .D(n302), .CLK(clk), .R(n39), .S(1'b1), .Q(
        label_hold_reg[5]) );
  DFFSR \label_hold_reg_reg[6]  ( .D(n300), .CLK(clk), .R(n39), .S(1'b1), .Q(
        label_hold_reg[6]) );
  DFFSR \label_hold_reg_reg[7]  ( .D(n298), .CLK(clk), .R(n39), .S(1'b1), .Q(
        label_hold_reg[7]) );
  DFFSR \label_hold_reg_reg[8]  ( .D(n296), .CLK(clk), .R(n39), .S(1'b1), .Q(
        label_hold_reg[8]) );
  DFFSR \label_hold_reg_reg[9]  ( .D(n294), .CLK(clk), .R(n39), .S(1'b1), .Q(
        label_hold_reg[9]) );
  DFFSR \sigmoid_hold_reg_reg[0][3]  ( .D(n292), .CLK(clk), .R(n39), .S(1'b1), 
        .Q(\sigmoid_hold_reg[0][3] ) );
  DFFSR \sigmoid_hold_reg_reg[0][2]  ( .D(n290), .CLK(clk), .R(n39), .S(1'b1), 
        .Q(\sigmoid_hold_reg[0][2] ) );
  DFFSR \sigmoid_hold_reg_reg[0][1]  ( .D(n288), .CLK(clk), .R(n39), .S(1'b1), 
        .Q(\sigmoid_hold_reg[0][1] ) );
  DFFSR \sigmoid_hold_reg_reg[0][0]  ( .D(n286), .CLK(clk), .R(n39), .S(1'b1), 
        .Q(\sigmoid_hold_reg[0][0] ) );
  DFFSR \sigmoid_hold_reg_reg[1][3]  ( .D(n284), .CLK(clk), .R(n39), .S(1'b1), 
        .Q(\sigmoid_hold_reg[1][3] ) );
  DFFSR \sigmoid_hold_reg_reg[1][2]  ( .D(n282), .CLK(clk), .R(n39), .S(1'b1), 
        .Q(\sigmoid_hold_reg[1][2] ) );
  DFFSR \sigmoid_hold_reg_reg[1][1]  ( .D(n280), .CLK(clk), .R(n39), .S(1'b1), 
        .Q(\sigmoid_hold_reg[1][1] ) );
  DFFSR \sigmoid_hold_reg_reg[1][0]  ( .D(n278), .CLK(clk), .R(n39), .S(1'b1), 
        .Q(\sigmoid_hold_reg[1][0] ) );
  DFFSR \sigmoid_hold_reg_reg[2][3]  ( .D(n276), .CLK(clk), .R(n39), .S(1'b1), 
        .Q(\sigmoid_hold_reg[2][3] ) );
  DFFSR \sigmoid_hold_reg_reg[2][2]  ( .D(n274), .CLK(clk), .R(n39), .S(1'b1), 
        .Q(\sigmoid_hold_reg[2][2] ) );
  DFFSR \sigmoid_hold_reg_reg[2][1]  ( .D(n272), .CLK(clk), .R(n39), .S(1'b1), 
        .Q(\sigmoid_hold_reg[2][1] ) );
  DFFSR \sigmoid_hold_reg_reg[2][0]  ( .D(n270), .CLK(clk), .R(n39), .S(1'b1), 
        .Q(\sigmoid_hold_reg[2][0] ) );
  DFFSR \sigmoid_hold_reg_reg[3][3]  ( .D(n268), .CLK(clk), .R(n39), .S(1'b1), 
        .Q(\sigmoid_hold_reg[3][3] ) );
  DFFSR \sigmoid_hold_reg_reg[3][2]  ( .D(n266), .CLK(clk), .R(n39), .S(1'b1), 
        .Q(\sigmoid_hold_reg[3][2] ) );
  DFFSR \sigmoid_hold_reg_reg[3][1]  ( .D(n264), .CLK(clk), .R(n39), .S(1'b1), 
        .Q(\sigmoid_hold_reg[3][1] ) );
  DFFSR \sigmoid_hold_reg_reg[3][0]  ( .D(n262), .CLK(clk), .R(n39), .S(1'b1), 
        .Q(\sigmoid_hold_reg[3][0] ) );
  DFFSR \sigmoid_hold_reg_reg[4][3]  ( .D(n260), .CLK(clk), .R(n39), .S(1'b1), 
        .Q(\sigmoid_hold_reg[4][3] ) );
  DFFSR \sigmoid_hold_reg_reg[4][2]  ( .D(n258), .CLK(clk), .R(n39), .S(1'b1), 
        .Q(\sigmoid_hold_reg[4][2] ) );
  DFFSR \sigmoid_hold_reg_reg[4][1]  ( .D(n256), .CLK(clk), .R(n37), .S(1'b1), 
        .Q(\sigmoid_hold_reg[4][1] ) );
  DFFSR \sigmoid_hold_reg_reg[4][0]  ( .D(n254), .CLK(clk), .R(n37), .S(1'b1), 
        .Q(\sigmoid_hold_reg[4][0] ) );
  DFFSR \sigmoid_hold_reg_reg[5][3]  ( .D(n252), .CLK(clk), .R(n37), .S(1'b1), 
        .Q(\sigmoid_hold_reg[5][3] ) );
  DFFSR \sigmoid_hold_reg_reg[5][2]  ( .D(n250), .CLK(clk), .R(n37), .S(1'b1), 
        .Q(\sigmoid_hold_reg[5][2] ) );
  DFFSR \sigmoid_hold_reg_reg[5][1]  ( .D(n248), .CLK(clk), .R(n37), .S(1'b1), 
        .Q(\sigmoid_hold_reg[5][1] ) );
  DFFSR \sigmoid_hold_reg_reg[5][0]  ( .D(n246), .CLK(clk), .R(n37), .S(1'b1), 
        .Q(\sigmoid_hold_reg[5][0] ) );
  DFFSR \sigmoid_hold_reg_reg[6][3]  ( .D(n244), .CLK(clk), .R(n37), .S(1'b1), 
        .Q(\sigmoid_hold_reg[6][3] ) );
  DFFSR \sigmoid_hold_reg_reg[6][2]  ( .D(n242), .CLK(clk), .R(n37), .S(1'b1), 
        .Q(\sigmoid_hold_reg[6][2] ) );
  DFFSR \sigmoid_hold_reg_reg[6][1]  ( .D(n240), .CLK(clk), .R(n37), .S(1'b1), 
        .Q(\sigmoid_hold_reg[6][1] ) );
  DFFSR \sigmoid_hold_reg_reg[6][0]  ( .D(n238), .CLK(clk), .R(n37), .S(1'b1), 
        .Q(\sigmoid_hold_reg[6][0] ) );
  DFFSR \sigmoid_hold_reg_reg[7][3]  ( .D(n236), .CLK(clk), .R(n37), .S(1'b1), 
        .Q(\sigmoid_hold_reg[7][3] ) );
  DFFSR \sigmoid_hold_reg_reg[7][2]  ( .D(n234), .CLK(clk), .R(n37), .S(1'b1), 
        .Q(\sigmoid_hold_reg[7][2] ) );
  DFFSR \sigmoid_hold_reg_reg[7][1]  ( .D(n232), .CLK(clk), .R(n37), .S(1'b1), 
        .Q(\sigmoid_hold_reg[7][1] ) );
  DFFSR \sigmoid_hold_reg_reg[7][0]  ( .D(n230), .CLK(clk), .R(n37), .S(1'b1), 
        .Q(\sigmoid_hold_reg[7][0] ) );
  DFFSR \sigmoid_hold_reg_reg[8][3]  ( .D(n228), .CLK(clk), .R(n37), .S(1'b1), 
        .Q(\sigmoid_hold_reg[8][3] ) );
  DFFSR \sigmoid_hold_reg_reg[8][2]  ( .D(n226), .CLK(clk), .R(n37), .S(1'b1), 
        .Q(\sigmoid_hold_reg[8][2] ) );
  DFFSR \sigmoid_hold_reg_reg[8][1]  ( .D(n224), .CLK(clk), .R(n37), .S(1'b1), 
        .Q(\sigmoid_hold_reg[8][1] ) );
  DFFSR \sigmoid_hold_reg_reg[8][0]  ( .D(n222), .CLK(clk), .R(n37), .S(1'b1), 
        .Q(\sigmoid_hold_reg[8][0] ) );
  DFFSR \sigmoid_hold_reg_reg[9][3]  ( .D(n220), .CLK(clk), .R(n37), .S(1'b1), 
        .Q(\sigmoid_hold_reg[9][3] ) );
  DFFSR \sigmoid_hold_reg_reg[9][2]  ( .D(n218), .CLK(clk), .R(n37), .S(1'b1), 
        .Q(\sigmoid_hold_reg[9][2] ) );
  DFFSR \sigmoid_hold_reg_reg[9][1]  ( .D(n216), .CLK(clk), .R(n37), .S(1'b1), 
        .Q(\sigmoid_hold_reg[9][1] ) );
  DFFSR \sigmoid_hold_reg_reg[9][0]  ( .D(n214), .CLK(clk), .R(n37), .S(1'b1), 
        .Q(\sigmoid_hold_reg[9][0] ) );
  DFFSR \sub_reg_reg[3]  ( .D(N152), .CLK(clk), .R(n37), .S(1'b1), .Q(
        sub_reg[3]) );
  DFFSR \sub_reg_reg[2]  ( .D(N151), .CLK(clk), .R(n37), .S(1'b1), .Q(
        sub_reg[2]) );
  DFFSR \sub_reg_reg[1]  ( .D(N150), .CLK(clk), .R(n37), .S(1'b1), .Q(
        sub_reg[1]) );
  DFFSR \sub_reg_reg[0]  ( .D(N149), .CLK(clk), .R(n37), .S(1'b1), .Q(
        sub_reg[0]) );
  DFFSR \sq_reg_reg[4]  ( .D(N157), .CLK(clk), .R(n35), .S(1'b1), .Q(sq_reg[4]) );
  DFFSR \sq_reg_reg[3]  ( .D(N156), .CLK(clk), .R(n35), .S(1'b1), .Q(sq_reg[3]) );
  DFFSR \sq_reg_reg[2]  ( .D(N155), .CLK(clk), .R(n35), .S(1'b1), .Q(sq_reg[2]) );
  DFFSR \sq_reg_reg[1]  ( .D(N154), .CLK(clk), .R(n35), .S(1'b1), .Q(sq_reg[1]) );
  DFFSR \sto_reg_reg[0]  ( .D(n71), .CLK(clk), .R(n35), .S(1'b1), .Q(
        cost_output[0]) );
  DFFSR \sto_reg_reg[1]  ( .D(n69), .CLK(clk), .R(n35), .S(1'b1), .Q(
        cost_output[1]) );
  DFFSR \add_reg_reg[2]  ( .D(N160), .CLK(clk), .R(n35), .S(1'b1), .Q(
        add_reg[2]) );
  DFFSR \sto_reg_reg[2]  ( .D(n67), .CLK(clk), .R(n35), .S(1'b1), .Q(
        cost_output[2]) );
  DFFSR \add_reg_reg[3]  ( .D(N161), .CLK(clk), .R(n35), .S(1'b1), .Q(
        add_reg[3]) );
  DFFSR \sto_reg_reg[3]  ( .D(n65), .CLK(clk), .R(n35), .S(1'b1), .Q(
        cost_output[3]) );
  DFFSR \add_reg_reg[4]  ( .D(N162), .CLK(clk), .R(n35), .S(1'b1), .Q(
        add_reg[4]) );
  DFFSR \sto_reg_reg[4]  ( .D(n63), .CLK(clk), .R(n35), .S(1'b1), .Q(
        cost_output[4]) );
  DFFSR \add_reg_reg[5]  ( .D(N163), .CLK(clk), .R(n35), .S(1'b1), .Q(
        add_reg[5]) );
  DFFSR \sto_reg_reg[5]  ( .D(n61), .CLK(clk), .R(n35), .S(1'b1), .Q(
        cost_output[5]) );
  DFFSR \add_reg_reg[6]  ( .D(N164), .CLK(clk), .R(n35), .S(1'b1), .Q(
        add_reg[6]) );
  DFFSR \sto_reg_reg[6]  ( .D(n59), .CLK(clk), .R(n35), .S(1'b1), .Q(
        cost_output[6]) );
  DFFSR \add_reg_reg[7]  ( .D(N165), .CLK(clk), .R(n35), .S(1'b1), .Q(
        add_reg[7]) );
  DFFSR \sto_reg_reg[7]  ( .D(n57), .CLK(clk), .R(n35), .S(1'b1), .Q(
        cost_output[7]) );
  NAND3X1 U3 ( .A(n1), .B(n2), .C(n3), .Y(next_state[2]) );
  AOI21X1 U4 ( .A(n4), .B(n83), .C(n75), .Y(n3) );
  NAND2X1 U6 ( .A(n7), .B(n77), .Y(next_state[1]) );
  AOI22X1 U7 ( .A(n9), .B(state[0]), .C(n4), .D(n83), .Y(n7) );
  NAND2X1 U8 ( .A(n20), .B(n43), .Y(next_state[0]) );
  OAI21X1 U10 ( .A(n4), .B(n13), .C(n77), .Y(n12) );
  OAI21X1 U12 ( .A(state[2]), .B(n15), .C(n6), .Y(n14) );
  NAND3X1 U13 ( .A(n1), .B(n13), .C(n16), .Y(n6) );
  NOR2X1 U14 ( .A(n85), .B(n18), .Y(n16) );
  NAND2X1 U15 ( .A(n15), .B(n89), .Y(n18) );
  OAI21X1 U17 ( .A(n25), .B(n336), .C(n22), .Y(n214) );
  NAND2X1 U18 ( .A(\digit_weights[9][0] ), .B(n33), .Y(n22) );
  OAI21X1 U20 ( .A(n21), .B(n335), .C(n24), .Y(n216) );
  NAND2X1 U21 ( .A(\digit_weights[9][1] ), .B(n33), .Y(n24) );
  OAI21X1 U23 ( .A(n21), .B(n334), .C(n26), .Y(n218) );
  NAND2X1 U24 ( .A(\digit_weights[9][2] ), .B(n33), .Y(n26) );
  OAI21X1 U26 ( .A(n21), .B(n333), .C(n28), .Y(n220) );
  NAND2X1 U27 ( .A(\digit_weights[9][3] ), .B(n33), .Y(n28) );
  OAI21X1 U29 ( .A(n21), .B(n332), .C(n30), .Y(n222) );
  NAND2X1 U30 ( .A(\digit_weights[8][0] ), .B(n33), .Y(n30) );
  OAI21X1 U32 ( .A(n21), .B(n331), .C(n32), .Y(n224) );
  NAND2X1 U33 ( .A(\digit_weights[8][1] ), .B(n33), .Y(n32) );
  OAI21X1 U35 ( .A(n21), .B(n330), .C(n34), .Y(n226) );
  NAND2X1 U36 ( .A(\digit_weights[8][2] ), .B(n31), .Y(n34) );
  OAI21X1 U38 ( .A(n21), .B(n329), .C(n36), .Y(n228) );
  NAND2X1 U39 ( .A(\digit_weights[8][3] ), .B(n31), .Y(n36) );
  OAI21X1 U41 ( .A(n21), .B(n328), .C(n38), .Y(n230) );
  NAND2X1 U42 ( .A(\digit_weights[7][0] ), .B(n31), .Y(n38) );
  OAI21X1 U44 ( .A(n21), .B(n327), .C(n40), .Y(n232) );
  NAND2X1 U45 ( .A(\digit_weights[7][1] ), .B(n31), .Y(n40) );
  OAI21X1 U47 ( .A(n21), .B(n326), .C(n42), .Y(n234) );
  NAND2X1 U48 ( .A(\digit_weights[7][2] ), .B(n31), .Y(n42) );
  OAI21X1 U50 ( .A(n21), .B(n325), .C(n44), .Y(n236) );
  NAND2X1 U51 ( .A(\digit_weights[7][3] ), .B(n31), .Y(n44) );
  OAI21X1 U53 ( .A(n21), .B(n324), .C(n46), .Y(n238) );
  NAND2X1 U54 ( .A(\digit_weights[6][0] ), .B(n33), .Y(n46) );
  OAI21X1 U55 ( .A(n21), .B(n323), .C(n48), .Y(n240) );
  NAND2X1 U56 ( .A(\digit_weights[6][1] ), .B(n31), .Y(n48) );
  OAI21X1 U57 ( .A(n23), .B(n322), .C(n50), .Y(n242) );
  NAND2X1 U58 ( .A(\digit_weights[6][2] ), .B(n31), .Y(n50) );
  OAI21X1 U59 ( .A(n23), .B(n321), .C(n52), .Y(n244) );
  NAND2X1 U60 ( .A(\digit_weights[6][3] ), .B(n29), .Y(n52) );
  OAI21X1 U61 ( .A(n23), .B(n320), .C(n54), .Y(n246) );
  NAND2X1 U62 ( .A(\digit_weights[5][0] ), .B(n29), .Y(n54) );
  OAI21X1 U63 ( .A(n23), .B(n319), .C(n56), .Y(n248) );
  NAND2X1 U64 ( .A(\digit_weights[5][1] ), .B(n31), .Y(n56) );
  OAI21X1 U65 ( .A(n23), .B(n318), .C(n58), .Y(n250) );
  NAND2X1 U66 ( .A(\digit_weights[5][2] ), .B(n29), .Y(n58) );
  OAI21X1 U67 ( .A(n23), .B(n317), .C(n60), .Y(n252) );
  NAND2X1 U68 ( .A(\digit_weights[5][3] ), .B(n29), .Y(n60) );
  OAI21X1 U69 ( .A(n23), .B(n316), .C(n62), .Y(n254) );
  NAND2X1 U70 ( .A(\digit_weights[4][0] ), .B(n29), .Y(n62) );
  OAI21X1 U71 ( .A(n23), .B(n314), .C(n64), .Y(n256) );
  NAND2X1 U72 ( .A(\digit_weights[4][1] ), .B(n29), .Y(n64) );
  OAI21X1 U73 ( .A(n23), .B(n313), .C(n66), .Y(n258) );
  NAND2X1 U74 ( .A(\digit_weights[4][2] ), .B(n31), .Y(n66) );
  OAI21X1 U75 ( .A(n23), .B(n204), .C(n68), .Y(n260) );
  NAND2X1 U76 ( .A(\digit_weights[4][3] ), .B(n29), .Y(n68) );
  OAI21X1 U77 ( .A(n23), .B(n203), .C(n70), .Y(n262) );
  NAND2X1 U78 ( .A(\digit_weights[3][0] ), .B(n29), .Y(n70) );
  OAI21X1 U79 ( .A(n23), .B(n201), .C(n72), .Y(n264) );
  NAND2X1 U80 ( .A(\digit_weights[3][1] ), .B(n29), .Y(n72) );
  OAI21X1 U81 ( .A(n23), .B(n183), .C(n74), .Y(n266) );
  NAND2X1 U82 ( .A(\digit_weights[3][2] ), .B(n29), .Y(n74) );
  OAI21X1 U83 ( .A(n25), .B(n182), .C(n76), .Y(n268) );
  NAND2X1 U84 ( .A(\digit_weights[3][3] ), .B(n31), .Y(n76) );
  OAI21X1 U85 ( .A(n25), .B(n178), .C(n78), .Y(n270) );
  NAND2X1 U86 ( .A(\digit_weights[2][0] ), .B(n29), .Y(n78) );
  OAI21X1 U87 ( .A(n25), .B(n177), .C(n80), .Y(n272) );
  NAND2X1 U88 ( .A(\digit_weights[2][1] ), .B(n29), .Y(n80) );
  OAI21X1 U89 ( .A(n25), .B(n176), .C(n82), .Y(n274) );
  NAND2X1 U90 ( .A(\digit_weights[2][2] ), .B(n29), .Y(n82) );
  OAI21X1 U91 ( .A(n25), .B(n145), .C(n84), .Y(n276) );
  NAND2X1 U92 ( .A(\digit_weights[2][3] ), .B(n27), .Y(n84) );
  OAI21X1 U93 ( .A(n25), .B(n133), .C(n86), .Y(n278) );
  NAND2X1 U94 ( .A(\digit_weights[1][0] ), .B(n31), .Y(n86) );
  OAI21X1 U96 ( .A(n25), .B(n132), .C(n88), .Y(n280) );
  NAND2X1 U97 ( .A(\digit_weights[1][1] ), .B(n29), .Y(n88) );
  OAI21X1 U99 ( .A(n25), .B(n131), .C(n90), .Y(n282) );
  NAND2X1 U100 ( .A(\digit_weights[1][2] ), .B(n29), .Y(n90) );
  OAI21X1 U102 ( .A(n25), .B(n122), .C(n92), .Y(n284) );
  NAND2X1 U103 ( .A(\digit_weights[1][3] ), .B(n29), .Y(n92) );
  OAI21X1 U105 ( .A(n25), .B(n119), .C(n94), .Y(n286) );
  NAND2X1 U106 ( .A(\digit_weights[0][0] ), .B(n29), .Y(n94) );
  OAI21X1 U108 ( .A(n25), .B(n117), .C(n96), .Y(n288) );
  NAND2X1 U109 ( .A(\digit_weights[0][1] ), .B(n29), .Y(n96) );
  OAI21X1 U111 ( .A(n27), .B(n115), .C(n98), .Y(n290) );
  NAND2X1 U112 ( .A(\digit_weights[0][2] ), .B(n31), .Y(n98) );
  OAI21X1 U114 ( .A(n27), .B(n113), .C(n100), .Y(n292) );
  NAND2X1 U115 ( .A(\digit_weights[0][3] ), .B(n31), .Y(n100) );
  OAI21X1 U117 ( .A(n27), .B(n111), .C(n102), .Y(n294) );
  NAND2X1 U118 ( .A(expected_label[9]), .B(n31), .Y(n102) );
  OAI21X1 U120 ( .A(n27), .B(n109), .C(n104), .Y(n296) );
  NAND2X1 U121 ( .A(expected_label[8]), .B(n31), .Y(n104) );
  OAI21X1 U123 ( .A(n27), .B(n107), .C(n106), .Y(n298) );
  NAND2X1 U124 ( .A(expected_label[7]), .B(n33), .Y(n106) );
  OAI21X1 U126 ( .A(n27), .B(n105), .C(n108), .Y(n300) );
  NAND2X1 U127 ( .A(expected_label[6]), .B(n31), .Y(n108) );
  OAI21X1 U128 ( .A(n27), .B(n103), .C(n110), .Y(n302) );
  NAND2X1 U129 ( .A(expected_label[5]), .B(n31), .Y(n110) );
  OAI21X1 U130 ( .A(n25), .B(n101), .C(n112), .Y(n304) );
  NAND2X1 U131 ( .A(expected_label[4]), .B(n33), .Y(n112) );
  OAI21X1 U132 ( .A(n27), .B(n99), .C(n114), .Y(n306) );
  NAND2X1 U133 ( .A(expected_label[3]), .B(n33), .Y(n114) );
  OAI21X1 U134 ( .A(n27), .B(n97), .C(n116), .Y(n308) );
  NAND2X1 U135 ( .A(expected_label[2]), .B(n33), .Y(n116) );
  OAI21X1 U136 ( .A(n27), .B(n95), .C(n118), .Y(n310) );
  NAND2X1 U137 ( .A(expected_label[1]), .B(n33), .Y(n118) );
  OAI21X1 U139 ( .A(n27), .B(n93), .C(n120), .Y(n312) );
  NAND2X1 U140 ( .A(expected_label[0]), .B(n33), .Y(n120) );
  AOI22X1 U143 ( .A(cost_output[7]), .B(n20), .C(add_reg[7]), .D(n73), .Y(n121) );
  AOI22X1 U145 ( .A(cost_output[6]), .B(n20), .C(add_reg[6]), .D(n73), .Y(n123) );
  AOI22X1 U147 ( .A(cost_output[5]), .B(n20), .C(add_reg[5]), .D(n73), .Y(n124) );
  AOI22X1 U149 ( .A(cost_output[4]), .B(n20), .C(add_reg[4]), .D(n73), .Y(n125) );
  AOI22X1 U151 ( .A(cost_output[3]), .B(n20), .C(add_reg[3]), .D(n73), .Y(n126) );
  AOI22X1 U153 ( .A(cost_output[2]), .B(n20), .C(add_reg[2]), .D(n73), .Y(n127) );
  AOI22X1 U155 ( .A(cost_output[1]), .B(n20), .C(add_reg[1]), .D(n73), .Y(n128) );
  AOI22X1 U157 ( .A(cost_output[0]), .B(n20), .C(add_reg[0]), .D(n73), .Y(n129) );
  NOR2X1 U158 ( .A(n73), .B(n27), .Y(n10) );
  NAND3X1 U161 ( .A(n81), .B(n87), .C(state[2]), .Y(n1) );
  NAND3X1 U163 ( .A(state[0]), .B(n87), .C(state[2]), .Y(n13) );
  NOR2X1 U165 ( .A(n91), .B(n15), .Y(calculation_complete) );
  NAND2X1 U166 ( .A(state[1]), .B(n81), .Y(n15) );
  NAND3X1 U167 ( .A(n134), .B(n135), .C(n136), .Y(\mux_label[3] ) );
  NOR2X1 U168 ( .A(n137), .B(n138), .Y(n136) );
  OAI22X1 U169 ( .A(n101), .B(n139), .C(n99), .D(n140), .Y(n138) );
  OAI21X1 U172 ( .A(n97), .B(n141), .C(n142), .Y(n137) );
  AOI22X1 U173 ( .A(n143), .B(label_hold_reg[0]), .C(n144), .D(
        label_hold_reg[1]), .Y(n142) );
  AOI21X1 U175 ( .A(n47), .B(label_hold_reg[7]), .C(n146), .Y(n135) );
  OAI22X1 U176 ( .A(n105), .B(n147), .C(n103), .D(n148), .Y(n146) );
  AOI22X1 U179 ( .A(n149), .B(label_hold_reg[8]), .C(label_hold_reg[9]), .D(n4), .Y(n134) );
  NAND3X1 U180 ( .A(n150), .B(n151), .C(n152), .Y(mux_confidence[3]) );
  NOR2X1 U181 ( .A(n153), .B(n154), .Y(n152) );
  OAI22X1 U182 ( .A(n204), .B(n139), .C(n182), .D(n140), .Y(n154) );
  OAI21X1 U185 ( .A(n145), .B(n141), .C(n155), .Y(n153) );
  AOI22X1 U186 ( .A(n143), .B(\sigmoid_hold_reg[0][3] ), .C(n144), .D(
        \sigmoid_hold_reg[1][3] ), .Y(n155) );
  AOI21X1 U188 ( .A(n47), .B(\sigmoid_hold_reg[7][3] ), .C(n156), .Y(n151) );
  OAI22X1 U189 ( .A(n321), .B(n147), .C(n317), .D(n148), .Y(n156) );
  AOI22X1 U192 ( .A(n149), .B(\sigmoid_hold_reg[8][3] ), .C(
        \sigmoid_hold_reg[9][3] ), .D(n4), .Y(n150) );
  NAND3X1 U193 ( .A(n157), .B(n158), .C(n159), .Y(mux_confidence[2]) );
  NOR2X1 U194 ( .A(n160), .B(n161), .Y(n159) );
  OAI22X1 U195 ( .A(n313), .B(n139), .C(n183), .D(n140), .Y(n161) );
  OAI21X1 U198 ( .A(n176), .B(n141), .C(n162), .Y(n160) );
  AOI22X1 U199 ( .A(n143), .B(\sigmoid_hold_reg[0][2] ), .C(n144), .D(
        \sigmoid_hold_reg[1][2] ), .Y(n162) );
  AOI21X1 U201 ( .A(n47), .B(\sigmoid_hold_reg[7][2] ), .C(n163), .Y(n158) );
  OAI22X1 U202 ( .A(n322), .B(n147), .C(n318), .D(n148), .Y(n163) );
  AOI22X1 U205 ( .A(n149), .B(\sigmoid_hold_reg[8][2] ), .C(
        \sigmoid_hold_reg[9][2] ), .D(n4), .Y(n157) );
  NAND3X1 U206 ( .A(n164), .B(n165), .C(n166), .Y(mux_confidence[1]) );
  NOR2X1 U207 ( .A(n167), .B(n168), .Y(n166) );
  OAI22X1 U208 ( .A(n314), .B(n139), .C(n201), .D(n140), .Y(n168) );
  OAI21X1 U211 ( .A(n177), .B(n141), .C(n169), .Y(n167) );
  AOI22X1 U212 ( .A(n143), .B(\sigmoid_hold_reg[0][1] ), .C(n144), .D(
        \sigmoid_hold_reg[1][1] ), .Y(n169) );
  AOI21X1 U214 ( .A(n47), .B(\sigmoid_hold_reg[7][1] ), .C(n170), .Y(n165) );
  OAI22X1 U215 ( .A(n323), .B(n147), .C(n319), .D(n148), .Y(n170) );
  AOI22X1 U218 ( .A(n149), .B(\sigmoid_hold_reg[8][1] ), .C(
        \sigmoid_hold_reg[9][1] ), .D(n4), .Y(n164) );
  NAND3X1 U219 ( .A(n171), .B(n172), .C(n173), .Y(mux_confidence[0]) );
  NOR2X1 U220 ( .A(n174), .B(n175), .Y(n173) );
  OAI22X1 U221 ( .A(n316), .B(n139), .C(n203), .D(n140), .Y(n175) );
  NAND2X1 U222 ( .A(n51), .B(cur_input[0]), .Y(n140) );
  NAND3X1 U224 ( .A(n45), .B(n49), .C(n179), .Y(n139) );
  OAI21X1 U226 ( .A(n178), .B(n141), .C(n180), .Y(n174) );
  AOI22X1 U227 ( .A(n143), .B(\sigmoid_hold_reg[0][0] ), .C(n144), .D(
        \sigmoid_hold_reg[1][0] ), .Y(n180) );
  NOR2X1 U228 ( .A(n181), .B(n45), .Y(n144) );
  NOR2X1 U229 ( .A(n181), .B(cur_input[0]), .Y(n143) );
  NAND3X1 U230 ( .A(n53), .B(n55), .C(n49), .Y(n181) );
  NAND2X1 U231 ( .A(n51), .B(n45), .Y(n141) );
  NAND3X1 U233 ( .A(n53), .B(n55), .C(cur_input[1]), .Y(n184) );
  AOI21X1 U236 ( .A(n47), .B(\sigmoid_hold_reg[7][0] ), .C(n185), .Y(n172) );
  OAI22X1 U237 ( .A(n324), .B(n147), .C(n320), .D(n148), .Y(n185) );
  NAND3X1 U238 ( .A(cur_input[0]), .B(n49), .C(n179), .Y(n148) );
  NAND3X1 U240 ( .A(cur_input[1]), .B(n45), .C(n179), .Y(n147) );
  NAND3X1 U243 ( .A(cur_input[1]), .B(cur_input[0]), .C(n179), .Y(n186) );
  NOR2X1 U244 ( .A(n53), .B(cur_input[3]), .Y(n179) );
  AOI22X1 U245 ( .A(n149), .B(\sigmoid_hold_reg[8][0] ), .C(
        \sigmoid_hold_reg[9][0] ), .D(n4), .Y(n171) );
  NOR2X1 U246 ( .A(n45), .B(n187), .Y(n4) );
  NOR2X1 U248 ( .A(n187), .B(cur_input[0]), .Y(n149) );
  NAND3X1 U249 ( .A(n49), .B(n53), .C(cur_input[3]), .Y(n187) );
  NAND3X1 U258 ( .A(state[0]), .B(n91), .C(state[1]), .Y(n2) );
  NAND3X1 U277 ( .A(n9), .B(n81), .C(cost_en), .Y(n130) );
  NOR2X1 U279 ( .A(state[1]), .B(state[2]), .Y(n9) );
  AND2X2 U252 ( .A(sq_reg[4]), .B(n85), .Y(adder_input_a[4]) );
  AND2X2 U253 ( .A(sq_reg[3]), .B(n85), .Y(adder_input_a[3]) );
  AND2X2 U254 ( .A(sq_reg[2]), .B(n85), .Y(adder_input_a[2]) );
  AND2X2 U255 ( .A(sq_reg[1]), .B(n85), .Y(adder_input_a[1]) );
  AND2X2 U256 ( .A(sq_reg[0]), .B(n85), .Y(adder_input_a[0]) );
  AND2X2 U260 ( .A(next_add_reg[7]), .B(n130), .Y(N165) );
  AND2X2 U261 ( .A(next_add_reg[6]), .B(n130), .Y(N164) );
  AND2X2 U262 ( .A(next_add_reg[5]), .B(n130), .Y(N163) );
  AND2X2 U263 ( .A(next_add_reg[4]), .B(n130), .Y(N162) );
  AND2X2 U264 ( .A(next_add_reg[3]), .B(n130), .Y(N161) );
  AND2X2 U265 ( .A(next_add_reg[2]), .B(n130), .Y(N160) );
  AND2X2 U266 ( .A(next_add_reg[1]), .B(n130), .Y(N159) );
  AND2X2 U267 ( .A(next_add_reg[0]), .B(n130), .Y(N158) );
  AND2X2 U268 ( .A(next_sq_reg[6]), .B(n130), .Y(N157) );
  AND2X2 U269 ( .A(next_sq_reg[5]), .B(n130), .Y(N156) );
  AND2X2 U270 ( .A(next_sq_reg[4]), .B(n130), .Y(N155) );
  AND2X2 U271 ( .A(next_sq_reg[3]), .B(n130), .Y(N154) );
  AND2X2 U272 ( .A(next_sq_reg[2]), .B(n130), .Y(N153) );
  AND2X2 U273 ( .A(next_sub_reg[3]), .B(n130), .Y(N152) );
  AND2X2 U274 ( .A(next_sub_reg[2]), .B(n130), .Y(N151) );
  AND2X2 U275 ( .A(next_sub_reg[1]), .B(n130), .Y(N150) );
  AND2X2 U276 ( .A(next_sub_reg[0]), .B(n130), .Y(N149) );
  abs_subtractor_4bit SUB_BLOCK ( .a({\mux_label[3] , 1'b0, 1'b0, 1'b0}), .b(
        mux_confidence), .mag_diff(next_sub_reg) );
  mult_4bit SQ_BLOCK ( .a(sub_reg), .b(sub_reg), .product({
        SYNOPSYS_UNCONNECTED__0, next_sq_reg[6:2], SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2}) );
  adder_8bit ADD_BLOCK ( .a({1'b0, 1'b0, 1'b0, adder_input_a}), .b(cost_output), .carry_in(1'b0), .sum(next_add_reg) );
  flex_counter_NUM_CNT_BITS4_1 IND_BLOCK ( .clk(clk), .n_rst(n35), .clear(
        cost_en), .count_enable(n83), .rollover_val({1'b1, 1'b0, 1'b0, 1'b1}), 
        .count_out(cur_input) );
  DFFSR \sq_reg_reg[0]  ( .D(N153), .CLK(clk), .R(n35), .S(1'b1), .Q(sq_reg[0]) );
  DFFSR \add_reg_reg[1]  ( .D(N159), .CLK(clk), .R(n35), .S(1'b1), .Q(
        add_reg[1]) );
  DFFSR \add_reg_reg[0]  ( .D(N158), .CLK(clk), .R(n35), .S(1'b1), .Q(
        add_reg[0]) );
  DFFSR \state_reg[2]  ( .D(next_state[2]), .CLK(clk), .R(n41), .S(1'b1), .Q(
        state[2]) );
  DFFSR \state_reg[1]  ( .D(next_state[1]), .CLK(clk), .R(n41), .S(1'b1), .Q(
        state[1]) );
  BUFX2 U22 ( .A(n79), .Y(n27) );
  BUFX2 U25 ( .A(n10), .Y(n20) );
  BUFX2 U28 ( .A(n79), .Y(n21) );
  BUFX2 U31 ( .A(n79), .Y(n23) );
  BUFX2 U34 ( .A(n79), .Y(n25) );
  BUFX2 U37 ( .A(n79), .Y(n29) );
  BUFX2 U40 ( .A(n79), .Y(n31) );
  BUFX2 U43 ( .A(n79), .Y(n33) );
  INVX2 U46 ( .A(n1), .Y(n73) );
  BUFX2 U49 ( .A(n_rst), .Y(n41) );
  BUFX4 U52 ( .A(n_rst), .Y(n35) );
  BUFX4 U95 ( .A(n_rst), .Y(n37) );
  BUFX4 U98 ( .A(n_rst), .Y(n39) );
  INVX2 U101 ( .A(n12), .Y(n43) );
  INVX2 U104 ( .A(cur_input[0]), .Y(n45) );
  INVX2 U107 ( .A(n186), .Y(n47) );
  INVX2 U110 ( .A(cur_input[1]), .Y(n49) );
  INVX2 U113 ( .A(n184), .Y(n51) );
  INVX2 U116 ( .A(cur_input[2]), .Y(n53) );
  INVX2 U119 ( .A(cur_input[3]), .Y(n55) );
  INVX2 U122 ( .A(n121), .Y(n57) );
  INVX2 U125 ( .A(n123), .Y(n59) );
  INVX2 U138 ( .A(n124), .Y(n61) );
  INVX2 U141 ( .A(n125), .Y(n63) );
  INVX2 U142 ( .A(n126), .Y(n65) );
  INVX2 U144 ( .A(n127), .Y(n67) );
  INVX2 U146 ( .A(n128), .Y(n69) );
  INVX2 U148 ( .A(n129), .Y(n71) );
  INVX2 U150 ( .A(n6), .Y(n75) );
  INVX2 U152 ( .A(n14), .Y(n77) );
  INVX2 U154 ( .A(n130), .Y(n79) );
  INVX2 U156 ( .A(state[0]), .Y(n81) );
  INVX2 U159 ( .A(n13), .Y(n83) );
  INVX2 U160 ( .A(n2), .Y(n85) );
  INVX2 U162 ( .A(state[1]), .Y(n87) );
  INVX2 U164 ( .A(n9), .Y(n89) );
  INVX2 U170 ( .A(state[2]), .Y(n91) );
  INVX2 U171 ( .A(label_hold_reg[0]), .Y(n93) );
  INVX2 U174 ( .A(label_hold_reg[1]), .Y(n95) );
  INVX2 U177 ( .A(label_hold_reg[2]), .Y(n97) );
  INVX2 U178 ( .A(label_hold_reg[3]), .Y(n99) );
  INVX2 U183 ( .A(label_hold_reg[4]), .Y(n101) );
  INVX2 U184 ( .A(label_hold_reg[5]), .Y(n103) );
  INVX2 U187 ( .A(label_hold_reg[6]), .Y(n105) );
  INVX2 U190 ( .A(label_hold_reg[7]), .Y(n107) );
  INVX2 U191 ( .A(label_hold_reg[8]), .Y(n109) );
  INVX2 U196 ( .A(label_hold_reg[9]), .Y(n111) );
  INVX2 U197 ( .A(\sigmoid_hold_reg[0][3] ), .Y(n113) );
  INVX2 U200 ( .A(\sigmoid_hold_reg[0][2] ), .Y(n115) );
  INVX2 U203 ( .A(\sigmoid_hold_reg[0][1] ), .Y(n117) );
  INVX2 U204 ( .A(\sigmoid_hold_reg[0][0] ), .Y(n119) );
  INVX2 U209 ( .A(\sigmoid_hold_reg[1][3] ), .Y(n122) );
  INVX2 U210 ( .A(\sigmoid_hold_reg[1][2] ), .Y(n131) );
  INVX2 U213 ( .A(\sigmoid_hold_reg[1][1] ), .Y(n132) );
  INVX2 U216 ( .A(\sigmoid_hold_reg[1][0] ), .Y(n133) );
  INVX2 U217 ( .A(\sigmoid_hold_reg[2][3] ), .Y(n145) );
  INVX2 U223 ( .A(\sigmoid_hold_reg[2][2] ), .Y(n176) );
  INVX2 U225 ( .A(\sigmoid_hold_reg[2][1] ), .Y(n177) );
  INVX2 U232 ( .A(\sigmoid_hold_reg[2][0] ), .Y(n178) );
  INVX2 U234 ( .A(\sigmoid_hold_reg[3][3] ), .Y(n182) );
  INVX2 U235 ( .A(\sigmoid_hold_reg[3][2] ), .Y(n183) );
  INVX2 U239 ( .A(\sigmoid_hold_reg[3][1] ), .Y(n201) );
  INVX2 U241 ( .A(\sigmoid_hold_reg[3][0] ), .Y(n203) );
  INVX2 U242 ( .A(\sigmoid_hold_reg[4][3] ), .Y(n204) );
  INVX2 U247 ( .A(\sigmoid_hold_reg[4][2] ), .Y(n313) );
  INVX2 U250 ( .A(\sigmoid_hold_reg[4][1] ), .Y(n314) );
  INVX2 U251 ( .A(\sigmoid_hold_reg[4][0] ), .Y(n316) );
  INVX2 U257 ( .A(\sigmoid_hold_reg[5][3] ), .Y(n317) );
  INVX2 U259 ( .A(\sigmoid_hold_reg[5][2] ), .Y(n318) );
  INVX2 U278 ( .A(\sigmoid_hold_reg[5][1] ), .Y(n319) );
  INVX2 U293 ( .A(\sigmoid_hold_reg[5][0] ), .Y(n320) );
  INVX2 U295 ( .A(\sigmoid_hold_reg[6][3] ), .Y(n321) );
  INVX2 U296 ( .A(\sigmoid_hold_reg[6][2] ), .Y(n322) );
  INVX2 U355 ( .A(\sigmoid_hold_reg[6][1] ), .Y(n323) );
  INVX2 U356 ( .A(\sigmoid_hold_reg[6][0] ), .Y(n324) );
  INVX2 U358 ( .A(\sigmoid_hold_reg[7][3] ), .Y(n325) );
  INVX2 U359 ( .A(\sigmoid_hold_reg[7][2] ), .Y(n326) );
  INVX2 U360 ( .A(\sigmoid_hold_reg[7][1] ), .Y(n327) );
  INVX2 U361 ( .A(\sigmoid_hold_reg[7][0] ), .Y(n328) );
  INVX2 U362 ( .A(\sigmoid_hold_reg[8][3] ), .Y(n329) );
  INVX2 U363 ( .A(\sigmoid_hold_reg[8][2] ), .Y(n330) );
  INVX2 U364 ( .A(\sigmoid_hold_reg[8][1] ), .Y(n331) );
  INVX2 U365 ( .A(\sigmoid_hold_reg[8][0] ), .Y(n332) );
  INVX2 U366 ( .A(\sigmoid_hold_reg[9][3] ), .Y(n333) );
  INVX2 U367 ( .A(\sigmoid_hold_reg[9][2] ), .Y(n334) );
  INVX2 U368 ( .A(\sigmoid_hold_reg[9][1] ), .Y(n335) );
  INVX2 U369 ( .A(\sigmoid_hold_reg[9][0] ), .Y(n336) );
endmodule


module flex_counter_NUM_CNT_BITS4_0 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   n73, N24, N25, N26, N27, N28, n1, n3, n4, n5, n6, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67;

  DFFSR \count_out_reg[0]  ( .D(n45), .CLK(clk), .R(n_rst), .S(1'b1), .Q(n73)
         );
  DFFSR rollover_flag_reg ( .D(n49), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  DFFSR \count_out_reg[1]  ( .D(n46), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[2]  ( .D(n47), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[3]  ( .D(n48), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  OAI22X1 U18 ( .A(n67), .B(n17), .C(n66), .D(n65), .Y(n49) );
  NAND3X1 U19 ( .A(n64), .B(n63), .C(n62), .Y(n65) );
  XOR2X1 U20 ( .A(n20), .B(N26), .Y(n62) );
  XOR2X1 U21 ( .A(n15), .B(N24), .Y(n63) );
  XOR2X1 U22 ( .A(n19), .B(N25), .Y(n64) );
  NAND2X1 U23 ( .A(n61), .B(n60), .Y(n66) );
  XOR2X1 U24 ( .A(n44), .B(N27), .Y(n60) );
  NOR2X1 U25 ( .A(N28), .B(n59), .Y(n61) );
  OAI21X1 U26 ( .A(n58), .B(n44), .C(n57), .Y(n48) );
  NAND3X1 U27 ( .A(n56), .B(n55), .C(n54), .Y(n57) );
  NOR2X1 U28 ( .A(count_out[3]), .B(n20), .Y(n54) );
  AOI21X1 U29 ( .A(n56), .B(n20), .C(n53), .Y(n58) );
  OAI21X1 U30 ( .A(n14), .B(n20), .C(n52), .Y(n47) );
  NAND3X1 U31 ( .A(n55), .B(n20), .C(n56), .Y(n52) );
  OAI21X1 U32 ( .A(n55), .B(n18), .C(n67), .Y(n53) );
  NOR2X1 U33 ( .A(n19), .B(n15), .Y(n55) );
  OAI21X1 U34 ( .A(n16), .B(n19), .C(n51), .Y(n46) );
  NAND3X1 U35 ( .A(count_out[0]), .B(n19), .C(n56), .Y(n51) );
  OAI21X1 U36 ( .A(n18), .B(count_out[0]), .C(n67), .Y(n50) );
  OAI22X1 U37 ( .A(n15), .B(n67), .C(count_out[0]), .D(n18), .Y(n45) );
  NOR2X1 U38 ( .A(n59), .B(rollover_flag), .Y(n56) );
  NAND2X1 U39 ( .A(n3), .B(n59), .Y(n67) );
  NAND2X1 U40 ( .A(count_enable), .B(n3), .Y(n59) );
  INVX2 U7 ( .A(clear), .Y(n3) );
  INVX2 U9 ( .A(n1), .Y(count_out[0]) );
  INVX2 U10 ( .A(n73), .Y(n1) );
  INVX1 U11 ( .A(count_out[1]), .Y(n19) );
  INVX1 U12 ( .A(count_out[0]), .Y(n15) );
  NOR2X1 U13 ( .A(rollover_val[1]), .B(rollover_val[0]), .Y(n5) );
  AOI21X1 U14 ( .A(rollover_val[0]), .B(rollover_val[1]), .C(n5), .Y(n4) );
  NAND2X1 U15 ( .A(n5), .B(n13), .Y(n6) );
  OAI21X1 U16 ( .A(n5), .B(n13), .C(n6), .Y(N26) );
  NOR2X1 U17 ( .A(n6), .B(rollover_val[3]), .Y(N28) );
  AOI21X1 U41 ( .A(n6), .B(rollover_val[3]), .C(N28), .Y(n12) );
  INVX2 U42 ( .A(rollover_val[2]), .Y(n13) );
  INVX2 U43 ( .A(rollover_val[0]), .Y(N24) );
  INVX2 U44 ( .A(n12), .Y(N27) );
  INVX2 U45 ( .A(n4), .Y(N25) );
  INVX2 U46 ( .A(n53), .Y(n14) );
  INVX2 U47 ( .A(n50), .Y(n16) );
  INVX2 U48 ( .A(rollover_flag), .Y(n17) );
  INVX2 U49 ( .A(n56), .Y(n18) );
  INVX2 U50 ( .A(count_out[2]), .Y(n20) );
  INVX2 U51 ( .A(count_out[3]), .Y(n44) );
endmodule


module comparator_1 ( a, b, gt, lt, eq );
  input [3:0] a;
  input [3:0] b;
  output gt, lt, eq;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n1, n2, n3, n4,
         n5, n6, n7;

  NOR2X1 U10 ( .A(gt), .B(lt), .Y(eq) );
  OAI22X1 U11 ( .A(a[3]), .B(n7), .C(n4), .D(n13), .Y(lt) );
  AOI22X1 U12 ( .A(n14), .B(n15), .C(b[2]), .D(n3), .Y(n13) );
  OAI21X1 U13 ( .A(n5), .B(n16), .C(n17), .Y(n15) );
  NAND2X1 U14 ( .A(n18), .B(n1), .Y(n16) );
  OAI21X1 U15 ( .A(n20), .B(n21), .C(n19), .Y(gt) );
  NAND2X1 U16 ( .A(a[3]), .B(n7), .Y(n19) );
  AOI22X1 U17 ( .A(n14), .B(n22), .C(a[2]), .D(n6), .Y(n21) );
  OAI21X1 U18 ( .A(n1), .B(n23), .C(n18), .Y(n22) );
  OR2X1 U19 ( .A(n2), .B(b[1]), .Y(n18) );
  NAND2X1 U20 ( .A(n17), .B(n5), .Y(n23) );
  NAND2X1 U21 ( .A(b[1]), .B(n2), .Y(n17) );
  XNOR2X1 U22 ( .A(a[2]), .B(b[2]), .Y(n14) );
  NOR2X1 U23 ( .A(a[3]), .B(n7), .Y(n20) );
  INVX2 U3 ( .A(a[0]), .Y(n1) );
  INVX2 U4 ( .A(a[1]), .Y(n2) );
  INVX2 U5 ( .A(a[2]), .Y(n3) );
  INVX2 U6 ( .A(n19), .Y(n4) );
  INVX2 U7 ( .A(b[0]), .Y(n5) );
  INVX2 U8 ( .A(b[2]), .Y(n6) );
  INVX2 U9 ( .A(b[3]), .Y(n7) );
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
        \digit_weights[9][0] }), detected_digit );
  output [3:0] detected_digit;
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
         \weight_hold[9][0] , N15, N16, N17, N18, N19, N20, N21, N22, gt, eq,
         n4, n6, n8, n10, n12, n14, n16, n18, n20, n22, n24, n26, n28, n30,
         n32, n34, n36, n38, n40, n42, n44, n46, n48, n50, n52, n54, n56, n58,
         n60, n62, n64, n66, n68, n70, n72, n74, n76, n78, n80, n82, n84, n85,
         n88, n90, n92, n93, n94, n95, n96, n97, n98, n100, n101, n102, n103,
         n104, n105, n106, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n146, n147, n148, n149, n150, n151,
         n152, n162, n164, n166, n168, n170, n172, n174, n176, n178, n180,
         n182, n184, n186, n188, n190, n192, n194, n196, n198, n200, n202,
         n204, n206, n208, n210, n212, n214, n216, n218, n220, n222, n224,
         n226, n228, n230, n232, n234, n236, n238, n240, n19, n21, n23, n25,
         n27, n29, n31, n33, n35, n37, n39, n41, n43, n45, n47, n49, n51, n53,
         n55, n57, n59, n61, n63, n65, n67, n69, n71, n73, n75, n77, n79, n81,
         n83, n86, n87, n89, n91, n99, n107, n119, n120, n145, n199, n201,
         n203, n207, n211, n213, n215, n235, n237, n239, n241, n242;
  wire   [3:0] max_val;
  wire   [3:0] count_out;
  wire   [3:0] mux_out;

  DFFSR \weight_hold_reg[0][0]  ( .D(n234), .CLK(clk), .R(n31), .S(1'b1), .Q(
        \weight_hold[0][0] ) );
  DFFSR \weight_hold_reg[1][3]  ( .D(n232), .CLK(clk), .R(n31), .S(1'b1), .Q(
        \weight_hold[1][3] ) );
  DFFSR \weight_hold_reg[1][2]  ( .D(n230), .CLK(clk), .R(n31), .S(1'b1), .Q(
        \weight_hold[1][2] ) );
  DFFSR \weight_hold_reg[1][1]  ( .D(n228), .CLK(clk), .R(n31), .S(1'b1), .Q(
        \weight_hold[1][1] ) );
  DFFSR \weight_hold_reg[1][0]  ( .D(n226), .CLK(clk), .R(n31), .S(1'b1), .Q(
        \weight_hold[1][0] ) );
  DFFSR \weight_hold_reg[2][3]  ( .D(n224), .CLK(clk), .R(n31), .S(1'b1), .Q(
        \weight_hold[2][3] ) );
  DFFSR \weight_hold_reg[2][2]  ( .D(n222), .CLK(clk), .R(n31), .S(1'b1), .Q(
        \weight_hold[2][2] ) );
  DFFSR \weight_hold_reg[2][1]  ( .D(n220), .CLK(clk), .R(n31), .S(1'b1), .Q(
        \weight_hold[2][1] ) );
  DFFSR \weight_hold_reg[2][0]  ( .D(n218), .CLK(clk), .R(n31), .S(1'b1), .Q(
        \weight_hold[2][0] ) );
  DFFSR \weight_hold_reg[3][0]  ( .D(n210), .CLK(clk), .R(n31), .S(1'b1), .Q(
        \weight_hold[3][0] ) );
  DFFSR \weight_hold_reg[4][2]  ( .D(n206), .CLK(clk), .R(n31), .S(1'b1), .Q(
        \weight_hold[4][2] ) );
  DFFSR \weight_hold_reg[5][2]  ( .D(n198), .CLK(clk), .R(n31), .S(1'b1), .Q(
        \weight_hold[5][2] ) );
  DFFSR \weight_hold_reg[5][1]  ( .D(n196), .CLK(clk), .R(n31), .S(1'b1), .Q(
        \weight_hold[5][1] ) );
  DFFSR \weight_hold_reg[5][0]  ( .D(n194), .CLK(clk), .R(n31), .S(1'b1), .Q(
        \weight_hold[5][0] ) );
  DFFSR \weight_hold_reg[6][3]  ( .D(n192), .CLK(clk), .R(n31), .S(1'b1), .Q(
        \weight_hold[6][3] ) );
  DFFSR \weight_hold_reg[6][2]  ( .D(n190), .CLK(clk), .R(n31), .S(1'b1), .Q(
        \weight_hold[6][2] ) );
  DFFSR \weight_hold_reg[6][1]  ( .D(n188), .CLK(clk), .R(n31), .S(1'b1), .Q(
        \weight_hold[6][1] ) );
  DFFSR \weight_hold_reg[6][0]  ( .D(n186), .CLK(clk), .R(n29), .S(1'b1), .Q(
        \weight_hold[6][0] ) );
  DFFSR \weight_hold_reg[7][3]  ( .D(n184), .CLK(clk), .R(n29), .S(1'b1), .Q(
        \weight_hold[7][3] ) );
  DFFSR \weight_hold_reg[7][2]  ( .D(n182), .CLK(clk), .R(n29), .S(1'b1), .Q(
        \weight_hold[7][2] ) );
  DFFSR \weight_hold_reg[7][1]  ( .D(n180), .CLK(clk), .R(n29), .S(1'b1), .Q(
        \weight_hold[7][1] ) );
  DFFSR \weight_hold_reg[7][0]  ( .D(n178), .CLK(clk), .R(n29), .S(1'b1), .Q(
        \weight_hold[7][0] ) );
  DFFSR \weight_hold_reg[8][3]  ( .D(n176), .CLK(clk), .R(n29), .S(1'b1), .Q(
        \weight_hold[8][3] ) );
  DFFSR \weight_hold_reg[8][2]  ( .D(n174), .CLK(clk), .R(n29), .S(1'b1), .Q(
        \weight_hold[8][2] ) );
  DFFSR \weight_hold_reg[8][1]  ( .D(n172), .CLK(clk), .R(n29), .S(1'b1), .Q(
        \weight_hold[8][1] ) );
  DFFSR \weight_hold_reg[8][0]  ( .D(n170), .CLK(clk), .R(n29), .S(1'b1), .Q(
        \weight_hold[8][0] ) );
  DFFSR \weight_hold_reg[9][3]  ( .D(n168), .CLK(clk), .R(n29), .S(1'b1), .Q(
        \weight_hold[9][3] ) );
  DFFSR \weight_hold_reg[9][2]  ( .D(n166), .CLK(clk), .R(n29), .S(1'b1), .Q(
        \weight_hold[9][2] ) );
  DFFSR \weight_hold_reg[9][1]  ( .D(n164), .CLK(clk), .R(n29), .S(1'b1), .Q(
        \weight_hold[9][1] ) );
  DFFSR \weight_hold_reg[9][0]  ( .D(n162), .CLK(clk), .R(n29), .S(1'b1), .Q(
        \weight_hold[9][0] ) );
  DFFSR \max_val_reg[0]  ( .D(N15), .CLK(clk), .R(n29), .S(1'b1), .Q(
        max_val[0]) );
  DFFSR \max_val_reg[1]  ( .D(N16), .CLK(clk), .R(n29), .S(1'b1), .Q(
        max_val[1]) );
  DFFSR \max_val_reg[2]  ( .D(N17), .CLK(clk), .R(n29), .S(1'b1), .Q(
        max_val[2]) );
  DFFSR \max_val_reg[3]  ( .D(N18), .CLK(clk), .R(n29), .S(1'b1), .Q(
        max_val[3]) );
  DFFSR \digit_val_reg[3]  ( .D(N22), .CLK(clk), .R(n29), .S(1'b1), .Q(
        detected_digit[3]) );
  DFFSR \digit_val_reg[2]  ( .D(N21), .CLK(clk), .R(n29), .S(1'b1), .Q(
        detected_digit[2]) );
  DFFSR \digit_val_reg[1]  ( .D(N20), .CLK(clk), .R(n29), .S(1'b1), .Q(
        detected_digit[1]) );
  DFFSR \digit_val_reg[0]  ( .D(N19), .CLK(clk), .R(n29), .S(1'b1), .Q(
        detected_digit[0]) );
  OAI21X1 U3 ( .A(n25), .B(n242), .C(n4), .Y(n162) );
  NAND2X1 U4 ( .A(n23), .B(\digit_weights[9][0] ), .Y(n4) );
  OAI21X1 U6 ( .A(n25), .B(n241), .C(n6), .Y(n164) );
  NAND2X1 U7 ( .A(\digit_weights[9][1] ), .B(network_done), .Y(n6) );
  OAI21X1 U9 ( .A(n25), .B(n239), .C(n8), .Y(n166) );
  NAND2X1 U10 ( .A(\digit_weights[9][2] ), .B(network_done), .Y(n8) );
  OAI21X1 U12 ( .A(n25), .B(n237), .C(n10), .Y(n168) );
  NAND2X1 U13 ( .A(\digit_weights[9][3] ), .B(network_done), .Y(n10) );
  OAI21X1 U15 ( .A(n25), .B(n235), .C(n12), .Y(n170) );
  NAND2X1 U16 ( .A(\digit_weights[8][0] ), .B(network_done), .Y(n12) );
  OAI21X1 U18 ( .A(n25), .B(n215), .C(n14), .Y(n172) );
  NAND2X1 U19 ( .A(\digit_weights[8][1] ), .B(network_done), .Y(n14) );
  OAI21X1 U21 ( .A(n25), .B(n213), .C(n16), .Y(n174) );
  NAND2X1 U22 ( .A(\digit_weights[8][2] ), .B(network_done), .Y(n16) );
  OAI21X1 U24 ( .A(n25), .B(n211), .C(n18), .Y(n176) );
  NAND2X1 U25 ( .A(\digit_weights[8][3] ), .B(network_done), .Y(n18) );
  OAI21X1 U27 ( .A(n25), .B(n207), .C(n20), .Y(n178) );
  NAND2X1 U28 ( .A(\digit_weights[7][0] ), .B(network_done), .Y(n20) );
  OAI21X1 U30 ( .A(network_done), .B(n203), .C(n22), .Y(n180) );
  NAND2X1 U31 ( .A(\digit_weights[7][1] ), .B(n23), .Y(n22) );
  OAI21X1 U33 ( .A(n25), .B(n201), .C(n24), .Y(n182) );
  NAND2X1 U34 ( .A(\digit_weights[7][2] ), .B(network_done), .Y(n24) );
  OAI21X1 U36 ( .A(network_done), .B(n199), .C(n26), .Y(n184) );
  NAND2X1 U37 ( .A(\digit_weights[7][3] ), .B(network_done), .Y(n26) );
  OAI21X1 U39 ( .A(n25), .B(n145), .C(n28), .Y(n186) );
  NAND2X1 U40 ( .A(\digit_weights[6][0] ), .B(network_done), .Y(n28) );
  OAI21X1 U41 ( .A(n25), .B(n120), .C(n30), .Y(n188) );
  NAND2X1 U42 ( .A(\digit_weights[6][1] ), .B(network_done), .Y(n30) );
  OAI21X1 U43 ( .A(network_done), .B(n119), .C(n32), .Y(n190) );
  NAND2X1 U44 ( .A(\digit_weights[6][2] ), .B(network_done), .Y(n32) );
  OAI21X1 U45 ( .A(n25), .B(n107), .C(n34), .Y(n192) );
  NAND2X1 U46 ( .A(\digit_weights[6][3] ), .B(network_done), .Y(n34) );
  OAI21X1 U47 ( .A(n25), .B(n99), .C(n36), .Y(n194) );
  NAND2X1 U48 ( .A(\digit_weights[5][0] ), .B(network_done), .Y(n36) );
  OAI21X1 U49 ( .A(n25), .B(n91), .C(n38), .Y(n196) );
  NAND2X1 U50 ( .A(\digit_weights[5][1] ), .B(network_done), .Y(n38) );
  OAI21X1 U51 ( .A(n25), .B(n89), .C(n40), .Y(n198) );
  NAND2X1 U52 ( .A(\digit_weights[5][2] ), .B(network_done), .Y(n40) );
  OAI21X1 U53 ( .A(n23), .B(n87), .C(n42), .Y(n200) );
  NAND2X1 U54 ( .A(\digit_weights[5][3] ), .B(network_done), .Y(n42) );
  OAI21X1 U55 ( .A(n23), .B(n86), .C(n44), .Y(n202) );
  NAND2X1 U56 ( .A(\digit_weights[4][0] ), .B(network_done), .Y(n44) );
  OAI21X1 U57 ( .A(n23), .B(n83), .C(n46), .Y(n204) );
  NAND2X1 U58 ( .A(\digit_weights[4][1] ), .B(network_done), .Y(n46) );
  OAI21X1 U59 ( .A(n25), .B(n81), .C(n48), .Y(n206) );
  NAND2X1 U60 ( .A(\digit_weights[4][2] ), .B(network_done), .Y(n48) );
  OAI21X1 U61 ( .A(n23), .B(n79), .C(n50), .Y(n208) );
  NAND2X1 U62 ( .A(\digit_weights[4][3] ), .B(network_done), .Y(n50) );
  OAI21X1 U63 ( .A(n23), .B(n77), .C(n52), .Y(n210) );
  NAND2X1 U64 ( .A(\digit_weights[3][0] ), .B(network_done), .Y(n52) );
  OAI21X1 U65 ( .A(n23), .B(n75), .C(n54), .Y(n212) );
  NAND2X1 U66 ( .A(\digit_weights[3][1] ), .B(network_done), .Y(n54) );
  OAI21X1 U67 ( .A(n23), .B(n73), .C(n56), .Y(n214) );
  NAND2X1 U68 ( .A(\digit_weights[3][2] ), .B(network_done), .Y(n56) );
  OAI21X1 U69 ( .A(n23), .B(n71), .C(n58), .Y(n216) );
  NAND2X1 U70 ( .A(\digit_weights[3][3] ), .B(network_done), .Y(n58) );
  OAI21X1 U71 ( .A(n23), .B(n69), .C(n60), .Y(n218) );
  NAND2X1 U72 ( .A(\digit_weights[2][0] ), .B(network_done), .Y(n60) );
  OAI21X1 U73 ( .A(n23), .B(n67), .C(n62), .Y(n220) );
  NAND2X1 U74 ( .A(\digit_weights[2][1] ), .B(network_done), .Y(n62) );
  OAI21X1 U75 ( .A(n23), .B(n65), .C(n64), .Y(n222) );
  NAND2X1 U76 ( .A(\digit_weights[2][2] ), .B(network_done), .Y(n64) );
  OAI21X1 U77 ( .A(n23), .B(n63), .C(n66), .Y(n224) );
  NAND2X1 U78 ( .A(\digit_weights[2][3] ), .B(network_done), .Y(n66) );
  OAI21X1 U79 ( .A(n25), .B(n61), .C(n68), .Y(n226) );
  NAND2X1 U80 ( .A(\digit_weights[1][0] ), .B(network_done), .Y(n68) );
  OAI21X1 U82 ( .A(n25), .B(n59), .C(n70), .Y(n228) );
  NAND2X1 U83 ( .A(\digit_weights[1][1] ), .B(network_done), .Y(n70) );
  OAI21X1 U85 ( .A(n25), .B(n57), .C(n72), .Y(n230) );
  NAND2X1 U86 ( .A(\digit_weights[1][2] ), .B(network_done), .Y(n72) );
  OAI21X1 U88 ( .A(n25), .B(n55), .C(n74), .Y(n232) );
  NAND2X1 U89 ( .A(\digit_weights[1][3] ), .B(network_done), .Y(n74) );
  OAI21X1 U91 ( .A(n25), .B(n53), .C(n76), .Y(n234) );
  NAND2X1 U92 ( .A(\digit_weights[0][0] ), .B(network_done), .Y(n76) );
  OAI21X1 U94 ( .A(n25), .B(n51), .C(n78), .Y(n236) );
  NAND2X1 U95 ( .A(\digit_weights[0][1] ), .B(n25), .Y(n78) );
  OAI21X1 U97 ( .A(n25), .B(n49), .C(n80), .Y(n238) );
  NAND2X1 U98 ( .A(\digit_weights[0][2] ), .B(n25), .Y(n80) );
  OAI21X1 U100 ( .A(n25), .B(n47), .C(n82), .Y(n240) );
  NAND2X1 U101 ( .A(\digit_weights[0][3] ), .B(n25), .Y(n82) );
  OAI21X1 U103 ( .A(n45), .B(n84), .C(n85), .Y(N22) );
  NAND2X1 U104 ( .A(detected_digit[3]), .B(n33), .Y(n85) );
  OAI21X1 U105 ( .A(n43), .B(n84), .C(n88), .Y(N21) );
  NAND2X1 U106 ( .A(detected_digit[2]), .B(n33), .Y(n88) );
  OAI21X1 U107 ( .A(n39), .B(n84), .C(n90), .Y(N20) );
  NAND2X1 U108 ( .A(detected_digit[1]), .B(n33), .Y(n90) );
  OAI21X1 U109 ( .A(n35), .B(n84), .C(n92), .Y(N19) );
  NAND2X1 U110 ( .A(detected_digit[0]), .B(n33), .Y(n92) );
  NAND3X1 U112 ( .A(n94), .B(n95), .C(n96), .Y(n93) );
  NOR2X1 U113 ( .A(n97), .B(n98), .Y(n96) );
  OAI21X1 U115 ( .A(n101), .B(n102), .C(n27), .Y(n84) );
  OR2X1 U117 ( .A(n98), .B(n97), .Y(n102) );
  XNOR2X1 U118 ( .A(n103), .B(max_val[3]), .Y(n97) );
  XNOR2X1 U119 ( .A(n104), .B(max_val[0]), .Y(n98) );
  NAND2X1 U120 ( .A(n95), .B(n100), .Y(n101) );
  XOR2X1 U121 ( .A(n105), .B(max_val[2]), .Y(n100) );
  XOR2X1 U122 ( .A(n106), .B(max_val[1]), .Y(n95) );
  NOR2X1 U123 ( .A(n23), .B(n103), .Y(N18) );
  OAI22X1 U124 ( .A(max_val[3]), .B(n21), .C(mux_out[3]), .D(n108), .Y(n103)
         );
  NAND3X1 U125 ( .A(n109), .B(n110), .C(n111), .Y(mux_out[3]) );
  NOR2X1 U126 ( .A(n112), .B(n113), .Y(n111) );
  OAI22X1 U127 ( .A(n79), .B(n114), .C(n71), .D(n115), .Y(n113) );
  OAI21X1 U130 ( .A(n63), .B(n116), .C(n117), .Y(n112) );
  AOI22X1 U131 ( .A(n118), .B(\weight_hold[0][3] ), .C(n19), .D(
        \weight_hold[1][3] ), .Y(n117) );
  AOI21X1 U133 ( .A(n37), .B(\weight_hold[7][3] ), .C(n121), .Y(n110) );
  OAI22X1 U134 ( .A(n107), .B(n122), .C(n87), .D(n123), .Y(n121) );
  AOI22X1 U137 ( .A(n124), .B(\weight_hold[8][3] ), .C(n125), .D(
        \weight_hold[9][3] ), .Y(n109) );
  NOR2X1 U138 ( .A(n25), .B(n105), .Y(N17) );
  OAI22X1 U139 ( .A(max_val[2]), .B(n21), .C(mux_out[2]), .D(n108), .Y(n105)
         );
  NAND3X1 U140 ( .A(n126), .B(n127), .C(n128), .Y(mux_out[2]) );
  NOR2X1 U141 ( .A(n129), .B(n130), .Y(n128) );
  OAI22X1 U142 ( .A(n81), .B(n114), .C(n73), .D(n115), .Y(n130) );
  OAI21X1 U145 ( .A(n65), .B(n116), .C(n131), .Y(n129) );
  AOI22X1 U146 ( .A(n118), .B(\weight_hold[0][2] ), .C(n19), .D(
        \weight_hold[1][2] ), .Y(n131) );
  AOI21X1 U148 ( .A(n37), .B(\weight_hold[7][2] ), .C(n132), .Y(n127) );
  OAI22X1 U149 ( .A(n119), .B(n122), .C(n89), .D(n123), .Y(n132) );
  AOI22X1 U152 ( .A(n124), .B(\weight_hold[8][2] ), .C(n125), .D(
        \weight_hold[9][2] ), .Y(n126) );
  NOR2X1 U153 ( .A(network_done), .B(n106), .Y(N16) );
  OAI22X1 U154 ( .A(max_val[1]), .B(n21), .C(mux_out[1]), .D(n108), .Y(n106)
         );
  NAND3X1 U155 ( .A(n133), .B(n134), .C(n135), .Y(mux_out[1]) );
  NOR2X1 U156 ( .A(n136), .B(n137), .Y(n135) );
  OAI22X1 U157 ( .A(n83), .B(n114), .C(n75), .D(n115), .Y(n137) );
  OAI21X1 U160 ( .A(n67), .B(n116), .C(n138), .Y(n136) );
  AOI22X1 U161 ( .A(n118), .B(\weight_hold[0][1] ), .C(n19), .D(
        \weight_hold[1][1] ), .Y(n138) );
  AOI21X1 U163 ( .A(n37), .B(\weight_hold[7][1] ), .C(n139), .Y(n134) );
  OAI22X1 U164 ( .A(n120), .B(n122), .C(n91), .D(n123), .Y(n139) );
  AOI22X1 U167 ( .A(n124), .B(\weight_hold[8][1] ), .C(n125), .D(
        \weight_hold[9][1] ), .Y(n133) );
  NOR2X1 U168 ( .A(n25), .B(n104), .Y(N15) );
  OAI22X1 U169 ( .A(max_val[0]), .B(n21), .C(mux_out[0]), .D(n108), .Y(n104)
         );
  NAND3X1 U170 ( .A(n140), .B(n141), .C(n142), .Y(mux_out[0]) );
  NOR2X1 U171 ( .A(n143), .B(n144), .Y(n142) );
  OAI22X1 U172 ( .A(n86), .B(n114), .C(n77), .D(n115), .Y(n144) );
  NAND2X1 U173 ( .A(n41), .B(count_out[0]), .Y(n115) );
  NAND3X1 U175 ( .A(n35), .B(n39), .C(n146), .Y(n114) );
  OAI21X1 U177 ( .A(n69), .B(n116), .C(n147), .Y(n143) );
  AOI22X1 U178 ( .A(n118), .B(\weight_hold[0][0] ), .C(n19), .D(
        \weight_hold[1][0] ), .Y(n147) );
  NOR2X1 U180 ( .A(n148), .B(count_out[0]), .Y(n118) );
  NAND3X1 U181 ( .A(n43), .B(n45), .C(n39), .Y(n148) );
  NAND2X1 U182 ( .A(n41), .B(n35), .Y(n116) );
  NAND3X1 U184 ( .A(n43), .B(n45), .C(count_out[1]), .Y(n149) );
  AOI21X1 U187 ( .A(n37), .B(\weight_hold[7][0] ), .C(n150), .Y(n141) );
  OAI22X1 U188 ( .A(n145), .B(n122), .C(n99), .D(n123), .Y(n150) );
  NAND3X1 U189 ( .A(count_out[0]), .B(n39), .C(n146), .Y(n123) );
  NAND3X1 U191 ( .A(count_out[1]), .B(n35), .C(n146), .Y(n122) );
  NAND3X1 U194 ( .A(count_out[1]), .B(count_out[0]), .C(n146), .Y(n151) );
  NOR2X1 U195 ( .A(n43), .B(count_out[3]), .Y(n146) );
  AOI22X1 U196 ( .A(n124), .B(\weight_hold[8][0] ), .C(n125), .D(
        \weight_hold[9][0] ), .Y(n140) );
  NOR2X1 U197 ( .A(n152), .B(n35), .Y(n125) );
  NOR2X1 U199 ( .A(n152), .B(count_out[0]), .Y(n124) );
  NAND3X1 U200 ( .A(n39), .B(n43), .C(count_out[3]), .Y(n152) );
  AND2X2 U114 ( .A(n27), .B(n100), .Y(n94) );
  flex_counter_NUM_CNT_BITS4_0 INDEX_COUNT ( .clk(clk), .n_rst(n29), .clear(
        n23), .count_enable(1'b1), .rollover_val({1'b1, 1'b0, 1'b0, 1'b1}), 
        .count_out(count_out) );
  comparator_1 COMPARATOR ( .a(mux_out), .b(max_val), .gt(gt), .eq(eq) );
  DFFSR \weight_hold_reg[0][2]  ( .D(n238), .CLK(clk), .R(n31), .S(1'b1), .Q(
        \weight_hold[0][2] ) );
  DFFSR \weight_hold_reg[0][3]  ( .D(n240), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(\weight_hold[0][3] ) );
  DFFSR \weight_hold_reg[0][1]  ( .D(n236), .CLK(clk), .R(n31), .S(1'b1), .Q(
        \weight_hold[0][1] ) );
  DFFSR \weight_hold_reg[5][3]  ( .D(n200), .CLK(clk), .R(n31), .S(1'b1), .Q(
        \weight_hold[5][3] ) );
  DFFSR \weight_hold_reg[4][3]  ( .D(n208), .CLK(clk), .R(n31), .S(1'b1), .Q(
        \weight_hold[4][3] ) );
  DFFSR \weight_hold_reg[4][1]  ( .D(n204), .CLK(clk), .R(n31), .S(1'b1), .Q(
        \weight_hold[4][1] ) );
  DFFSR \weight_hold_reg[4][0]  ( .D(n202), .CLK(clk), .R(n31), .S(1'b1), .Q(
        \weight_hold[4][0] ) );
  DFFSR \weight_hold_reg[3][3]  ( .D(n216), .CLK(clk), .R(n31), .S(1'b1), .Q(
        \weight_hold[3][3] ) );
  DFFSR \weight_hold_reg[3][2]  ( .D(n214), .CLK(clk), .R(n31), .S(1'b1), .Q(
        \weight_hold[3][2] ) );
  DFFSR \weight_hold_reg[3][1]  ( .D(n212), .CLK(clk), .R(n31), .S(1'b1), .Q(
        \weight_hold[3][1] ) );
  INVX2 U5 ( .A(n21), .Y(n108) );
  INVX2 U38 ( .A(n27), .Y(n23) );
  INVX2 U81 ( .A(n27), .Y(n25) );
  NOR2X1 U84 ( .A(n35), .B(n148), .Y(n19) );
  INVX2 U87 ( .A(count_out[0]), .Y(n35) );
  INVX2 U90 ( .A(network_done), .Y(n27) );
  OR2X2 U93 ( .A(gt), .B(eq), .Y(n21) );
  BUFX4 U96 ( .A(n_rst), .Y(n29) );
  BUFX4 U99 ( .A(n_rst), .Y(n31) );
  INVX2 U102 ( .A(n93), .Y(n33) );
  INVX2 U111 ( .A(n151), .Y(n37) );
  INVX2 U116 ( .A(count_out[1]), .Y(n39) );
  INVX2 U128 ( .A(n149), .Y(n41) );
  INVX2 U129 ( .A(count_out[2]), .Y(n43) );
  INVX2 U132 ( .A(count_out[3]), .Y(n45) );
  INVX2 U135 ( .A(\weight_hold[0][3] ), .Y(n47) );
  INVX2 U136 ( .A(\weight_hold[0][2] ), .Y(n49) );
  INVX2 U143 ( .A(\weight_hold[0][1] ), .Y(n51) );
  INVX2 U144 ( .A(\weight_hold[0][0] ), .Y(n53) );
  INVX2 U147 ( .A(\weight_hold[1][3] ), .Y(n55) );
  INVX2 U150 ( .A(\weight_hold[1][2] ), .Y(n57) );
  INVX2 U151 ( .A(\weight_hold[1][1] ), .Y(n59) );
  INVX2 U158 ( .A(\weight_hold[1][0] ), .Y(n61) );
  INVX2 U159 ( .A(\weight_hold[2][3] ), .Y(n63) );
  INVX2 U162 ( .A(\weight_hold[2][2] ), .Y(n65) );
  INVX2 U165 ( .A(\weight_hold[2][1] ), .Y(n67) );
  INVX2 U166 ( .A(\weight_hold[2][0] ), .Y(n69) );
  INVX2 U174 ( .A(\weight_hold[3][3] ), .Y(n71) );
  INVX2 U176 ( .A(\weight_hold[3][2] ), .Y(n73) );
  INVX2 U179 ( .A(\weight_hold[3][1] ), .Y(n75) );
  INVX2 U183 ( .A(\weight_hold[3][0] ), .Y(n77) );
  INVX2 U185 ( .A(\weight_hold[4][3] ), .Y(n79) );
  INVX2 U186 ( .A(\weight_hold[4][2] ), .Y(n81) );
  INVX2 U190 ( .A(\weight_hold[4][1] ), .Y(n83) );
  INVX2 U192 ( .A(\weight_hold[4][0] ), .Y(n86) );
  INVX2 U193 ( .A(\weight_hold[5][3] ), .Y(n87) );
  INVX2 U198 ( .A(\weight_hold[5][2] ), .Y(n89) );
  INVX2 U201 ( .A(\weight_hold[5][1] ), .Y(n91) );
  INVX2 U202 ( .A(\weight_hold[5][0] ), .Y(n99) );
  INVX2 U203 ( .A(\weight_hold[6][3] ), .Y(n107) );
  INVX2 U204 ( .A(\weight_hold[6][2] ), .Y(n119) );
  INVX2 U232 ( .A(\weight_hold[6][1] ), .Y(n120) );
  INVX2 U233 ( .A(\weight_hold[6][0] ), .Y(n145) );
  INVX2 U234 ( .A(\weight_hold[7][3] ), .Y(n199) );
  INVX2 U236 ( .A(\weight_hold[7][2] ), .Y(n201) );
  INVX2 U238 ( .A(\weight_hold[7][1] ), .Y(n203) );
  INVX2 U239 ( .A(\weight_hold[7][0] ), .Y(n207) );
  INVX2 U240 ( .A(\weight_hold[8][3] ), .Y(n211) );
  INVX2 U250 ( .A(\weight_hold[8][2] ), .Y(n213) );
  INVX2 U251 ( .A(\weight_hold[8][1] ), .Y(n215) );
  INVX2 U252 ( .A(\weight_hold[8][0] ), .Y(n235) );
  INVX2 U253 ( .A(\weight_hold[9][3] ), .Y(n237) );
  INVX2 U254 ( .A(\weight_hold[9][2] ), .Y(n239) );
  INVX2 U255 ( .A(\weight_hold[9][1] ), .Y(n241) );
  INVX2 U256 ( .A(\weight_hold[9][0] ), .Y(n242) );
endmodule


module digit_recognizer_final_t ( clk, n_rst, SCK, SS, MOSI, data, MISO, ce, oe, 
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
  assign we = 1'b1;

  networkController top_network_controller ( .clk(clk), .n_rst(n_rst), 
        .write_en(write_en), .sigmoidData_out(sigmoidData_out), .ALUOutput(
        alu_output), .pixel_data1(pixel_data1), .pixel_data2(pixel_data2), 
        .flashData_out(flash_data), .data_ready(data_ready), .shift_network(
        shift_network), .network_done(network_done), .network_calc(
        network_calc), .digit_done(digit_done), .flash_ready(flash_ready), 
        .flash_address(flash_address), .sigmoidData_in(sigmoidData_in), 
        .sigmoid_address(sigmoid_address), .sigmoid_write_en(sigmoid_write_en), 
        .weight1(weight1), .weight2(weight2), .weight3(weight3), .weight4(
        weight4), .input1(input1), .input2(input2), .input3(input3), .input4(
        input4), .bias(bias), .clear(clear), .accumulate(accumulate) );
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
  fmc top_fmc ( .clk(clk), .n_rst(n_rst), .ready(flash_ready), .address(
        flash_address), .data(data), .data_out(flash_data), .address_in(
        address), .ce(ce), .oe(oe) );
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

module  digit_recognizer_final ( clk, n_rst, SCK, SS, MOSI, data, MISO, ce, oe, 
	we, address );

input   [15:0] data;
input   clk, n_rst, SCK, SS, MOSI;
output  [15:0] address;
output  MISO, ce, oe, we;
wire	nclk, nn_rst, nSCK, nSS, nMOSI, nMISO, nce, noe, nwe;

wire	[15:0] ndata;
wire	[15:0] naddress;
        digit_recognizer_final_t I0 ( .clk(nclk), .n_rst(nn_rst), .SCK(nSCK), .SS(nSS), 
	.MOSI(nMOSI), .data(ndata), .MISO(nMISO), .ce(nce), .oe(noe), .we(nwe), .address(naddress) );

PADOUT U1 ( .DO(nMISO), .YPAD(MISO) );
PADOUT U2 ( .DO(naddress[0]), .YPAD(address[0]) );
PADOUT U3 ( .DO(naddress[10]), .YPAD(address[10]) );
PADOUT U4 ( .DO(naddress[11]), .YPAD(address[11]) );
PADOUT U5 ( .DO(naddress[12]), .YPAD(address[12]) );
PADOUT U6 ( .DO(naddress[13]), .YPAD(address[13]) );
PADOUT U7 ( .DO(naddress[14]), .YPAD(address[14]) );
PADOUT U8 ( .DO(naddress[15]), .YPAD(address[15]) );
PADOUT U9 ( .DO(naddress[1]), .YPAD(address[1]) );
PADOUT U10 ( .DO(naddress[2]), .YPAD(address[2]) );
PADOUT U11 ( .DO(naddress[3]), .YPAD(address[3]) );
PADOUT U12 ( .DO(naddress[4]), .YPAD(address[4]) );
PADOUT U13 ( .DO(naddress[5]), .YPAD(address[5]) );
PADOUT U14 ( .DO(naddress[6]), .YPAD(address[6]) );
PADOUT U15 ( .DO(naddress[7]), .YPAD(address[7]) );
PADOUT U16 ( .DO(naddress[8]), .YPAD(address[8]) );
PADOUT U17 ( .DO(naddress[9]), .YPAD(address[9]) );
PADOUT U18 ( .DO(nce), .YPAD(ce) );
PADOUT U19 ( .DO(noe), .YPAD(oe) );
PADOUT U20 ( .DO(nwe), .YPAD(we) );
PADINC U21 ( .DI(nMOSI), .YPAD(MOSI) );
PADINC U22 ( .DI(nSCK), .YPAD(SCK) );
PADINC U23 ( .DI(nSS), .YPAD(SS) );
PADINC U24 ( .DI(nclk), .YPAD(clk) );
PADINC U25 ( .DI(ndata[0]), .YPAD(data[0]) );
PADINC U26 ( .DI(ndata[10]), .YPAD(data[10]) );
PADINC U27 ( .DI(ndata[11]), .YPAD(data[11]) );
PADINC U28 ( .DI(ndata[12]), .YPAD(data[12]) );
PADINC U29 ( .DI(ndata[13]), .YPAD(data[13]) );
PADINC U30 ( .DI(ndata[14]), .YPAD(data[14]) );
PADINC U31 ( .DI(ndata[15]), .YPAD(data[15]) );
PADINC U32 ( .DI(ndata[1]), .YPAD(data[1]) );
PADINC U33 ( .DI(ndata[2]), .YPAD(data[2]) );
PADINC U34 ( .DI(ndata[3]), .YPAD(data[3]) );
PADINC U35 ( .DI(ndata[4]), .YPAD(data[4]) );
PADINC U36 ( .DI(ndata[5]), .YPAD(data[5]) );
PADINC U37 ( .DI(ndata[6]), .YPAD(data[6]) );
PADINC U38 ( .DI(ndata[7]), .YPAD(data[7]) );
PADINC U39 ( .DI(ndata[8]), .YPAD(data[8]) );
PADINC U40 ( .DI(ndata[9]), .YPAD(data[9]) );
PADINC U41 ( .DI(nn_rst), .YPAD(n_rst) );

endmodule
