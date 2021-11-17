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
        beq $a0, 32, Char_found      #if the character is space cause the ascii val of space is 32, then it keeps on looping
        beq $a0, 10, Non_char      #if the character is end of line then it branches to non char label again
        beq $t9, 1, display_error     #if the characters have already been found before then the input is invalid
        li $t9, 1                     #if the character passes through all above conditions then that means the character is valid and the first character to be found so lets put our condition as True that the char is found for the future context
       
Non_char:
        beq $t9, 0, display_error                 #checks the condition of character found or not and if not found then displays the error message
        
 
 
 display_error:
        
