.global _start

.text

_start:
		mov r1, #0xf @ 1111
		mov r2, #0x5 @ 0101
		mov r3, #0x5 @ 0101
		mla r0, r1, r2, r3
end:
		mov r7, #1
		swi 0

