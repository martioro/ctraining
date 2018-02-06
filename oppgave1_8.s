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
	subq	$80, %rsp
	leaq	L_.str(%rip), %rdi
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movb	$0, %al
	callq	_printf
	leaq	L_.str.1(%rip), %rdi
	leaq	-8(%rbp), %rsi
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	leaq	L_.str.2(%rip), %rdi
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.1(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	callq	_sum
	movl	%eax, -16(%rbp)
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	_diff
	movl	%eax, -20(%rbp)
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	_multi
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	_div
	leaq	L_.str.3(%rip), %rdi
	movss	%xmm0, -28(%rbp)
	cvtss2sd	-28(%rbp), %xmm0
	movq	%rdi, -56(%rbp)         ## 8-byte Spill
	callq	_round
	cvttsd2si	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %esi
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	movb	$0, %al
	callq	_printf
	leaq	L_.str.4(%rip), %rdi
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.5(%rip), %rdi
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	%eax, -64(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.6(%rip), %rdi
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.7(%rip), %rdi
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	%eax, -72(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.8(%rip), %rdi
	movl	%eax, -76(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	xorl	%ecx, %ecx
	movl	%eax, -80(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_sum
	.p2align	4, 0x90
_sum:                                   ## @sum
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %esi
	movl	%esi, -12(%rbp)
	movl	-8(%rbp), %esi
	movl	%esi, -16(%rbp)
	movl	-12(%rbp), %esi
	addl	-16(%rbp), %esi
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_diff
	.p2align	4, 0x90
_diff:                                  ## @diff
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %esi
	movl	%esi, -12(%rbp)
	movl	-8(%rbp), %esi
	movl	%esi, -16(%rbp)
	movl	-12(%rbp), %esi
	subl	-16(%rbp), %esi
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_multi
	.p2align	4, 0x90
_multi:                                 ## @multi
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi9:
	.cfi_def_cfa_offset 16
Lcfi10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi11:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %esi
	movl	%esi, -12(%rbp)
	movl	-8(%rbp), %esi
	movl	%esi, -16(%rbp)
	movl	-12(%rbp), %esi
	imull	-16(%rbp), %esi
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_div
	.p2align	4, 0x90
_div:                                   ## @div
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi12:
	.cfi_def_cfa_offset 16
Lcfi13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi14:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %esi
	movl	%esi, -12(%rbp)
	movl	-8(%rbp), %esi
	movl	%esi, -16(%rbp)
	movl	-12(%rbp), %eax
	cltd
	idivl	-16(%rbp)
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-20(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\nMicroShack adder, differ, multiplier and divider version 1.0abc\nPlease enter a number: "

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"\nPlease enter another number: "

L_.str.3:                               ## @.str.3
	.asciz	"%d\n"

L_.str.4:                               ## @.str.4
	.asciz	"\nThe sum of %d and %d are %d."

L_.str.5:                               ## @.str.5
	.asciz	"\nThe difference of %d and %d are %d."

L_.str.6:                               ## @.str.6
	.asciz	"\n%d mutliplied with %d are %d."

L_.str.7:                               ## @.str.7
	.asciz	"\n%d divided with %d are %.0d"

L_.str.8:                               ## @.str.8
	.asciz	"\n"


.subsections_via_symbols
