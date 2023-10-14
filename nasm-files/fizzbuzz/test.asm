global _start

section .data
  msg: dd "Enter number: "
  msgLen: equ $-msg

  n: dd 0
  index: dd 0

section .bss
  input: resd 16
  buffer: resd 16

section .text
_start:
  
  mov eax, 4
  mov ebx, 1
  mov ecx, msg
  mov edx, msgLen
  int 80h

  mov eax, 3
  mov ebx, 0
  mov ecx, input
  mov edx, 16
  int 80h

  lea esi, [input]
  xor eax, eax

convert_to_int:
  movzx edx, byte [esi]
  inc esi
  cmp edx, 0xA
  je finish_convert_to_int

  imul eax, 10
  sub edx, '0'
  add eax, edx
  jmp convert_to_int

finish_convert_to_int:
  mov dword [n], eax
  lea ecx, [buffer + 15]
  mov byte [ecx], 10
  mov ecx, 1

loop:
  mov dword [index], ecx
  mov eax, ecx

  mov ebx, 10
  lea ecx, [buffer + 14]

  convert_to_str:
    xor edx, edx
    div ebx
    add edx, '0'
    mov [ecx], dl
    dec ecx
    
    test eax, eax
    jnz convert_to_str

  mov eax, 4
  mov ebx, 1
  mov ecx, buffer
  mov edx, 16
  int 80h

  mov ecx, dword [index]
  inc ecx
  cmp ecx, dword [n]
  jle loop

end_program:
  mov eax, 1
  mov ebx, 0
  int 80h