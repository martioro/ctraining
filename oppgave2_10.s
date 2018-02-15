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
	subq	$48, %rsp
	leaq	L_.str(%rip), %rdi
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movb	$0, %al
	callq	_printf
	leaq	L_.str.1(%rip), %rdi
	leaq	-8(%rbp), %rsi
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	leaq	L_.str.2(%rip), %rdi
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.1(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	leaq	L_.str.3(%rip), %rdi
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.1(%rip), %rdi
	leaq	-16(%rbp), %rsi
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	callq	_sqrtsolver
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, _sqrtvalue(%rip)
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	_qadrsolver
	leaq	L_.str.4(%rip), %rdi
	movq	_canswer1@GOTPCREL(%rip), %rsi
	movq	_canswer2@GOTPCREL(%rip), %rdx
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	xorl	%ecx, %ecx
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_sqrtsolver
	.p2align	4, 0x90
_sqrtsolver:                            ## @sqrtsolver
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-8(%rbp), %edx
	imull	-8(%rbp), %edx
	movl	-4(%rbp), %esi
	shll	$2, %esi
	imull	-12(%rbp), %esi
	subl	%esi, %edx
	movl	%edx, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jge	LBB1_2
## BB#1:
	leaq	L_.str.5(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	jmp	LBB1_6
LBB1_2:
	cmpl	$0, -16(%rbp)
	jne	LBB1_4
## BB#3:
	leaq	L_.str.6(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	jmp	LBB1_5
LBB1_4:
	leaq	L_.str.7(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -28(%rbp)         ## 4-byte Spill
LBB1_5:
	jmp	LBB1_6
LBB1_6:
	movl	-16(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI2_0:
	.quad	9223372036854775807     ## double NaN
	.quad	9223372036854775807     ## double NaN
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_qadrsolver
	.p2align	4, 0x90
_qadrsolver:                            ## @qadrsolver
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
	subq	$112, %rsp
	leaq	L_.str.8(%rip), %rax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	xorps	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
	movl	$0, -20(%rbp)
	ucomiss	_sqrtvalue(%rip), %xmm0
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	jbe	LBB2_13
## BB#1:
	xorps	%xmm0, %xmm0
	xorl	%eax, %eax
	cvtss2sd	_sqrtvalue(%rip), %xmm1
	movaps	LCPI2_0(%rip), %xmm2    ## xmm2 = [nan,nan]
	pand	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -16(%rbp)
	cvtss2sd	-16(%rbp), %xmm1
	sqrtsd	%xmm1, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -20(%rbp)
	movl	%eax, %ecx
	subl	-8(%rbp), %ecx
	cvtsi2ssl	%ecx, %xmm1
	movl	-4(%rbp), %ecx
	shll	$1, %ecx
	cvtsi2ssl	%ecx, %xmm2
	divss	%xmm2, %xmm1
	movss	%xmm1, _answer1(%rip)
	cvtsi2ssl	-20(%rbp), %xmm1
	movl	-4(%rbp), %ecx
	shll	$1, %ecx
	cvtsi2ssl	%ecx, %xmm2
	divss	%xmm2, %xmm1
	movss	%xmm1, _answer2(%rip)
	subl	-20(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	movl	-4(%rbp), %eax
	shll	$1, %eax
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm1
	movss	%xmm1, _answer3(%rip)
	movss	_answer1(%rip), %xmm1   ## xmm1 = mem[0],zero,zero,zero
	cvttss2si	_answer1(%rip), %eax
	cvtsi2ssl	%eax, %xmm2
	subss	%xmm2, %xmm1
	ucomiss	%xmm0, %xmm1
	jne	LBB2_5
	jp	LBB2_5
## BB#2:
	xorps	%xmm0, %xmm0
	movss	_answer2(%rip), %xmm1   ## xmm1 = mem[0],zero,zero,zero
	cvttss2si	_answer2(%rip), %eax
	cvtsi2ssl	%eax, %xmm2
	subss	%xmm2, %xmm1
	ucomiss	%xmm0, %xmm1
	jne	LBB2_5
	jp	LBB2_5
## BB#3:
	xorps	%xmm0, %xmm0
	movss	_answer3(%rip), %xmm1   ## xmm1 = mem[0],zero,zero,zero
	cvttss2si	_answer3(%rip), %eax
	cvtsi2ssl	%eax, %xmm2
	subss	%xmm2, %xmm1
	ucomiss	%xmm0, %xmm1
	jne	LBB2_5
	jp	LBB2_5
## BB#4:
	movq	_canswer1@GOTPCREL(%rip), %rdi
	movl	$2068, %eax             ## imm = 0x814
	movl	%eax, %ecx
	xorl	%edx, %edx
	leaq	L_.str.9(%rip), %r8
	cvtss2sd	_answer1(%rip), %xmm0
	cvtss2sd	_answer2(%rip), %xmm1
	movq	%rcx, %rsi
	movb	$2, %al
	callq	___snprintf_chk
	movq	_canswer2@GOTPCREL(%rip), %rdi
	movl	$2068, %edx             ## imm = 0x814
	movl	%edx, %ecx
	xorl	%edx, %edx
	leaq	L_.str.9(%rip), %r8
	cvtss2sd	_answer1(%rip), %xmm0
	cvtss2sd	_answer3(%rip), %xmm1
	movq	%rcx, %rsi
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	movb	$2, %al
	callq	___snprintf_chk
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	jmp	LBB2_12
LBB2_5:
	xorps	%xmm0, %xmm0
	movss	_answer1(%rip), %xmm1   ## xmm1 = mem[0],zero,zero,zero
	cvttss2si	_answer1(%rip), %eax
	cvtsi2ssl	%eax, %xmm2
	subss	%xmm2, %xmm1
	ucomiss	%xmm0, %xmm1
	jne	LBB2_7
	jp	LBB2_7
## BB#6:
	movq	_canswer1@GOTPCREL(%rip), %rdi
	movl	$2068, %eax             ## imm = 0x814
	movl	%eax, %ecx
	xorl	%edx, %edx
	leaq	L_.str.10(%rip), %r8
	cvtss2sd	_answer1(%rip), %xmm0
	cvtss2sd	_answer2(%rip), %xmm1
	movq	%rcx, %rsi
	movb	$2, %al
	callq	___snprintf_chk
	movq	_canswer2@GOTPCREL(%rip), %rdi
	movl	$2068, %edx             ## imm = 0x814
	movl	%edx, %ecx
	xorl	%edx, %edx
	leaq	L_.str.10(%rip), %r8
	cvtss2sd	_answer1(%rip), %xmm0
	cvtss2sd	_answer3(%rip), %xmm1
	movq	%rcx, %rsi
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	movb	$2, %al
	callq	___snprintf_chk
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	jmp	LBB2_11
LBB2_7:
	xorps	%xmm0, %xmm0
	movss	_answer2(%rip), %xmm1   ## xmm1 = mem[0],zero,zero,zero
	cvttss2si	_answer2(%rip), %eax
	cvtsi2ssl	%eax, %xmm2
	subss	%xmm2, %xmm1
	ucomiss	%xmm0, %xmm1
	jne	LBB2_9
	jp	LBB2_9
## BB#8:
	movq	_canswer1@GOTPCREL(%rip), %rdi
	movl	$2068, %eax             ## imm = 0x814
	movl	%eax, %ecx
	xorl	%edx, %edx
	leaq	L_.str.11(%rip), %r8
	cvtss2sd	_answer1(%rip), %xmm0
	cvtss2sd	_answer2(%rip), %xmm1
	movq	%rcx, %rsi
	movb	$2, %al
	callq	___snprintf_chk
	movq	_canswer2@GOTPCREL(%rip), %rdi
	movl	$2068, %edx             ## imm = 0x814
	movl	%edx, %ecx
	xorl	%edx, %edx
	leaq	L_.str.12(%rip), %r8
	cvtss2sd	_answer1(%rip), %xmm0
	cvtss2sd	_answer3(%rip), %xmm1
	movq	%rcx, %rsi
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	movb	$2, %al
	callq	___snprintf_chk
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	jmp	LBB2_10
LBB2_9:
	movq	_canswer1@GOTPCREL(%rip), %rdi
	movl	$2068, %eax             ## imm = 0x814
	movl	%eax, %ecx
	xorl	%edx, %edx
	leaq	L_.str.12(%rip), %r8
	cvtss2sd	_answer1(%rip), %xmm0
	cvtss2sd	_answer2(%rip), %xmm1
	movq	%rcx, %rsi
	movb	$2, %al
	callq	___snprintf_chk
	movq	_canswer2@GOTPCREL(%rip), %rdi
	movl	$2068, %edx             ## imm = 0x814
	movl	%edx, %ecx
	xorl	%edx, %edx
	leaq	L_.str.11(%rip), %r8
	cvtss2sd	_answer1(%rip), %xmm0
	cvtss2sd	_answer3(%rip), %xmm1
	movq	%rcx, %rsi
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	movb	$2, %al
	callq	___snprintf_chk
	movl	%eax, -56(%rbp)         ## 4-byte Spill
LBB2_10:
	jmp	LBB2_11
LBB2_11:
	jmp	LBB2_12
LBB2_12:
	jmp	LBB2_31
LBB2_13:
	xorps	%xmm0, %xmm0
	movss	_sqrtvalue(%rip), %xmm1 ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	LBB2_22
	jp	LBB2_22
## BB#14:
	xorps	%xmm0, %xmm0
	xorl	%eax, %eax
	subl	-8(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	movl	-4(%rbp), %eax
	shll	$1, %eax
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm1
	movss	%xmm1, _answer1(%rip)
	movss	_answer1(%rip), %xmm1   ## xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, _answer2(%rip)
	movss	_answer1(%rip), %xmm1   ## xmm1 = mem[0],zero,zero,zero
	cvttss2si	_answer1(%rip), %eax
	cvtsi2ssl	%eax, %xmm2
	subss	%xmm2, %xmm1
	ucomiss	%xmm0, %xmm1
	jne	LBB2_17
	jp	LBB2_17
## BB#15:
	xorps	%xmm0, %xmm0
	movss	_answer2(%rip), %xmm1   ## xmm1 = mem[0],zero,zero,zero
	cvttss2si	_answer2(%rip), %eax
	cvtsi2ssl	%eax, %xmm2
	subss	%xmm2, %xmm1
	ucomiss	%xmm0, %xmm1
	jne	LBB2_17
	jp	LBB2_17
## BB#16:
	movq	_canswer1@GOTPCREL(%rip), %rdi
	movl	$2068, %eax             ## imm = 0x814
	movl	%eax, %ecx
	xorl	%edx, %edx
	leaq	L_.str.13(%rip), %r8
	cvtss2sd	_answer1(%rip), %xmm0
	movq	%rcx, %rsi
	movb	$1, %al
	callq	___snprintf_chk
	movq	_canswer2@GOTPCREL(%rip), %rdi
	movl	$2068, %edx             ## imm = 0x814
	movl	%edx, %ecx
	xorl	%edx, %edx
	leaq	L_.str.13(%rip), %r8
	cvtss2sd	_answer2(%rip), %xmm0
	movq	%rcx, %rsi
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	movb	$1, %al
	callq	___snprintf_chk
	movl	%eax, -64(%rbp)         ## 4-byte Spill
	jmp	LBB2_21
LBB2_17:
	xorps	%xmm0, %xmm0
	movss	_answer1(%rip), %xmm1   ## xmm1 = mem[0],zero,zero,zero
	cvttss2si	_answer1(%rip), %eax
	cvtsi2ssl	%eax, %xmm2
	subss	%xmm2, %xmm1
	ucomiss	%xmm0, %xmm1
	jne	LBB2_19
	jp	LBB2_19
## BB#18:
	movq	_canswer1@GOTPCREL(%rip), %rdi
	movl	$2068, %eax             ## imm = 0x814
	movl	%eax, %ecx
	xorl	%edx, %edx
	leaq	L_.str.13(%rip), %r8
	cvtss2sd	_answer1(%rip), %xmm0
	movq	%rcx, %rsi
	movb	$1, %al
	callq	___snprintf_chk
	movq	_canswer2@GOTPCREL(%rip), %rdi
	movl	$2068, %edx             ## imm = 0x814
	movl	%edx, %ecx
	xorl	%edx, %edx
	leaq	L_.str.14(%rip), %r8
	cvtss2sd	_answer2(%rip), %xmm0
	movq	%rcx, %rsi
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	movb	$1, %al
	callq	___snprintf_chk
	movl	%eax, -72(%rbp)         ## 4-byte Spill
	jmp	LBB2_20
LBB2_19:
	movq	_canswer1@GOTPCREL(%rip), %rdi
	movl	$2068, %eax             ## imm = 0x814
	movl	%eax, %ecx
	xorl	%edx, %edx
	leaq	L_.str.14(%rip), %r8
	cvtss2sd	_answer1(%rip), %xmm0
	movq	%rcx, %rsi
	movb	$1, %al
	callq	___snprintf_chk
	movq	_canswer2@GOTPCREL(%rip), %rdi
	movl	$2068, %edx             ## imm = 0x814
	movl	%edx, %ecx
	xorl	%edx, %edx
	leaq	L_.str.13(%rip), %r8
	cvtss2sd	_answer2(%rip), %xmm0
	movq	%rcx, %rsi
	movl	%eax, -76(%rbp)         ## 4-byte Spill
	movb	$1, %al
	callq	___snprintf_chk
	movl	%eax, -80(%rbp)         ## 4-byte Spill
LBB2_20:
	jmp	LBB2_21
LBB2_21:
	jmp	LBB2_30
LBB2_22:
	xorps	%xmm0, %xmm0
	xorl	%eax, %eax
	cvtss2sd	_sqrtvalue(%rip), %xmm1
	sqrtsd	%xmm1, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -20(%rbp)
	movl	%eax, %ecx
	subl	-8(%rbp), %ecx
	addl	-20(%rbp), %ecx
	cvtsi2ssl	%ecx, %xmm1
	movl	-4(%rbp), %ecx
	shll	$1, %ecx
	cvtsi2ssl	%ecx, %xmm2
	divss	%xmm2, %xmm1
	movss	%xmm1, _answer1(%rip)
	subl	-8(%rbp), %eax
	subl	-20(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	movl	-4(%rbp), %eax
	shll	$1, %eax
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm1
	movss	%xmm1, _answer2(%rip)
	movss	_answer1(%rip), %xmm1   ## xmm1 = mem[0],zero,zero,zero
	cvttss2si	_answer1(%rip), %eax
	cvtsi2ssl	%eax, %xmm2
	subss	%xmm2, %xmm1
	ucomiss	%xmm0, %xmm1
	jne	LBB2_25
	jp	LBB2_25
## BB#23:
	xorps	%xmm0, %xmm0
	movss	_answer2(%rip), %xmm1   ## xmm1 = mem[0],zero,zero,zero
	cvttss2si	_answer2(%rip), %eax
	cvtsi2ssl	%eax, %xmm2
	subss	%xmm2, %xmm1
	ucomiss	%xmm0, %xmm1
	jne	LBB2_25
	jp	LBB2_25
## BB#24:
	movq	_canswer1@GOTPCREL(%rip), %rdi
	movl	$2068, %eax             ## imm = 0x814
	movl	%eax, %ecx
	xorl	%edx, %edx
	leaq	L_.str.13(%rip), %r8
	cvtss2sd	_answer1(%rip), %xmm0
	movq	%rcx, %rsi
	movb	$1, %al
	callq	___snprintf_chk
	movq	_canswer2@GOTPCREL(%rip), %rdi
	movl	$2068, %edx             ## imm = 0x814
	movl	%edx, %ecx
	xorl	%edx, %edx
	leaq	L_.str.13(%rip), %r8
	cvtss2sd	_answer2(%rip), %xmm0
	movq	%rcx, %rsi
	movl	%eax, -84(%rbp)         ## 4-byte Spill
	movb	$1, %al
	callq	___snprintf_chk
	movl	%eax, -88(%rbp)         ## 4-byte Spill
	jmp	LBB2_29
LBB2_25:
	xorps	%xmm0, %xmm0
	movss	_answer1(%rip), %xmm1   ## xmm1 = mem[0],zero,zero,zero
	cvttss2si	_answer1(%rip), %eax
	cvtsi2ssl	%eax, %xmm2
	subss	%xmm2, %xmm1
	ucomiss	%xmm0, %xmm1
	jne	LBB2_27
	jp	LBB2_27
## BB#26:
	movq	_canswer1@GOTPCREL(%rip), %rdi
	movl	$2068, %eax             ## imm = 0x814
	movl	%eax, %ecx
	xorl	%edx, %edx
	leaq	L_.str.13(%rip), %r8
	cvtss2sd	_answer1(%rip), %xmm0
	movq	%rcx, %rsi
	movb	$1, %al
	callq	___snprintf_chk
	movq	_canswer2@GOTPCREL(%rip), %rdi
	movl	$2068, %edx             ## imm = 0x814
	movl	%edx, %ecx
	xorl	%edx, %edx
	leaq	L_.str.14(%rip), %r8
	cvtss2sd	_answer2(%rip), %xmm0
	movq	%rcx, %rsi
	movl	%eax, -92(%rbp)         ## 4-byte Spill
	movb	$1, %al
	callq	___snprintf_chk
	movl	%eax, -96(%rbp)         ## 4-byte Spill
	jmp	LBB2_28
LBB2_27:
	movq	_canswer1@GOTPCREL(%rip), %rdi
	movl	$2068, %eax             ## imm = 0x814
	movl	%eax, %ecx
	xorl	%edx, %edx
	leaq	L_.str.14(%rip), %r8
	cvtss2sd	_answer1(%rip), %xmm0
	movq	%rcx, %rsi
	movb	$1, %al
	callq	___snprintf_chk
	movq	_canswer2@GOTPCREL(%rip), %rdi
	movl	$2068, %edx             ## imm = 0x814
	movl	%edx, %ecx
	xorl	%edx, %edx
	leaq	L_.str.13(%rip), %r8
	cvtss2sd	_answer2(%rip), %xmm0
	movq	%rcx, %rsi
	movl	%eax, -100(%rbp)        ## 4-byte Spill
	movb	$1, %al
	callq	___snprintf_chk
	movl	%eax, -104(%rbp)        ## 4-byte Spill
LBB2_28:
	jmp	LBB2_29
LBB2_29:
	jmp	LBB2_30
LBB2_30:
	jmp	LBB2_31
LBB2_31:
	xorl	%eax, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_answer1                ## @answer1
.zerofill __DATA,__common,_answer1,4,2
	.globl	_answer2                ## @answer2
.zerofill __DATA,__common,_answer2,4,2
	.globl	_answer3                ## @answer3
.zerofill __DATA,__common,_answer3,4,2
	.globl	_sqrtvalue              ## @sqrtvalue
.zerofill __DATA,__common,_sqrtvalue,4,2
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\nThis program solves second degree equations/quadratic equation: a*x*x+b*x+c=0.\nYour first job will be to determine the unknown constants a, b and c.\nPlease enter the value of a: "

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"\nPlease enter the value of b: "

L_.str.3:                               ## @.str.3
	.asciz	"\nPlease enter the value of c: "

L_.str.4:                               ## @.str.4
	.asciz	"\nThe solutions to this quadratic equation are: x1=%s, x2=%s\nThank you!\n"

	.comm	_canswer1,2068,4        ## @canswer1
	.comm	_canswer2,2068,4        ## @canswer2
L_.str.5:                               ## @.str.5
	.asciz	"\nThis quadratic equation has no real roots. The solution will be one or more complex roots.\n"

L_.str.6:                               ## @.str.6
	.asciz	"\nThis quadratic equation has one real roots (only one answer).\n"

L_.str.7:                               ## @.str.7
	.asciz	"\nThis quadratic equation has two real roots.\n"

L_.str.8:                               ## @.str.8
	.asciz	"\nInformation entered by user: a=%d, b=%d, c=%d.\n"

L_.str.9:                               ## @.str.9
	.asciz	"%.0f+%.0f*i"

L_.str.10:                              ## @.str.10
	.asciz	"%.0f+%.2f*i"

L_.str.11:                              ## @.str.11
	.asciz	"%.2f+%.0f*i"

L_.str.12:                              ## @.str.12
	.asciz	"%.2f+%.2f*i"

L_.str.13:                              ## @.str.13
	.asciz	"%.0f"

L_.str.14:                              ## @.str.14
	.asciz	"%.2f"


.subsections_via_symbols
