function [mix_columns_output] = mix_columns(shift_rows_output)
% i/p > dec, 4x4
% o/p > 

shift_rows_output = dec2hex(shift_rows_output);
% shift_rows_output = convertCharsToStrings(shift_rows_output)
% shift_rows_output = reshape(shift_rows_output, [2, 16]);

for i = 1:16
    shift_rows_output(i) = convertCharsToStrings(shift_rows_output(i));
end

mix_columns_output = shift_rows_output;

end