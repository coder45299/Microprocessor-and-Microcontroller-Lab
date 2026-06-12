.model small
.stack 100h
.data
.code
main proc
mov cx,5
mov bl,0
input_loop:
mov ah,01h
int 21h
sub al,30h
add bl,al
loop input_loop
mov ah,02h
mov dl,0Dh
int 21h
mov dl,0Ah
int 21h
mov al,bl
mov ah,00h
mov bh,10
div bh
mov cl,ah
add al,30h
mov dl,al
mov ah,02h
int 21h
add cl,30h
mov dl,cl
mov ah,02h
int 21h
mov ah,4Ch
int 21h
main endp
end main