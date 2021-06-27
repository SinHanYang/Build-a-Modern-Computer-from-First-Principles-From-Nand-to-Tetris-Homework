        @8192   // (512 * 32) / 16
        D=A
        @count
        M=D     // count = 8192 (# of bytes)
(LOOP)
        @index
        M=0     // index = 0
(INNER)
        @KBD
        D=M
        @WHITE
        D;JEQ   // goto WHITE if KBD value is 0
(BLACK)
        @index
        D=M
        @SCREEN
        A=A+D   // Calculate byte address
        M=-1    // Fill with black
        @END
        0;JMP   // goto END
(WHITE)
        @index
        D=M
        @SCREEN
        A=A+D   // Calculate byte address
        M=0     // Fill with white
(END)   
        @index
        MD=M+1  // Increment index by 1
        @count
        D=D-M
        @LOOP
        D;JEQ   // goto LOOP if count - index == 0
        @INNER
        0;JMP   // goto INNER