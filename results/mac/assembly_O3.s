	.build_version macos, 26, 0	sdk_version 26, 5
	.section	__TEXT,__text,regular,pure_instructions
	.intel_syntax noprefix
	.globl	_main                           ## -- Begin function main
	.p2align	4
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	mov	qword ptr [rbp - 48], 0
	cmp	edi, 3
	jl	LBB0_2
## %bb.1:
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rdi, qword ptr [rax]
	mov	rdx, qword ptr [rsi]
	lea	rsi, [rip + L_.str]
	xor	eax, eax
	call	_fprintf
	jmp	LBB0_15
LBB0_2:
	mov	r14d, 200
	cmp	edi, 2
	jne	LBB0_6
## %bb.3:
	mov	rdi, qword ptr [rsi + 8]
	lea	rax, [rbp - 48]
	mov	rbx, rsi
	mov	rsi, rax
	mov	edx, 10
	call	_strtol
	mov	r14, rax
	mov	rax, qword ptr [rbx + 8]
	cmp	byte ptr [rax], 0
	je	LBB0_5
## %bb.4:
	mov	rax, qword ptr [rbp - 48]
	cmp	byte ptr [rax], 0
	setne	al
	mov	rcx, r14
	add	rcx, -100001
	cmp	rcx, -100000
	setb	cl
	or	cl, al
	cmp	cl, 1
	jne	LBB0_6
LBB0_5:
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rcx, qword ptr [rax]
	lea	rdi, [rip + L_.str.1]
	mov	esi, 32
	mov	edx, 1
	call	_fwrite
	jmp	LBB0_15
LBB0_6:
	mov	edi, 16000000
	call	_malloc
	mov	rbx, rax
	mov	edi, 16000000
	call	_malloc
	mov	r12, rax
	test	rbx, rbx
	sete	al
	test	r12, r12
	sete	cl
	or	cl, al
	je	LBB0_7
## %bb.14:
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rcx, qword ptr [rax]
	lea	rdi, [rip + L_.str.2]
	mov	esi, 23
	mov	edx, 1
	call	_fwrite
	mov	rdi, rbx
	call	_free
	mov	rdi, r12
	call	_free
LBB0_15:
	mov	eax, 1
LBB0_16:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
LBB0_7:
	mov	eax, 20261102
	mov	ecx, 3
	.p2align	4
LBB0_8:                                 ## =>This Inner Loop Header: Depth=1
	imul	edx, eax, 1664525
	add	edx, 1013904223
	shr	edx, 22
	mov	dword ptr [rbx + 4*rcx - 12], edx
	imul	edx, eax, 389569705
	add	edx, 1196435762
	shr	edx, 22
	mov	dword ptr [rbx + 4*rcx - 8], edx
	imul	edx, eax, -1354167659
	add	edx, -775096599
	shr	edx, 22
	mov	dword ptr [rbx + 4*rcx - 4], edx
	imul	eax, eax, 158984081
	add	eax, -1426500812
	mov	edx, eax
	shr	edx, 22
	mov	dword ptr [rbx + 4*rcx], edx
	add	rcx, 4
	cmp	rcx, 4000003
	jne	LBB0_8
## %bb.9:
	mov	r13, r14
	.p2align	4
LBB0_10:                                ## =>This Inner Loop Header: Depth=1
	mov	r15, rbx
	mov	rbx, r12
	mov	rdi, r15
	mov	rsi, r12
	call	_smooth
	mov	r12, r15
	dec	r13
	jne	LBB0_10
## %bb.11:
	movabs	r12, 1099511628211
	lea	rdi, [rip + L_.str.3]
	mov	esi, 4000000
	xor	eax, eax
	call	_printf
	lea	rdi, [rip + L_.str.4]
	mov	rsi, r14
	xor	eax, eax
	call	_printf
	movabs	rsi, -3750763034362895579
	mov	eax, 4
	.p2align	4
LBB0_12:                                ## =>This Inner Loop Header: Depth=1
	mov	ecx, dword ptr [rbx + 4*rax - 16]
	mov	edx, dword ptr [rbx + 4*rax - 12]
	xor	rcx, rsi
	imul	rcx, r12
	xor	rdx, rcx
	imul	rdx, r12
	mov	ecx, dword ptr [rbx + 4*rax - 8]
	xor	rcx, rdx
	imul	rcx, r12
	mov	edx, dword ptr [rbx + 4*rax - 4]
	xor	rdx, rcx
	imul	rdx, r12
	mov	esi, dword ptr [rbx + 4*rax]
	xor	rsi, rdx
	imul	rsi, r12
	add	rax, 5
	cmp	rax, 4000004
	jne	LBB0_12
## %bb.13:
	lea	rdi, [rip + L_.str.5]
	xor	eax, eax
	call	_printf
	mov	rdi, rbx
	call	_free
	mov	rdi, r15
	call	_free
	xor	eax, eax
	jmp	LBB0_16
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ## -- Begin function smooth
LCPI1_0:
	.long	3435973837                      ## 0xcccccccd
	.long	3435973837                      ## 0xcccccccd
	.long	3435973837                      ## 0xcccccccd
	.long	3435973837                      ## 0xcccccccd
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4
_smooth:                                ## @smooth
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	eax, dword ptr [rdi]
	mov	dword ptr [rsi], eax
	mov	eax, dword ptr [rdi + 4]
	mov	dword ptr [rsi + 4], eax
	lea	rax, [rsi + 8]
	lea	rcx, [rsi + 15999992]
	lea	rdx, [rdi + 16000000]
	cmp	rax, rdx
	setb	dl
	cmp	rdi, rcx
	setb	cl
	mov	eax, 2
	test	dl, cl
	jne	LBB1_4
