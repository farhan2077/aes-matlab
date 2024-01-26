function [shift_rows_output] = shift_rows(sub_bytes_output,type)
% i/p > dec, 4x4
% o/p > dec, 4x4

shift_rows_output = NaN*ones(4,4);
if 'en' == type
    for i = 1:4
        shift_rows_output(i, :) = circshift(sub_bytes_output(i, :), 1-i);
    end
else
    for i = 1:4
        shift_rows_output(i, :) = circshift(sub_bytes_output(i, :), i-1);
    end
end 

end
%{
       Shifting operation for encryption    |      Shifting operation for decryption
    [  1,  5,  9, 13]    [  1,  5,  9, 13]  |    [  1,  5,  9, 13]    [  1,  5,  9, 13]
    [  2,  6, 10, 14] => [  6, 10, 14,  2]  |    [  2,  6, 10, 14] => [ 14,  2,  6, 10]
    [  3,  7, 11, 15] => [ 11, 15,  3,  7]  |    [  3,  7, 11, 15] => [ 11, 15,  3,  7]
    [  4,  8, 12, 16]    [ 16,  4,  8, 12]  |    [  4,  8, 12, 16]    [  8, 12, 16,  4]
%}
