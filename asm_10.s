.global _start

.text

_start:
		mov r2, #6
		mov r3, #5

		cmp r2, r3

		bmi negative
		b positive

positive:
		mov r7, #4
		mov r0, #1
		ldr r1, =pos
		mov r2, #9

		swi 0

		mov r7, #1
		swi 0

negative:
		mov r7, #4
		mov r0, #1
		ldr r1, =neg
		mov r2, #9

		swi 0

		mov r7, #1
		swi 0

end:
		mov r7, #1
		swi 0

.data

pos:
		.ascii "Positive\n"

neg:
		.ascii "Negative\n"
