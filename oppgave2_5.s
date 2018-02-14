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
	xorps	%xmm0, %xmm0
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movss	%xmm0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movb	$0, %al
	callq	_printf
	leaq	L_.str.1(%rip), %rdi
	leaq	-8(%rbp), %rsi
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	cmpl	$0, -8(%rbp)
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	jne	LBB0_3
## BB#1:
	cmpl	$0, -24(%rbp)
	jne	LBB0_3
## BB#2:
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%rbp)
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	jmp	LBB0_7
LBB0_3:
	cmpl	$0, -8(%rbp)
	jle	LBB0_5
## BB#4:
	leaq	L_.str.3(%rip), %rdi
	movl	-8(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movl	-24(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -24(%rbp)
	movl	-8(%rbp), %esi
	movl	%esi, -12(%rbp)
	movl	-8(%rbp), %esi
	movl	%esi, -16(%rbp)
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	jmp	LBB0_6
LBB0_5:
	leaq	L_.str.4(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -48(%rbp)         ## 4-byte Spill
LBB0_6:
	jmp	LBB0_7
LBB0_7:
	jmp	LBB0_8
LBB0_8:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$0, -8(%rbp)
	jl	LBB0_24
## BB#9:                                ##   in Loop: Header=BB0_8 Depth=1
	leaq	L_.str.5(%rip), %rdi
	movl	-28(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %esi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.1(%rip), %rdi
	leaq	-8(%rbp), %rsi
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	cmpl	$0, -8(%rbp)
	movl	%eax, -56(%rbp)         ## 4-byte Spill
	jge	LBB0_14
## BB#10:                               ##   in Loop: Header=BB0_8 Depth=1
	cmpl	$0, -24(%rbp)
	jne	LBB0_12
## BB#11:
	leaq	L_.str.4(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	jmp	LBB0_24
LBB0_12:                                ##   in Loop: Header=BB0_8 Depth=1
	leaq	L_.str.6(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -64(%rbp)         ## 4-byte Spill
## BB#13:                               ##   in Loop: Header=BB0_8 Depth=1
	jmp	LBB0_23
LBB0_14:                                ##   in Loop: Header=BB0_8 Depth=1
	cmpl	$0, -8(%rbp)
	jne	LBB0_16
## BB#15:                               ##   in Loop: Header=BB0_8 Depth=1
	leaq	L_.str.7(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%rbp)
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	jmp	LBB0_22
LBB0_16:                                ##   in Loop: Header=BB0_8 Depth=1
	leaq	L_.str.3(%rip), %rdi
	movl	-8(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movl	-8(%rbp), %esi
	cmpl	-12(%rbp), %esi
	movl	%eax, -72(%rbp)         ## 4-byte Spill
	jge	LBB0_18
## BB#17:                               ##   in Loop: Header=BB0_8 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	LBB0_21
LBB0_18:                                ##   in Loop: Header=BB0_8 Depth=1
	movl	-8(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	LBB0_20
## BB#19:                               ##   in Loop: Header=BB0_8 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)
LBB0_20:                                ##   in Loop: Header=BB0_8 Depth=1
	jmp	LBB0_21
LBB0_21:                                ##   in Loop: Header=BB0_8 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
LBB0_22:                                ##   in Loop: Header=BB0_8 Depth=1
	jmp	LBB0_23
LBB0_23:                                ##   in Loop: Header=BB0_8 Depth=1
	jmp	LBB0_8
LBB0_24:
	cmpl	$0, -24(%rbp)
	jle	LBB0_26
## BB#25:
	cvtsi2ssl	-28(%rbp), %xmm0
	cvtsi2ssl	-24(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
LBB0_26:
	leaq	L_.str.8(%rip), %rdi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	cvtss2sd	-20(%rbp), %xmm0
	movb	$1, %al
	callq	_printf
	movl	-4(%rbp), %ecx
	movl	%eax, -76(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\nPlease enter a positive number or a zero (entering a negative number ends the program): "

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"\nThe first number you have entered is zero. Only the counter will be incremented.\n"

L_.str.3:                               ## @.str.3
	.asciz	"\nYou have entered a positive number: %d. Feeding this number into the registration program..."

L_.str.4:                               ## @.str.4
	.asciz	"\nNo numbers have been registrered. Ending registration...\n"

L_.str.5:                               ## @.str.5
	.asciz	"\nNumbers entered: %d.\nPlease enter a positive number or a zero (entering a negative number ends the program): "

L_.str.6:                               ## @.str.6
	.asciz	"\nYou have entered a negative number. Ending registration.\n"

L_.str.7:                               ## @.str.7
	.asciz	"\nYou have entered zero. Only the counter will be incremented.\n"

L_.str.8:                               ## @.str.8
	.asciz	"\nTotal numbers registered: %d. The sum of these numbers are: %d.\nThe smallest number entered was: %d. The biggest number entered was: %d.\nAverage value: %.2f.\n"


.subsections_via_symbols
