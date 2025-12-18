⎕PP←34
banks←⍎¨⊃⎕NGET'03.txt'2
max←{
 digit←⌈/⍵↓⍨1-⍺
 1=⍺:digit
 digit,(⍺-1)∇⍵↓⍨⍵⍳digit
}
⎕←10⊥+⌿ 2∘max⍤1⊢banks
⎕←10⊥+⌿12∘max⍤1⊢banks
