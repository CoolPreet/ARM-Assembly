.global _start

.text

_start:
		mov r1, #9 @ 1001
		mov r2, #1 @ 0001
		and r0, r1, r2
end:
		mov r7, #1
		swi 0

