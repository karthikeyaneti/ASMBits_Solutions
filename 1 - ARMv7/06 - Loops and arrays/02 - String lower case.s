.data
.byte 0    // Strings aren't word-aligned
MyString: .string "Hello World"

.text
.global _start
_start:
    ldr r0, =MyString
    bl strtolower
    1: b 1b

.global strtolower
strtolower:
	ldrb 	r12, [r0], #1
    cmp 	r12, #0
    bxeq 	lr
    cmp 	r12, #'Z'
	bgt 	strtolower
    cmp 	r12, #'A'
	blt 	strtolower
    add 	r12, r12, #0x20
    strb	r12, [r0, #-1]
	b 		strtolower
