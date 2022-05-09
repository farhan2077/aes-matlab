function [sub_bytes_output] = sub_bytes(initial_state)
% i/p > dec, 1x16
% o/p > dec, 1x16

fprintf('\n********** sub_bytes **********\n')

[sbox] = getGlobal;

for i = 1: length(initial_state)
    hexnum = dec2hex(initial_state(i));
    if (length(hexnum) == 1)
        hexnum = cat(2,'0', hexnum);
    end
    sub_bytes_output(i) = sbox(hex2dec(hexnum(1))+1,hex2dec(hexnum(2))+1);
end

% ----- DEBUG -----
fprintf('\nsub_bytes_output = \n');
disp(sub_bytes_output)

end