⎕IO←0
lines←⊃⎕NGET'10.txt'1
words←(' '∘≠⊆⊢)∘(~∘'[](){}')¨lines
lights ←('#'=⊃)                      ¨words
buttons←(⍳∘⍴¨lights)⊂⍛(∊¨)¨(⍎¨¯1↓1∘↓)¨words
jolts  ←(⍎⊃∘⌽)                       ¨words
⎕←+/buttons{⌊/+/↑(⍵≡∘⊃≠/⍤/∘⍺)¨⍛/(↓∘⍉⍴∘2⊤∘⍳2∘*)≢⍺}¨lights
⎕←+/buttons{
 button jolt←⍺⍵
 0{
  jolt⊂⍛∊⍵:⍺
  (1+⍺)∇∧.≤∘jolt¨⍛/,button∘.+⍵
 }⊂0×⍵
}¨jolts
