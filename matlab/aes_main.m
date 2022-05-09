clc
clear all
close all

% Global Variable Declarations
preallocations;

fprintf('********** aes_main **********\n')

plaintext = 'ARandomPlainText';
% plaintext = input('Type in an input message (16 characters or less):\n','s');  % 's' converts input to string

roundkey = 'SecretChiliSauce';
% key = input('Type in a secret key/password (16 characters or less):\n','s');

plaintext = zero_fill(plaintext);
roundkey = zero_fill(roundkey);

% generate round keys
roundkeys = gen_round_keys(roundkey);

% Message Encryption
ciphertext = aes_encryption(plaintext, roundkeys);