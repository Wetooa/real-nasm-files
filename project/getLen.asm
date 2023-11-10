
global _start

section .data

section .bss
  input resb 16

section .text
_start:
  
  mov eax, 3
  mov ebx, 0
  mov ecx, input
  mov edx, 16
  int 80h

  lea esi, [input]
  call getLen
  mov eax, 4
  mov ebx, 1
  mov ecx, input
  int 80h

  mov eax, 1
  mov ebx, 0
  int 80h


getLen:
  xor edx, edx

  getLenLoop:
    movzx eax, byte [esi]
    cmp eax, 0xA
    je return 

    inc esi
    inc edx

    jmp getLenLoop

return:
  ret 