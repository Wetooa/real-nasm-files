

global _start

section .data
  

section .text
_start:

  call func

  mov eax, 1
  mov ebx, 0
  int 80h


func:
  

  ret