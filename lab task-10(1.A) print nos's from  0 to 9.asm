 ; Program to print numbers 9 to 0
org 100h            ; Set starting point for .COM programs

mov cx, 10          ; Set loop counter to 10 (for numbers 9 to 0)
mov dl, '9'         ; Initialize DL with ASCII code for '9'

print_reverse_loop:
    mov ah, 02h     ; Function to print character in DL
    int 21h         ; Call DOS interrupt to display character
    dec dl          ; Decrement DL to get the previous number
    loop print_reverse_loop ; Loop until CX is zero

mov ah, 4Ch         ; Exit program
int 21h




