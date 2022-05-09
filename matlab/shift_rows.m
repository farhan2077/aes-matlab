function [shift_rows_output] = shift_rows(sub_bytes_output)
% i/p > dec, 4x4
% o/p > dec, 4x4

for i = 1:4
    shift_rows_output(i, :) = circshift(sub_bytes_output(i, :), 1-i);
end

end