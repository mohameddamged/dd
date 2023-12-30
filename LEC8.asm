.MODEL SMALL
.DATA
    X DB "HELLO WORLD","$"
    Y DB 11 DUP("*"),"$"
.CODE
    MAIN PROC FAR
    .STARTUP
        LEA SI , X
        LEA DI , Y
        MOV CX , 11
    START:
        MOV AL , [SI]
        MOV [DI] , AL
        INC SI
        INC DI
        DEC CX
        JNZ START
        
        MOV AH , 09H
        MOV DX, OFFSET Y
        INT 21H
    
    
    .EXIT
    MAIN ENDP
END MAIN