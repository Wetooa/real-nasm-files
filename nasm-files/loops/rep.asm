global _start

section .data
  msg: 'repeated data', 10
  len: equ $-rep
  counter: dd 10

section .text
_start:

  mov eax, 4
  mov ebx, 1

loop:
  mov ecx, msg
  mov edx, len

  dec [counter]
  cmp [counter], 0
  jg loop

  mov eax, 1
  mov ebx, 0
  int 80h