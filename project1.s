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
 li $a1, 10 # maximum character allowed
 syscall

# commit
# we move the input from $a0 to temporary register $t1
move $t1, $a0

# we load the first character of the input to a new register $t2
lb $t2, 0($t1)

# we create three labels: uppercase, lowercase and numbers and jump to them based on the character read
  bge $t2, 97,lowercase
  bge $t2, 65, uppercase
  bge $t2, 48, number

# we also keep track of the iteration through each element
iteration: 
  addi $t1, $t1, 1 # we add 1 to iterate through each element in the input
  lb $t2, 0($t1)
  
# commit 


uppercase:

lowercase:
 
numbers:   


