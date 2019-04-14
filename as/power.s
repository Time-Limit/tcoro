.section .data
dataItems:
   .long 10,2,3,3 

.section .text
.globl _start
_start:
    movl $0, %edx
    pushl dataItems(,%edx,4)
    movl $1, %edx
    pushl dataItems(,%edx,4)
    call power
    addl $8, %esp
    pushl %ecx
    movl $2, %edx
    pushl dataItems(,%edx,4)
    movl $3, %edx
    pushl dataItems(,%edx,4)
    call power
    movl %ecx, %ebx
    addl $8, %esp
    popl %eax
    addl %eax, %ebx
    movl $1, %eax
    int $0x80

.type power, @function
power:
    pushl %ebp
    movl %esp, %ebp
    movl 8(%ebp), %eax
    movl 12(%ebp), %ebx
    movl $1, %ecx
startLoop:
    cmpl $0, %eax
    je return
    imull %ebx, %ecx
    subl $1, %eax
    jmp startLoop
return:
    movl %ebp, %esp
    popl %ebp
    ret
