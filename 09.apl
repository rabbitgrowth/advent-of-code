points←⍎¨⊃⎕NGET'09.txt'1
area←×/1+|⍤-
⎕←⌈/,∘.area⍨points
