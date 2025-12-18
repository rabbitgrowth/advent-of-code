lines←⊃⎕NGET'01.txt'1
lr n←↓⍉↑(⊃,∘⍎1∘↓)¨lines
sign←¯1 1['LR'⍳lr]
⎕←+/0=100|+\50,n×sign
⎕←+/0=100|+\50,n/sign
