
; Program to print characters A to Z
org 100h            ; Set starting point for .COM programs

mov cx, 26          ; Set loop counter to 26 (for letters A to Z)
mov dl, 'A'         ; Initialize DL with ASCII code for 'A'

print_char_loop:
    mov ah, 02h     ; Function to print character in DL
    int 21h         ; Call DOS interrupt to display character
    inc dl          ; Increment DL to get next letter
    loop print_char_loop ; Loop until CX is zero

mov ah, 4Ch         ; Exit program
int 21h   





