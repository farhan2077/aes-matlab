function [recoverd_plaintext] = aes_decryption(ciphertext, initial_roundkey, roundkeys)
% i/p > char, 1x16
% o/p > char, 1x16

ciphertext_dec = double(ciphertext);

% INITIAL ROUND
initial_state = bitxor(reshape(ciphertext_dec, [4, 4]), roundkeys{10});

% MAIN ROUND
for i = 9:-1:0
    % Inverse Shift Rows
    inv_shift_rows_output = inv_shift_rows(initial_state);
    
    % Inverse Sub Bytes
    inv_sub_bytes_output = inv_sub_bytes(inv_shift_rows_output);
    
    if (i >= 1)
        % (i = 1 to 9)
        
        % Inverse Mix Columns
        inv_mix_columns_output = inv_mix_columns(inv_sub_bytes_output);
        
        % Add Round Keys
        add_round_key_output = add_round_key(inv_mix_columns_output, roundkeys{i});
    else
        % (i = 0)
        % Inverse Mix Columns
        inv_mix_columns_output = inv_sub_bytes_output;
        
        % Add Round Keys
        add_round_key_output = bitxor(inv_mix_columns_output, reshape(initial_roundkey, [4,4]));
    end
    
    main_round_output = add_round_key_output;
    
end

recoverd_plaintext = char(reshape(main_round_output, [1, 16]));

end