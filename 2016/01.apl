line←⊃⊃⎕NGET'01.txt'1
words←~⍤∊∘', '⍛⊆line
dirs←0j1*+\¯1 1['LR'⍳⊃¨words]
steps←(⍎1∘↓)¨words
dist←+/∘|9 11∘○
⎕←dist         +/steps×dirs
⎕←dist⊃∘⍸∘~∘≠⍛⊃+\steps/dirs
