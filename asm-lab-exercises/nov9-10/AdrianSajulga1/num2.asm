

global _start

section .data
  num1: dd 10
  num2: dd 26
  num3: dd 55

  firstLine: db " ", 10, "The first is: "
  firstLineLen: equ $-firstLine

  secondLine: db " ", 10, "The second is: "
  secondLineLen: equ $-secondLine

  thirdLine: db " ", 10, "The third is: "
  thirdLineLen: equ $-thirdLine


section .bss
  first resd 2
  second resd 2
  third resd 2
  buffer resb 16

section .text
_start:

  mov eax, dword [num1]
  mov ebx, dword [num2]
  mov ecx, dword [num3]

  cmp eax, ebx
  jle point1
  mov edx, eax
  mov eax, ebx
  mov ebx, edx
  point1:
  cmp eax, ecx
  jle point2
  mov edx, eax
  mov eax, ecx
  mov ecx, edx
  point2:
  cmp ebx, ecx
  jle point3
  mov edx, ebx
  mov ebx, ecx
  mov ecx, edx
  point3:

  mov dword [first], eax
  mov dword [second], ebx
  mov dword [third], ecx

  mov eax, 4
  mov ebx, 1
  mov ecx, firstLine
  mov edx, firstLineLen
  int 80h
  mov eax, dword [first]
  lea ecx, [buffer + 15]
  call convert_to_str
  mov eax, 4
  mov ebx, 1
  mov edx, 16
  int 80h

  mov eax, 4
  mov ebx, 1
  mov ecx, secondLine
  mov edx, secondLineLen
  int 80h
  mov eax, dword [second]
  lea ecx, [buffer + 15]
  call convert_to_str
  mov eax, 4
  mov ebx, 1
  mov edx, 16
  int 80h

  mov eax, 4
  mov ebx, 1
  mov ecx, thirdLine
  mov edx, thirdLineLen
  int 80h
  mov eax, dword [third]
  lea ecx, [buffer + 15]
  call convert_to_str
  mov eax, 4
  mov ebx, 1
  mov edx, 16
  int 80h

  mov eax, 1
    mov ebx, 0
    int 80h

convert_to_str:
  xor edx, edx 
  mov ebx, 10
  div ebx
  add edx, '0'
  mov [ecx], dl
  dec ecx

  test eax, eax
  jnz convert_to_str
  jmp return

return:
  ret