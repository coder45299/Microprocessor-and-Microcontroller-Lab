.model small
.stack 100h
.data
.code
main proc
 mov ah,1
 int 21h
 sub al,30h
 mov bl,al

 mov ah,1
 int 21h
 sub al,30h
 mov bh,al

 mov al,bl
 cmp al,bh
 jge print_larger
 mov al,bh
 print_larger:
 add al,30h
 mov dl,al
 mov ah,2
 int 21h

 mov ah,2
 mov dl,0Ah
 int 21h
 mov dl,0Dh
 int 21h

 mov ah,4Ch
 int 21h
main endp
end main