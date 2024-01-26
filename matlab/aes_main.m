clc
clear all
close all

addpath('encryption')

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

% generate round keys
roundkeys = gen_round_keys(key);

% Message Encryption
ciphertext = aes_encryption(plaintext, roundkeys, 'en')

fprintf('\nciphertext = \n');
disp(ciphertext)

fprintf('\n===== Encryption End =====\n')

fprintf('\n===== Decryption Start =====\n')

%Equivalent Inverse
roundkeys2 = roundkeys;
for i=2:10
    roundkeys2{i} = mix_columns(roundkeys{i},'de');
end
roundkeys2_flip = roundkeys2;
for i=1:11
    roundkeys2_flip{i} = roundkeys2{12-i};
end
% disp('Here is roundkeys Equivalent :: ')
% for i=11:-1:1
%     reshape(dec2hex(roundkeys2{i})',1,[])
% end
tic
recoverd_equ_plaintext = aes_encryption(ciphertext, roundkeys2_flip, 'de')
toc

fprintf('\nrecoverd_plaintext = \n');
disp(recoverd_plaintext)

fprintf('\n===== Decryption End =====\n')
