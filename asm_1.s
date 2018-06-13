.global _start

_start:
	MOV R7, #4         @ System call to write to the screen
	MOV R0, #1         @ System call to to specify output stream we are using is the monitor
	LDR R1, =message   @ Load the string named message which we want to be displayed in to R1 register
	MOV R2, #12        @ Length of the string
	SWI 0	@ Exit

end:
	MOV R7, #1         @ To Jump to the terminal
	SWI 0	@ Exit

.data

message:
	.ascii "Hello_Preet\n"
