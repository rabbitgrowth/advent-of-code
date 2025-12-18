line←⊃⊃⎕NGET'01.txt'1
words←~⍤∊∘', '⍛⊆line
turns←0j1*+\-⌿'LR'∘.=⊃¨words
steps←(⍎1∘↓)¨words
⎕←+/|9 11○+/steps×turns
