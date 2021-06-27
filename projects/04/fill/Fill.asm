// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
@SCREEN
D=A
@m
M=D
@addr
M=D

@KBD
D=A-1
@n
M=D



@m
D=M
@n
D=M-D
@e
M=D
(LOOP)
@i
M=0
(inner)
@KBD
D=M
@WHITE
D;JEQ



(BLACK)
@addr
A=M
M=-1


@END
0;JMP

(WHITE)
@addr
A=M
M=0


(END)
@i
M=M+1
@addr
M=M+1
@i
D=M
@e
D=D-M
@LOOP
D;JEQ
@INNER
D;JNE
