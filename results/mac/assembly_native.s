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
	mov	ecx, 7
	.p2align	4
LBB0_8:                                 ## =>This Inner Loop Header: Depth=1
	imul	edx, eax, 1664525
	add	edx, 1013904223
	shr	edx, 22
	mov	dword ptr [rbx + 4*rcx - 28], edx
	imul	edx, eax, 389569705
	add	edx, 1196435762
	shr	edx, 22
	mov	dword ptr [rbx + 4*rcx - 24], edx
	imul	edx, eax, -1354167659
	add	edx, -775096599
	shr	edx, 22
	mov	dword ptr [rbx + 4*rcx - 20], edx
	imul	edx, eax, 158984081
	add	edx, -1426500812
	shr	edx, 22
	mov	dword ptr [rbx + 4*rcx - 16], edx
	imul	edx, eax, -1432516515
	add	edx, 1649599747
	shr	edx, 22
	mov	dword ptr [rbx + 4*rcx - 12], edx
	imul	edx, eax, -1083573575
	add	edx, -1624324474
	shr	edx, 22
	mov	dword ptr [rbx + 4*rcx - 8], edx
	imul	edx, eax, 1851289957
	add	edx, 1476291629
	shr	edx, 22
	mov	dword ptr [rbx + 4*rcx - 4], edx
	imul	eax, eax, -360120287
	add	eax, -1546035288
	mov	edx, eax
	shr	edx, 22
	mov	dword ptr [rbx + 4*rcx], edx
	add	rcx, 8
	cmp	rcx, 4000007
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
	mov	eax, 9
	.p2align	4
LBB0_12:                                ## =>This Inner Loop Header: Depth=1
	mov	ecx, dword ptr [rbx + 4*rax - 36]
	mov	edx, dword ptr [rbx + 4*rax - 32]
	xor	rcx, rsi
	imul	rcx, r12
	xor	rdx, rcx
	imul	rdx, r12
	mov	ecx, dword ptr [rbx + 4*rax - 28]
	xor	rcx, rdx
	imul	rcx, r12
	mov	edx, dword ptr [rbx + 4*rax - 24]
	xor	rdx, rcx
	imul	rdx, r12
	mov	ecx, dword ptr [rbx + 4*rax - 20]
	xor	rcx, rdx
	imul	rcx, r12
	mov	edx, dword ptr [rbx + 4*rax - 16]
	xor	rdx, rcx
	imul	rdx, r12
	mov	ecx, dword ptr [rbx + 4*rax - 12]
	xor	rcx, rdx
	imul	rcx, r12
	mov	edx, dword ptr [rbx + 4*rax - 8]
	xor	rdx, rcx
	imul	rdx, r12
	mov	ecx, dword ptr [rbx + 4*rax - 4]
	xor	rcx, rdx
	imul	rcx, r12
	mov	esi, dword ptr [rbx + 4*rax]
	xor	rsi, rcx
	imul	rsi, r12
	add	rax, 10
	cmp	rax, 4000009
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
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2, 0x0                          ## -- Begin function smooth
LCPI1_0:
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
	vpbroadcastd	ymm0, dword ptr [rip + LCPI1_0] ## ymm0 = [3435973837,3435973837,3435973837,3435973837,3435973837,3435973837,3435973837,3435973837]
	.p2align	4
