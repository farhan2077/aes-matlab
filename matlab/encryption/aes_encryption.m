function [ciphertext] = aes_encryption(plaintext, roundkeys, type)

plaintext_dec = double(plaintext);
plaintext_dec = reshape(plaintext_dec,4,4);

add_round_key_output = add_round_key(plaintext_dec, roundkeys{1});%bitxor(plaintext_dec, initial_roundkey);
for i = 1: 10
    sub_bytes_output = sub_bytes(add_round_key_output,type);
    shift_rows_output = shift_rows(sub_bytes_output,type);
    if(i <= 9)
        mix_columns_output = mix_columns(shift_rows_output,type);
    else
        mix_columns_output = shift_rows_output;
    end
    add_round_key_output = add_round_key(mix_columns_output, roundkeys{i+1});
%     reshape(dec2hex(add_round_key_output)',1,[])
    add_round_key_output = reshape(add_round_key_output,[1,16]);
end
ciphertext = add_round_key_output;

end
