// A test case to test your function with
.data
Array: .byte 1, 2, 3

.text
.global _start
_start:
    ldr r0, =3 
    ldr r1, =Array
    bl max
    b _start        // End of testing code

// Return maximum element of unsigned array
max:
    mov     r12, r0
    ldrsb    r0, [r1], #1
    subs    r12, r12, #1
    bxeq    lr

loop:
    ldrsb    r2, [r1], #1
    cmp     r2, r0
    movgt   r0, r2
    subs    r12, r12, #1
    bne     loop
    bx      lr