LBB1_2:                                 ## =>This Inner Loop Header: Depth=1
	vmovdqu	ymm1, ymmword ptr [rdi + 4*rax + 4]
	vmovdqu	ymm2, ymmword ptr [rdi + 4*rax + 36]
	vmovdqu	ymm3, ymmword ptr [rdi + 4*rax + 68]
	vmovdqu	ymm4, ymmword ptr [rdi + 4*rax + 100]
	vpaddd	ymm1, ymm1, ymmword ptr [rdi + 4*rax]
	vpaddd	ymm2, ymm2, ymmword ptr [rdi + 4*rax + 32]
	vpaddd	ymm3, ymm3, ymmword ptr [rdi + 4*rax + 64]
	vpaddd	ymm4, ymm4, ymmword ptr [rdi + 4*rax + 96]
	vpaddd	ymm1, ymm1, ymmword ptr [rdi + 4*rax + 8]
	vpaddd	ymm2, ymm2, ymmword ptr [rdi + 4*rax + 40]
	vpaddd	ymm3, ymm3, ymmword ptr [rdi + 4*rax + 72]
	vpaddd	ymm4, ymm4, ymmword ptr [rdi + 4*rax + 104]
	vpaddd	ymm1, ymm1, ymmword ptr [rdi + 4*rax + 12]
	vpaddd	ymm2, ymm2, ymmword ptr [rdi + 4*rax + 44]
	vpaddd	ymm3, ymm3, ymmword ptr [rdi + 4*rax + 76]
	vpaddd	ymm4, ymm4, ymmword ptr [rdi + 4*rax + 108]
	vpaddd	ymm1, ymm1, ymmword ptr [rdi + 4*rax + 16]
	vpaddd	ymm2, ymm2, ymmword ptr [rdi + 4*rax + 48]
	vpaddd	ymm3, ymm3, ymmword ptr [rdi + 4*rax + 80]
	vpaddd	ymm4, ymm4, ymmword ptr [rdi + 4*rax + 112]
	vpshufd	ymm5, ymm1, 245                 ## ymm5 = ymm1[1,1,3,3,5,5,7,7]
	vpmuludq	ymm5, ymm5, ymm0
	vpmuludq	ymm1, ymm1, ymm0
	vpshufd	ymm1, ymm1, 245                 ## ymm1 = ymm1[1,1,3,3,5,5,7,7]
	vpblendd	ymm1, ymm1, ymm5, 170           ## ymm1 = ymm1[0],ymm5[1],ymm1[2],ymm5[3],ymm1[4],ymm5[5],ymm1[6],ymm5[7]
	vpsrld	ymm1, ymm1, 2
	vpshufd	ymm5, ymm2, 245                 ## ymm5 = ymm2[1,1,3,3,5,5,7,7]
	vpmuludq	ymm5, ymm5, ymm0
	vpmuludq	ymm2, ymm2, ymm0
	vpshufd	ymm2, ymm2, 245                 ## ymm2 = ymm2[1,1,3,3,5,5,7,7]
	vpblendd	ymm2, ymm2, ymm5, 170           ## ymm2 = ymm2[0],ymm5[1],ymm2[2],ymm5[3],ymm2[4],ymm5[5],ymm2[6],ymm5[7]
	vpsrld	ymm2, ymm2, 2
	vpshufd	ymm5, ymm3, 245                 ## ymm5 = ymm3[1,1,3,3,5,5,7,7]
	vpmuludq	ymm5, ymm5, ymm0
	vpmuludq	ymm3, ymm3, ymm0
	vpshufd	ymm3, ymm3, 245                 ## ymm3 = ymm3[1,1,3,3,5,5,7,7]
	vpblendd	ymm3, ymm3, ymm5, 170           ## ymm3 = ymm3[0],ymm5[1],ymm3[2],ymm5[3],ymm3[4],ymm5[5],ymm3[6],ymm5[7]
	vpsrld	ymm3, ymm3, 2
	vpshufd	ymm5, ymm4, 245                 ## ymm5 = ymm4[1,1,3,3,5,5,7,7]
	vpmuludq	ymm5, ymm5, ymm0
	vpmuludq	ymm4, ymm4, ymm0
	vpshufd	ymm4, ymm4, 245                 ## ymm4 = ymm4[1,1,3,3,5,5,7,7]
	vpblendd	ymm4, ymm4, ymm5, 170           ## ymm4 = ymm4[0],ymm5[1],ymm4[2],ymm5[3],ymm4[4],ymm5[5],ymm4[6],ymm5[7]
	vpsrld	ymm4, ymm4, 2
	vmovdqu	ymmword ptr [rsi + 4*rax + 8], ymm1
	vmovdqu	ymmword ptr [rsi + 4*rax + 40], ymm2
	vmovdqu	ymmword ptr [rsi + 4*rax + 72], ymm3
	vmovdqu	ymmword ptr [rsi + 4*rax + 104], ymm4
	add	rax, 32
	cmp	rax, 3999968
	jne	LBB1_2
