⎕PP←34
lines←⊃⎕NGET'06.txt'2
digits←¯1↓lines
nums1←⍎⍤1⊢digits
nums2←⍎¨¨(∨.≠∘' '⊆↓)⍉digits
add mul←↓'+*'∘.=' '~⍨⊢⌿lines
⎕←+/(×⌿ mul/nums1),+⌿ add/nums1
⎕←+/(×/¨mul/nums2),+/¨add/nums2
