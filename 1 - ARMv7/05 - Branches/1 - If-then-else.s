// Some testing code
// You may uncomment these during testing, but comment them out before submitting
// odd: bx lr
// even: bx lr

.global _start
_start:
	ldr r0, =1    // First function parameter is always passed through r0.
	bl oddeven
	1: b 1b    // Done

oddeven:
    ands 	r0, #0x01
    beq		even
    b		odd
