global main
extern printf

section .data
  msg: db "Testing %d....", 10, 0

section .text
main:

  push ebp 
  mov ebp, esp

  push 123
  push msg
  call printf

  mov eax, 0
  mov esp, ebp
  pop ebp
  ret
