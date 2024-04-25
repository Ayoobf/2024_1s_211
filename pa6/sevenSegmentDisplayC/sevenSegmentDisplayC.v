input [3:0] numeral_bit;

output c;

wire not_numeral_bit_3;
wire not_numeral_bit_2;
wire not_numeral_bit_1;
wire not_numeral_bit_0;

wire maxterm_02;

wire 2_or_not_1;
wire paren_2_or_not_1_or_0;
wire not_3_and_paren;

wire not_2_or_not_1;
wire not_2_or_not_1_or_not_0;


assign not_numeral_bit_3 = ~ numeral_bit[3];
assign not_numeral_bit_2 = ~ numeral_bit[2];
assign not_numeral_bit_1 = ~ numeral_bit[1];
assign not_numeral_bit_0 = ~ numeral_bit[0];

assign 2_or_not_1 = numeral_bit[2] | not_numeral_bit_1;
assign paren_2_or_not_1_or_0 = 2_or_not_1 | numeral_bit[0];
assign not_3_and_paren = not_numeral_bit_3 & paren_2_or_not_1_or_0;

assign not_2_or_not_1 = not_numeral_bit_2 | not_numeral_bit_1;
assign not_2_or_not_1_or_not_0 = not_2_or_not_1 | not_numeral_bit_0;

assign maxterm_02 = not_3_and_paren | not_2_or_not_1_or_not_0;


assign c = maxterm_02;
