
global _start

section .data
  headerLine: db "Enter 12-Hour Format Time: "
  headerLineLen: equ $-headerLine

  curr: dd 0

section .bss
  input: resb 16
  buffer: resd 16

section .text
_start:
  
  mov eax, 4
  mov ebx, 1
  mov ecx, headerLine
  mov edx, headerLineLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, input
  mov edx, 16
  int 80h

  lea esi, [input]
  xor eax, eax
  call to_int

  lea ecx, [buffer + 15]
  call to_str
  mov eax, 4
  mov ebx, 1
  mov edx, buffer
  add edx, 16
  sub edx, ecx
  int 0x80

  mov eax, 1
  mov ebx, 0
  int 80h

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
  add edx, "0"
  mov [ecx], dl
  dec ecx
  test eax, eax
  jnz to_str
  inc ecx
  jmp return

return:
  ret