# N = 26 + (X % 11), M = N - 10
# X = 02968946, (X %11) = 2
# N = 26 + 2 = 28, M = 28 - 10 = 18 
# β = 'r' and  Δ = 'R'

.data
  # allocate 10 character space for input from the user
  userInput: .space 10 

.text
main:
 # get input from the user
 li, $v0, 8
 la $a0, userInput
 li $a1, 10
 syscall

