	.file	"main.cpp"
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.rodata
	.type	_ZStL13allocator_arg, @object
	.size	_ZStL13allocator_arg, 1
_ZStL13allocator_arg:
	.zero	1
	.type	_ZStL6ignore, @object
	.size	_ZStL6ignore, 1
_ZStL6ignore:
	.zero	1
	.section	.text._ZNSt9_Any_data9_M_accessEv,"axG",@progbits,_ZNSt9_Any_data9_M_accessEv,comdat
	.align 2
	.weak	_ZNSt9_Any_data9_M_accessEv
	.type	_ZNSt9_Any_data9_M_accessEv, @function
_ZNSt9_Any_data9_M_accessEv:
.LFB3667:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3667:
	.size	_ZNSt9_Any_data9_M_accessEv, .-_ZNSt9_Any_data9_M_accessEv
	.section	.text._ZNKSt9_Any_data9_M_accessEv,"axG",@progbits,_ZNKSt9_Any_data9_M_accessEv,comdat
	.align 2
	.weak	_ZNKSt9_Any_data9_M_accessEv
	.type	_ZNKSt9_Any_data9_M_accessEv, @function
_ZNKSt9_Any_data9_M_accessEv:
.LFB3668:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3668:
	.size	_ZNKSt9_Any_data9_M_accessEv, .-_ZNKSt9_Any_data9_M_accessEv
	.section	.text._ZNSt14_Function_baseC2Ev,"axG",@progbits,_ZNSt14_Function_baseC5Ev,comdat
	.align 2
	.weak	_ZNSt14_Function_baseC2Ev
	.type	_ZNSt14_Function_baseC2Ev, @function
_ZNSt14_Function_baseC2Ev:
.LFB3693:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3693:
	.size	_ZNSt14_Function_baseC2Ev, .-_ZNSt14_Function_baseC2Ev
	.weak	_ZNSt14_Function_baseC1Ev
	.set	_ZNSt14_Function_baseC1Ev,_ZNSt14_Function_baseC2Ev
	.section	.text._ZNSt14_Function_baseD2Ev,"axG",@progbits,_ZNSt14_Function_baseD5Ev,comdat
	.align 2
	.weak	_ZNSt14_Function_baseD2Ev
	.type	_ZNSt14_Function_baseD2Ev, @function
_ZNSt14_Function_baseD2Ev:
.LFB3696:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3696
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L8
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movl	$3, %edx
	movq	%rcx, %rdi
	call	*%rax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3696:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt14_Function_baseD2Ev,"aG",@progbits,_ZNSt14_Function_baseD5Ev,comdat
.LLSDA3696:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3696-.LLSDACSB3696
.LLSDACSB3696:
.LLSDACSE3696:
	.section	.text._ZNSt14_Function_baseD2Ev,"axG",@progbits,_ZNSt14_Function_baseD5Ev,comdat
	.size	_ZNSt14_Function_baseD2Ev, .-_ZNSt14_Function_baseD2Ev
	.weak	_ZNSt14_Function_baseD1Ev
	.set	_ZNSt14_Function_baseD1Ev,_ZNSt14_Function_baseD2Ev
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
	.type	_ZStL10defer_lock, @object
	.size	_ZStL10defer_lock, 1
_ZStL10defer_lock:
	.zero	1
	.type	_ZStL11try_to_lock, @object
	.size	_ZStL11try_to_lock, 1
_ZStL11try_to_lock:
	.zero	1
	.type	_ZStL10adopt_lock, @object
	.size	_ZStL10adopt_lock, 1
_ZStL10adopt_lock:
	.zero	1
.LC0:
	.string	"rbp = 0x%x, orbp=0x%x\n"
.LC1:
	.string	"0x%x\n"
	.text
	.globl	_Z14printBackTracev
	.type	_Z14printBackTracev, @function
_Z14printBackTracev:
.LFB7800:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA7800
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt6vectorIPvSaIS0_EEC1Ev
.LEHE0:
	movq	$0, -24(%rbp)
#APP
# 13 "main.cpp" 1
	movq %rbp, %rax
	
# 0 "" 2
#NO_APP
	movq	%rax, -24(%rbp)
	jmp	.L11
