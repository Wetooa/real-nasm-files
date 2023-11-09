global _start

section .data
  n: dd 123456

section .text
_start:
  mov ebp, esp  ; So we can tell how many were pushed

  mov ecx, [n]

.loop:
  mov  edx, 0    ; Zeroing out edx for div
  mov  eax, ecx  ; Num to be divided
  mov  ebx, 10   ; Divide by 10
  div  ebx
  mov  ecx, eax  ; Quotient
  add  edx, '0'
  push edx       ; Remainder
  cmp  ecx, 0
  jne  .loop

  mov eax, 4  ; Write system call
  mov ebx, 1  ; STDOUT
  mov ecx, esp  ; The string on the stack
  mov edx, ebp
  sub edx, esp  ; Calculate how many were pushed
  dec edx
  int 0x80

  mov eax, 1
  mov ebx, 0
  int 0x80