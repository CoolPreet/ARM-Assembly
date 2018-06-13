asm: asm.o
	ld -g -o asm asm.o

asm.o: asm.s
	as -c -g -o  asm.o asm.s

clean:
	rm *.o asm 
