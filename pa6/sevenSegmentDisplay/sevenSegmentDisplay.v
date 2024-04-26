input [3:0] numeral_bit;

output a;
output b;
output c;
output d;
output e;
output f;
output g;

wire not_numeral_bit_3;
wire not_numeral_bit_2;
wire not_numeral_bit_1;
wire not_numeral_bit_0;

wire not_3_and_not_2;
wire 1_and_not_0;
wire parenthesis;

wire minterm_00;
wire minterm_02;
wire minterm_06;
wire minterm_08;

wire minterm_00_or_minterm_02;
wire minterm_06_or_minterm_08;

wire not_1_and_0;
wire not_1_and_not_0;
wire is_1_and_not_0;
wire not_3_and_is_2;
wire is_3_and_not_2;

wire not_3_and_not_2_and_not_1_and_0;
wire not_a;
wire not_3_and_2_and_not_1_and_not_0;

wire not_3_and_2_and_not_1_and_0;
wire not_3_and_2_and_1_and_not_0;
wire not_b;

wire 1_and_0;
wire not_3_and_2_and_1_and_0;
wire is_3_and_not_2_and_not_1_and_0;
wire p1;
wire p2;
wire not_d;

wire not_3_and_not_2_and_1_and_not_0;
wire not_3_and_not_2_and_1_and_0;
wire p2;
wire p3;
wire not_f;

wire not_3_and_not_2_and_not_1_and_not_0;
wire p4;
wire p5;
wire not_g;


assign not_numeral_bit_3 = ~ numeral_bit[3];
assign not_numeral_bit_2 = ~ numeral_bit[2];
assign not_numeral_bit_1 = ~ numeral_bit[1];
assign not_numeral_bit_0 = ~ numeral_bit[0];


assign not_3_and_not_2 = not_numeral_bit_3 & not_numeral_bit_2;
assign not_1_and_0 = not_numeral_bit_1 & numeral_bit[0];
assign not_3_and_not_2_and_not_1_and_0 = not_3_and_not_2 & not_1_and_0;
assign not_3_and_is_2 = not_numeral_bit_3 & numeral_bit[2];
assign not_1_and_not_0 = not_numeral_bit_1 & not_numeral_bit_0;
assign not_3_and_2_and_not_1_and_not_0 = not_3_and_is_2 & not_1_and_not_0;
assign not_a = not_3_and_2_and_not_1_and_not_0 | not_3_and_not_2_and_not_1_and_0;
assign a = ~not_a;


assign not_3_and_2_and_not_1_and_0 = not_3_and_is_2 & not_1_and_0;
assign 1_and_not_0 = numeral_bit[1] & not_numeral_bit_0;
assign not_3_and_2_and_1_and_not_0 = not_3_and_is_2 & 1_and_not_0;
assign not_b = not_3_and_2_and_not_1_and_0 | not_3_and_2_and_1_and_not_0;
assign b = ~not_b;


assign not_3_and_not_2 = not_numeral_bit_3 & not_numeral_bit_2;
assign 1_and_not_0 = numeral_bit[1] & not_numeral_bit_0;
assign parenthesis = not_3_and_not_2 & 1_and_not_0;
assign c = ~parenthesis;


assign 1_and_0 = numeral_bit[1] & numeral_bit[0];
assign not_3_and_2_and_1_and_0 = not_3_and_is_2 & 1_and_0;
assign is_3_and_not_2_and_not_1_and_0 = is_3_and_not_2 & not_1_and_0;
assign p1 = not_3_and_not_2_and_not_1_and_0 | not_3_and_2_and_not_1_and_not_0;
assign p2 = not_3_and_2_and_1_and_0 | is_3_and_not_2_and_not_1_and_0;
assign not_d = p1 | p2;
assign d = ~not_d;


assign not_numeral_bit_3 = ~ numeral_bit[3];
assign not_numeral_bit_2 = ~ numeral_bit[2];
assign not_numeral_bit_1 = ~ numeral_bit[1];
assign not_numeral_bit_0 = ~ numeral_bit[0];
assign not_3_and_not_2 = not_numeral_bit_3 & not_numeral_bit_2;
assign not_1_and_not_0 = not_numeral_bit_1 & not_numeral_bit_0;
assign is_1_and_not_0 = numeral_bit[1] & not_numeral_bit_0;
assign not_3_and_is_2 = not_numeral_bit_3 & numeral_bit[2];
assign is_3_and_not_2 = numeral_bit[3] & not_numeral_bit_2;
assign minterm_00 = not_3_and_not_2 & not_1_and_not_0;
assign minterm_02 = not_3_and_not_2 & is_1_and_not_0;
assign minterm_06 = not_3_and_is_2 & is_1_and_not_0;
assign minterm_08 = is_3_and_not_2 & not_1_and_not_0;
assign minterm_00_or_minterm_02 = minterm_00 | minterm_02;
assign minterm_06_or_minterm_08 = minterm_06 | minterm_08;
assign e = minterm_00_or_minterm_02 | minterm_06_or_minterm_08;


assign not_3_and_not_2_and_1_and_not_0 = not_3_and_not_2 & is_1_and_not_0;
assign not_3_and_not_2_and_1_and_0 = not_3_and_not_2 & 1_and_0;
assign p2 = not_3_and_not_2_and_not_1_and_0 | not_3_and_not_2_and_1_and_not_0;
assign p3 = not_3_and_not_2_and_1_and_0 | not_3_and_2_and_1_and_0;
assign not_f = p2 | p3;
assign f = ~not_f;


assign not_3_and_not_2_and_not_1_and_not_0 = not_3_and_not_2 & not_1_and_not_0;
assign p4 = not_3_and_not_2_and_not_1_and_not_0 | not_3_and_not_2_and_not_1_and_0;
assign p5 = is_3_and_not_2_and_not_1_and_0 | not_3_and_2_and_1_and_0;
assign not_g = p4 | p5;
assign g = ~not_g;