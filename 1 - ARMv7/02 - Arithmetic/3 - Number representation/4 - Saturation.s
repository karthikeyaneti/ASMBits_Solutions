// A test case to test your function with
.global _start
_start:
    ldr r0, =0x12345    // First parameter is always in r0
    bl saturate
    b _start        // End of testing code

// Convert unsigned 32 bit to 16 bit, with saturation
saturate:
    cmp 	r0, #0x10000
    movhi	r0, #0xFFFF
    bx 		lr
