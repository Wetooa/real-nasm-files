

section .data
	msg: db "fuck", 10
	msgLen: equ $-msg

section .text
	global _start

_start:
	mov eax,4
	mov ebx,1
	mov ecx,msg
	mov edx,msgLen
	
	int 80h
	mov eax,1
	mov ebx,0
	int 80h

