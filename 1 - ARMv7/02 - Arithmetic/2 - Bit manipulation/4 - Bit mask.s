.global _start
_start:
	ldr r0, =4
	bl mask
1:	b 1b    // Done

mask:
    mov r1, #1
    rsb r0, r1, r1, lsl r0
    bx lr
