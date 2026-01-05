c:0:"08.txt"       /commands
e:.(!/2#,,/$!10)@  /extract numbers
b:{y~(#y)#x}       /begins with
r:{x@(#x)!(!#x)-y} /rotate right
s:6 50#0           /screen
u:{(m;n):e y       /update screen
   :[b[y;"rect"         ];.[x;!'n,m;:;1]
     b[y;"rotate row"   ]; @[ x;m;r;n]
     b[y;"rotate column"];+@[+x;m;r;n]]}
s:s u/c
+//s
`0:" #"s
