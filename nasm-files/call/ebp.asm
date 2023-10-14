
global _start

section .data
  msg: dd 'hello'
  len: equ $-msg
  
section .text
_start:
  call func
  
  ; print thingy
  mov eax, 4
  mov ebx, 1
  mov ecx, msg
  mov edx, len
  int 80h

  mov eax, 1
  mov ebx, 0
  int 80h


func:
  push ebp                      ; best practice - since we might be calling this func from another func, we store the prev value of ebp into the stack

  mov ebp, esp                  ; we store the value of esp (the top of the stack) into ebp
  sub esp, 2                    ; and move its pointer to the next memory

  mov [esp], byte 'H'
  mov [esp + 1], byte 'i'

  mov eax, 4
  mov ebx, 1
  mov ecx, esp
  mov edx, 2
  int 80h

  mov esp, ebp

  pop ebp                       ; and pop it right here later on

  ret                           ; remember this runs pop eax and jump eax
  