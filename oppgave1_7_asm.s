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
	movb	$0, %al
	callq	_printf
	leaq	L_.str.1(%rip), %rdi
	leaq	_resistor1(%rip), %rsi
	movl	%eax, -8(%rbp)          ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	leaq	L_.str.2(%rip), %rdi
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.1(%rip), %rdi
	leaq	_resistor2(%rip), %rsi
	movl	%eax, -16(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	leaq	L_.str.3(%rip), %rdi
	movss	_resistor1(%rip), %xmm0 ## xmm0 = mem[0],zero,zero,zero
	addss	_resistor2(%rip), %xmm0
	movss	%xmm0, _daisychaining(%rip)
	movss	_daisychaining(%rip), %xmm0 ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, _serialconnection(%rip)
	movss	_resistor1(%rip), %xmm0 ## xmm0 = mem[0],zero,zero,zero
	mulss	_resistor2(%rip), %xmm0
	movss	_resistor1(%rip), %xmm1 ## xmm1 = mem[0],zero,zero,zero
	addss	_resistor2(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, _parallelconnection(%rip)
	cvtss2sd	_serialconnection(%rip), %xmm0
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movb	$1, %al
	callq	_printf
	leaq	L_.str.4(%rip), %rdi
	cvtss2sd	_parallelconnection(%rip), %xmm0
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	movb	$1, %al
	callq	_printf
	xorl	%ecx, %ecx
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_resistor1              ## @resistor1
.zerofill __DATA,__common,_resistor1,4,2
	.globl	_resistor2              ## @resistor2
.zerofill __DATA,__common,_resistor2,4,2
	.globl	_daisychaining          ## @daisychaining
.zerofill __DATA,__common,_daisychaining,4,2
	.globl	_serialconnection       ## @serialconnection
.zerofill __DATA,__common,_serialconnection,4,2
	.globl	_parallelconnection     ## @parallelconnection
.zerofill __DATA,__common,_parallelconnection,4,2
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\nAlchotech Equivalence version 1.0a\nPlease enter the value of resitor number 1 in Ohms: "

L_.str.1:                               ## @.str.1
	.asciz	"%f"

L_.str.2:                               ## @.str.2
	.asciz	"\nThank you!\nPlease enter the value of resitor number 2 in Ohms: "

L_.str.3:                               ## @.str.3
	.asciz	"\nThank you!\nEquivalent resistance when the resistor are in series: %f."

L_.str.4:                               ## @.str.4
	.asciz	"\nEquivalent resistance when the resistor are in parallel: %f.\n"


.subsections_via_symbols
