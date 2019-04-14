.section .data

.section .text
.globl _start
_start:
    pushl $4
    call fact
    subl $4, %esp
    movl %eax, %ebx
    movl $1, %eax
    int $0x80

.type fact, @function
fact:
    pushl %ebp
    movl %esp, %ebp
    movl 8(%ebp), %eax # 把 [ 8(%ebp), 11(%ebp) ] 这个区间的值取出来放到 eax
    cmpl $1, %eax
    jle lastFact
    pushl %eax
    subl $1, %eax
    pushl %eax
    call fact
    movl 4(%esp), %ebx
    imull %eax, %ebx
    jmp endFact

endFact:
    movl %ebx, %eax
    movl %ebp, %esp
    popl %ebp
    ret


lastFact:
    movl $1, %eax
    movl %ebp, %esp
    popl %ebp
    ret


