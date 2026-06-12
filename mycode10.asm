.model small
.stack 100h
.code
main proc
 mov cx, 3

outer_loop:
 push cx
 mov cx, 3
inner_loop:
 mov ah, 2
 mov dl, '*'
 int 21h

 loop inner_loop
 ; Print newline
 mov dl, 0dh
 int 21h
 mov dl, 0ah
 int 21h
 pop cx
 loop outer_loop
 mov ah, 4ch
 int 21h
main endp
end main