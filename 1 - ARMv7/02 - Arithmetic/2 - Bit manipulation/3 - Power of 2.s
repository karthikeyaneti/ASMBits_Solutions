.global _start
_start:
	ldr r0, =4
	bl pow2
1:	b 1b    // Done

pow2:
    sub r1, r0, #1
    ands r0, r0, r1
    mov r0, #0
    moveq r0, #1
    bx lr
