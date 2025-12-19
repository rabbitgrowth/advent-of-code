lines←⊃⎕NGET'02.txt'1
pad←(' ',⌽∘⍉)⍣4
map1←pad 3 3⍴1↓⎕D
map2←pad['  1  '
         ' 234 '
         '56789'
         ' ABC '
         '  D  ']
moves←{(¯1 0)(1 0)(0 ¯1)(0 1)['UDLR'⍳⍵]}¨lines
code←{
 ⌷∘map¨1↓⊃{
  ⍵,{⍵+(' '≠map⌷⍨⍵+⍺)×⍺}/(⌽⍺),⊂⊃⌽⍵
 }/(⌽⍺),⊂⊂⊃⍸'5'=map←⍵
}
⎕←moves code map1
⎕←moves code map2
