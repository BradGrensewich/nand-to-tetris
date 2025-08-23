// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//set R2 = 0
@R2
M=0
//set i = 0
@i
M=0

(LOOP)
//check for finished
@R0
D=M
@i
D=D-M
@END
D;JEQ

//add R1 to product
@R1
D=M
@R2
M=D+M

//i++
@i
M=M+1
@LOOP
0;JMP

(END)
@END
0;JMP