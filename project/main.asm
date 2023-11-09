
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

  mov ecx, input
  call getLen
  mov eax, 4
  mov ebx, 1
  int 80h

  mov eax, 1
  mov ebx, 0
  int 80h


getLen:
  xor edx, edx
  lea esi, [ecx]

  getLenLoop:
    movzx eax, byte [esi]
    inc edx
    cmp eax, 0xA
    je return 
    inc esi
    jmp getLenLoop

return:
  ret 