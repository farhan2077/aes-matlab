fprintf('\n********** AES **********\n')

% --------------------
% Encryption
% --------------------

roundkey = 'SecretChiliSauce';

% plaintext = input('\nEnter input message (16 characters or less): ', 's');  % 's' converts input to string
plaintext = 'ARandomPlainText';
plaintext = fill_empty_text(plaintext);

% ----- intial round -----
initial_state_mat = initial_round(plaintext, roundkey);

% ----- byte substituion -----
[row, col] = size(initial_state_mat);
initial_state_hex = dec2hex(initial_state_mat);
initial_state_hex_mat = reshape(initial_state_hex, [4,4]);

% for i = 1 : 1 : row
%     for j = 1 : 1 : col
%         
%     end
% end

% ----- DEBUG -----
fprintf('\nplaintext = \n');
disp(plaintext)

fprintf('\ninitial_state_hex = \n');
disp(initial_state_hex)

fprintf('\ninitial_state_hex_mat = \n');
disp(initial_state_hex_mat)

