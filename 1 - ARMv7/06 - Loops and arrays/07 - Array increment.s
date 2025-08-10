.data 
Array: .word 1, 2, 3, 4

.text
.global _start
_start:
    ldr r0, =Array
    mov r1, #4
    bl array_inc
    1: b 1b    // Done

.global array_inc
array_inc:
	cmp 	r1, #0
    bxeq 	lr
    mov 	r3, #4
loop:
	ldrb 	r2, [r0]
	adds 	r2, r2, #1
    bcs 	next_byte
    strb 	r2, [r0]
    add 	r0, r0, #4
    subs 	r1, r1, #1
    bne 	loop
	bx 		lr
next_byte:
	strb 	r2, [r0], #1
    sub 	r3, r3, #1
    ldrb 	r2, [r0], #1
    adds 	r2, r2, #1
    bcs 	next_byte
    add 	r0, r3
    b 		loop
