⎕IO←0
lines←⊃⎕NGET'08.txt'1
screen←6 50⍴0
screen←⊃{
 x y←⍎¨∊∘⎕D⍛⊆⍺
 ⊃'rect'         ⍷⍺:⍵∨(⍴⍵)↑y x⍴1
 ⊃'rotate row'   ⍷⍺:⍵⌽⍨-y×x=⍳≢ ⍵
 ⊃'rotate column'⍷⍺:⍵⊖⍨-y×x=⍳≢⍉⍵
}/⌽(⊂screen),lines
⎕←+/,screen
⎕←' ⎕'[screen]
