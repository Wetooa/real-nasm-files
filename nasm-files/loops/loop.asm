

global _start

section .data
  msg: db "yellow", 10
  len: equ $-msg

section .text
_start:

  mov eax, 4
  mov ebx, 1
  mov ecx, msg 
  mov edx, len
  int 80h             ; bruh this is what executes the call...

  mov ebx, 1
  mov ecx, 6

loop:
  add ebx, ebx
  dec ecx
  cmp ecx, 0
  jg loop

  mov eax, 1
  int 80h

