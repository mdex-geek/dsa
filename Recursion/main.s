	.file	"main.c"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "hello \0"
.LC1:
	.ascii "%d \12\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	call	__main
	leaq	.LC0(%rip), %rcx
	call	puts
	movl	count(%rip), %edx
	cmpl	$5, %edx
	je	.L5
	.p2align 4
	.p2align 3
.L2:
	addl	$1, %edx
	leaq	.LC1(%rip), %rcx
	movl	%edx, count(%rip)
	call	__mingw_printf
	movl	count(%rip), %edx
	cmpl	$5, %edx
	jne	.L2
.L5:
	xorl	%eax, %eax
	addq	$40, %rsp
	ret
	.seh_endproc
	.text
	.p2align 4
	.globl	f
	.def	f;	.scl	2;	.type	32;	.endef
	.seh_proc	f
f:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	cmpl	$5, %ecx
	je	.L11
	movl	count(%rip), %edx
	.p2align 4
	.p2align 3
.L14:
	addl	$1, %edx
	leaq	.LC1(%rip), %rcx
	movl	%edx, count(%rip)
	call	__mingw_printf
	movl	count(%rip), %edx
	cmpl	$5, %edx
	jne	.L14
.L11:
	addq	$40, %rsp
	ret
	.seh_endproc
	.globl	count
	.bss
	.align 4
count:
	.space 4
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev8, Built by MSYS2 project) 15.2.0"
	.def	puts;	.scl	2;	.type	32;	.endef
