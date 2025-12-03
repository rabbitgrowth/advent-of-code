⎕PP←34
lines←⊃⎕NGET'03.txt'1
banks←⍎¨¨lines
max←{
 n digits←2↑⍺,⊂⍬
 0=n:10⊥digits
 digit←⌈/⍵↓⍨1-n
 (n-1)(digits,digit)∇⍵↓⍨⍵⍳digit
}
⎕←+/ 2∘max¨banks
⎕←+/12∘max¨banks
