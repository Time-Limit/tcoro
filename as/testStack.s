# 内存位置   值
# 0xffffd600 0x01 //初始 esp, 值为命令行参数个数
# 0xffffd5ff 0x01 
# 0xffffd5fe 0x02 
# 0xffffd5fd 0x03 
# 0xffffd5fc 0x04 
# 0xffffd5fb 0x05 
# 0xffffd5fa 0x06 
# 0xffffd5f9 0x07 
# 0xffffd5f8 0x08 

.section .data

.section .text

.globl _start

_start:
    pushl $0x01020304
    pushl $0x05060708
    popl %eax
    popl %ebx

    movl $0, %ebx
    movl $1, %eax
    int $0x80
