points←⍎¨⊃⎕NGET'08.txt'1
distance←+/×⍨⍤-
distances←∘.distance⍨points
shortest←{(,⍳⍴⍵)[⍋,⍵]}distances
connect←1000
length←(2×connect)+≢points
graph←(⍳⍴distances)∊length↑shortest
⎕←×/3↑{⍵[⍒⍵]}+/∪∨.∧⍣≡⍨graph
