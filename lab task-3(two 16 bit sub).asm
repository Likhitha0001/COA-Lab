org 100h

num1 dw 7681h  ; First 16-bit number
num2 dw 1234h  ; Second 16-bit number

start:
    ; Load num1 into AX and subtract num2 from AX
    mov ax, num1
    sub ax, num2  ; Perform 16-bit subtraction

    mov bx, ax    ; Store the result in BX

    ; Convert high nibble of the higher byte to ASCII
    mov ah, bh    ; Move the high byte of BX to AH
    shr ah, 4     ; Shift right by 4 to get the high nibble
    add ah, 30h   ; Convert to ASCII
    cmp ah, 39h   ; Check if it's 0-9
    jle print_high_nibble
    add ah, 7     ; Convert to A-F if necessary

print_high_nibble:
    mov dl, ah    ; Move the ASCII value to DL
    mov ah, 02h   ; DOS interrupt to print the character
    int 21h

    ; Convert low nibble of the higher byte to ASCII
    mov ah, bh    ; Move the high byte of BX to AH
    and ah, 0Fh   ; Mask out the high nibble to get the low nibble
    add ah, 30h   ; Convert to ASCII
    cmp ah, 39h   ; Check if it's 0-9
    jle print_low_nibble
    add ah, 7     ; Convert to A-F if necessary

print_low_nibble:
    mov dl, ah    ; Move the ASCII value to DL
    mov ah, 02h   ; DOS interrupt to print the character
    int 21h

    ; Convert high nibble of the lower byte to ASCII
    mov ah, bl    ; Move the low byte of BX to AH
    shr ah, 4     ; Shift right by 4 to get the high nibble
    add ah, 30h   ; Convert to ASCII
    cmp ah, 39h   ; Check if it's 0-9
    jle print_high_nibble2
    add ah, 7     ; Convert to A-F if necessary

print_high_nibble2:
    mov dl, ah    ; Move the ASCII value to DL
    mov ah, 02h   ; DOS interrupt to print the character
    int 21h

    ; Convert low nibble of the lower byte to ASCII
    mov ah, bl    ; Move the low byte of BX to AH
    and ah, 0Fh   ; Mask out the high nibble to get the low nibble
    add ah, 30h   ; Convert to ASCII
    cmp ah, 39h   ; Check if it's 0-9
    jle print_low_nibble2
    add ah, 7     ; Convert to A-F if necessary

print_low_nibble2:
    mov dl, ah    ; Move the ASCII value to DL
    mov ah, 02h   ; DOS interrupt to print the character
    int 21h

    ; Terminate the program
    mov ah, 4Ch
    int 21h





