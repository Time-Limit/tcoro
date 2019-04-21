.section .data
OutputData:
    .ascii "Hello World!\n"
LengthOfOutputData:
    .equ lenMsg, LengthOfOutputData - OutputData

.equ SYS_STDOUT, 1
.equ SYS_STDIN, 0

.equ SYS_WRITE, 4
.equ SYS_READ, 3

.equ SYS_EXIT, 1

.section .bss
.equ BUFFER_SIZE, 128
.lcomm buffer, BUFFER_SIZE

.section .text
.globl _start

_start:
waitInput:
    movl $4, %eax
    movl $1, %ebx
    movl $OutputData, %ecx
    movl $lenMsg, %edx
    int $0x80
  
    movl $SYS_READ, %eax
    movl $SYS_STDIN, %ebx
    movl $buffer, %ecx
    movl $BUFFER_SIZE, %edx
    int $0x80;

    movl $SYS_WRITE, %eax
    movl $SYS_STDOUT, %ebx
    movl $buffer, %ecx
    movl $BUFFER_SIZE, %edx
    int $0x80;

    jmp waitInput
