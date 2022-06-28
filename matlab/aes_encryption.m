function [output] = aes_encryption(plaintext ,roundkeys)
% i/p > char, 1x16
% o/p >

plaintext_dec = double(plaintext);

%  INITIAL ROUND
initial_state = bitxor(plaintext_dec, roundkeys);

% MAIN ROUND

% 1. Byte Substitution | sub_bytes
sub_bytes_output = sub_bytes(initial_state);

% 2. Shift Rows | shift_rows
shift_rows_output = shift_rows(sub_bytes_output);

% 3 Mix Columns | mix_columns
mix_columns_output = mix_columns(shift_rows_output);

output = mix_columns_output;

% DEBUG
fprintf('\nplaintext_dec = \n');
disp(plaintext_dec)

fprintf('\nroundkeys dec = \n');
disp(roundkeys)

fprintf('\ninitial_state = \n');
disp(initial_state)

fprintf('\nsub_bytes_output = \n');
disp(sub_bytes_output)

fprintf('\nshift_rows_output = \n');
disp(shift_rows_output)

fprintf('\nmix_columns_output = \n');
disp(mix_columns_output)

end