org 100h

n1 db 83h
n2 db 15h

start:

mov al, n1
sub al, n2


mov bl, al

mov ah, al
and ah, 0F0h
shr ah,4
add ah, 30h
cmp ah, 39h
jle print_first_digit
add ah, 7  

print_first_digit:
mov dl,ah
mov ah,02h
int 21h

mov ah, bl
and ah, 0Fh
add ah, 30h
cmp ah, 39h 
jle print_sec_digit
add ah,7

print_sec_digit:
mov dl,ah
mov ah, 02h
int 21h

mov ah,4Ch
int 21h






