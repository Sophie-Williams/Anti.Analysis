	.file	"t.c"
	.intel_syntax noprefix
	.section	.rodata
.LC0:
	.string	"Hello World!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	edi, OFFSET FLAT:.LC0
	jmp	fakeret
	mov	eax, 0
	pop	rbp
	xor eax, eax
	mov	eax, 0
	pop	rbp
	xor eax, eax
	mov	eax, 0
	pop	rbp
	pop	rbp
	xor eax, eax
	mov	eax, 0
	call	puts
	xor eax, eax
	ret
fakeret:
	jnz	main
	mov	eax, 0
	mov	eax, [fs:0x30]
	xor eax, eax
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.2) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
