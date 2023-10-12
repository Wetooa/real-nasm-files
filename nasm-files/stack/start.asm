global _start

section .data
  

section .text
_start:

  push 1
  push 2
  push 3
  push 4

  pop eax         ; moves the value of esp (stack pointer) to eax register, and adds 4 to esp
  
  mov eax, 1
  mov ebx, 0
  int 80h