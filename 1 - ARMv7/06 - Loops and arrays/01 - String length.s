.data
MyString: .string "Hello World"

.text
.global _start
_start:
    ldr r0, =MyString
    bl strlen
    1: b 1b

.global strlen
strlen:
	add 	r2, r0, #1
loop:
	ldrb 	r1, [r0], #1
    cmp 	r1, #0
    bne 	loop
    sub 	r0, r0, r2
    bx 		lr
