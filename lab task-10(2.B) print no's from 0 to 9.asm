
; Program to print numbers 0 to 9
org 100h            ; Set starting point for .COM programs

mov cx, 10          ; Set loop counter to 10 (for numbers 0 to 9)
mov dl, '0'         ; Initialize DL with ASCII code for '0'

print_loop:
    mov ah, 02h     ; Function to print character in DL
    int 21h         ; Call DOS interrupt to display character
    inc dl          ; Increment DL to get next number
    loop print_loop ; Loop until CX is zero

mov ah, 4Ch         ; Exit program
int 21h




