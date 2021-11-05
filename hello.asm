; Jayson Mourier (C) 2021

bits 64

segment .data
	msg db "Hello world!", 10, 0
	sz equ $- msg

segment .text
global _start
_start:
	call _hello

	mov rax, 60 ; exit
	mov rdi, 0
	syscall

_hello:
	push rbp
	mov rbp, rsp
	
	mov rax, 1 ; write
	mov rdi, 1 ; stdout
	mov rsi, msg
	mov rdx, sz 
	
	syscall

	leave
	ret
