lines:0:"10.txt"
mask:"v"=*'lines
(values;bots):+" goes to "\'lines@&mask
values:`I$(" "\'values)[;1]
chips:{x@<x}'=values!bots
(bots;rest):+" gives low to "\'lines@&~mask
rules:bots!" and high to "\'rest
move:{full:&2=#'x
      x[rules full],:x full
      {x@<x}'@[x;full;2_]}
steps:move\chips
`I$(" "\*(&/'^:)_steps?\:17 61)[1]
*/*'(*|steps)["output ",/:$!3]
