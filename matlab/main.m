clc
close all

% Global Variable Declarations
preallocations;

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
sub_bytes_output = sub_bytes(initial_state_mat);

% ----- DEBUG -----
fprintf('--------------------\n')
fprintf('\nplaintext = \n');
disp(plaintext)

fprintf('\nroundkey = \n');
disp(roundkey)
fprintf('--------------------\n')
