	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2
LCPI0_0:
	.long	1120141312              ## float 98
LCPI0_1:
	.long	1117913088              ## float 81
LCPI0_2:
	.long	1109655552              ## float 41
LCPI0_3:
	.long	1104150528              ## float 26
LCPI0_4:
	.long	1086324736              ## float 6
	.section	__TEXT,__text,regular,pure_instructions
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
	subq	$64, %rsp
	leaq	L_.str(%rip), %rdi
	movl	$0, -4(%rbp)
	movb	$0, %al
	callq	_printf
	movl	$0, _counter(%rip)
	movl	%eax, -8(%rbp)          ## 4-byte Spill
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	cmpl	$5, _counter(%rip)
	jge	LBB0_9
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	leaq	L_.str.1(%rip), %rdi
	movl	_counter(%rip), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.2(%rip), %rdi
	leaq	_points(%rip), %rsi
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	movl	_total(%rip), %ecx
	addl	_points(%rip), %ecx
	movl	%ecx, _total(%rip)
	movl	%eax, -16(%rbp)         ## 4-byte Spill
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movb	$1, %al
	cmpl	$100, _points(%rip)
	movb	%al, -17(%rbp)          ## 1-byte Spill
	jg	LBB0_5
## BB#4:                                ##   in Loop: Header=BB0_3 Depth=2
	cmpl	$1, _points(%rip)
	setl	%al
	movb	%al, -17(%rbp)          ## 1-byte Spill
LBB0_5:                                 ##   in Loop: Header=BB0_3 Depth=2
	movb	-17(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB0_6
	jmp	LBB0_7
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=2
	leaq	L_.str.3(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.1(%rip), %rdi
	movl	_counter(%rip), %ecx
	addl	$1, %ecx
	movl	%ecx, %esi
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.2(%rip), %rdi
	leaq	_points(%rip), %rsi
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	jmp	LBB0_3
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_8
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	_counter(%rip), %eax
	addl	$1, %eax
	movl	%eax, _counter(%rip)
	jmp	LBB0_1
LBB0_9:
	leaq	L_.str.4(%rip), %rdi
	cvtsi2ssl	_total(%rip), %xmm0
	cvtsi2ssl	_counter(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, _avrpoints(%rip)
	cvtss2sd	_avrpoints(%rip), %xmm0
	movb	$1, %al
	callq	_printf
	movss	LCPI0_0(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	movss	_avrpoints(%rip), %xmm1 ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	jb	LBB0_11
## BB#10:
	leaq	L_.str.5(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	jmp	LBB0_31
LBB0_11:
	movss	LCPI0_1(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	movss	_avrpoints(%rip), %xmm1 ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	LBB0_14
## BB#12:
	movss	LCPI0_0(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	ucomiss	_avrpoints(%rip), %xmm0
	jbe	LBB0_14
## BB#13:
	leaq	L_.str.6(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	jmp	LBB0_30
LBB0_14:
	movss	LCPI0_2(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	movss	_avrpoints(%rip), %xmm1 ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	LBB0_17
## BB#15:
	movss	LCPI0_1(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	ucomiss	_avrpoints(%rip), %xmm0
	jbe	LBB0_17
## BB#16:
	leaq	L_.str.7(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	jmp	LBB0_29
LBB0_17:
	movss	LCPI0_3(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	movss	_avrpoints(%rip), %xmm1 ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	LBB0_20
## BB#18:
	movss	LCPI0_2(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	ucomiss	_avrpoints(%rip), %xmm0
	jbe	LBB0_20
## BB#19:
	leaq	L_.str.8(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	jmp	LBB0_28
LBB0_20:
	movss	LCPI0_4(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	movss	_avrpoints(%rip), %xmm1 ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	LBB0_23
## BB#21:
	movss	LCPI0_3(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	ucomiss	_avrpoints(%rip), %xmm0
	jbe	LBB0_23
## BB#22:
	leaq	L_.str.9(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -56(%rbp)         ## 4-byte Spill
	jmp	LBB0_27
LBB0_23:
	xorps	%xmm0, %xmm0
	movss	_avrpoints(%rip), %xmm1 ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	LBB0_26
## BB#24:
	movss	LCPI0_4(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	ucomiss	_avrpoints(%rip), %xmm0
	jbe	LBB0_26
## BB#25:
	leaq	L_.str.10(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -60(%rbp)         ## 4-byte Spill
LBB0_26:
	jmp	LBB0_27
LBB0_27:
	jmp	LBB0_28
LBB0_28:
	jmp	LBB0_29
LBB0_29:
	jmp	LBB0_30
LBB0_30:
	jmp	LBB0_31
LBB0_31:
	leaq	L_.str.11(%rip), %rdi
	movl	_total(%rip), %esi
	movb	$0, %al
	callq	_printf
	movl	-4(%rbp), %esi
	movl	%eax, -64(%rbp)         ## 4-byte Spill
	movl	%esi, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_counter                ## @counter
.zerofill __DATA,__common,_counter,4,2
	.globl	_points                 ## @points
.zerofill __DATA,__common,_points,4,2
	.globl	_total                  ## @total
.zerofill __DATA,__common,_total,4,2
	.globl	_avrpoints              ## @avrpoints
.zerofill __DATA,__common,_avrpoints,4,2
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\nTest registration program. Your way of a convenient registration.\n"

L_.str.1:                               ## @.str.1
	.asciz	"\nEnter a testscore for test number %d (between 1 and 100 points): "

L_.str.2:                               ## @.str.2
	.asciz	"%d"

L_.str.3:                               ## @.str.3
	.asciz	"\nYou have entered an invalid number of points. Try again..."

L_.str.4:                               ## @.str.4
	.asciz	"\nThe average of points are: %.4f. This gives you the grade "

L_.str.5:                               ## @.str.5
	.asciz	"A! Congratulations! "

L_.str.6:                               ## @.str.6
	.asciz	"B! Congratulations! "

L_.str.7:                               ## @.str.7
	.asciz	"C! Keep it up. We are sure that you could do better! "

L_.str.8:                               ## @.str.8
	.asciz	"D! We think that you need to work more on this! "

L_.str.9:                               ## @.str.9
	.asciz	"E! We think that you should consider studying something else! "

L_.str.10:                              ## @.str.10
	.asciz	"F! Epic fail! You are dumb! "

L_.str.11:                              ## @.str.11
	.asciz	"Your total score is %d.\n"


.subsections_via_symbols