## %bb.1:
	xor	eax, eax
	movdqa	xmm0, xmmword ptr [rip + LCPI1_0] ## xmm0 = [3435973837,3435973837,3435973837,3435973837]
	.p2align	4
LBB1_2:                                 ## =>This Inner Loop Header: Depth=1
	movdqu	xmm1, xmmword ptr [rdi + 4*rax + 16]
	movdqu	xmm2, xmmword ptr [rdi + 4*rax + 20]
	movdqu	xmm3, xmmword ptr [rdi + 4*rax]
	movdqu	xmm4, xmmword ptr [rdi + 4*rax + 4]
	paddd	xmm4, xmm3
	movdqu	xmm3, xmmword ptr [rdi + 4*rax + 8]
	movdqu	xmm5, xmmword ptr [rdi + 4*rax + 12]
	paddd	xmm5, xmm3
	paddd	xmm5, xmm4
	paddd	xmm2, xmm1
	movdqu	xmm3, xmmword ptr [rdi + 4*rax + 24]
	movdqu	xmm4, xmmword ptr [rdi + 4*rax + 28]
	paddd	xmm4, xmm3
	paddd	xmm4, xmm2
	movdqu	xmm2, xmmword ptr [rdi + 4*rax + 32]
	paddd	xmm2, xmm4
	paddd	xmm5, xmm1
	pshufd	xmm1, xmm5, 245                 ## xmm1 = xmm5[1,1,3,3]
	pmuludq	xmm1, xmm0
	pmuludq	xmm5, xmm0
	pshufd	xmm3, xmm5, 245                 ## xmm3 = xmm5[1,1,3,3]
	pblendw	xmm3, xmm1, 204                 ## xmm3 = xmm3[0,1],xmm1[2,3],xmm3[4,5],xmm1[6,7]
	psrld	xmm3, 2
	pshufd	xmm1, xmm2, 245                 ## xmm1 = xmm2[1,1,3,3]
	pmuludq	xmm1, xmm0
	pmuludq	xmm2, xmm0
	pshufd	xmm2, xmm2, 245                 ## xmm2 = xmm2[1,1,3,3]
	pblendw	xmm2, xmm1, 204                 ## xmm2 = xmm2[0,1],xmm1[2,3],xmm2[4,5],xmm1[6,7]
	psrld	xmm2, 2
	movdqu	xmmword ptr [rsi + 4*rax + 8], xmm3
	movdqu	xmmword ptr [rsi + 4*rax + 24], xmm2
	add	rax, 8
	cmp	rax, 3999992
	jne	LBB1_2
## %bb.3:
	mov	eax, 3999994
LBB1_4:
	mov	ecx, 3435973837
	.p2align	4
LBB1_5:                                 ## =>This Inner Loop Header: Depth=1
	movdqu	xmm0, xmmword ptr [rdi + 4*rax - 8]
	pshufd	xmm1, xmm0, 238                 ## xmm1 = xmm0[2,3,2,3]
	paddd	xmm1, xmm0
	pshufd	xmm0, xmm1, 85                  ## xmm0 = xmm1[1,1,1,1]
	paddd	xmm0, xmm1
	movd	edx, xmm0
	add	edx, dword ptr [rdi + 4*rax + 8]
	imul	rdx, rcx
	shr	rdx, 34
	mov	dword ptr [rsi + 4*rax], edx
	movdqu	xmm0, xmmword ptr [rdi + 4*rax - 4]
	pshufd	xmm1, xmm0, 238                 ## xmm1 = xmm0[2,3,2,3]
	paddd	xmm1, xmm0
	pshufd	xmm0, xmm1, 85                  ## xmm0 = xmm1[1,1,1,1]
	paddd	xmm0, xmm1
	movd	edx, xmm0
	add	edx, dword ptr [rdi + 4*rax + 12]
	imul	rdx, rcx
	shr	rdx, 34
	mov	dword ptr [rsi + 4*rax + 4], edx
	add	rax, 2
	cmp	rax, 3999998
	jne	LBB1_5
## %bb.6:
	mov	eax, dword ptr [rdi + 15999992]
	mov	dword ptr [rsi + 15999992], eax
	mov	eax, dword ptr [rdi + 15999996]
	mov	dword ptr [rsi + 15999996], eax
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Usage: %s [passes]\n"

L_.str.1:                               ## @.str.1
	.asciz	"Passes must be from 1 to 100000\n"

L_.str.2:                               ## @.str.2
	.asciz	"Cannot allocate memory\n"

L_.str.3:                               ## @.str.3
	.asciz	"Samples: %d\n"

L_.str.4:                               ## @.str.4
	.asciz	"Passes: %ld\n"

L_.str.5:                               ## @.str.5
	.asciz	"Checksum: %llu\n"

.subsections_via_symbols
