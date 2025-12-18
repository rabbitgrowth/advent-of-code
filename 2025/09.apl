points←⍎¨⊃⎕NGET'09.txt'1
area←×/1+∘|-
to←{↓⍺⍪⍺+⍤1⍉↑(⍳¨∘|××)⍵-⍺}
edge←{1@⍵⊢0⍴⍨  ⊃⌈/⍵}⊃,/(⊢to¨1∘⌽)     points
big ←{1@⍵⊢0⍴⍨1+⊃⌈/⍵}⊃,/(⊢to¨1∘⌽)¯1+2×points
fill←edge∨(~2|⍳∘≢∘⍉)⍛/≠\(~2|⍳∘≢)⍛⌿big
inside←∧/∘,((1+∘|-)↑fill↓⍨¯1+⌊)
⎕←⌈/,∘.        area ⍨points
⎕←⌈/,∘.(inside×area)⍨points
