l:0:"08.txt"
rect:{@[z;!y;@[;!x;:;1]]}
rot:{n:-(#x)!y;(n#x),n_x}
rotr:{ @[ z;x;rot;y]}
rotc:{+@[+z;x;rot;y]}
f:{w:" "\x
   :["rect"~*w
     rect.`I$"x"\*|w
     (rotr;rotc)["rc"?*w@1].`I$2 0_'w@2 4]}'l
s:(6 50#0){y x}/f
+//s
`0:" #"s
