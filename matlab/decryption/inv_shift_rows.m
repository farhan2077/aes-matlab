function [inv_shift_rows_output] = inv_shift_rows(initial_state)
% i/p > dec, 1x16
% o/p > dec, 4x4

initial_state_reshaped = reshape(initial_state, [4,4]);

for i = 1:4
    inv_shift_rows_output(i,:) = circshift(initial_state_reshaped(i, :), i-1);
end
end