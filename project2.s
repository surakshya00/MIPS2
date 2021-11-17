.data
        invalid_input: .asciiz "Not recognized"     #prints not recognized if the input is not valid 
        user_input: .space 1001                      #reserves space for 1000bytes of character 
        required: .space 5                            #reserves space for 4 sub characters 
.text

.globl main
main:
        li $v0, 8                 #prepares for user input
        la $a0, user_input         #loads the address of the first byte
        li $a1, 1001              #max length of the characters
        syscall
        
        la $a1, user_input          #loads the address of a1 to user_input to check all the values
        li $t9, 0                  #to make a condition of true or false to check if the character was found or not

        
