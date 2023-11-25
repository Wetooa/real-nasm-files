global _start

section .data
	headerLine: db "Input a number: "
	headerLineLen: equ $-headerLine

	newLine: db 0xA
	newLineLen: equ $-newLine
	
	fizzLine: db "Fizz"
	fizzLineLen: equ $-fizzLine

	buzzLine: db "Buzz"
	buzzLineLen: equ $-buzzLine
	
	counter: dd 1

section .bss
	buffer: resb 16
	input: resb 16
	n: resd 2
	tmp: resd 2
	divis: resd 2


section .text
_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, headerLine
	mov edx, headerLineLen
	int 0x80
	mov eax, 3
	mov ebx, 0
	mov ecx, input
	mov edx, 16
	int 0x80
	
	lea esi, [input]
	xor eax, eax
	call to_int
	mov dword [n], eax

	loop:
		mov eax, dword [counter]
		mov ebx, eax
		inc ebx
		mov dword [counter], ebx

		cmp eax, dword [n]
		jg endLoop

		mov ebx, 0
		mov dword [divis], ebx

		mov dword [tmp], eax
		mov ebx, 3
		xor edx, edx
		div ebx
		cmp edx, 0
		jne notDiv3
		mov eax, 1
		or dword [divis], eax
		mov eax, 4
		mov ebx, 1
		mov ecx, fizzLine
		mov edx, fizzLineLen
		int 80h
		notDiv3:

		mov eax, dword [tmp]
		mov ebx, 5
		xor edx, edx
		div ebx
		cmp edx, 0
		jne notDiv5
		mov eax, 1
		or dword [divis], eax
		mov eax, 4
		mov ebx, 1
		mov ecx, buzzLine
		mov edx, buzzLineLen
		int 80h
		notDiv5:

		mov eax, 1
		cmp eax, dword [divis]
		je isFizzy
		mov eax, dword [tmp]
		lea ecx, [buffer + 15]
		call to_str
		mov eax, 4
		mov ebx, 1
		mov edx, buffer
		add edx, 16
		sub edx, ecx
		int 0x80
		isFizzy:

		mov eax, 4
		mov ebx, 1
		mov ecx, newLine
		mov edx, newLineLen
		int 0x80

		jmp loop

	endLoop:
	
	mov eax, 1
	mov ebx, edx
	int 0x80

to_int:
	movzx edx, byte [esi]
	cmp edx, 0xA
	je return
	
	imul eax, 10
	sub edx, '0'
	add eax, edx
	inc esi
	jmp to_int

to_str:
	xor edx, edx
	mov ebx, 10
	div ebx
	add edx, '0'
	mov [ecx], dl
	dec ecx

	test eax, eax
	jnz to_str
	inc ecx
	jmp return

return:
	ret
