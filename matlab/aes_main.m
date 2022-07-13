clc
clear all
close all

fprintf('=========== AES ===========\n')

plaintext = 'ARandomPlainText';
% plaintext = input('Type in an input message (16 characters or less):\n','s');  % 's' converts input to string

key = 'SecretChiliSauce';
% key = input('Type in a secret key/password (16 characters or less):\n','s');

fprintf('\nplaintext = \n');
disp(plaintext)

fprintf('\nkey = \n');
disp(key)

fprintf('\n===== Encryption Start =====\n')

plaintext = zero_fill(plaintext);
key = zero_fill(key);

% generate round keys
[initial_roundkey, roundkeys] = gen_round_keys(key);

% Message Encryption
ciphertext = aes_encryption(plaintext, initial_roundkey, roundkeys);



fprintf('\nciphertext = \n');
disp(ciphertext)

fprintf('\n===== Encryption End =====\n')