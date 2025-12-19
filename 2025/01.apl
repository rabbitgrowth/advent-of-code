lines←⊃⎕NGET'01.txt'1
dirs←¯1 1['LR'⍳⊃¨lines]
steps←(⍎1∘↓)¨lines
⎕←+/0=100|+\50,steps×dirs
⎕←+/0=100|+\50,steps/dirs
