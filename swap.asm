bits 64;

segment .data
a db 10
b db 5

segment .bss
segment .text
global _start
_start:
	mov rbx, a
	mov rcx, b
	
	; swap with stack
	push rbx
	mov rbx, rcx
	pop rcx

	mov rax, 60
	mov rdi, 0
	syscall
