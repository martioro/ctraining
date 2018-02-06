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
	movl	_variabel1(%rip), %eax
	movl	%eax, _variabel2(%rip)
	movl	_variabel1(%rip), %eax
	addl	_variabel2(%rip), %eax
	subl	$8, %eax
	movl	%eax, -8(%rbp)
	movl	$1145, -12(%rbp)        ## imm = 0x479
	movl	-8(%rbp), %esi
	movb	$0, %al
	callq	_printf
	movl	$0, -16(%rbp)
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	callq	_variabel5
	xorl	%esi, %esi
	movl	%eax, -16(%rbp)
	movl	%esi, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_variabel5
	.p2align	4, 0x90
_variabel5:                             ## @variabel5
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
	leaq	L_.str.1(%rip), %rax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cvtsi2ssl	-4(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	cvtsi2ssl	-8(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	movl	$38, -20(%rbp)
	movss	-12(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	addss	-16(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
	cvtss2sd	-24(%rbp), %xmm0
	movq	%rax, %rdi
	movb	$1, %al
	callq	_printf
	cvttss2si	-24(%rbp), %esi
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	movl	%esi, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__DATA,__data
	.globl	_variabel1              ## @variabel1
	.p2align	2
_variabel1:
	.long	1038                    ## 0x40e

	.globl	_variabel2              ## @variabel2
	.p2align	2
_variabel2:
	.long	17                      ## 0x11

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"

L_.str.1:                               ## @.str.1
	.asciz	"varibel5 follows: %f"


.subsections_via_symbols
