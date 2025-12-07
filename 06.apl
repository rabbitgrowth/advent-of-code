⎕PP←34
lines←⊃⎕NGET'06.txt'2
digits←¯1↓lines
nums←⍎⍤1⊢digits
add mul←↓'+*'∘.=' '~⍨⊢⌿lines
⎕←+/(×⌿mul/nums),+⌿add/nums
nums←⍎¨¨(∨.≠∘' '⊆↓)⍉digits
⎕←+/(×/¨mul/nums),+/¨add/nums
