// A test case to test your function with
.global _start
_start:
    ldr r0, =2       // 2 = sign extend 8->32
    ldr r1, =0xf0    // The number to extend
    bl extend
    b _start        // End of testing code

// A function to extend. Only this part will be tested.
extend:
    cmp 	r0, #2
    bge		se
	cmp 	r0, #1
    beq 	ze16
ze8:
    uxtb 	r0, r1
    bx 		lr
ze16:
    uxth 	r0, r1
    bx 		lr  
    
se:
    cmp 	r0, #2
    beq 	se8
se16:
    sxth 	r0, r1
    bx 		lr
se8:
    sxtb 	r0, r1
    bx 		lr
