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
	movq	_tabell@GOTPCREL(%rip), %rsi
	movl	%eax, -8(%rbp)          ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	movl	%eax, -12(%rbp)         ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	_tabell@GOTPCREL(%rip), %rax
	cmpl	$10, (%rax)
	jle	LBB0_3
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.1(%rip), %rdi
	movq	_tabell@GOTPCREL(%rip), %rsi
	movl	%eax, -16(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	jmp	LBB0_1
LBB0_3:
	movq	_i@GOTPCREL(%rip), %rax
	movl	$1, (%rax)
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	movq	_i@GOTPCREL(%rip), %rax
	cmpl	$11, (%rax)
	jge	LBB0_7
## BB#5:                                ##   in Loop: Header=BB0_4 Depth=1
	leaq	L_.str.3(%rip), %rdi
	movq	_i@GOTPCREL(%rip), %rax
	movq	_tabell@GOTPCREL(%rip), %rcx
	movl	(%rcx), %edx
	imull	(%rax), %edx
	movl	%edx, _svar(%rip)
	movl	(%rcx), %esi
	movl	(%rax), %edx
	movl	_svar(%rip), %ecx
	movb	$0, %al
	callq	_printf
	movl	%eax, -24(%rbp)         ## 4-byte Spill
## BB#6:                                ##   in Loop: Header=BB0_4 Depth=1
	movq	_i@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	LBB0_4
LBB0_7:
	leaq	L_.str.4(%rip), %rdi
	movb	$0, %al
	callq	_printf
	xorl	%ecx, %ecx
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_svar                   ## @svar
.zerofill __DATA,__common,_svar,4,2
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\nVelkommen til dette multiplikasjonsprogrammet. Vennligst skriv inn hvilken rekke fra den lille multiplikasjonstabellen du vil beregne: "

L_.str.1:                               ## @.str.1
	.asciz	"%d"

	.comm	_tabell,4,2             ## @tabell
L_.str.2:                               ## @.str.2
	.asciz	"\nVennligst benytt den lille multiplikasjonstabellen. Velg p\303\245 nytt: "

	.comm	_i,4,2                  ## @i
L_.str.3:                               ## @.str.3
	.asciz	"\n%d * %d = %d"

L_.str.4:                               ## @.str.4
	.asciz	"\nBeregning utf\303\270rt. Programmet avslutter...\n"


.subsections_via_symbols
