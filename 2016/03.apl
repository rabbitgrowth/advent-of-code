triangles←↑⍎¨⊃⎕NGET'03.txt'1
valid←+/>2×⌈/
⎕←+/valid               triangles
⎕←+/valid(⍴triangles)⍴,⍉triangles
