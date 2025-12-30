lines←⊃⎕NGET'06.txt'2
freq←({(⊣/⍵)[⍋⊢/⍵]},∘≢⌸)¨↓⍉lines
⎕←⊢/¨freq
⎕←⊣/¨freq
