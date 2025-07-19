// Declare something
.data
Data:   .word A-1
A:      .word B-2
B:      .word Data

.text
.global _start
_start:
    ldr r2, =Data
    ldr r3, [r2]
    ldr r4, [r3, #1]
    ldr r5, [r4, #2]
    1: b 1b    // Done
