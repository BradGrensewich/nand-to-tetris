// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

(LISTENFORPRESS)
@KBD //get keyboard address
D=M
@KEYPRESSED
D;JNE //key is pressed
@LISTENFORPRESS
0;JMP

(LISTENFOREMPTY)
@KBD //get keyboard address
D=M
@KEYRELEASED
D;JEQ //key is pressed
@LISTENFOREMPTY
0;JMP

(KEYPRESSED)
//prepare loop
@SCREEN
D=A
@addr //pointer to address
M=D
@i
M=0

(SETSCREENBLACK)
//check finished
@8192
D=A
@i
D=D-M
@LISTENFOREMPTY
D;JEQ

//next spot in memory
@i
D=M
@addr
A=D+M
M=-1

//i++
@i
M=M+1
@SETSCREENBLACK
0;JMP

(KEYRELEASED)
//prepare loop
@SCREEN
D=A
@addr //pointer to address
M=D
@i
M=0

(SETSCREENWHITE)
//check finished
@8192
D=A
@i
D=D-M
@LISTENFORPRESS
D;JEQ

//next spot in memory
@i
D=M
@addr
A=D+M
M=0

//i++
@i
M=M+1
@SETSCREENWHITE
0;JMP



