function [new_plaintext] = fill_empty_text(plaintext)
    if (length(plaintext) >=1 && length(plaintext)<=16)
        for i = length(plaintext)+1 : 1 : 16  % for initVal:step:endVal
            plaintext(i) = 0;
        end
    end
    new_plaintext = plaintext;  
end