line←⊃⊃⎕NGET'01.txt'1
words←~⍤∊∘', '⍛⊆line
turns←0j1*+\-⌿'LR'∘.=⊃¨words
steps←(⍎1∘↓)¨words
dist←+/∘|9 11∘○
⎕←dist+/steps×turns
keys freq←↓⍉↑,∘≢⌸+\steps/turns
⎕←dist⊃keys/⍨1<freq
