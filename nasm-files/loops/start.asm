


global _start


section .data
  msg: db "yellow"
  len: equ $-msg

section .text
_start:

  mov eax, 4
  mov ebx, 1

  cmp eax, 4
  je skip

  mov ecx, msg
  mov edx, len

skip:

  ; system call exit
  int 80h
  mov eax, 1
  mov ebx, 0
  int 80h
