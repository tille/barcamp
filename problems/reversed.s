	.section	__TEXT,__text,regular,pure_instructions
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	4, 0x90
__GLOBAL__I_n:
Leh_func_begin1:
	pushq	%rbp
Ltmp0:
	movq	%rsp, %rbp
Ltmp1:
	movl	$1, %eax
	movl	$65535, %ecx
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	__Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	ret
Leh_func_end1:

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z2rni
	.align	4, 0x90
__Z2rni:
Leh_func_begin2:
	pushq	%rbp
Ltmp2:
	movq	%rsp, %rbp
Ltmp3:
	movl	%edi, -4(%rbp)
	movl	$0, -16(%rbp)
	jmp	LBB2_2
LBB2_1:
	movl	-16(%rbp), %eax
	imull	$10, %eax, %eax
	movl	%eax, -16(%rbp)
	movl	-4(%rbp), %eax
	movl	-16(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%eax, -20(%rbp)
	movl	%edx, -24(%rbp)
	imull	%edx
	movl	%edx, %eax
	shrl	$31, %eax
	sarl	$2, %edx
	leal	(%rdx,%rax), %eax
	imull	$10, %eax, %eax
	movl	-20(%rbp), %edx
	subl	%eax, %edx
	leal	(%rdx,%rcx), %eax
	movl	%eax, -16(%rbp)
	movl	-4(%rbp), %eax
	movl	-24(%rbp), %ecx
	imull	%ecx
	movl	%edx, %eax
	shrl	$31, %eax
	sarl	$2, %edx
	leal	(%rdx,%rax), %eax
	movl	%eax, -4(%rbp)
LBB2_2:
	movl	-4(%rbp), %eax
	cmpl	$0, %eax
	jne	LBB2_1
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	popq	%rbp
	ret
Leh_func_end2:

	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	4, 0x90
__Z41__static_initialization_and_destruction_0ii:
Leh_func_begin3:
	pushq	%rbp
Ltmp4:
	movq	%rsp, %rbp
Ltmp5:
	subq	$16, %rsp
Ltmp6:
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	jne	LBB3_3
	movl	-8(%rbp), %eax
	cmpl	$65535, %eax
	jne	LBB3_3
	leaq	__ZStL8__ioinit(%rip), %rax
	movq	%rax, %rdi
	callq	__ZNSt8ios_base4InitC1Ev
	leaq	___tcf_0(%rip), %rax
	movabsq	$0, %rcx
	movq	___dso_handle@GOTPCREL(%rip), %rdx
	leaq	(%rdx), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	___cxa_atexit
LBB3_3:
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end3:

	.section	__TEXT,__text,regular,pure_instructions
	.align	4, 0x90
___tcf_0:
Leh_func_begin4:
	pushq	%rbp
Ltmp7:
	movq	%rsp, %rbp
Ltmp8:
	subq	$16, %rsp
Ltmp9:
	movq	%rdi, -8(%rbp)
	leaq	__ZStL8__ioinit(%rip), %rax
	movq	%rax, %rdi
	callq	__ZNSt8ios_base4InitD1Ev
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end4:

	.globl	_main
	.align	4, 0x90
_main:
Leh_func_begin5:
	pushq	%rbp
Ltmp10:
	movq	%rsp, %rbp
Ltmp11:
	subq	$16, %rsp
Ltmp12:
	movq	__ZSt3cin@GOTPCREL(%rip), %rax
	leaq	(%rax), %rax
	leaq	_n(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	__ZNSirsERi
	movl	$0, -12(%rbp)
	jmp	LBB5_2
LBB5_1:
	movq	__ZSt3cin@GOTPCREL(%rip), %rax
	leaq	(%rax), %rax
	leaq	_num1(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	__ZNSirsERi
	leaq	_num2(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	__ZNSirsERi
	movl	_num1(%rip), %eax
	movl	%eax, %edi
	callq	__Z2rni
	movl	%eax, %ecx
	movl	_num2(%rip), %edx
	movl	%edx, %edi
	movl	%ecx, -16(%rbp)
	callq	__Z2rni
	movl	%eax, %ecx
	movl	-16(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, %edi
	callq	__Z2rni
	movl	%eax, %ecx
	movq	__ZSt4cout@GOTPCREL(%rip), %rdx
	leaq	(%rdx), %rdx
	movq	%rdx, %rdi
	movl	%ecx, %esi
	callq	__ZNSolsEi
	movq	__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rcx
	leaq	(%rcx), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	__ZNSolsEPFRSoS_E
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
LBB5_2:
	movl	_n(%rip), %eax
	movl	-12(%rbp), %ecx
	cmpl	%eax, %ecx
	jl	LBB5_1
	movl	$0, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end5:

	.globl	_n
.zerofill __DATA,__common,_n,4,2
.zerofill __DATA,__bss,__ZStL8__ioinit,1,3
	.globl	_num1
.zerofill __DATA,__common,_num1,4,2
	.globl	_num2
.zerofill __DATA,__common,_num2,4,2
	.section	__DATA,__mod_init_func,mod_init_funcs
	.align	3
	.quad	__GLOBAL__I_n
	.section	__TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame0:
Lsection_eh_frame:
Leh_frame_common:
Lset0 = Leh_frame_common_end-Leh_frame_common_begin
	.long	Lset0
Leh_frame_common_begin:
	.long	0
	.byte	1
	.asciz	 "zR"
	.byte	1
	.byte	120
	.byte	16
	.byte	1
	.byte	16
	.byte	12
	.byte	7
	.byte	8
	.byte	144
	.byte	1
	.align	3
Leh_frame_common_end:
__GLOBAL__I_n.eh:
Lset1 = Leh_frame_end1-Leh_frame_begin1
	.long	Lset1
Leh_frame_begin1:
Lset2 = Leh_frame_begin1-Leh_frame_common
	.long	Lset2
Ltmp13:
	.quad	Leh_func_begin1-Ltmp13
Lset3 = Leh_func_end1-Leh_func_begin1
	.quad	Lset3
	.byte	0
	.byte	4
Lset4 = Ltmp0-Leh_func_begin1
	.long	Lset4
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset5 = Ltmp1-Ltmp0
	.long	Lset5
	.byte	13
	.byte	6
	.align	3
Leh_frame_end1:

	.globl	__Z2rni.eh
__Z2rni.eh:
Lset6 = Leh_frame_end2-Leh_frame_begin2
	.long	Lset6
Leh_frame_begin2:
Lset7 = Leh_frame_begin2-Leh_frame_common
	.long	Lset7
Ltmp14:
	.quad	Leh_func_begin2-Ltmp14
Lset8 = Leh_func_end2-Leh_func_begin2
	.quad	Lset8
	.byte	0
	.byte	4
Lset9 = Ltmp2-Leh_func_begin2
	.long	Lset9
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset10 = Ltmp3-Ltmp2
	.long	Lset10
	.byte	13
	.byte	6
	.align	3
Leh_frame_end2:

__Z41__static_initialization_and_destruction_0ii.eh:
Lset11 = Leh_frame_end3-Leh_frame_begin3
	.long	Lset11
Leh_frame_begin3:
Lset12 = Leh_frame_begin3-Leh_frame_common
	.long	Lset12
Ltmp15:
	.quad	Leh_func_begin3-Ltmp15
Lset13 = Leh_func_end3-Leh_func_begin3
	.quad	Lset13
	.byte	0
	.byte	4
Lset14 = Ltmp4-Leh_func_begin3
	.long	Lset14
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset15 = Ltmp5-Ltmp4
	.long	Lset15
	.byte	13
	.byte	6
	.align	3
Leh_frame_end3:

___tcf_0.eh:
Lset16 = Leh_frame_end4-Leh_frame_begin4
	.long	Lset16
Leh_frame_begin4:
Lset17 = Leh_frame_begin4-Leh_frame_common
	.long	Lset17
Ltmp16:
	.quad	Leh_func_begin4-Ltmp16
Lset18 = Leh_func_end4-Leh_func_begin4
	.quad	Lset18
	.byte	0
	.byte	4
Lset19 = Ltmp7-Leh_func_begin4
	.long	Lset19
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset20 = Ltmp8-Ltmp7
	.long	Lset20
	.byte	13
	.byte	6
	.align	3
Leh_frame_end4:

	.globl	_main.eh
_main.eh:
Lset21 = Leh_frame_end5-Leh_frame_begin5
	.long	Lset21
Leh_frame_begin5:
Lset22 = Leh_frame_begin5-Leh_frame_common
	.long	Lset22
Ltmp17:
	.quad	Leh_func_begin5-Ltmp17
Lset23 = Leh_func_end5-Leh_func_begin5
	.quad	Lset23
	.byte	0
	.byte	4
Lset24 = Ltmp10-Leh_func_begin5
	.long	Lset24
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset25 = Ltmp11-Ltmp10
	.long	Lset25
	.byte	13
	.byte	6
	.align	3
Leh_frame_end5:


.subsections_via_symbols
