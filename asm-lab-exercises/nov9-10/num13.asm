



global _start

section .data

  headerLine: db "----", 10, "Input 3 numbers"
  headerLineLen: equ $-headerLine
  
  choiceLine: db "", 10, "Again? Y/N: "
  choiceLineLen: equ $-choiceLine

  thankYou: db "Thank you."
  thankYouLen: equ $-thankYou

  input1Line: db 10, "1st number: "
  input1LineLen: equ $-input1Line
  input2Line: db 10, "2nd number: "
  input2LineLen: equ $-input2Line
  input3Line: db 10, "3rd number: "
  input3LineLen: equ $-input3Line

  firstLine: db 10, "The first is: "
  firstLineLen: equ $-firstLine
  secondLine: db 10, "The second is: "
  secondLineLen: equ $-secondLine
  thirdLine: db 10, "The third is: "
  thirdLineLen: equ $-thirdLine


section .bss
  choice: resb 2
  input1 resd 16
  input2 resd 16
  input3 resd 16
  num1 resd 2
  num2 resd 2
  num3 resd 2
  first resd 2
  second resd 2
  third resd 2
  buffer resb 16

section .text
_start:

  again:
  mov eax, 4
  mov ebx, 1
  mov ecx, headerLine
  mov edx, headerLineLen
  int 80h

  mov eax, 4
  mov ebx, 1
  mov ecx, input1Line
  mov edx, input1LineLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, input1
  mov edx, 16
  int 80h

  mov eax, 4
  mov ebx, 1
  mov ecx, input2Line
  mov edx, input2LineLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, input2
  mov edx, 16
  int 80h

  mov eax, 4
  mov ebx, 1
  mov ecx, input3Line
  mov edx, input3LineLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, input3
  mov edx, 16
  int 80h
  
  xor eax, eax
  lea esi, [input1]
  call convert_to_int
  mov dword [num1], eax

  xor eax, eax
  lea esi, [input2]
  call convert_to_int
  mov dword [num2], eax

  xor eax, eax
  lea esi, [input3]
  call convert_to_int
  mov dword [num3], eax

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


  mov eax, 4
  mov ebx, 1
  mov ecx, choiceLine
  mov edx, choiceLineLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, choice
  mov edx, 2
  int 80h

  lea esi, [choice]
  movzx edx, byte [esi]
  cmp edx, 0x59
  je again
  
  mov eax, 4
  mov ebx, 1
  mov ecx, thankYou
  mov edx, thankYouLen
  int 80h
  mov eax, 1
  mov ebx, 0
  int 80h


convert_to_int:
  movzx edx, byte [esi]
  cmp edx, 0xA
  je return 

  imul eax, 10
  sub edx, '0'
  add eax, edx
  inc esi
  jmp convert_to_int

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