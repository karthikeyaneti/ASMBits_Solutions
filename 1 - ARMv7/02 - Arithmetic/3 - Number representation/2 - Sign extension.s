// A test case to test your function with
.global _start
_start:
    mov r0, #0xf0    // First parameter is always in r0
    bl signext
    b _start         // End of testing code

// A function to sign extend. Only this part will be tested.
signext:
    sxtb r0, r0
    bx   lr
