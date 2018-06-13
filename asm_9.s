.global _start

.text

_start:
		mov r0, #17
		b end
		mov r0, #20

end:
		mov r7, #1
		swi 0

