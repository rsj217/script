.section .text
.globl _start
_start:
    addi t0, x0, 0x1
    addi t1, x0, 0x0
    addi t3, x0, 0xa
loop:
    add t1, t1, t0
    add t0, t0, 0x1
    add t3, t3, -1
    bne t3, x0, loop
    nop
    jr ra
    nop
