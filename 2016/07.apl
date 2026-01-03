lines←⊃⎕NGET'07.txt'1
split←(2|⍳∘≢)⍛(⊂⍤⊢⌸)~⍤∊∘'[]'⍛⊆
out in←↓⍉↑split¨lines
axa←(≠/2∘↑)∧⌽⍛≡
abba←{∨/axa¨⊃,/4,/¨⍵}
abas←{axa¨⍛/⊃,/3,/¨⍵}
bab←3⍴1∘↓
⎕←+/(~abba¨in)∧abba¨out
⎕←+/(abas¨in)∨/⍤∊¨⍨(bab¨abas)¨out
