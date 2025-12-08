points←⍎¨⊃⎕NGET'08.txt'1
distance←.5*⍨(+/2*⍨-)
⎕←×/3↑{⍵[⍒⍵]}+/∪∨.∧⍣≡⍨⍸⍣¯1{⍵[⍋⍵]}3000↑{(,⍳⍴⍵)[⍋,⍵]}∘.distance⍨points
