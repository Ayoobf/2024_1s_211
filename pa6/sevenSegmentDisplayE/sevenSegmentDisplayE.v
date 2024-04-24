input [3:0] numeral_bit;

output e;

wire not_numeral_bit_3;
wire not_numeral_bit_2;
wire not_numeral_bit_1;
wire not_numeral_bit_0;

wire minterm_00;
wire minterm_02;
wire minterm_06;
wire minterm_08;

wire minterm_00_or_minterm_02;
wire minterm_06_or_minterm_08;

wire not_3_and_not_2;
wire not_1_and_not_0;
wire is_1_and_not_0;
wire not_3_and_is_2;
wire is_3_and_not_2;

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
