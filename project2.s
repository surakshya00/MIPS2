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

.globl main 

Char_found:
        lb $a0,($a1)       #loads the single byte into $a1
        addi $a1, $a1, 1     #immediately increases the index by 1 after it is loaded
        
        beq $a0, 0, Non_char      #if the character is null then it branches to Non_char label
        beq $a0, 10, Non_char      #if the character is spaace cause the ascii val of space is 10, then it branches to Non_char
        
        
