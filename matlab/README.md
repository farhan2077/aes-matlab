# Important links

- [reshaping and rearranging](https://www.mathworks.com/help/matlab/math/reshaping-and-rearranging-arrays.html)
- [preallocations explanation](https://www.youtube.com/watch?v=Pqn-y_SnzMs)
- [array concatation](https://www.mathworks.com/help/matlab/ref/double.cat.html)
- [reshape](https://www.mathworks.com/help/matlab/ref/reshape.html)

# Interesting tidbits

- hex2dec & dec2hex have diff conversion styles
  - hex2dec("255") > 597
  - dec2hex(255) > 'FF'
- declaration
  - 'AB' > hex
  - "AB" > char/ str

# Completed modules in MATLAB

- Take plaintext as input
  - Check if the input array is 16 characters or less (add zero elements if input > 16 chars)
- **INITIAL ROUND**
  - plaintext > plaintext_dec
  - plaintext_dec 16x1 > 4x4
  - do the same for roundkey
  - initial_state_mat = plaintext_dec_mat ⨁ roundkey_dec_mat
- **BYTE SUBSTITUTION** > sub_bytes
  - input, output
    - i/p > dec (1x16)
    - o/p > dec (1x16)
  - dec i/p > hex
