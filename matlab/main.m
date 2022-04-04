fprintf('\n********** AES **********\n')

% --------------------
% Encryption
% --------------------

roundkey = 'SecretChiliSauce';

plaintext = input('\nEnter input message (16 characters or less): ', 's');  % 's' converts input to string
% plaintext = 'ARandomPlainText';
plaintext = fill_empty_text(plaintext);

% ----- intial round -----
initial_state_mat = initial_round(plaintext, roundkey);

% ----- byte substituion -----
[row, col] = size(plaintext_dec_mat);
plaintext_hex_mat = dec2hex(plaintext_dec_mat);

% for i = 1 : 1 : row
%     for j = 1 : 1: col
%         plaintext_hex_mat(i, j) = plaintext_hex_mat;
%     end
% end

% ----- DEBUG -----
fprintf('\nplaintext = \n');
disp(plaintext)

fprintf('\nplaintext_dec = \n');
disp(plaintext_dec)

fprintf('\nplaintext_dec_mat = \n');
disp(plaintext_dec_mat)

fprintf('--------------------\n')
fprintf('\nroundkey = \n');
disp(roundkey)

fprintf('\nroundkey_dec_mat = \n');
disp(roundkey_dec_mat)

fprintf('--------------------\n')
fprintf('\ninitial_state_mat = \n');
disp(initial_state_mat)