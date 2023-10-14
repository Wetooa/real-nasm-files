global main

section .data
  

section .text
main:

  push 21
  call times2

  mov ebx, eax
  mov eax, 1
  int 80h

times2:
  push ebp              ; best prac
  mov ebp, esp
  mov eax, [ebp + 8]    ; so good, so if we were to imagine a stack, we initially pushed a value into it (in this case 21), then push the return address of the intruction after call times2, then p push ebp into the stack, this means that the value we pushed (21) would be at where ebp + 8 is, making it sort of like the first parameter of the function

  add eax, eax
  mov esp, ebp
  pop ebp               ; getting the pushed value of ebp remember
  ret                   ; going back to the prev call (mov the return address to eax then jump)
