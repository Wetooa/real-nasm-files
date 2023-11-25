
global _start

section .data
  
  menu: db 10, "-------", 10, "Main Menu", 10, "1. Addition", 10, "2. Subtraction", 10, "3. Multiplication", 10, "4. Division", 10, "5. Exit", 10, "Enter choice:"
  menuLen: equ $-menu

  additionLine: db "You chose Addition."
  additionLineLen: equ $-additionLine
  subtractionLine: db "You chose Subtraction."
  subtractionLineLen: equ $-subtractionLine
  multiplicationLine: db "You chose Multiplication."
  multiplicationLineLen: equ $-multiplicationLine
  divisionLine: db "You chose Division."
  divisionLineLen: equ $-divisionLine
  exitLine: db "Exiting program. Thank you."
  exitLineLen: equ $-exitLine
  invalidChoiceLine: db "Invalid choice!"
  invalidChoiceLineLen: equ $-invalidChoiceLine

section .bss
  choice resb 1

section .text

_start:

  again:

  mov eax, 4
  mov ebx, 1
  mov ecx, menu
  mov edx, menuLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, choice
  mov edx, 2
  int 80h

  lea esi, [choice]
  movzx edx, byte [esi]

  cmp edx, 0x31 
  je runAddition

  cmp edx, 0x32
  je runSubtraction

  cmp edx, 0x33 
  je runMultiplication

  cmp edx, 0x34 
  je runDivision

  cmp edx, 0x35 
  je runExit

  jmp runInvalid

  endf:
  mov eax, 1
  mov ebx, 0
  int 80h

runAddition:
  mov eax, 4
  mov ebx, 1
  mov ecx, additionLine
  mov edx, additionLineLen
  int 80h
  jmp again

runSubtraction:
  mov eax, 4
  mov ebx, 1
  mov ecx, subtractionLine
  mov edx, subtractionLineLen
  int 80h
  jmp again

runMultiplication:
  mov eax, 4
  mov ebx, 1
  mov ecx, multiplicationLine
  mov edx, multiplicationLineLen
  int 80h
  jmp again

runDivision:
  mov eax, 4
  mov ebx, 1
  mov ecx, divisionLine
  mov edx, divisionLineLen
  int 80h
  jmp again

runExit:
  mov eax, 4
  mov ebx, 1
  mov ecx, exitLine
  mov edx, exitLineLen
  int 80h
  jmp endf

runInvalid:
  mov eax, 4
  mov ebx, 1
  mov ecx, invalidChoiceLine
  mov edx, invalidChoiceLineLen
  int 80h
  jmp again


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
