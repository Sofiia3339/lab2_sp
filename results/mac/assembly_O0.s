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
	sub	rsp, 64
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], 0
	mov	qword ptr [rbp - 32], 200
	cmp	dword ptr [rbp - 8], 2
	jle	LBB0_2
## %bb.1:
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rax]
	lea	rsi, [rip + L_.str]
	mov	al, 0
	call	_fprintf
	mov	dword ptr [rbp - 4], 1
	jmp	LBB0_17
LBB0_2:
	cmp	dword ptr [rbp - 8], 2
	jne	LBB0_9
## %bb.3:
	mov	rax, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rax + 8]
	lea	rsi, [rbp - 24]
	mov	edx, 10
	call	_strtol
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 16]
	mov	rax, qword ptr [rax + 8]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0
	je	LBB0_7
## %bb.4:
	mov	rax, qword ptr [rbp - 24]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0
	jne	LBB0_7
## %bb.5:
	cmp	qword ptr [rbp - 32], 1
	jl	LBB0_7
## %bb.6:
	cmp	qword ptr [rbp - 32], 100000
	jle	LBB0_8
LBB0_7:
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rip + L_.str.1]
	mov	al, 0
	call	_fprintf
	mov	dword ptr [rbp - 4], 1
	jmp	LBB0_17
LBB0_8:
	jmp	LBB0_9
LBB0_9:
	mov	edi, 16000000
	call	_malloc
	mov	qword ptr [rbp - 40], rax
	mov	edi, 16000000
	call	_malloc
	mov	qword ptr [rbp - 48], rax
	cmp	qword ptr [rbp - 40], 0
	je	LBB0_11
## %bb.10:
	cmp	qword ptr [rbp - 48], 0
	jne	LBB0_12
LBB0_11:
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rip + L_.str.2]
	mov	al, 0
	call	_fprintf
	mov	rdi, qword ptr [rbp - 40]
	call	_free
	mov	rdi, qword ptr [rbp - 48]
	call	_free
	mov	dword ptr [rbp - 4], 1
	jmp	LBB0_17
LBB0_12:
	mov	rdi, qword ptr [rbp - 40]
	call	_fill_data
	mov	qword ptr [rbp - 56], 0
LBB0_13:                                ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 56]
	cmp	rax, qword ptr [rbp - 32]
	jge	LBB0_16
## %bb.14:                              ##   in Loop: Header=BB0_13 Depth=1
	mov	rdi, qword ptr [rbp - 40]
	mov	rsi, qword ptr [rbp - 48]
	call	_smooth
	mov	rax, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 64], rax
	mov	rax, qword ptr [rbp - 48]
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 64]
	mov	qword ptr [rbp - 48], rax
## %bb.15:                              ##   in Loop: Header=BB0_13 Depth=1
	mov	rax, qword ptr [rbp - 56]
	add	rax, 1
	mov	qword ptr [rbp - 56], rax
	jmp	LBB0_13
LBB0_16:
	lea	rdi, [rip + L_.str.3]
	mov	esi, 4000000
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rbp - 32]
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rbp - 40]
	call	_checksum
	mov	rsi, rax
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rbp - 40]
	call	_free
	mov	rdi, qword ptr [rbp - 48]
	call	_free
	mov	dword ptr [rbp - 4], 0
LBB0_17:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function fill_data
_fill_data:                             ## @fill_data
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], 20261102
	mov	qword ptr [rbp - 24], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 24], 4000000
	jae	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	imul	eax, dword ptr [rbp - 12], 1664525
	add	eax, 1013904223
	mov	dword ptr [rbp - 12], eax
	mov	edx, dword ptr [rbp - 12]
	shr	edx, 22
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 24]
	mov	dword ptr [rax + 4*rcx], edx
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	add	rax, 1
	mov	qword ptr [rbp - 24], rax
	jmp	LBB1_1
LBB1_4:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function smooth
_smooth:                                ## @smooth
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 16]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 16]
	mov	dword ptr [rax + 4], ecx
	mov	qword ptr [rbp - 24], 2
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 24], 3999998
	jae	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 24]
	sub	rcx, 2
	mov	eax, dword ptr [rax + 4*rcx]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 24]
	sub	rdx, 1
	add	eax, dword ptr [rcx + 4*rdx]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 24]
	add	eax, dword ptr [rcx + 4*rdx]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 24]
	add	eax, dword ptr [rcx + 4*rdx + 4]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 24]
	add	eax, dword ptr [rcx + 4*rdx + 8]
	mov	ecx, 5
	xor	edx, edx
	div	ecx
	mov	edx, eax
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 24]
	mov	dword ptr [rax + 4*rcx], edx
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	add	rax, 1
	mov	qword ptr [rbp - 24], rax
	jmp	LBB2_1
LBB2_4:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 15999992]
	mov	rax, qword ptr [rbp - 16]
	mov	dword ptr [rax + 15999992], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 15999996]
	mov	rax, qword ptr [rbp - 16]
	mov	dword ptr [rax + 15999996], ecx
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function checksum
_checksum:                              ## @checksum
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	movabs	rax, -3750763034362895579
	mov	qword ptr [rbp - 16], rax
	mov	qword ptr [rbp - 24], 0
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 24], 4000000
	jae	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 24]
	mov	eax, dword ptr [rax + 4*rcx]
                                        ## kill: def $rax killed $eax
	xor	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 16], rax
	movabs	rax, 1099511628211
	imul	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 16], rax
## %bb.3:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	add	rax, 1
	mov	qword ptr [rbp - 24], rax
	jmp	LBB3_1
LBB3_4:
	mov	rax, qword ptr [rbp - 16]
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
