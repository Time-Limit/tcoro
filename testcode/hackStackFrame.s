.section .data

.section .text

.global hackStackFrame_dropCurStack
.type hackStackFrame_dropCurStack, @function
hackStackFrame_dropCurStack:
    movq (%rdi), %rsp
    popq %r15
    popq %r14
    popq %r13
    popq %r12
    popq %r11
    popq %r10
    popq %r9
    popq %r8
    popq %rbp
    popq %rdi
    popq %rsi
    popq %rdx
    popq %rcx
    popq %rbx
    popq %rax
    movq %rsp, (%rdi)
    movq %rax, %rsp

    ret

.global hackStackFrame_saveCurStack
.type hackStackFrame_saveCurStack, @function
hackStackFrame_saveCurStack:
    movq %rsp, %rax
    movq (%rsi), %rsp
    pushq %rax
    pushq %rbx
    pushq %rcx
    pushq %rdx
    pushq %rsi
    pushq %rdi
    pushq %rbp
    pushq %r8
    pushq %r9
    pushq %r10
    pushq %r11
    pushq %r12
    pushq %r13
    pushq %r14
    pushq %r15
    movq %rsp, (%rsi)

    movq (%rdi), %rsp
    addq $0x78, (%rdi)
    popq %r15
    popq %r14
    popq %r13
    popq %r12
    popq %r11
    popq %r10
    popq %r9
    popq %r8
    popq %rbp
    popq %rdi
    popq %rsi
    popq %rdx
    popq %rcx
    popq %rbx
    popq %rax
    movq %rax, %rsp

    ret
