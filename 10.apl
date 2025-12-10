⎕IO←0
lines←⊃⎕NGET'10.txt'1
words←(' '∘≠⊆⊢)∘(~∘'[](){}')¨lines
lights←('#'=⊃)¨words
buttons←(⍳∘⍴¨lights)⊂⍛(∊¨)¨(⍎¨¯1↓1∘↓)¨words
⎕←+/buttons{⌊/+/↑(⍵≡∘⊃≠/⍤/∘⍺)¨⍛/(↓∘⍉⍴∘2⊤∘⍳2∘*)≢⍺}¨lights
