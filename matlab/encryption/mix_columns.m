function [mix_columns_output] = mix_columns(shift_rows_output)
% i/p > dec, 4x4
% o/p > dec, 4x4

% pdm = pre deined matrix
pdm = [
    2   3   1   1;
    1   2   3   2;
    1   1   2   3;
    3   1   1   2];

% sro =  shift_rows_output
sro = shift_rows_output;

mix_columns_output = zeros(4);  % pre allocation

for col = 1:4
    row = 1;
    while(row <= 4)
        a = pdm(row, 1) * sro(row, col);
        b = pdm(row, 2) * sro(row, col);
        c = pdm(row, 3) * sro(row, col);
        d = pdm(row, 4) * sro(row, col);
        mix_columns_output(row, col) = bitxor(bitxor(a, b), bitxor(c,d));
        row = row + 1;
    end
end

end