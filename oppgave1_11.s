	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	L_.str(%rip), %rdi
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movb	$0, %al
	callq	_printf
	leaq	L_.str.1(%rip), %rdi
	leaq	-8(%rbp), %rsi
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	movl	-8(%rbp), %edi
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	callq	_partsnumber
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %edi
	callq	_modnumber
	xorl	%edi, %edi
	movl	%eax, -16(%rbp)
	movl	%edi, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_partsnumber
	.p2align	4, 0x90
_partsnumber:                           ## @partsnumber
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi3:
	.cfi_def_cfa_offset 16
Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi5:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	L_.str.2(%rip), %rax
	movl	$10, %ecx
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movq	%rax, -16(%rbp)         ## 8-byte Spill
	movl	%edi, %eax
	cltd
	idivl	%ecx
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	movb	$0, %al
	callq	_printf
	movl	-8(%rbp), %ecx
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_modnumber
	.p2align	4, 0x90
_modnumber:                             ## @modnumber
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi6:
	.cfi_def_cfa_offset 16
Lcfi7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi8:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	L_.str.3(%rip), %rax
	movl	$10, %ecx
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movq	%rax, -16(%rbp)         ## 8-byte Spill
	movl	%edi, %eax
	cltd
	idivl	%ecx
	movl	%edx, -8(%rbp)
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	movb	$0, %al
	callq	_printf
	movl	-8(%rbp), %ecx
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\nPlease enter a number: "

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"\n Debug: Output from function partsnumber - number1: %d.\n"

L_.str.3:                               ## @.str.3
	.asciz	"\n Debug: Output from function modnumber - number1: %d.\n"


.subsections_via_symbols
