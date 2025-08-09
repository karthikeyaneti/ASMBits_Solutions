// A test case to test your function with
Array: .word 1, 2, 3

.global _start
_start:
    ldr r0, =3 
    ldr r1, =Array
    bl min
    b _start        // End of testing code

// Return minimum element of signed array
min:
	mov 	r12, r0
	ldr 	r0, [r1], #4
    subs 	r12, r12, #1
    bxeq 	lr
loop:
	ldr 	r2, [r1], #4
    cmp 	r2, r0
    movlt 	r0, r2
    subs 	r12, r12, #1
    bxeq 	lr
    b 		loop
