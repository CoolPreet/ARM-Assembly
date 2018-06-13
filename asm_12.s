.global _start

.text

_start:
		mov r2, #6
		mov r3, #5

		cmp r2, r3

		beq equal
		mov r7, #4
		mov r0, #1
		ldr r1, =neq
		mov r2, #10

		swi 0

		bal end

equal:
		mov r7, #4
		mov r0, #1
		ldr r1, =eq
		mov r2, #6

		swi 0

		bal end

end:
		mov r7, #1
		swi 0

.data


eq:
		.ascii "Equal\n"
neq:
		.ascii "Not_Equal\n"
