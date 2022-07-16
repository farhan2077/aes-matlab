function [recoverd_plaintext] = aes_decryption(ciphertext, initial_roundkey, roundkeys)
% i/p > char, 1x16
% o/p > char, 1x16

ciphertext_dec = double(ciphertext);

% INITIAL ROUND

% MAIN ROUND
initial_state = bitxor(reshape(ciphertext_dec, [4, 4]), roundkeys{10});

% Inverse Shift Rows
inv_shift_rows_output = inv_shift_rows(initial_state);

% Inverse Sub Bytes
inv_sub_bytes_output = inv_sub_bytes(inv_shift_rows_output);

% Inverse Mix Columns
inv_mix_columns_output = inv_mix_columns(inv_sub_bytes_output);

% Inverse Add Round Keys
add_round_key_output = add_round_key(inv_mix_columns_output, ROUNDKEYS);

recoverd_plaintext = add_round_key_output;

end