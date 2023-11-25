

global _start

section .data
  
  menu: db 10, "-------", 10, "Main Menu", 10, "1. Addition", 10, "2. Subtraction", 10, "3. Multiplication", 10, "4. Division", 10, "5. Exit", 10, "Enter choice:"
  menuLen: equ $-menu

  headerLine: db " ", 10, "Input 2 numbers"
  headerLineLen: equ $-headerLine

  input1Line: db " ", 10, "1st number: "
  input1LineLen: equ $-input1Line
  input2Line: db "2nd number: "
  input2LineLen: equ $-input2Line

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

  additionResLine: db "Sum is "
  additionResLineLen: equ $-additionResLine
  subtractionResLine: db "Difference is "
  subtractionResLineLen: equ $-subtractionResLine
  multiplicationResLine: db "Product is "
  multiplicationResLineLen: equ $-multiplicationResLine
  divisionResLine: db "Quotient is "
  divisionResLineLen: equ $-divisionResLine

  newLine: db " ", 10
  newLineLen: equ $-newLine


section .bss
  input1 resd 16
  input2 resd 16
  num1 resd 2
  num2 resd 2
  first resd 2
  second resd 2
  choice resb 1
  buffer resb 16

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

  call grabTwoNums
  mov eax, 4
  mov ebx, 1
  mov ecx, additionResLine
  mov edx, additionResLineLen
  int 80h
  mov eax, dword [num1]
  mov ebx, dword [num2]
  add eax, ebx
	lea ecx, [buffer + 15]
	call convert_to_str
	inc ecx
	mov eax, 4
	mov ebx, 1
	mov edx, 16
	int 80h

  jmp again

runSubtraction:
  mov eax, 4
  mov ebx, 1
  mov ecx, subtractionLine
  mov edx, subtractionLineLen
  int 80h

  call grabTwoNums
  mov eax, 4
  mov ebx, 1
  mov ecx, subtractionResLine
  mov edx, subtractionResLineLen
  int 80h
  mov eax, dword [num1]
  mov ebx, dword [num2]
  sub eax, ebx
  lea ecx, [buffer + 15]
	call convert_to_str
	inc ecx
	mov eax, 4
	mov ebx, 1
	mov edx, 16
	int 80h

  jmp again

runMultiplication:
  mov eax, 4
  mov ebx, 1
  mov ecx, multiplicationLine
  mov edx, multiplicationLineLen
  int 80h

  call grabTwoNums
  mov eax, 4
  mov ebx, 1
  mov ecx, multiplicationResLine
  mov edx, multiplicationResLineLen
  int 80h
  mov eax, dword [num1]
  mov ebx, dword [num2]
  imul eax, ebx
	lea ecx, [buffer + 15]
	call convert_to_str
	inc ecx
	mov eax, 4
	mov ebx, 1
	mov edx, 16
	int 80h

  jmp again

runDivision:
  mov eax, 4
  mov ebx, 1
  mov ecx, divisionLine
  mov edx, divisionLineLen
  int 80h

  call grabTwoNums
  mov eax, 4
  mov ebx, 1
  mov ecx, divisionResLine
  mov edx, divisionResLineLen
  int 80h
  mov eax, dword [num1]
  mov ebx, dword [num2]
  xor edx, edx
  div ebx
	lea ecx, [buffer + 15]
	call convert_to_str
	inc ecx
	mov eax, 4
	mov ebx, 1
	mov edx, 16
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

grabTwoNums:
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

  xor eax, eax
  lea esi, [input1]
  call convert_to_int
  mov dword [num1], eax

  xor eax, eax
  lea esi, [input2]
  call convert_to_int
  mov dword [num2], eax
  jmp return

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
