function add_round_key_output = add_round_key(mix_column_output,roundkey)
% i/p > mix_column_output > dec, 4x4
%       roundkey> dec, 4x4
% o/p > dec, 4x4

add_round_key_output = bitxor(mix_column_output, roundkey);

end