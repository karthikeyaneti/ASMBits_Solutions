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
	mov     r1, r0
loop:
	ldrb    r2, [r0], #1
    cmp     r2, #0
    bne     loop
    sub     r0, r0, r1
    sub     r0, r0, #1
    bx      lr
