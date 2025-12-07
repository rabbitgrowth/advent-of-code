⎕PP←34
lines←⊃⎕NGET'05.txt'1
p1 p2←(⊢⊆⍨∘×≢¨)lines
merge←{
 ranges←⍵
 x y←⍺
 i j←⍵⍸(x-1)y
 (0=2|i)∧i=j:(i↑⍵),⍺,i↓⍵
 ranges[(0=2|i)/i+1]←x
 ranges[(0=2|j)/j  ]←y
 k←1+2×⌊i÷2
 (k↑ranges),(2×⌊2÷⍨j-k)↓k↓ranges
}
ranges←⊃merge/(⊂0 1)+(⍎¨'-'∘≠⊆⊢)¨p1
ids←⍎¨p2
⎕←+/2|ranges⍸ids
⎕←+/-⍨/(⊢⍴⍨2,⍨2÷⍨≢)ranges
