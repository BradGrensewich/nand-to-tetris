// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

(LISTEN)
//reset loop registers
@SCREEN
D=A
@addr //pointer to address
M=D
@i
M=0

@KBD //get keyboard address
D=M
@KEYPRESSED
D;JNE //key is pressed
@KEYNOTPRESSED
0;JMP

(KEYPRESSED)
@color
M=-1   //black
@SETSCREEN
0;JMP

(KEYNOTPRESSED)
@color
M=0   //white
@SETSCREEN
0;JMP

(SETSCREEN)
//check finished
@8192
D=A
@i
D=D-M
@LISTEN
D;JEQ

//next spot in memory
@i
D=M
@SCREEN
D=D+A
@addr //increment @addr value
M=D
@color
D=M
@addr
A=M  //point to next address
M=D  //fill with correct color

//i++
@i
M=M+1
@SETSCREEN
0;JMP