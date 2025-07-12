.global _start
_start:
    mov r0, #5
    bl popcount
    1: b 1b    // Done

// Only your function (starting at popcount) is judged. The test code above is not executed.
popcount:
    ldr r1, =0x55555555
    and r2, r0, r1
    bic r0, r0, r1
    add r0, r2, r0, LSR #1

    ldr r1, =0x33333333
    and r2, r0, r1
    bic r0, r0, r1
    add r0, r2, r0, LSR #2

    ldr r1, =0x0F0F0F0F
    and r2, r0, r1
    bic r0, r0, r1
    add r0, r2, r0, LSR #4

    add r0, r0, r0, LSR #8
    add r0, r0, r0, LSR #16
    and r0, r0, #0xFF
    bx lr
