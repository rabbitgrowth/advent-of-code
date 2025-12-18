map←'@'=⊃⎕NGET'04.txt'2
next←⊢∧4<{+/,⍵}⌺3 3
⎕←+/,(⊢-next  )map
⎕←+/,(⊢-next⍣≡)map
