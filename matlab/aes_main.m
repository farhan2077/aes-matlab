clc
clear all
close all

% Global Variable Declarations
preallocations;

fprintf('********** AES **********\n')

plaintext = 'ARandomPlainText';
% plaintext = input('Type in an input message (16 characters or less):\n','s');  % 's' converts input to string

key = 'SecretChiliSauce';
% key = input('Type in a secret key/password (16 characters or less):\n','s');

plaintext = zero_fill(plaintext);
key = zero_fill(key);

% generate round keys
[initial_roundkey, roundkeys] = gen_round_keys(key);

% Message Encryption
ciphertext = aes_encryption(plaintext, initial_roundkey, roundkeys);

fprintf('\nplaintext = \n');
disp(plaintext)

fprintf('\nciphertext = \n');
disp(ciphertext)