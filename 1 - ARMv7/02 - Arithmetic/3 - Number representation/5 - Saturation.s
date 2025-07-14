// A test case to test your function with
.global _start
_start:
    ldr r0, =0x123    // First parameter is always in r0
    bl saturate
    b _start        // End of testing code

// Convert signed 32 bit to 8 bit, with saturation
saturate:
    ssat 	r0, #8, r0
    uxtb 	r0, r0
    bx 		lr
