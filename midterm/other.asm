
global _start

section .data

  ; HARDCODED VALUES
  header: db "Cebu Institute of Technology - University", 10, "CANTEEN INVENTORY SYSTEM", 10
  headerLen: equ $-header

  lblProgrammer: db "Programmer: "
  lblProgrammerLen: equ $-lblProgrammer
  programmer: db "Adrian Sajulga", 10
  programmerLen: equ $-programmer

  lblComputerNumber: db "Computer Number: "
  lblComputerNumberLen: equ $-lblComputerNumber
  computerNumber: db "30", 10
  computerNumberLen: equ $-computerNumber

  lblDateCreated: db "Date Created: "
  lblDateCreatedLen: equ $-lblDateCreated
  dateCreated: db "10/19/2023", 10
  dateCreatedLen: equ $-dateCreated

  openingMessage: db " ", 10, "Please enter the following data:", 10
  openingMessageLen: equ $-openingMessage

  displayMessage: db "----------------------------", 10, "          SUMMARY", 10
  displayMessageLen: equ $-displayMessage

  endingMessage: db " ", 10, " ", 10, "Successfully added: "
  endingMessageLen: equ $-endingMessage

  ; INITIALIZE LABELS
  lblProductNumber: db "Product Number: "
  lblProductNumberLen: equ $-lblProductNumber
  lblProductName: db 10, "Product Name: "
  lblProductNameLen: equ $-lblProductName
  lblDescription: db 10, "Description: "
  lblDescriptionLen: equ $-lblDescription
  lblManufacturer: db 10, "Manufacturer: "
  lblManufacturerLen: equ $-lblManufacturer
  lblUnitPrice: db 10, "Unit Price: "
  lblUnitPriceLen: equ $-lblUnitPrice
  lblQuantity: db 10, "Quantity: "
  lblQuantityLen: equ $-lblQuantity

  space: db 9
  tabLen: equ $-space


section .bss
  ; UNITIALIZE VARIABLES
  prdProductNumber: resb 32
  prdProductName: resb 32
  prdDescription: resb 32
  prdManufacturer: resb 32
  prdUnitPrice: resb 32
  prdQuantity: resb 32


section .text
_start:

  ; DISPLAY HEADER
  mov eax, 4
  mov ebx, 1
  mov ecx, header
  mov edx, headerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProgrammer
  mov edx, lblProgrammerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, programmer
  mov edx, programmerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblComputerNumber
  mov edx, lblComputerNumberLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, computerNumber
  mov edx, computerNumberLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDateCreated
  mov edx, lblDateCreatedLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, dateCreated
  mov edx, dateCreatedLen
  int 80h


  ; GET PRODUCT
  mov eax, 4
  mov ebx, 1
  mov ecx, openingMessage
  mov edx, openingMessageLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductNumber
  mov edx, lblProductNumberLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdProductNumber
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdDescription
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdManufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdUnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdQuantity
  mov edx, 32
  int 80h

  ; DISPLAY PRODUCT
  mov eax, 4
  mov ebx, 1
  mov ecx, displayMessage
  mov edx, displayMessageLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductNumber
  mov edx, lblProductNumberLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, space
  mov edx, tabLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdProductNumber
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, space
  mov edx, tabLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, space
  mov edx, tabLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, space
  mov edx, tabLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, space
  mov edx, tabLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdDescription
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, space
  mov edx, tabLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, space
  mov edx, tabLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdManufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, space
  mov edx, tabLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, space
  mov edx, tabLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdUnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, space
  mov edx, tabLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, space
  mov edx, tabLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, space
  mov edx, tabLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdQuantity
  mov edx, 32
  int 80h


  ; SUMMARY
  mov eax, 4
  mov ebx, 1
  mov ecx, endingMessage
  mov edx, endingMessageLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdDescription
  mov edx, 32
  int 80h

  mov eax, 1
  mov ebx, 0
  int 80h