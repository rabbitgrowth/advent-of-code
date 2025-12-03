⎕PP←34
lines←⊃⎕NGET'03.txt'2
banks←⍎¨lines
max←{
 digit←⌈/⍵↓⍨1-⍺
 1=⍺:digit
 digit,(⍺-1)∇⍵↓⍨⍵⍳digit
}
⎕←10⊥+⌿ 2∘max⍤1⊢banks
⎕←10⊥+⌿12∘max⍤1⊢banks
