# TODOS

Completed items are striken through

- Take plaintext as input
  - Check if the input array is 16 characters or less (add zero elements if input > 16 chars)
- **INITIAL ROUND**
  - plaintext > plaintext_dec
  - plaintext_dec 16x1 > 4x4
  - do the same for roundkey
  - initial_state_mat = plaintext_dec_mat ⨁ roundkey_dec_mat
- **BYTE SUBSTITUTION**
