function [sub_bytes_output] = sub_bytes(initial_state)
% i/p > dec, 1x16
% o/p > dec, 4x4

[sbox] = get_global;

for i = 1: length(initial_state)
    hexnum = dec2hex(initial_state(i));
    if (length(hexnum) == 1)
        hexnum = cat(2,'0', hexnum);
    end
    sub_bytes_output(i) = sbox(hex2dec(hexnum(1))+1,hex2dec(hexnum(2))+1);
end

sub_bytes_output = reshape(sub_bytes_output, [4,4]);

end