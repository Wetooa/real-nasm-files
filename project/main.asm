
global _start

section .data

section .bss
  input resb 32

section .text
_start:
  
  mov eax, 3
  mov ebx, 0
  mov ecx, input
  mov edx, 32
  int 80h

  call getLen

  add eax, 1
  mov edx, eax
  mov eax, 4
  mov ebx, 1
  mov ecx, input
  int 80h

  mov eax, 1
  mov ebx, 0
  int 80h


getLen:
  xor eax, eax
  lea esi, [input]
  getLenLoop:
    movzx edx, byte [esi]
    cmp edx, 0xA
    je return 
    inc esi
    inc eax
    jmp getLenLoop

return:
  ret 