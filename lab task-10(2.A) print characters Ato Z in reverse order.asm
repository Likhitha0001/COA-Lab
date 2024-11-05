 ;Program to print characters A to Z in reverse order
org 100h            ; Set starting point for .COM programs

mov cx, 26          ; Set loop counter to 26 (for characters A to Z)
mov dl, 'Z'         ; Initialize DL with ASCII code for 'Z'

print_loop:
    mov ah, 02h     ; Function to print character in DL
    int 21h         ; Call DOS interrupt to display character
    dec dl          ; Decrement DL to get the previous character
    loop print_loop ; Loop until CX is zero

mov ah, 4Ch         ; Exit program
int 21h




