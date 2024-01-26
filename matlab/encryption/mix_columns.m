function [mco] = mix_columns(sro,type)
% i/p > dec, 4x4
% o/p > dec, 4x4

%sro : shift_rows_output;
%mco : mix_columns_output
fast_method = 1;
mco = NaN*ones(4,4);
m = 8; % GF(2^m)
prim_poly = 283;
if 'en' == type
    fixM = [02 03 01 01;
            01 02 03 01;
            01 01 02 03;
            03 01 01 02];
else
    fixM = [14 11 13 09;
            09 14 11 13;
            13 09 14 11;
            11 13 09 14];
end

bypass = 0;
if ~bypass
    C = gf(fixM,m,prim_poly) * gf(sro,m,prim_poly);
    mco = gf2dec(C,m,prim_poly);
    mco = reshape(mco,[4,4]);
else
    mco = sro;
end

end
