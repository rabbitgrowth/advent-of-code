⎕PP←34
lines←⊃⎕NGET'11.txt'1
words←(∊∘': '~⍛⊆⊢)¨lines,⊂'out'
names←⊃¨words
you out svr dac fft←names⍳'you' 'out' 'svr' 'dac' 'fft'
graph←↑(⊂⍳⍴names)∊¨(names⍳1∘↓)¨words
paths←⊃+/{⍵,⍨⊂graph+.×⊃⍵}⍣{0=+/,⊃⍺}⊂graph
⎕←you out⌷paths
⎕←+/×/paths[[(svr dac)(dac fft)(fft out)
             (svr fft)(fft dac)(dac out)]]
