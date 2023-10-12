global _start

section .data
  msg1: db "Enter a number: "
  len1: equ $-msg1
  n: dd 12345

section .bss
  num1 resb 16
  num2 resb 16
  sum resb 16

section .text
_start:

  ; take num1
  mov eax, 4
  mov ebx, 1
  mov ecx, msg1
  mov edx, len1
  int 80h

  mov eax, 3
  mov ebx, 0
  lea ecx, [num1]
  mov edx, 16
  int 80h

  ; convert num1 to number
  xor eax, eax
  lea esi, [num1]

convert:
  movzx edx, byte [esi]
  cmp dl, 10
  je human
  imul eax, 10
  sub edx, '0'
  add eax, edx
  inc esi
  jmp convert

human:
  lea [num1], eax

  ; take num2
  mov eax, 4
  mov ebx, 1
  mov ecx, msg1
  mov edx, len1
  int 80h

  mov eax, 3
  mov ebx, 0
  lea ecx, [num2]
  mov edx, 16
  int 80h

  ; convert num2 to number
  xor eax, eax
  lea esi, [num1]

convert2:
  movzx edx, byte [esi]
  cmp dl, 10
  je human2
  imul eax, 10
  sub edx, '0'
  add eax, edx
  inc esi
  jmp convert2

human2:

  add eax, rax

  ; part print
  mov ebp, esp
  mov ecx, eax

  loop2:
    xor edx, edx
    mov eax, ecx
    mov ebx, 10 
    div ebx
    mov ecx, eax

    add edx, '0'
    push edx

    cmp ecx, 0
    jne loop2


  mov eax, 4
  mov ebx, 1
  mov ecx, esp
  mov edx, ebp
  sub edx, esp
  dec edx
  int 80h

  mov eax, 1
  mov ebx, 0
  int 80h