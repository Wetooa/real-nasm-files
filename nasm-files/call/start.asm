

global _start

section .data
  

section .text
_start:
  call func
  mov eax, 1
  int 80h


func:
  mov ebx, 42

  ret
      ; similar to ret
      ; pop eax
      ; pop moves the top of the stack (the esp) to eax
      ; jmp eax (then we jump to that previous location, which was the instruction after the function call)
  