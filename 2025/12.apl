⎕IO←0
lines←⊃⎕NGET'12.txt'1
pars←(⊢⊆⍨×∘≢¨)lines
blocks←('#'=∘↑1∘↓)¨¯1↓pars
areas amounts←2(↑⍤1,⍥⊂↓⍤1)↑(⍎¨∊∘⎕D⊆⊢)¨⊃⌽pars
transforms←{∪(⊢,⍉¨)(⊢,⌽¨)(⊢,⊖¨)⊂⍵}¨blocks
put←{
 ⍺∨.<⍴⍵:⍺⍴0
 y x←⍺
 ,(-⍳1+x-≢⍉⍵)∘.⌽(-⍳1+y-≢⍵)⊖¨⊂⍺↑⍵
}
fit←{
 (×/⍺)<⍵+.×+/∘,¨blocks:0
 (×/⌊⍺÷3)≥+/⍵         :1
 ×≢⊃{(~2∘∊¨)⍛/,⍵∘.+⊃,/(⍴⊃⍵)∘put¨⍺}/(⍵/transforms),⊂⊂⍺⍴0
}
⎕←+/areas fit⍤1⊢amounts
