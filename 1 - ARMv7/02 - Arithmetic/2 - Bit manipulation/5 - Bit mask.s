.global _start
_start:
	ldr r0, =4
	ldr r1, =2
	bl mask
1:	b 1b    // Done

mask:
	mov r2, #1
    lsl r3, r2, r0
    sub r0, r3, r2, lsl r1
    bx lr
