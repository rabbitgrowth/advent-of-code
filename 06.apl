⎕PP←34
lines←⊃⎕NGET'06.txt'2
nums←⍎⍤1⊢¯1↓lines
ops←' '~⍨⊢⌿lines
⎕←+/(×⌿nums/⍨'*'=ops),+⌿nums/⍨'+'=ops
