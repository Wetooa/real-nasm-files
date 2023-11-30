
global _start

section .data
	
	; SETTING STANDARD LINES
  headerLine: db "CIT-U", 10, "Automatic Teller Machine", 10, "Programmer: ADRIAN SAJULGA", 10
  headerLineLen: equ $-headerLine
  
  mainMenuLine: db 10, "-------------------------", 10, "Main Menu", 10, "1. Balance Inquiry", 10, "2. Deposit", 10, "3. Withdrawal", 10, "4. Exit", 10, "Enter your choice: "
  mainMenuLineLen: equ $-mainMenuLine

  balanceInquiryLine: db "Balance Inquiry", 10, "Your current balance: P"
  balanceInquiryLineLen: equ $-balanceInquiryLine
  
  depositLine: db "Deposit", 10, "Enter deposit amount: P"
  depositLineLen: equ $-depositLine
  
  withdrawalLine: db "Withdrawal", 10, "Enter withdrawal amount: P"
  withdrawalLineLen: equ $-withdrawalLine
  
  insufficientBalanceLine: db "ERROR! Insufficient Balance!", 10
  insufficientBalanceLineLen: equ $-insufficientBalanceLine
  
  invalidChoiceLine: db "ERROR! Invalid choice!", 10
  invalidChoiceLineLen: equ $-invalidChoiceLine
  
  exitLine: db "Exiting ATM", 10, "Thank you!", 10
  exitLineLen: equ $-exitLine

	; CREATING BALANCE VARIABLE
  balance: dd 0


section .bss
	; DECLARING VARIABLES FOR STRING OPERATIONS
  choice resb 16
  buffer resb 16

section .text
_start:
	
	; PROGRAM START
  mov eax, 4
  mov ebx, 1
  mov ecx, headerLine
  mov edx, headerLineLen
  int 80h
	
	; MAIN ATM LOOP
  atmLoop:

  mov eax, 4
  mov ebx, 1
  mov ecx, mainMenuLine
  mov edx, mainMenuLineLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, choice
  mov edx, 16
  int 80h

  lea esi, [choice]
  xor eax, eax
  call to_int

	
	; CHECKING CHOICE
  cmp eax, 1
  je fcBalanceInquiry

  cmp eax, 2
  je fcDeposit

  cmp eax, 3
  je fcWithdrawal

  cmp eax, 4
  je endAtm

  jmp fcInvalidChoice

  endAtm:

  ; END STATEMENT AND STOPPING PROGRAM
  mov eax, 4
  mov ebx, 1
  mov ecx, exitLine
  mov edx, exitLineLen
  int 80h

  mov eax, 1
  mov ebx, 0
  int 80h

	; BALANCE INQUIRY FUNCTION
fcBalanceInquiry:
  mov eax, 4
  mov ebx, 1
  mov ecx, balanceInquiryLine
  mov edx, balanceInquiryLineLen
  int 80h

  mov eax, dword [balance]
  lea ecx, [buffer + 15]
  call to_str
  mov eax, 4
  mov ebx, 1
  mov edx, buffer
  add edx, 16
  sub edx, ecx
  int 0x80
  jmp atmLoop


	; DEPOSIT FUNCTION
fcDeposit:
  mov eax, 4
  mov ebx, 1
  mov ecx, depositLine
  mov edx, depositLineLen
  int 80h

  mov eax, 3
  mov ebx, 0
  mov ecx, choice
  mov edx, 16
  int 80h

  lea esi, [choice]
  xor eax, eax
  call to_int
  add dword [balance], eax
  jmp atmLoop


	; WITHDRAWAL FUNCTION
fcWithdrawal:
  mov eax, 4
  mov ebx, 1
  mov ecx, withdrawalLine
  mov edx, withdrawalLineLen
  int 80h

  mov eax, 3
  mov ebx, 0
  mov ecx, choice
  mov edx, 16
  int 80h

  lea esi, [choice]
  xor eax, eax
  call to_int

  cmp dword [balance], eax
  jl fcInsufficientBalance

  sub dword [balance], eax
  jmp atmLoop

	; INVALID CHOICE FUNCTION
fcInvalidChoice:
  mov eax, 4
  mov ebx, 1
  mov ecx, invalidChoiceLine
  mov edx, invalidChoiceLineLen
  int 80h
  jmp atmLoop

	; INSUFFICIENT BALANCE FUNCTION
fcInsufficientBalance:
  mov eax, 4
  mov ebx, 1
  mov ecx, insufficientBalanceLine
  mov edx, insufficientBalanceLineLen
  int 80h
  jmp atmLoop
  

; HELPER FUNCTIONS
to_int:
  movzx edx, byte [esi]
  cmp edx, 0xA
  je return
  imul eax, 10
  sub edx, '0'
  add eax, edx
  inc esi
  jmp to_int

to_str:
  xor edx, edx
  mov ebx, 10
  div ebx
  add edx, "0"
  mov [ecx], dl
  dec ecx
  test eax, eax
  jnz to_str
  inc ecx
  jmp return

return:
  ret
