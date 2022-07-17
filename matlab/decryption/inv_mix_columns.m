function [inv_mix_columns_output] = inv_mix_columns(inv_sub_bytes_output)
% i/p > dec, 4x4
% o/p > dec, 4x4

% pdm_inv_hex = ['0E'   '0B'   '0D'    9;
%                 9     '0E'   '0B'   '0D';
%                '0D'    9     '0E'   '0B';
%                '0B'   '0D'    9     '0E'];

%Constant matrix for Inv MixColumn Layer
pdm_inv = [14 11 13 09;
          09 14 11 13;
          13 09 14 11;
          11 13 09 14];

isbo = inv_sub_bytes_output;

inv_mix_columns_output = zeros(4); % pre allocation

for col = 1:4
    row = 1;
    while(row <= 4)
        a = pdm_inv(row, 1) * isbo(row, col);
        b = pdm_inv(row, 2) * isbo(row, col);
        c = pdm_inv(row, 3) * isbo(row, col);
        d = pdm_inv(row, 4) * isbo(row, col);
        inv_mix_columns_output(row, col) = bitxor(bitxor(a, b), bitxor(c,d));
        row = row + 1;
    end
end

end