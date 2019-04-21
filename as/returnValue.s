.section .data

.section .text

.global _start

_start:
    subl $4, %esp
    pushl %esp #将 esp 的值压入栈，即将申请的栈内存地址压入栈，作为参数传递给 work
    call work
    movl $1, %eax
    movl 4(%esp), %ebx
    int $0x80

.type work, @function
work:
    movl 4(%esp), %eax #将内存地址取出，赋给eax
    movl $10, (%eax) #将 10 写入到 %eax + 0 处的内存
    ret
