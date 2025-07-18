// Declare something
.data
Data:
.word A
.space 3

A:
.space 1
.word B
.space 2

B:
.space 2
.word Data


.text
.global _start
_start:
    ldr r2, =Data
    ldr r3, [r2]
    ldr r4, [r3, #1]
    ldr r5, [r4, #2]
    1: b 1b    // Done
