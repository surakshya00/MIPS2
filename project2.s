.data
        invalid_input: .asciiz "Not recognized"     #prints not recognized if the input is not valid 
        user_input: .space 1001
        required: .space 5
.text

main:
        li $v0, 8
        la $a0, user_input
        li $a1, 1001
        syscall

        
