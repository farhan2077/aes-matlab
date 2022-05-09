function [output] = aes_encryption(plaintext ,roundkeys)
% i/p > char, 1x16
% o/p >

fprintf('\n********** aes_encryption **********\n')

plaintext_dec = double(plaintext);

%  INITIAL ROUND
initial_state = bitxor(plaintext_dec, roundkeys);

% MAIN ROUND

% Byte Substitution - sub_bytes
sub_bytes_output = sub_bytes(initial_state);

output = sub_bytes_output;

% DEBUG
fprintf('initial_state type = ')
fprintf(class(initial_state))
fprintf('\n')

end