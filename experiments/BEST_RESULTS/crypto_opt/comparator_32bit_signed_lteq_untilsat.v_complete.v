module top(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, x44, x45, x46, x47, x48, x49, x50, x51, x52, x53, x54, x55, x56, x57, x58, x59, x60, x61, x62, x63, y0);
  input x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, x44, x45, x46, x47, x48, x49, x50, x51, x52, x53, x54, x55, x56, x57, x58, x59, x60, x61, x62, x63;
  output y0;
  wire n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253;
  assign n65 = x29 & ~x61;
  assign n66 = x28 & ~x60;
  assign n67 = ~n65 & ~n66;
  assign n68 = x30 & ~x62;
  assign n69 = ~x31 & x63;
  assign n70 = ~n68 & ~n69;
  assign n71 = n67 & n70;
  assign n72 = x59 ^ x27;
  assign n74 = x58 ^ x26;
  assign n73 = x27 & ~x59;
  assign n75 = n74 ^ n73;
  assign n76 = x57 ^ x25;
  assign n77 = x57 & ~n76;
  assign n78 = n77 ^ x26;
  assign n79 = n78 ^ x57;
  assign n80 = n75 & ~n79;
  assign n81 = n80 ^ n77;
  assign n82 = n81 ^ x57;
  assign n83 = n82 ^ x59;
  assign n84 = ~n72 & n83;
  assign n85 = n84 ^ x59;
  assign n86 = x26 & ~x58;
  assign n87 = ~n73 & ~n86;
  assign n88 = n77 ^ x25;
  assign n89 = n87 & ~n88;
  assign n90 = x56 & n89;
  assign n91 = ~x24 & n89;
  assign n92 = ~n90 & ~n91;
  assign n93 = n92 ^ n90;
  assign n94 = n93 ^ n91;
  assign n95 = ~n85 & n94;
  assign n96 = n71 & ~n95;
  assign n97 = n71 & ~n92;
  assign n99 = x53 ^ x21;
  assign n98 = x21 & ~x53;
  assign n100 = n99 ^ n98;
  assign n102 = x52 ^ x20;
  assign n101 = x20 & ~x52;
  assign n103 = n102 ^ n101;
  assign n104 = ~n100 & ~n103;
  assign n105 = x23 & ~x55;
  assign n106 = ~n98 & ~n105;
  assign n108 = x54 ^ x22;
  assign n107 = ~x22 & x54;
  assign n109 = n108 ^ n107;
  assign n110 = n106 & ~n109;
  assign n111 = ~n104 & n110;
  assign n112 = x55 ^ x23;
  assign n113 = n107 ^ x55;
  assign n114 = ~n112 & ~n113;
  assign n115 = n114 ^ x23;
  assign n116 = ~n111 & n115;
  assign n117 = ~n101 & n110;
  assign n119 = x48 ^ x16;
  assign n118 = x16 & ~x48;
  assign n120 = n119 ^ n118;
  assign n122 = x49 ^ x17;
  assign n121 = x17 & ~x49;
  assign n123 = n122 ^ n121;
  assign n124 = ~n120 & ~n123;
  assign n125 = x19 & ~x51;
  assign n126 = ~n121 & ~n125;
  assign n128 = x50 ^ x18;
  assign n127 = ~x18 & x50;
  assign n129 = n128 ^ n127;
  assign n130 = n126 & ~n129;
  assign n131 = ~n124 & n130;
  assign n132 = x51 ^ x19;
  assign n133 = n127 ^ x51;
  assign n134 = ~n132 & ~n133;
  assign n135 = n134 ^ x19;
  assign n136 = ~n131 & n135;
  assign n137 = n117 & ~n136;
  assign n138 = n116 & ~n137;
  assign n139 = n97 & ~n138;
  assign n140 = ~n96 & ~n139;
  assign n141 = x47 ^ x15;
  assign n143 = x46 ^ x14;
  assign n142 = x14 & ~x46;
  assign n144 = n143 ^ n142;
  assign n145 = n144 ^ x47;
  assign n146 = ~n141 & ~n145;
  assign n147 = n146 ^ x15;
  assign n148 = x45 ^ x13;
  assign n150 = x44 ^ x12;
  assign n149 = x12 & ~x44;
  assign n151 = n150 ^ n149;
  assign n152 = n151 ^ x45;
  assign n153 = ~n148 & ~n152;
  assign n154 = n153 ^ x13;
  assign n217 = x13 & ~x45;
  assign n218 = ~n149 & ~n217;
  assign n155 = x43 ^ x11;
  assign n156 = x42 ^ x10;
  assign n157 = ~x9 & x41;
  assign n158 = n157 ^ x42;
  assign n159 = ~n156 & n158;
  assign n160 = n159 ^ x42;
  assign n161 = n160 ^ x43;
  assign n162 = ~n155 & n161;
  assign n163 = n162 ^ x43;
  assign n164 = x11 & ~x43;
  assign n165 = x10 & ~x42;
  assign n166 = ~n164 & ~n165;
  assign n167 = x41 ^ x9;
  assign n168 = n167 ^ n157;
  assign n171 = x40 & ~n168;
  assign n172 = n166 & n171;
  assign n169 = ~x8 & ~n168;
  assign n170 = n166 & n169;
  assign n173 = n172 ^ n170;
  assign n174 = x39 ^ x7;
  assign n176 = x7 & ~x39;
  assign n175 = x38 ^ x6;
  assign n177 = n176 ^ n175;
  assign n178 = x37 ^ x5;
  assign n179 = x37 & ~n178;
  assign n180 = n179 ^ x6;
  assign n181 = n180 ^ x37;
  assign n182 = n177 & ~n181;
  assign n183 = n182 ^ n179;
  assign n184 = n183 ^ x37;
  assign n185 = n184 ^ x39;
  assign n186 = ~n174 & n185;
  assign n187 = n186 ^ x39;
  assign n188 = x6 & ~x38;
  assign n189 = ~n176 & ~n188;
  assign n190 = n179 ^ x5;
  assign n191 = n189 & ~n190;
  assign n192 = x36 ^ x4;
  assign n193 = x35 ^ x3;
  assign n194 = x34 ^ x2;
  assign n197 = x34 ^ x1;
  assign n195 = x0 & ~x32;
  assign n196 = n195 ^ x34;
  assign n198 = n197 ^ n196;
  assign n199 = x34 ^ x33;
  assign n200 = n199 ^ n197;
  assign n201 = n198 & ~n200;
  assign n202 = n201 ^ n197;
  assign n203 = ~n194 & n202;
  assign n204 = n203 ^ x2;
  assign n205 = n204 ^ x35;
  assign n206 = ~n193 & n205;
  assign n207 = n206 ^ x3;
  assign n208 = n207 ^ x36;
  assign n209 = ~n192 & ~n208;
  assign n210 = n209 ^ x36;
  assign n211 = n191 & n210;
  assign n212 = ~n187 & ~n211;
  assign n213 = n212 ^ n170;
  assign n214 = n173 & ~n213;
  assign n215 = n214 ^ n170;
  assign n216 = ~n163 & ~n215;
  assign n219 = n218 ^ n216;
  assign n220 = x15 & ~x47;
  assign n221 = ~n142 & ~n220;
  assign n222 = n221 ^ n216;
  assign n223 = ~n216 & ~n222;
  assign n224 = n223 ^ n216;
  assign n225 = ~n219 & ~n224;
  assign n226 = n225 ^ n223;
  assign n227 = n226 ^ n216;
  assign n228 = n227 ^ n221;
  assign n229 = n154 & ~n228;
  assign n230 = n229 ^ n221;
  assign n231 = n147 & ~n230;
  assign n232 = ~n118 & ~n231;
  assign n233 = n130 & n232;
  assign n234 = n117 & n233;
  assign n235 = n97 & n234;
  assign n236 = x63 ^ x31;
  assign n237 = x62 ^ x30;
  assign n245 = x63 ^ x62;
  assign n238 = x61 ^ x29;
  assign n239 = x60 ^ x28;
  assign n240 = n239 ^ n66;
  assign n241 = n240 ^ x61;
  assign n242 = ~n238 & ~n241;
  assign n243 = n242 ^ x29;
  assign n244 = n243 ^ x63;
  assign n246 = n245 ^ n244;
  assign n247 = ~n237 & ~n246;
  assign n248 = n247 ^ x63;
  assign n249 = n248 ^ x62;
  assign n250 = ~n236 & n249;
  assign n251 = n250 ^ x31;
  assign n252 = ~n235 & ~n251;
  assign n253 = n140 & n252;
  assign y0 = ~n253;
endmodule
