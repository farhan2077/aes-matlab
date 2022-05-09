function [updated_plaintext] = zero_fill(plaintext)
% i/p > char, 1x16
% o/p > char, 1x16

if (length(plaintext) >=1 && length(plaintext)<=16)
    for i = length(plaintext)+1 : 1 : 16  % for start:step:end
        plaintext(i) = 0;
    end
end
updated_plaintext = plaintext;

end