.L12:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	stderr(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
.LEHB1:
	call	fprintf
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
.LEHE1:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
.L11:
	cmpq	$0, -24(%rbp)
	jne	.L12
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPvSaIS0_EED1Ev
	jmp	.L15
.L14:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPvSaIS0_EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume
.LEHE2:
.L15:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7800:
	.section	.gcc_except_table,"a",@progbits
.LLSDA7800:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7800-.LLSDACSB7800
.LLSDACSB7800:
	.uleb128 .LEHB0-.LFB7800
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB7800
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L14-.LFB7800
	.uleb128 0
	.uleb128 .LEHB2-.LFB7800
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE7800:
	.text
	.size	_Z14printBackTracev, .-_Z14printBackTracev
	.globl	_Z5test1v
	.type	_Z5test1v, @function
_Z5test1v:
.LFB7802:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	_Z14printBackTracev
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7802:
	.size	_Z5test1v, .-_Z5test1v
	.globl	_Z5test2v
	.type	_Z5test2v, @function
_Z5test2v:
.LFB7803:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	_Z5test1v
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7803:
	.size	_Z5test2v, .-_Z5test2v
	.globl	_Z5test3v
	.type	_Z5test3v, @function
_Z5test3v:
.LFB7804:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	_Z5test2v
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7804:
	.size	_Z5test3v, .-_Z5test3v
	.globl	_Z5test4v
	.type	_Z5test4v, @function
_Z5test4v:
.LFB7805:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	_Z5test3v
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7805:
	.size	_Z5test4v, .-_Z5test4v
	.globl	_Z5test5v
	.type	_Z5test5v, @function
_Z5test5v:
.LFB7806:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	_Z5test4v
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7806:
	.size	_Z5test5v, .-_Z5test5v
	.section	.text._ZNSt8functionIFvvEED2Ev,"axG",@progbits,_ZNSt8functionIFvvEED5Ev,comdat
	.align 2
	.weak	_ZNSt8functionIFvvEED2Ev
	.type	_ZNSt8functionIFvvEED2Ev, @function
_ZNSt8functionIFvvEED2Ev:
.LFB7809:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Function_baseD2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7809:
	.size	_ZNSt8functionIFvvEED2Ev, .-_ZNSt8functionIFvvEED2Ev
	.weak	_ZNSt8functionIFvvEED1Ev
	.set	_ZNSt8functionIFvvEED1Ev,_ZNSt8functionIFvvEED2Ev
	.text
	.globl	main
	.type	main, @function
main:
.LFB7807:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA7807
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	leaq	-48(%rbp), %rax
	movl	$_Z5test5v, %esi
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSt8functionIFvvEEC1IPS0_vEET_
.LEHE3:
.LEHB4:
	call	_Z5test5v
.LEHE4:
	movl	$0, %ebx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8functionIFvvEED1Ev
	movl	%ebx, %eax
	jmp	.L27
.L26:
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8functionIFvvEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB5:
	call	_Unwind_Resume
.LEHE5:
.L27:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7807:
	.section	.gcc_except_table
.LLSDA7807:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7807-.LLSDACSB7807
.LLSDACSB7807:
	.uleb128 .LEHB3-.LFB7807
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB7807
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L26-.LFB7807
	.uleb128 0
	.uleb128 .LEHB5-.LFB7807
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE7807:
	.text
	.size	main, .-main
	.section	.text._ZNSt6vectorIPvSaIS0_EEC2Ev,"axG",@progbits,_ZNSt6vectorIPvSaIS0_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIPvSaIS0_EEC2Ev
	.type	_ZNSt6vectorIPvSaIS0_EEC2Ev, @function
_ZNSt6vectorIPvSaIS0_EEC2Ev:
.LFB8241:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPvSaIS0_EEC2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8241:
	.size	_ZNSt6vectorIPvSaIS0_EEC2Ev, .-_ZNSt6vectorIPvSaIS0_EEC2Ev
	.weak	_ZNSt6vectorIPvSaIS0_EEC1Ev
	.set	_ZNSt6vectorIPvSaIS0_EEC1Ev,_ZNSt6vectorIPvSaIS0_EEC2Ev
	.section	.text._ZNSt6vectorIPvSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorIPvSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIPvSaIS0_EED2Ev
	.type	_ZNSt6vectorIPvSaIS0_EED2Ev, @function
_ZNSt6vectorIPvSaIS0_EED2Ev:
.LFB8244:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA8244
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPPvS0_EvT_S2_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPvSaIS0_EED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8244:
	.section	.gcc_except_table
.LLSDA8244:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8244-.LLSDACSB8244
.LLSDACSB8244:
.LLSDACSE8244:
	.section	.text._ZNSt6vectorIPvSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorIPvSaIS0_EED5Ev,comdat
	.size	_ZNSt6vectorIPvSaIS0_EED2Ev, .-_ZNSt6vectorIPvSaIS0_EED2Ev
	.weak	_ZNSt6vectorIPvSaIS0_EED1Ev
	.set	_ZNSt6vectorIPvSaIS0_EED1Ev,_ZNSt6vectorIPvSaIS0_EED2Ev
	.section	.text._ZNSt31_Maybe_unary_or_binary_functionIvIEEC2Ev,"axG",@progbits,_ZNSt31_Maybe_unary_or_binary_functionIvIEEC5Ev,comdat
	.align 2
	.weak	_ZNSt31_Maybe_unary_or_binary_functionIvIEEC2Ev
	.type	_ZNSt31_Maybe_unary_or_binary_functionIvIEEC2Ev, @function
_ZNSt31_Maybe_unary_or_binary_functionIvIEEC2Ev:
.LFB8248:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8248:
	.size	_ZNSt31_Maybe_unary_or_binary_functionIvIEEC2Ev, .-_ZNSt31_Maybe_unary_or_binary_functionIvIEEC2Ev
	.weak	_ZNSt31_Maybe_unary_or_binary_functionIvJEEC2Ev
	.set	_ZNSt31_Maybe_unary_or_binary_functionIvJEEC2Ev,_ZNSt31_Maybe_unary_or_binary_functionIvIEEC2Ev
	.weak	_ZNSt31_Maybe_unary_or_binary_functionIvIEEC1Ev
	.set	_ZNSt31_Maybe_unary_or_binary_functionIvIEEC1Ev,_ZNSt31_Maybe_unary_or_binary_functionIvIEEC2Ev
	.weak	_ZNSt31_Maybe_unary_or_binary_functionIvJEEC1Ev
	.set	_ZNSt31_Maybe_unary_or_binary_functionIvJEEC1Ev,_ZNSt31_Maybe_unary_or_binary_functionIvIEEC1Ev
	.section	.text._ZSt4moveIRPFvvEEONSt16remove_referenceIT_E4typeEOS4_,"axG",@progbits,_ZSt4moveIRPFvvEEONSt16remove_referenceIT_E4typeEOS4_,comdat
	.weak	_ZSt4moveIRPFvvEEONSt16remove_referenceIT_E4typeEOS4_
	.type	_ZSt4moveIRPFvvEEONSt16remove_referenceIT_E4typeEOS4_, @function
_ZSt4moveIRPFvvEEONSt16remove_referenceIT_E4typeEOS4_:
.LFB8250:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8250:
	.size	_ZSt4moveIRPFvvEEONSt16remove_referenceIT_E4typeEOS4_, .-_ZSt4moveIRPFvvEEONSt16remove_referenceIT_E4typeEOS4_
	.section	.text._ZNSt8functionIFvvEEC2IPS0_vEET_,"axG",@progbits,_ZNSt8functionIFvvEEC5IPS0_vEET_,comdat
	.align 2
	.weak	_ZNSt8functionIFvvEEC2IPS0_vEET_
	.type	_ZNSt8functionIFvvEEC2IPS0_vEET_, @function
_ZNSt8functionIFvvEEC2IPS0_vEET_:
.LFB8251:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA8251
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt31_Maybe_unary_or_binary_functionIvIEEC2Ev
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Function_baseC2Ev
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Function_base13_Base_managerIPFvvEE21_M_not_empty_functionIS1_EEbRKPT_
	testb	%al, %al
	je	.L38
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPFvvEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB6:
	call	_ZNSt14_Function_base13_Base_managerIPFvvEE15_M_init_functorERSt9_Any_dataOS2_
.LEHE6:
	movq	-24(%rbp), %rax
	movq	$_ZNSt17_Function_handlerIFvvEPS0_E9_M_invokeERKSt9_Any_data, 24(%rax)
	movq	-24(%rbp), %rax
	movq	$_ZNSt14_Function_base13_Base_managerIPFvvEE10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, 16(%rax)
	jmp	.L38
.L37:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Function_baseD2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB7:
	call	_Unwind_Resume
.LEHE7:
.L38:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8251:
	.section	.gcc_except_table
.LLSDA8251:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8251-.LLSDACSB8251
.LLSDACSB8251:
	.uleb128 .LEHB6-.LFB8251
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L37-.LFB8251
	.uleb128 0
	.uleb128 .LEHB7-.LFB8251
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE8251:
	.section	.text._ZNSt8functionIFvvEEC2IPS0_vEET_,"axG",@progbits,_ZNSt8functionIFvvEEC5IPS0_vEET_,comdat
	.size	_ZNSt8functionIFvvEEC2IPS0_vEET_, .-_ZNSt8functionIFvvEEC2IPS0_vEET_
	.weak	_ZNSt8functionIFvvEEC1IPS0_vEET_
	.set	_ZNSt8functionIFvvEEC1IPS0_vEET_,_ZNSt8functionIFvvEEC2IPS0_vEET_
	.section	.text._ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implD2Ev:
.LFB8505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIPvED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8505:
	.size	_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIPvSaIS0_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIPvSaIS0_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPvSaIS0_EEC2Ev
	.type	_ZNSt12_Vector_baseIPvSaIS0_EEC2Ev, @function
_ZNSt12_Vector_baseIPvSaIS0_EEC2Ev:
.LFB8507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implC1Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8507:
	.size	_ZNSt12_Vector_baseIPvSaIS0_EEC2Ev, .-_ZNSt12_Vector_baseIPvSaIS0_EEC2Ev
	.weak	_ZNSt12_Vector_baseIPvSaIS0_EEC1Ev
	.set	_ZNSt12_Vector_baseIPvSaIS0_EEC1Ev,_ZNSt12_Vector_baseIPvSaIS0_EEC2Ev
	.section	.text._ZNSt12_Vector_baseIPvSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIPvSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPvSaIS0_EED2Ev
	.type	_ZNSt12_Vector_baseIPvSaIS0_EED2Ev, @function
_ZNSt12_Vector_baseIPvSaIS0_EED2Ev:
.LFB8510:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA8510
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_m
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implD1Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8510:
	.section	.gcc_except_table
.LLSDA8510:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8510-.LLSDACSB8510
.LLSDACSB8510:
.LLSDACSE8510:
	.section	.text._ZNSt12_Vector_baseIPvSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIPvSaIS0_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseIPvSaIS0_EED2Ev, .-_ZNSt12_Vector_baseIPvSaIS0_EED2Ev
	.weak	_ZNSt12_Vector_baseIPvSaIS0_EED1Ev
	.set	_ZNSt12_Vector_baseIPvSaIS0_EED1Ev,_ZNSt12_Vector_baseIPvSaIS0_EED2Ev
	.section	.text._ZNSt12_Vector_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB8512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8512:
	.size	_ZNSt12_Vector_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIPvSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPPvS0_EvT_S2_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPPvS0_EvT_S2_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPPvS0_EvT_S2_RSaIT0_E
	.type	_ZSt8_DestroyIPPvS0_EvT_S2_RSaIT0_E, @function
_ZSt8_DestroyIPPvS0_EvT_S2_RSaIT0_E:
.LFB8513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPPvEvT_S2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8513:
	.size	_ZSt8_DestroyIPPvS0_EvT_S2_RSaIT0_E, .-_ZSt8_DestroyIPPvS0_EvT_S2_RSaIT0_E
	.section	.text._ZNSt14_Function_base13_Base_managerIPFvvEE21_M_not_empty_functionIS1_EEbRKPT_,"axG",@progbits,_ZNSt14_Function_base13_Base_managerIPFvvEE21_M_not_empty_functionIS1_EEbRKPT_,comdat
	.weak	_ZNSt14_Function_base13_Base_managerIPFvvEE21_M_not_empty_functionIS1_EEbRKPT_
	.type	_ZNSt14_Function_base13_Base_managerIPFvvEE21_M_not_empty_functionIS1_EEbRKPT_, @function
_ZNSt14_Function_base13_Base_managerIPFvvEE21_M_not_empty_functionIS1_EEbRKPT_:
.LFB8514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8514:
	.size	_ZNSt14_Function_base13_Base_managerIPFvvEE21_M_not_empty_functionIS1_EEbRKPT_, .-_ZNSt14_Function_base13_Base_managerIPFvvEE21_M_not_empty_functionIS1_EEbRKPT_
	.section	.text._ZNSt14_Function_base13_Base_managerIPFvvEE15_M_init_functorERSt9_Any_dataOS2_,"axG",@progbits,_ZNSt14_Function_base13_Base_managerIPFvvEE15_M_init_functorERSt9_Any_dataOS2_,comdat
	.weak	_ZNSt14_Function_base13_Base_managerIPFvvEE15_M_init_functorERSt9_Any_dataOS2_
	.type	_ZNSt14_Function_base13_Base_managerIPFvvEE15_M_init_functorERSt9_Any_dataOS2_, @function
_ZNSt14_Function_base13_Base_managerIPFvvEE15_M_init_functorERSt9_Any_dataOS2_:
.LFB8515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPFvvEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movb	%bl, (%rsp)
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14_Function_base13_Base_managerIPFvvEE15_M_init_functorERSt9_Any_dataOS2_St17integral_constantIbLb1EE
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8515:
	.size	_ZNSt14_Function_base13_Base_managerIPFvvEE15_M_init_functorERSt9_Any_dataOS2_, .-_ZNSt14_Function_base13_Base_managerIPFvvEE15_M_init_functorERSt9_Any_dataOS2_
	.section	.text._ZNSt17_Function_handlerIFvvEPS0_E9_M_invokeERKSt9_Any_data,"axG",@progbits,_ZNSt17_Function_handlerIFvvEPS0_E9_M_invokeERKSt9_Any_data,comdat
	.weak	_ZNSt17_Function_handlerIFvvEPS0_E9_M_invokeERKSt9_Any_data
	.type	_ZNSt17_Function_handlerIFvvEPS0_E9_M_invokeERKSt9_Any_data, @function
_ZNSt17_Function_handlerIFvvEPS0_E9_M_invokeERKSt9_Any_data:
.LFB8516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Function_base13_Base_managerIPFvvEE14_M_get_pointerERKSt9_Any_data
	movq	(%rax), %rax
	call	*%rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8516:
	.size	_ZNSt17_Function_handlerIFvvEPS0_E9_M_invokeERKSt9_Any_data, .-_ZNSt17_Function_handlerIFvvEPS0_E9_M_invokeERKSt9_Any_data
	.section	.text._ZNSt14_Function_base13_Base_managerIPFvvEE10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,"axG",@progbits,_ZNSt14_Function_base13_Base_managerIPFvvEE10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,comdat
	.weak	_ZNSt14_Function_base13_Base_managerIPFvvEE10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt14_Function_base13_Base_managerIPFvvEE10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, @function
_ZNSt14_Function_base13_Base_managerIPFvvEE10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation:
.LFB8517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	-52(%rbp), %eax
	cmpl	$1, %eax
	je	.L53
	cmpl	$1, %eax
	jg	.L54
	testl	%eax, %eax
	je	.L55
	jmp	.L52
.L54:
	cmpl	$2, %eax
	je	.L56
	cmpl	$3, %eax
	je	.L57
	jmp	.L52
.L55:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v
	movq	$_ZTIPFvvE, (%rax)
	jmp	.L52
.L53:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessIPPFvvEEERT_v
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Function_base13_Base_managerIPFvvEE14_M_get_pointerERKSt9_Any_data
	movq	%rax, (%rbx)
	jmp	.L52
.L56:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movb	%r8b, (%rsp)
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14_Function_base13_Base_managerIPFvvEE8_M_cloneERSt9_Any_dataRKS4_St17integral_constantIbLb1EE
	jmp	.L52
.L57:
	movq	-40(%rbp), %rax
	movb	%cl, (%rsp)
	movq	%rax, %rdi
	call	_ZNSt14_Function_base13_Base_managerIPFvvEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE
	nop
.L52:
	movl	$0, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8517:
	.size	_ZNSt14_Function_base13_Base_managerIPFvvEE10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .-_ZNSt14_Function_base13_Base_managerIPFvvEE10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.section	.text._ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v,"axG",@progbits,_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v,comdat
	.align 2
	.weak	_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v
	.type	_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v, @function
_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v:
.LFB8602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8602:
	.size	_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v, .-_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v
	.section	.text._ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implC2Ev:
.LFB8719:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIPvEC2Ev
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8719:
	.size	_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseIPvSaIS0_EE12_Vector_implC2Ev
	.section	.text._ZNSaIPvED2Ev,"axG",@progbits,_ZNSaIPvED5Ev,comdat
	.align 2
	.weak	_ZNSaIPvED2Ev
	.type	_ZNSaIPvED2Ev, @function
_ZNSaIPvED2Ev:
.LFB8722:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIPvED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8722:
	.size	_ZNSaIPvED2Ev, .-_ZNSaIPvED2Ev
	.weak	_ZNSaIPvED1Ev
	.set	_ZNSaIPvED1Ev,_ZNSaIPvED2Ev
	.section	.text._ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_m,"axG",@progbits,_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_m
	.type	_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_m, @function
_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_m:
.LFB8724:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L64
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIPvE10deallocateEPS1_m
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8724:
	.size	_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_m, .-_ZNSt12_Vector_baseIPvSaIS0_EE13_M_deallocateEPS0_m
	.section	.text._ZSt8_DestroyIPPvEvT_S2_,"axG",@progbits,_ZSt8_DestroyIPPvEvT_S2_,comdat
	.weak	_ZSt8_DestroyIPPvEvT_S2_
	.type	_ZSt8_DestroyIPPvEvT_S2_, @function
_ZSt8_DestroyIPPvEvT_S2_:
.LFB8725:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPPvEEvT_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8725:
	.size	_ZSt8_DestroyIPPvEvT_S2_, .-_ZSt8_DestroyIPPvEvT_S2_
	.section	.text._ZNSt14_Function_base13_Base_managerIPFvvEE15_M_init_functorERSt9_Any_dataOS2_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt14_Function_base13_Base_managerIPFvvEE15_M_init_functorERSt9_Any_dataOS2_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt14_Function_base13_Base_managerIPFvvEE15_M_init_functorERSt9_Any_dataOS2_St17integral_constantIbLb1EE
	.type	_ZNSt14_Function_base13_Base_managerIPFvvEE15_M_init_functorERSt9_Any_dataOS2_St17integral_constantIbLb1EE, @function
_ZNSt14_Function_base13_Base_managerIPFvvEE15_M_init_functorERSt9_Any_dataOS2_St17integral_constantIbLb1EE:
.LFB8726:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPFvvEEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessEv
	movq	%rax, %rsi
	movl	$8, %edi
	call	_ZnwmPv
	testq	%rax, %rax
	je	.L67
	movq	%rbx, (%rax)
.L67:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8726:
	.size	_ZNSt14_Function_base13_Base_managerIPFvvEE15_M_init_functorERSt9_Any_dataOS2_St17integral_constantIbLb1EE, .-_ZNSt14_Function_base13_Base_managerIPFvvEE15_M_init_functorERSt9_Any_dataOS2_St17integral_constantIbLb1EE
	.section	.text._ZNSt14_Function_base13_Base_managerIPFvvEE14_M_get_pointerERKSt9_Any_data,"axG",@progbits,_ZNSt14_Function_base13_Base_managerIPFvvEE14_M_get_pointerERKSt9_Any_data,comdat
	.weak	_ZNSt14_Function_base13_Base_managerIPFvvEE14_M_get_pointerERKSt9_Any_data
	.type	_ZNSt14_Function_base13_Base_managerIPFvvEE14_M_get_pointerERKSt9_Any_data, @function
_ZNSt14_Function_base13_Base_managerIPFvvEE14_M_get_pointerERKSt9_Any_data:
.LFB8727:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt9_Any_data9_M_accessIPFvvEEERKT_v
	movq	%rax, %rdi
	call	_ZSt11__addressofIKPFvvEEPT_RS3_
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8727:
	.size	_ZNSt14_Function_base13_Base_managerIPFvvEE14_M_get_pointerERKSt9_Any_data, .-_ZNSt14_Function_base13_Base_managerIPFvvEE14_M_get_pointerERKSt9_Any_data
	.section	.text._ZNSt9_Any_data9_M_accessIPPFvvEEERT_v,"axG",@progbits,_ZNSt9_Any_data9_M_accessIPPFvvEEERT_v,comdat
	.align 2
	.weak	_ZNSt9_Any_data9_M_accessIPPFvvEEERT_v
	.type	_ZNSt9_Any_data9_M_accessIPPFvvEEERT_v, @function
_ZNSt9_Any_data9_M_accessIPPFvvEEERT_v:
.LFB8728:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8728:
	.size	_ZNSt9_Any_data9_M_accessIPPFvvEEERT_v, .-_ZNSt9_Any_data9_M_accessIPPFvvEEERT_v
	.section	.text._ZNSt14_Function_base13_Base_managerIPFvvEE8_M_cloneERSt9_Any_dataRKS4_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt14_Function_base13_Base_managerIPFvvEE8_M_cloneERSt9_Any_dataRKS4_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt14_Function_base13_Base_managerIPFvvEE8_M_cloneERSt9_Any_dataRKS4_St17integral_constantIbLb1EE
	.type	_ZNSt14_Function_base13_Base_managerIPFvvEE8_M_cloneERSt9_Any_dataRKS4_St17integral_constantIbLb1EE, @function
_ZNSt14_Function_base13_Base_managerIPFvvEE8_M_cloneERSt9_Any_dataRKS4_St17integral_constantIbLb1EE:
.LFB8729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt9_Any_data9_M_accessIPFvvEEERKT_v
	movq	(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessEv
	movq	%rax, %rsi
	movl	$8, %edi
	call	_ZnwmPv
	testq	%rax, %rax
	je	.L74
	movq	%rbx, (%rax)
.L74:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8729:
	.size	_ZNSt14_Function_base13_Base_managerIPFvvEE8_M_cloneERSt9_Any_dataRKS4_St17integral_constantIbLb1EE, .-_ZNSt14_Function_base13_Base_managerIPFvvEE8_M_cloneERSt9_Any_dataRKS4_St17integral_constantIbLb1EE
	.section	.text._ZNSt14_Function_base13_Base_managerIPFvvEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE,"axG",@progbits,_ZNSt14_Function_base13_Base_managerIPFvvEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE,comdat
	.weak	_ZNSt14_Function_base13_Base_managerIPFvvEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE
	.type	_ZNSt14_Function_base13_Base_managerIPFvvEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE, @function
_ZNSt14_Function_base13_Base_managerIPFvvEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE:
.LFB8730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessIPFvvEEERT_v
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8730:
	.size	_ZNSt14_Function_base13_Base_managerIPFvvEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE, .-_ZNSt14_Function_base13_Base_managerIPFvvEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE
	.section	.text._ZNSaIPvEC2Ev,"axG",@progbits,_ZNSaIPvEC5Ev,comdat
	.align 2
	.weak	_ZNSaIPvEC2Ev
	.type	_ZNSaIPvEC2Ev, @function
_ZNSaIPvEC2Ev:
.LFB8855:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIPvEC2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8855:
	.size	_ZNSaIPvEC2Ev, .-_ZNSaIPvEC2Ev
	.weak	_ZNSaIPvEC1Ev
	.set	_ZNSaIPvEC1Ev,_ZNSaIPvEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIPvED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPvED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPvED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIPvED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIPvED2Ev:
.LFB8858:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8858:
	.size	_ZN9__gnu_cxx13new_allocatorIPvED2Ev, .-_ZN9__gnu_cxx13new_allocatorIPvED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIPvED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIPvED1Ev,_ZN9__gnu_cxx13new_allocatorIPvED2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIPvE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPvE10deallocateEPS1_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPvE10deallocateEPS1_m
	.type	_ZN9__gnu_cxx13new_allocatorIPvE10deallocateEPS1_m, @function
_ZN9__gnu_cxx13new_allocatorIPvE10deallocateEPS1_m:
.LFB8860:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8860:
	.size	_ZN9__gnu_cxx13new_allocatorIPvE10deallocateEPS1_m, .-_ZN9__gnu_cxx13new_allocatorIPvE10deallocateEPS1_m
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPPvEEvT_S4_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPPvEEvT_S4_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPPvEEvT_S4_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPPvEEvT_S4_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPPvEEvT_S4_:
.LFB8861:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8861:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPPvEEvT_S4_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPPvEEvT_S4_
	.section	.text._ZNKSt9_Any_data9_M_accessIPFvvEEERKT_v,"axG",@progbits,_ZNKSt9_Any_data9_M_accessIPFvvEEERKT_v,comdat
	.align 2
	.weak	_ZNKSt9_Any_data9_M_accessIPFvvEEERKT_v
	.type	_ZNKSt9_Any_data9_M_accessIPFvvEEERKT_v, @function
_ZNKSt9_Any_data9_M_accessIPFvvEEERKT_v:
.LFB8862:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt9_Any_data9_M_accessEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8862:
	.size	_ZNKSt9_Any_data9_M_accessIPFvvEEERKT_v, .-_ZNKSt9_Any_data9_M_accessIPFvvEEERKT_v
	.section	.text._ZSt11__addressofIKPFvvEEPT_RS3_,"axG",@progbits,_ZSt11__addressofIKPFvvEEPT_RS3_,comdat
	.weak	_ZSt11__addressofIKPFvvEEPT_RS3_
	.type	_ZSt11__addressofIKPFvvEEPT_RS3_, @function
_ZSt11__addressofIKPFvvEEPT_RS3_:
.LFB8863:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8863:
	.size	_ZSt11__addressofIKPFvvEEPT_RS3_, .-_ZSt11__addressofIKPFvvEEPT_RS3_
	.section	.text._ZNSt9_Any_data9_M_accessIPFvvEEERT_v,"axG",@progbits,_ZNSt9_Any_data9_M_accessIPFvvEEERT_v,comdat
	.align 2
	.weak	_ZNSt9_Any_data9_M_accessIPFvvEEERT_v
	.type	_ZNSt9_Any_data9_M_accessIPFvvEEERT_v, @function
_ZNSt9_Any_data9_M_accessIPFvvEEERT_v:
.LFB8865:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8865:
	.size	_ZNSt9_Any_data9_M_accessIPFvvEEERT_v, .-_ZNSt9_Any_data9_M_accessIPFvvEEERT_v
	.section	.text._ZN9__gnu_cxx13new_allocatorIPvEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPvEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPvEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIPvEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIPvEC2Ev:
.LFB8927:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8927:
	.size	_ZN9__gnu_cxx13new_allocatorIPvEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIPvEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIPvEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIPvEC1Ev,_ZN9__gnu_cxx13new_allocatorIPvEC2Ev
	.weak	_ZTSPFvvE
	.section	.rodata._ZTSPFvvE,"aG",@progbits,_ZTSPFvvE,comdat
	.type	_ZTSPFvvE, @object
	.size	_ZTSPFvvE, 6
_ZTSPFvvE:
	.string	"PFvvE"
	.weak	_ZTIPFvvE
	.section	.rodata._ZTIPFvvE,"aG",@progbits,_ZTIPFvvE,comdat
	.align 32
	.type	_ZTIPFvvE, @object
	.size	_ZTIPFvvE, 32
_ZTIPFvvE:
	.quad	_ZTVN10__cxxabiv119__pointer_type_infoE+16
	.quad	_ZTSPFvvE
	.long	0
	.zero	4
	.quad	_ZTIFvvE
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB9077:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L90
	cmpl	$65535, -8(%rbp)
	jne	.L90
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9077:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.rodata
	.align 4
	.type	_ZN9__gnu_cxxL21__default_lock_policyE, @object
	.size	_ZN9__gnu_cxxL21__default_lock_policyE, 4
_ZN9__gnu_cxxL21__default_lock_policyE:
	.long	2
	.align 4
	.type	_ZNSt15regex_constantsL5icaseE, @object
	.size	_ZNSt15regex_constantsL5icaseE, 4
_ZNSt15regex_constantsL5icaseE:
	.long	1
	.align 4
	.type	_ZNSt15regex_constantsL6nosubsE, @object
	.size	_ZNSt15regex_constantsL6nosubsE, 4
_ZNSt15regex_constantsL6nosubsE:
	.long	2
	.align 4
	.type	_ZNSt15regex_constantsL8optimizeE, @object
	.size	_ZNSt15regex_constantsL8optimizeE, 4
_ZNSt15regex_constantsL8optimizeE:
	.long	4
	.align 4
	.type	_ZNSt15regex_constantsL7collateE, @object
	.size	_ZNSt15regex_constantsL7collateE, 4
_ZNSt15regex_constantsL7collateE:
	.long	8
	.align 4
	.type	_ZNSt15regex_constantsL10ECMAScriptE, @object
	.size	_ZNSt15regex_constantsL10ECMAScriptE, 4
_ZNSt15regex_constantsL10ECMAScriptE:
	.long	16
	.align 4
	.type	_ZNSt15regex_constantsL5basicE, @object
	.size	_ZNSt15regex_constantsL5basicE, 4
_ZNSt15regex_constantsL5basicE:
	.long	32
	.align 4
	.type	_ZNSt15regex_constantsL8extendedE, @object
	.size	_ZNSt15regex_constantsL8extendedE, 4
_ZNSt15regex_constantsL8extendedE:
	.long	64
	.align 4
	.type	_ZNSt15regex_constantsL3awkE, @object
	.size	_ZNSt15regex_constantsL3awkE, 4
_ZNSt15regex_constantsL3awkE:
	.long	128
	.align 4
	.type	_ZNSt15regex_constantsL4grepE, @object
	.size	_ZNSt15regex_constantsL4grepE, 4
_ZNSt15regex_constantsL4grepE:
	.long	256
	.align 4
	.type	_ZNSt15regex_constantsL5egrepE, @object
	.size	_ZNSt15regex_constantsL5egrepE, 4
_ZNSt15regex_constantsL5egrepE:
	.long	512
	.align 8
	.type	_ZNSt15regex_constantsL13match_defaultE, @object
	.size	_ZNSt15regex_constantsL13match_defaultE, 8
_ZNSt15regex_constantsL13match_defaultE:
	.zero	8
	.align 8
	.type	_ZNSt15regex_constantsL13match_not_bolE, @object
	.size	_ZNSt15regex_constantsL13match_not_bolE, 8
_ZNSt15regex_constantsL13match_not_bolE:
	.quad	1
	.align 8
	.type	_ZNSt15regex_constantsL13match_not_eolE, @object
	.size	_ZNSt15regex_constantsL13match_not_eolE, 8
_ZNSt15regex_constantsL13match_not_eolE:
	.quad	2
	.align 8
	.type	_ZNSt15regex_constantsL13match_not_bowE, @object
	.size	_ZNSt15regex_constantsL13match_not_bowE, 8
_ZNSt15regex_constantsL13match_not_bowE:
	.quad	4
	.align 8
	.type	_ZNSt15regex_constantsL13match_not_eowE, @object
	.size	_ZNSt15regex_constantsL13match_not_eowE, 8
_ZNSt15regex_constantsL13match_not_eowE:
	.quad	8
	.align 8
	.type	_ZNSt15regex_constantsL9match_anyE, @object
	.size	_ZNSt15regex_constantsL9match_anyE, 8
_ZNSt15regex_constantsL9match_anyE:
	.quad	16
	.align 8
	.type	_ZNSt15regex_constantsL14match_not_nullE, @object
	.size	_ZNSt15regex_constantsL14match_not_nullE, 8
_ZNSt15regex_constantsL14match_not_nullE:
	.quad	32
	.align 8
	.type	_ZNSt15regex_constantsL16match_continuousE, @object
	.size	_ZNSt15regex_constantsL16match_continuousE, 8
_ZNSt15regex_constantsL16match_continuousE:
	.quad	64
	.align 8
	.type	_ZNSt15regex_constantsL16match_prev_availE, @object
	.size	_ZNSt15regex_constantsL16match_prev_availE, 8
_ZNSt15regex_constantsL16match_prev_availE:
	.quad	128
	.align 8
	.type	_ZNSt15regex_constantsL14format_defaultE, @object
	.size	_ZNSt15regex_constantsL14format_defaultE, 8
_ZNSt15regex_constantsL14format_defaultE:
	.zero	8
	.align 8
	.type	_ZNSt15regex_constantsL10format_sedE, @object
	.size	_ZNSt15regex_constantsL10format_sedE, 8
_ZNSt15regex_constantsL10format_sedE:
	.quad	256
	.align 8
	.type	_ZNSt15regex_constantsL14format_no_copyE, @object
	.size	_ZNSt15regex_constantsL14format_no_copyE, 8
_ZNSt15regex_constantsL14format_no_copyE:
	.quad	512
	.align 8
	.type	_ZNSt15regex_constantsL17format_first_onlyE, @object
	.size	_ZNSt15regex_constantsL17format_first_onlyE, 8
_ZNSt15regex_constantsL17format_first_onlyE:
	.quad	1024
	.align 4
	.type	_ZNSt15regex_constantsL13error_collateE, @object
	.size	_ZNSt15regex_constantsL13error_collateE, 4
_ZNSt15regex_constantsL13error_collateE:
	.zero	4
	.align 4
	.type	_ZNSt15regex_constantsL11error_ctypeE, @object
	.size	_ZNSt15regex_constantsL11error_ctypeE, 4
_ZNSt15regex_constantsL11error_ctypeE:
	.long	1
	.align 4
	.type	_ZNSt15regex_constantsL12error_escapeE, @object
	.size	_ZNSt15regex_constantsL12error_escapeE, 4
_ZNSt15regex_constantsL12error_escapeE:
	.long	2
	.align 4
	.type	_ZNSt15regex_constantsL13error_backrefE, @object
	.size	_ZNSt15regex_constantsL13error_backrefE, 4
_ZNSt15regex_constantsL13error_backrefE:
	.long	3
	.align 4
	.type	_ZNSt15regex_constantsL11error_brackE, @object
	.size	_ZNSt15regex_constantsL11error_brackE, 4
_ZNSt15regex_constantsL11error_brackE:
	.long	4
	.align 4
	.type	_ZNSt15regex_constantsL11error_parenE, @object
	.size	_ZNSt15regex_constantsL11error_parenE, 4
_ZNSt15regex_constantsL11error_parenE:
	.long	5
	.align 4
	.type	_ZNSt15regex_constantsL11error_braceE, @object
	.size	_ZNSt15regex_constantsL11error_braceE, 4
_ZNSt15regex_constantsL11error_braceE:
	.long	6
	.align 4
	.type	_ZNSt15regex_constantsL14error_badbraceE, @object
	.size	_ZNSt15regex_constantsL14error_badbraceE, 4
_ZNSt15regex_constantsL14error_badbraceE:
	.long	7
	.align 4
	.type	_ZNSt15regex_constantsL11error_rangeE, @object
	.size	_ZNSt15regex_constantsL11error_rangeE, 4
_ZNSt15regex_constantsL11error_rangeE:
	.long	8
	.align 4
	.type	_ZNSt15regex_constantsL11error_spaceE, @object
	.size	_ZNSt15regex_constantsL11error_spaceE, 4
_ZNSt15regex_constantsL11error_spaceE:
	.long	9
	.align 4
	.type	_ZNSt15regex_constantsL15error_badrepeatE, @object
	.size	_ZNSt15regex_constantsL15error_badrepeatE, 4
_ZNSt15regex_constantsL15error_badrepeatE:
	.long	10
	.align 4
	.type	_ZNSt15regex_constantsL16error_complexityE, @object
	.size	_ZNSt15regex_constantsL16error_complexityE, 4
_ZNSt15regex_constantsL16error_complexityE:
	.long	11
	.align 4
	.type	_ZNSt15regex_constantsL11error_stackE, @object
	.size	_ZNSt15regex_constantsL11error_stackE, 4
_ZNSt15regex_constantsL11error_stackE:
	.long	12
	.align 4
	.type	_ZNSt8__detailL19_S_invalid_state_idE, @object
	.size	_ZNSt8__detailL19_S_invalid_state_idE, 4
_ZNSt8__detailL19_S_invalid_state_idE:
	.long	-1
	.weak	_ZTSFvvE
	.section	.rodata._ZTSFvvE,"aG",@progbits,_ZTSFvvE,comdat
	.type	_ZTSFvvE, @object
	.size	_ZTSFvvE, 5
_ZTSFvvE:
	.string	"FvvE"
	.weak	_ZTIFvvE
	.section	.rodata._ZTIFvvE,"aG",@progbits,_ZTIFvvE,comdat
	.align 16
	.type	_ZTIFvvE, @object
	.size	_ZTIFvvE, 16
_ZTIFvvE:
	.quad	_ZTVN10__cxxabiv120__function_type_infoE+16
	.quad	_ZTSFvvE
	.text
	.type	_GLOBAL__sub_I__Z14printBackTracev, @function
_GLOBAL__sub_I__Z14printBackTracev:
.LFB9091:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9091:
	.size	_GLOBAL__sub_I__Z14printBackTracev, .-_GLOBAL__sub_I__Z14printBackTracev
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z14printBackTracev
	.section	.rodata
	.align 8
	.type	_ZZL18__gthread_active_pvE20__gthread_active_ptr, @object
	.size	_ZZL18__gthread_active_pvE20__gthread_active_ptr, 8
_ZZL18__gthread_active_pvE20__gthread_active_ptr:
	.quad	_ZL28__gthrw___pthread_key_createPjPFvPvE
	.weakref	_ZL28__gthrw___pthread_key_createPjPFvPvE,__pthread_key_create
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-28)"
	.section	.note.GNU-stack,"",@progbits
