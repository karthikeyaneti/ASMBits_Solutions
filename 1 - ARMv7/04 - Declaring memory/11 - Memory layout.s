// Declare something
.data
Data:				// r0 = Data
    .space 4		// r0 to r0 + 3 (4 bytes)
    .word 0x1234	// r0 + 4 to r0 + 7 (4 bytes)
    .hword 0x5678	// r0 + 8 to r0 + 9 (2 bytes)
    .space 1		// r0 + 10 (1 byte)
    .byte 0x90		// r0 + 11 (1 byte)

.text
.global _start
_start:
    ldr r0, =Data
    ldr r1, [r0, #4]
    ldrh r2, [r0, #8]
    ldrb r3, [r0, #11]
    1: b 1b    // Done
