MOV AH,1
INT 21H     ; input

MOV DL,AL
MOV AH,2
INT 21H     ; output