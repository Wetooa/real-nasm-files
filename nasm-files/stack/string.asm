global _start

; section .data
  

section .text
_start:

  sub esp, 4
  mov [esp], byte 'H'
  mov [esp+1], byte 'e'
  mov [esp+2], byte 'y'
  mov [esp+3], byte '!'

  mov eax, 4
  mov ebx, 1
  mov ecx, esp
  mov edx, 4 
  int 80h
  
  mov eax, 1
  mov ebx, 0
  int 80h