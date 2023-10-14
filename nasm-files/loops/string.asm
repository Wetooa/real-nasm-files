

global _start

section .data
  msg: db "yellow", 10
  len: equ $-msg

section .text
_start:

  mov [msg], byte 'C'
  mov [msg + 5], byte '!'

  mov eax, 4
  mov ebx, 1
  mov ecx, msg 
  mov edx, len
  int 80h             ; bruh this is what executes the call...
  
  mov eax, 1
  mov ebx, 0
  int 80h