## %bb.3:
	vmovdqu	ymm1, ymmword ptr [rdi + 15999876]
	vpaddd	ymm1, ymm1, ymmword ptr [rdi + 15999872]
	vpaddd	ymm1, ymm1, ymmword ptr [rdi + 15999880]
	vpaddd	ymm1, ymm1, ymmword ptr [rdi + 15999884]
	vpaddd	ymm1, ymm1, ymmword ptr [rdi + 15999888]
	vpshufd	ymm2, ymm1, 245                 ## ymm2 = ymm1[1,1,3,3,5,5,7,7]
	vpmuludq	ymm2, ymm2, ymm0
	vpmuludq	ymm1, ymm1, ymm0
	vpshufd	ymm1, ymm1, 245                 ## ymm1 = ymm1[1,1,3,3,5,5,7,7]
	vpblendd	ymm1, ymm1, ymm2, 170           ## ymm1 = ymm1[0],ymm2[1],ymm1[2],ymm2[3],ymm1[4],ymm2[5],ymm1[6],ymm2[7]
	vpsrld	ymm1, ymm1, 2
	vmovdqu	ymmword ptr [rsi + 15999880], ymm1
	vmovdqu	ymm1, ymmword ptr [rdi + 15999908]
	vpaddd	ymm1, ymm1, ymmword ptr [rdi + 15999904]
	vpaddd	ymm1, ymm1, ymmword ptr [rdi + 15999912]
	vpaddd	ymm1, ymm1, ymmword ptr [rdi + 15999916]
	vpaddd	ymm1, ymm1, ymmword ptr [rdi + 15999920]
	vpshufd	ymm2, ymm1, 245                 ## ymm2 = ymm1[1,1,3,3,5,5,7,7]
	vpmuludq	ymm2, ymm2, ymm0
	vpmuludq	ymm1, ymm1, ymm0
	vpshufd	ymm1, ymm1, 245                 ## ymm1 = ymm1[1,1,3,3,5,5,7,7]
	vpblendd	ymm1, ymm1, ymm2, 170           ## ymm1 = ymm1[0],ymm2[1],ymm1[2],ymm2[3],ymm1[4],ymm2[5],ymm1[6],ymm2[7]
	vpsrld	ymm1, ymm1, 2
	vmovdqu	ymmword ptr [rsi + 15999912], ymm1
	vmovdqu	ymm1, ymmword ptr [rdi + 15999940]
	vpaddd	ymm1, ymm1, ymmword ptr [rdi + 15999936]
	vpaddd	ymm1, ymm1, ymmword ptr [rdi + 15999944]
	vpaddd	ymm1, ymm1, ymmword ptr [rdi + 15999948]
	vpaddd	ymm1, ymm1, ymmword ptr [rdi + 15999952]
	vpshufd	ymm2, ymm1, 245                 ## ymm2 = ymm1[1,1,3,3,5,5,7,7]
	vpmuludq	ymm2, ymm2, ymm0
	vpmuludq	ymm0, ymm1, ymm0
	vpshufd	ymm0, ymm0, 245                 ## ymm0 = ymm0[1,1,3,3,5,5,7,7]
	vpblendd	ymm0, ymm0, ymm2, 170           ## ymm0 = ymm0[0],ymm2[1],ymm0[2],ymm2[3],ymm0[4],ymm2[5],ymm0[6],ymm2[7]
	vpsrld	ymm0, ymm0, 2
	vmovdqu	ymmword ptr [rsi + 15999944], ymm0
	mov	eax, 3999994
LBB1_4:
	mov	ecx, 3435973837
	.p2align	4
LBB1_5:                                 ## =>This Inner Loop Header: Depth=1
	vpbroadcastq	xmm0, qword ptr [rdi + 4*rax]
	vpaddd	xmm0, xmm0, xmmword ptr [rdi + 4*rax - 8]
	vpshufd	xmm1, xmm0, 85                  ## xmm1 = xmm0[1,1,1,1]
	vpaddd	xmm0, xmm0, xmm1
	vmovd	edx, xmm0
	add	edx, dword ptr [rdi + 4*rax + 8]
	imul	rdx, rcx
	shr	rdx, 34
	mov	dword ptr [rsi + 4*rax], edx
	vpbroadcastq	xmm0, qword ptr [rdi + 4*rax + 4]
	vpaddd	xmm0, xmm0, xmmword ptr [rdi + 4*rax - 4]
	vpshufd	xmm1, xmm0, 85                  ## xmm1 = xmm0[1,1,1,1]
	vpaddd	xmm0, xmm0, xmm1
	vmovd	edx, xmm0
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
	vzeroupper
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
