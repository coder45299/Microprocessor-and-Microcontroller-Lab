.model small
.stack 100h
.code
main proc
 mov ah, 1
 int 21h
 mov bl, al
 int 21h
 mov bh, al
 int 21h
 mov cl, al
 cmp bl, bh
 jle compare_third
 mov bl, bh
compare_third:
 cmp bl, cl
 jle display
 mov bl, cl
display:
 mov dl, 0dh
 mov ah, 2
 int 21h
 mov dl, 0ah
 int 21h
 mov dl, bl
 int 21h
 mov ah, 4ch
 int 21h
main endp
end main