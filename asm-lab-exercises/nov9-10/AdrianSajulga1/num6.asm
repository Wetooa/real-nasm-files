global _start

section .data
  curr: dd 1

  spaceLine: db "   "
  spaceLineLen: equ $-spaceLine

section .bss
  buffer: resd 16
  

section .text
_start:

  loop:
    mov eax, dword [curr]
    cmp eax, 10
    jg endLoop

    mov ebx, eax
    inc ebx
    mov dword [curr], ebx

    lea ecx, [buffer + 15]
    call convert_to_str
    mov eax, 4
    mov ebx, 1
    mov edx, 3
    int 80h
    mov eax, 4
    mov ebx, 1
    mov ecx, spaceLine
    mov edx, spaceLineLen
    int 80h
    jmp loop
  
  endLoop:
  
  mov eax, 1
  mov ebx, 0
  int 80h


convert_to_int:
  movzx edx, byte [esi]
  cmp edx, 0xA
  je return 

  imul eax, 10
  sub edx, '0'
  add eax, edx
  inc esi
  jmp convert_to_int

convert_to_str:
  xor edx, edx 
  mov ebx, 10
  div ebx
  add edx, '0'
  mov [ecx], dl
  dec ecx

  test eax, eax
  jnz convert_to_str
  jmp return

return:
  ret
