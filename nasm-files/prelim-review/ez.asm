global _start

section .data
  msg: db "Programmer: ADRIAN SAJULGA", 10
  msgLen: equ $-msg

  input1: db "Enter first number: "
  input1Len: equ $-input1

  input2: db "Enter second number: "
  input2Len: equ $-input2

  finalOutput: db "Sum: "
  finalOutputLen: equ $-finalOutput

  res: dd 0
  numLen: dd 0

section .bss
  num1: resb 16
  num2: resb 16
  strRes: resb 16


section .text
_start:

  mov eax, 4
  mov ebx, 1
  mov ecx, msg
  mov edx, msgLen 
  int 80h

  mov eax, 4
  mov ebx, 1
  mov ecx, input1
  mov edx, input1Len 
  int 80h

  mov eax, 3
  mov ebx, 0
  mov ecx, num1
  mov edx, 16
  int 80h

  mov eax, 4
  mov ebx, 1
  mov ecx, input2
  mov edx, input2Len 
  int 80h

  mov eax, 3
  mov ebx, 0
  mov ecx, num2
  mov edx, 16
  int 80h

  xor eax, eax
  lea esi, [num1]
  call convert 
  add [res], eax

  xor eax, eax
  lea esi, [num2]
  call convert 
  add [res], eax

  mov eax, 4
  mov ebx, 1
  mov ecx, finalOutput
  mov edx, finalOutputLen
  int 80h

  mov eax, [res]
  mov ebx, 10
  lea ecx, [strRes + 15]

  loop: 
    xor edx, edx
    div ebx
    dec ecx
    add edx, '0'
    mov [ecx], dl
    inc dword [numLen]

    test eax, eax
    jnz loop

  mov eax, 4
  mov ebx, 1
  int 80h

  mov eax, 1
  mov ebx, 0
  int 80h

convert:  
  movzx edx, byte [esi]
  inc esi
  cmp edx, 10
  je endConvert

  sub edx, '0'
  imul eax, 10
  add eax, edx
  jmp convert

  endConvert:
    ret

  
  