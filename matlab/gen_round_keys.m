function [initial_roundkey, roundkeys] = gen_round_keys(key)
% i/p > char, 1x16
% o/p > cell(10,1) | each cell > dec, 4x4

rcon  = [1    2    4    8   16    32    64    127    27    54;
        0     0    0    0   0     0     0     0      0     0;
        0     0    0    0   0     0     0     0      0     0;
        0     0    0    0   0     0     0     0      0     0];

[sbox] = get_global;

% char > dec
initial_roundkey = double(key);

% 1x16 > 4x4
key = reshape(initial_roundkey, [4,4]);

n = 10;
% rks = roundkeys, cell type
rks = cell(n,1);

for i = 1 : n
    if (i > 1)
        key = rks{i-1};
    end

    last_col = key(:, 4);
    rot_word = circshift(last_col, -1);
    sub_byte = zeros(1,4);  % preallocation

    for j = 1 : length(rot_word)
        hexnum = dec2hex(rot_word(j));
        if (length(hexnum) == 1)
            hexnum = cat(2,'0', hexnum);
        end
        sub_byte(j) = sbox(hex2dec(hexnum(1))+1,hex2dec(hexnum(2))+1);
    end

    last_col = reshape(sub_byte, [4,1]);
    first_col = key(:, 1);
    rcon_col = rcon(:, i);

    col1 = bitxor(bitxor(first_col, last_col), rcon_col);
    col2 = bitxor(col1, key(:, 2));
    col3 = bitxor(col2, key(:, 3));
    col4 = bitxor(col2, key(:, 4));

    rks{i} = [col1 col2 col3 col4];
end

roundkeys = rks;
end