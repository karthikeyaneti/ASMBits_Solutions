.data
Pointer: .word 1234
.text
.global _start
_start:
    ldr r0, =Pointer
    bl load
    1: b 1b    // Done

.global load
load:
    ldrb	r3, [r0, #3]
    ldrb 	r2, [r0, #2]
    ldrb 	r1, [r0, #1]
    ldrb 	r0, [r0]
    orr 	r0, r1, lsl #8
    orr 	r0, r2, lsl #16
    orr 	r0, r3, lsl #24
    bx 		lr
