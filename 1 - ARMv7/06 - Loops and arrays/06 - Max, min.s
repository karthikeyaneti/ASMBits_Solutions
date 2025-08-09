// A test case to test your function with
Array: .word 1, 2, 3

.global _start
_start:
    ldr r0, =3 
    ldr r1, =Array
    bl peak
    b _start        // End of testing code

// Return the difference between max and min array elements
peak:
    mov 	r12, r0
    ldr 	r2, [r1], #4
    mov 	r3, r2
    subs 	r12, r12, #1
    moveq 	r0, #0
    bxeq 	lr
loop:
	ldr 	r0, [r1], #4
    cmp 	r0, r2
    movlt 	r2, r0
    cmp 	r0, r3
    movgt 	r3, r0
    subs 	r12, r12, #1
    bne 	loop   
	sub 	r0, r3, r2
    bx 		lr
