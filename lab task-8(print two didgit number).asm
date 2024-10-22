
ORG 100h               ; Origin, to specify that the program starts at 100h (COM file format)

; Display the message "The two-digit number is: "
MOV AH, 09h            ; Function 09h of INT 21h prints a string
MOV DX, OFFSET msg_output  ; Load the offset of the output message into DX
INT 21h                ; Call DOS interrupt to print the message

; Display the first digit
MOV DL, '5'            ; Load the first digit ('5') into DL
MOV AH, 02h            ; Function 02h of INT 21h to print a character
INT 21h                ; Print the first digit

; Display the second digit
MOV DL, '9'            ; Load the second digit ('9') into DL
MOV AH, 02h            ; Function 02h of INT 21h to print a character
INT 21h                ; Print the second digit

; Terminate the program
MOV AH, 4Ch            ; Function 4Ch of INT 21h terminates the program
INT 21h                ; Call DOS interrupt to exit

; Data section with messages
msg_output DB 0Dh, 0Ah, 'The two-digit number is: $'  ; Output message with newline (CRLF)



