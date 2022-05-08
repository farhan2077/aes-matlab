function [initial_state_mat] = initial_round(plaintext,roundkey)
% i/p > str, 4x4
% o/p > dec, 4x4

plaintext_dec = double(plaintext);  % convert plaintext to decimal values [1x16]
plaintext_dec_mat = reshape(plaintext_dec, [4,4]);  % convert [16x1] matrix into [4x4] matrix

roundkey_dec_mat = reshape(double(roundkey), [4,4]);

initial_state_mat = bitxor(plaintext_dec_mat, roundkey_dec_mat);  % xor plaintext matrix and round key matrix

% ----- DEBUG -----
fprintf('--------------------\n')
fprintf('\nplaintext_dec = \n');
disp(plaintext_dec)

fprintf('\nplaintext_dec_mat = \n');
disp(plaintext_dec_mat)

fprintf('\ninitial_state_mat = \n');
disp(initial_state_mat)

fprintf('\nroundkey_dec_mat = \n');
disp(roundkey_dec_mat)
fprintf('--------------------\n')

end