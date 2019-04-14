.section .data

dataItems:
    .long 3,67,123,12,2,31,23,12,3,19,255,0

.section .text
.globl _start

_start:
    movl $0, %eax
    movl $0, %ebx
    
findLoop:
    #movl dataItems(, %eax, 4), %ecx
    cmpl $0, dataItems(, %eax, 4)
    je endLoop
    cmpl dataItems(, %eax, 4), %ebx
    jl updateResult #op2小于op1则跳转

continueLoop:
    addl $1, %eax
    jmp findLoop

updateResult:
    movl dataItems(, %eax, 4), %ebx
    jmp continueLoop

endLoop:
    movl $1, %eax
    int $0x80
