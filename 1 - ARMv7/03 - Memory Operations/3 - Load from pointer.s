Data: .word 0x123
.global _start
_start:
    ldr r0, =Data
    bl load
    1: b 1b    // Done

// Dereference a pointer
load:
    ldr r0, [r0]
    bx 	lr
