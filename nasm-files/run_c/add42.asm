

global add42

section .data
  

section .text
add42:

  push ebp 
  mov ebp, esp
  mov eax, [ebp + 8]

  add eax, 42

  mov esp, ebp 
  pop ebp
  ret