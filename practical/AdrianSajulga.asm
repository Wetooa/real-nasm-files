
global _start

section .data

  
  headerLine: db "CIT-U", 10, "Automated Teller Machine", 10, "Programmer: ADRIAN SAJULGA", 10
  headerLineLen: equ $-headerLine
  
  menu: db 10, "-------", 10, "Main Menu", 10, "1. Balance Inquiry", 10, "2. Withdrawal", 10, "3. Deposit", 10, "4. Bill Payment", 10, "5. Exit", 10, "Please enter choice: "
  menuLen: equ $-menu

  
  balanceInquiryLine: db "BALANCE INQUIRY", 10,
  balanceInquiryLineLen: equ $-balanceInquiryLine
  
  withdrawalLine: db "WITHDRAWAL", 10
  withdrawalLineLen: equ $-withdrawalLine
  
  depositLine: db "DEPOSIT", 10
  depositLineLen: equ $-depositLine
  
  billsPaymentLine: db "BILLS PAYMENT"
  billsPaymentLineLen: equ $-billsPaymentLine

  exitLine: db 10, "---------", 10, "Exiting ATM. ", 10, "Thank you for using CIT-U Bank.", 10, "See you next time!", 10
  exitLineLen: equ $-exitLine

  invalidChoiceLine: db "Sorry, wrong input!", 10
  invalidChoiceLineLen: equ $-invalidChoiceLine

section .bss
  choice: resd 2
  input: resb 16

section .text

_start:

  mov eax, 4
  mov ebx, 1
  mov ecx, headerLine
  mov edx, headerLineLen
  int 80h

  again:

  mov eax, 4
  mov ebx, 1
  mov ecx, menu
  mov edx, menuLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, input
  mov edx, 16
  int 80h

  lea esi, [input]
  xor eax, eax
  call to_int
  mov edx, eax

  cmp edx, 1
  je runBalanceInquiry

  cmp edx, 2
  je runWithdrawal

  cmp edx, 3
  je runDeposit

  cmp edx, 4
  je runBillsPayment

  cmp edx, 5
  je runExit

  jmp runInvalid

  endf:
  mov eax, 1
  mov ebx, 0
  int 80h

runBalanceInquiry:
  mov eax, 4
  mov ebx, 1
  mov ecx, balanceInquiryLine
  mov edx, balanceInquiryLineLen
  int 80h
  jmp again

runWithdrawal:
  mov eax, 4
  mov ebx, 1
  mov ecx, withdrawalLine
  mov edx, withdrawalLineLen
  int 80h
  jmp again

runDeposit:
  mov eax, 4
  mov ebx, 1
  mov ecx, depositLine
  mov edx, depositLineLen
  int 80h
  jmp again

runBillsPayment:
  mov eax, 4
  mov ebx, 1
  mov ecx, billsPaymentLine
  mov edx, billsPaymentLineLen
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

to_int:
  movzx edx, byte [esi]
  cmp edx, 0xA
  je return 

  imul eax, 10
  sub edx, '0'
  add eax, edx
  inc esi
  jmp to_int

return:
  ret
