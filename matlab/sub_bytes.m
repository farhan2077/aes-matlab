function [sub_bytes_output] = sub_bytes(initial_state_mat)
% i/p > dec, 4x4
% o/p > dec, 1x16

[sbox_table] = getGlobal;

disp("initial_state_mat_hex")
disp(dec2hex(initial_state_mat))

initial_state_mat = reshape(initial_state_mat, [1, 16]);

for i = 1: length(initial_state_mat)
    hexnum = dec2hex(initial_state_mat(i));
    if (length(hexnum) == 1)
        hexnum = cat(2,'0', hexnum);
    end
    
    sub_bytes_output(i) = sbox_table(hex2dec(hexnum(1))+1,hex2dec(hexnum(2))+1);
end

sub_bytes_output = dec2hex(sub_bytes_output);

% ----- DEBUG -----
fprintf('--------------------\n')
fprintf('\nsub_bytes_output = \n');
disp(sub_bytes_output)

end

