<<<<<<< HEAD

section .data
  ; HEADER
  header: db "Cebu Institute of Technology - University", 10, "College of Computer Studies", 10, "College Library", 10, "First Semester Academic Year 2023-2024", 10, 10, "ENTER GROCERY STOCKS"
  headerLen: equ $-header

  ; INITIALIZE LABELS
  lblId: db "Product ID No: "
  lblIdLen: equ $-lblId
  lblProductName: db "Product Name: "
  lblProductNameLen: equ $-lblProductName
  lblManufacturer: db "Product Manufacturer: "
  lblManufacturerLen: equ $-lblManufacturer
  lblDescription: db "Description: "
  lblDescriptionLen: equ $-lblDescription
  lblUnitPrice: db "Unit Price: "
  lblUnitPriceLen: equ $-lblUnitPrice
  lblQuantity: db "Quantity: "
  lblQuantityLen: equ $-lblQuantity

  ; INITIALIZE PRODUCT 1
  prdNo1Lbl: db " ", 10, "", 10, "Product No. 1", 10
  prdNo1LblLen: equ $-prdNo1Lbl

  ; INITIALIZE PRODUCT 2
  prdNo2Lbl: db " ", 10, "", 10, "Product No. 2", 10
  prdNo2LblLen: equ $-prdNo2Lbl

  ; INITIALIZE PRODUCT 3
  prdNo3Lbl: db " ", 10, "", 10, "Product No. 3", 10
  prdNo3LblLen: equ $-prdNo3Lbl

  ; INITIALIZE PRODUCT 4
  prdNo4Lbl: db " ", 10, "", 10, "Product No. 4", 10
  prdNo4LblLen: equ $-prdNo4Lbl

  ; INITIALIZE PRODUCT 5
  prdNo5Lbl: db " ", 10, "", 10, "Product No. 5", 10
  prdNo5LblLen: equ $-prdNo5Lbl

  ; INITIALIZE PRODUCT 6
  prdNo6Lbl: db " ", 10, "", 10, "Product No. 6", 10
  prdNo6LblLen: equ $-prdNo6Lbl

  ; INITIALIZE PRODUCT 7
  prdNo7Lbl: db " ", 10, "", 10, "Product No. 7", 10
  prdNo7LblLen: equ $-prdNo7Lbl
 
  ; INITIALIZE PRODUCT 8
  prdNo8Lbl: db " ", 10, "", 10, "Product No. 8", 10
  prdNo8LblLen: equ $-prdNo8Lbl

  ; INITIALIZE PRODUCT 9
  prdNo9Lbl: db " ", 10, "", 10, "Product No. 9", 10
  prdNo9LblLen: equ $-prdNo9Lbl

  ; INITIALIZE PRODUCT 10
  prdNo10Lbl: db " ", 10, "", 10, "Product No. 10", 10
  prdNo10LblLen: equ $-prdNo10Lbl


  ; FOOTER

  ; add thank you message or whatever

  lblProgrammerName: db " ", 10, "", 10, "Programmer Name: "
  lblProgrammerNameLen: equ $-lblProgrammerName
  programmerName: db "Adrian Sajulga", 10
  programmerNameLen: equ $-programmerName
  lblDate: db "Date: "  
  lblDateLen: equ $-lblDate
  date: db "10-5-2023"
  dateLen: equ $-date

section .bss
  prdNo1Id: resb 32
  prdNo1ProductName: resb 32
  prdNo1Manufacturer: resb 32
  prdNo1Description: resb 32
  prdNo1UnitPrice: resb 32
  prdNo1Quantity: resb 32
  prdNo2Id: resb 32
  prdNo2ProductName: resb 32
  prdNo2Manufacturer: resb 32
  prdNo2Description: resb 32
  prdNo2UnitPrice: resb 32
  prdNo2Quantity: resb 32
  prdNo3Id: resb 32
  prdNo3ProductName: resb 32
  prdNo3Manufacturer: resb 32
  prdNo3Description: resb 32
  prdNo3UnitPrice: resb 32
  prdNo3Quantity: resb 32
  prdNo4Id: resb 32
  prdNo4ProductName: resb 32
  prdNo4Manufacturer: resb 32
  prdNo4Description: resb 32
  prdNo4UnitPrice: resb 32
  prdNo4Quantity: resb 32
  prdNo5Id: resb 32
  prdNo5ProductName: resb 32
  prdNo5Manufacturer: resb 32
  prdNo5Description: resb 32
  prdNo5UnitPrice: resb 32
  prdNo5Quantity: resb 32
  prdNo6Id: resb 32
  prdNo6ProductName: resb 32
  prdNo6Manufacturer: resb 32
  prdNo6Description: resb 32
  prdNo6UnitPrice: resb 32
  prdNo6Quantity: resb 32
  prdNo7Id: resb 32
  prdNo7ProductName: resb 32
  prdNo7Manufacturer: resb 32
  prdNo7Description: resb 32
  prdNo7UnitPrice: resb 32
  prdNo7Quantity: resb 32
  prdNo8Id: resb 32
  prdNo8ProductName: resb 32
  prdNo8Manufacturer: resb 32
  prdNo8Description: resb 32
  prdNo8UnitPrice: resb 32
  prdNo8Quantity: resb 32
  prdNo9Id: resb 32
  prdNo9ProductName: resb 32
  prdNo9Manufacturer: resb 32
  prdNo9Description: resb 32
  prdNo9UnitPrice: resb 32
  prdNo9Quantity: resb 32
  prdNo10Id: resb 32
  prdNo10ProductName: resb 32
  prdNo10Manufacturer: resb 32
  prdNo10Description: resb 32
  prdNo10UnitPrice: resb 32
  prdNo10Quantity: resb 32

section .text
  global _start  

_start:
  mov eax, 4
  mov ebx, 1
  mov ecx, header
  mov edx, headerLen
  int 80h

  ; GET PRODUCT 1
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo1Lbl
  mov edx, prdNo1LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo1Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo1ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo1Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo1Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo1UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo1Quantity
  mov edx, 32
  int 80h

  ; GET PRODUCT 2
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo2Lbl
  mov edx, prdNo1LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo2Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo2ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo2Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo2Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo2UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo2Quantity
  mov edx, 32
  int 80h

  ; GET PRODUCT 3
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo3Lbl
  mov edx, prdNo3LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo3Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo3ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo3Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo3Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo3UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo3Quantity
  mov edx, 32
  int 80h

  ; GET PRODUCT 4
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4Lbl
  mov edx, prdNo4LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo4Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo4ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo4Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo4Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo4UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo4Quantity
  mov edx, 32
  int 80h

  ; GET PRODUCT 5 
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo5Lbl
  mov edx, prdNo5LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo5Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo5ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo5Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo5Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo5UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo5Quantity
  mov edx, 32
  int 80h

  ; GET PRODUCT 6
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo6Lbl
  mov edx, prdNo6LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo6Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo6ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo6Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo6Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo6UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo6Quantity
  mov edx, 32
  int 80h

  ; GET PRODUCT 7
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo7Lbl
  mov edx, prdNo7LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo7Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo7ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo7Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo7Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo7UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo7Quantity
  mov edx, 32
  int 80h

  ; GET PRODUCT 8
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo8Lbl
  mov edx, prdNo8LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo8Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo8ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo8Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo8Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo8UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo8Quantity
  mov edx, 32
  int 80h

  ; GET PRODUCT 9
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo9Lbl
  mov edx, prdNo9LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo9Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo9ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo9Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo9Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo9UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo9Quantity
  mov edx, 32
  int 80h

  ; GET PRODUCT 10
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo10Lbl
  mov edx, prdNo10LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo10Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo10ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo10Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo10Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo10UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo10Quantity
  mov edx, 32
  int 80h


  ; DISPLAY PRODUCT 1
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo1Lbl
  mov edx, prdNo1LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo1Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo1ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo1Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo1Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo1UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo1Quantity
  mov edx, 32
  int 80h

  ; DISPLAY PRODUCT 2
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo2Lbl
  mov edx, prdNo2LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo2Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo2ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo2Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo2Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo2UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo2Quantity
  mov edx, 32
  int 80h

  ; DISPLAY PRODUCT 3
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo3Lbl
  mov edx, prdNo3LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo3Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo3ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo3Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo3Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo3UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo3Quantity
  mov edx, 32
  int 80h

  ; DISPLAY PRODUCT 4
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4Lbl
  mov edx, prdNo4LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4Quantity
  mov edx, 32
  int 80h

  ; DISPLAY PRODUCT 5
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo5Lbl
  mov edx, prdNo5LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo5Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo5ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo5Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo5Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo5UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo5Quantity
  mov edx, 32
  int 80h

  ; DISPLAY PRODUCT 6
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo6Lbl
  mov edx, prdNo6LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo6Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo6ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo6Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo6Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo6UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo6Quantity
  mov edx, 32
  int 80h

  ; DISPLAY PRODUCT 7
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo7Lbl
  mov edx, prdNo7LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo7Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo7ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo7Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo7Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo7UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo7Quantity
  mov edx, 32
  int 80h

  ; DISPLAY PRODUCT 8
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo8Lbl
  mov edx, prdNo8LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo8Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo8ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo8Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo8Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo8UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo8Quantity
  mov edx, 32
  int 80h

  ; DISPLAY PRODUCT 9
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo9Lbl
  mov edx, prdNo9LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo9Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo9ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo9Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo9Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo9UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo9Quantity
  mov edx, 32
  int 80h

  ; DISPLAY PRODUCT 10
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo10Lbl
  mov edx, prdNo10LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo10Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo10ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo10Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo10Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo10UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo10Quantity
  mov edx, 32
  int 80h


  ; DISPLAY FOOTER
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProgrammerName
  mov edx, lblProgrammerNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, programmerName
  mov edx, programmerNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDate
  mov edx, lblDateLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, date
  mov edx, dateLen
  int 80h

  mov eax, 1
  mov ebx, 0
  int 80h

=======
<<<<<<< HEAD

global _start

section .data

section .bss
  input resb 32

section .text
_start:
  
  mov eax, 3
  mov ebx, 0
  mov ecx, input
  mov edx, 32
  int 80h

  mov ecx, input
  call getLen
  mov eax, 4
  mov ebx, 1
  int 80h

  mov eax, 1
  mov ebx, 0
  int 80h


getLen:
  xor edx, edx
  lea esi, [ecx]

  getLenLoop:
    movzx eax, byte [esi]
    inc edx
    cmp eax, 0xA
    je return 
    inc esi
    jmp getLenLoop

return:
  ret 
=======

section .data
  ; HEADER
  header: db "Cebu Institute of Technology - University", 10, "College of Computer Studies", 10, "College Library", 10, "First Semester Academic Year 2023-2024", 10, 10, "ENTER DATA"
  headerLen: equ $-header

  ; INITIALIZE LABELS
  lblId: db "Product ID No: "
  lblIdLen: equ $-lblId
  lblProductName: db "Product Name: "
  lblProductNameLen: equ $-lblProductName
  lblManufacturer: db "Product Manufacturer: "
  lblManufacturerLen: equ $-lblManufacturer
  lblDescription: db "Description: "
  lblDescriptionLen: equ $-lblDescription
  lblUnitPrice: db "Unit Price: "
  lblUnitPriceLen: equ $-lblUnitPrice
  lblQuantity: db "Quantity: "
  lblQuantityLen: equ $-lblQuantity

  ; INITIALIZE PRODUCT 1
  prdNo1Lbl: db " ", 10, "", 10, "Product No. 1", 10
  prdNo1LblLen: equ $-prdNo1Lbl

  ; INITIALIZE PRODUCT 2
  prdNo2Lbl: db " ", 10, "", 10, "Product No. 2", 10
  prdNo2LblLen: equ $-prdNo2Lbl

  ; INITIALIZE PRODUCT 3
  prdNo3Lbl: db " ", 10, "", 10, "Product No. 3", 10
  prdNo3LblLen: equ $-prdNo3Lbl

  ; INITIALIZE PRODUCT 4
  prdNo4Lbl: db " ", 10, "", 10, "Product No. 4", 10
  prdNo4LblLen: equ $-prdNo4Lbl

  ; INITIALIZE PRODUCT 5
  prdNo5Lbl: db " ", 10, "", 10, "Product No. 5", 10
  prdNo5LblLen: equ $-prdNo5Lbl

  ; INITIALIZE PRODUCT 6
  prdNo6Lbl: db " ", 10, "", 10, "Product No. 6", 10
  prdNo6LblLen: equ $-prdNo6Lbl

  ; INITIALIZE PRODUCT 7
  prdNo7Lbl: db " ", 10, "", 10, "Product No. 7", 10
  prdNo7LblLen: equ $-prdNo7Lbl
 
  ; INITIALIZE PRODUCT 8
  prdNo8Lbl: db " ", 10, "", 10, "Product No. 8", 10
  prdNo8LblLen: equ $-prdNo8Lbl

  ; INITIALIZE PRODUCT 9
  prdNo9Lbl: db " ", 10, "", 10, "Product No. 9", 10
  prdNo9LblLen: equ $-prdNo9Lbl

  ; INITIALIZE PRODUCT 10
  prdNo10Lbl: db " ", 10, "", 10, "Product No. 10", 10
  prdNo10LblLen: equ $-prdNo10Lbl


  ; FOOTER
  lblProgrammerName: db " ", 10, "", 10, "Programmer Name: "
  lblProgrammerNameLen: equ $-lblProgrammerName
  programmerName: db "Adrian Sajulga", 10
  programmerNameLen: equ $-programmerName
  lblDate: db "Date: "  
  lblDateLen: equ $-lblDate
  date: db "10-5-2023"
  dateLen: equ $-date

section .bss
  prdNo1Id: resb 32
  prdNo1ProductName: resb 32
  prdNo1Manufacturer: resb 32
  prdNo1Description: resb 32
  prdNo1UnitPrice: resb 32
  prdNo1Quantity: resb 32
  prdNo2Id: resb 32
  prdNo2ProductName: resb 32
  prdNo2Manufacturer: resb 32
  prdNo2Description: resb 32
  prdNo2UnitPrice: resb 32
  prdNo2Quantity: resb 32
  prdNo3Id: resb 32
  prdNo3ProductName: resb 32
  prdNo3Manufacturer: resb 32
  prdNo3Description: resb 32
  prdNo3UnitPrice: resb 32
  prdNo3Quantity: resb 32
  prdNo4Id: resb 32
  prdNo4ProductName: resb 32
  prdNo4Manufacturer: resb 32
  prdNo4Description: resb 32
  prdNo4UnitPrice: resb 32
  prdNo4Quantity: resb 32
  prdNo5Id: resb 32
  prdNo5ProductName: resb 32
  prdNo5Manufacturer: resb 32
  prdNo5Description: resb 32
  prdNo5UnitPrice: resb 32
  prdNo5Quantity: resb 32
  prdNo6Id: resb 32
  prdNo6ProductName: resb 32
  prdNo6Manufacturer: resb 32
  prdNo6Description: resb 32
  prdNo6UnitPrice: resb 32
  prdNo6Quantity: resb 32
  prdNo7Id: resb 32
  prdNo7ProductName: resb 32
  prdNo7Manufacturer: resb 32
  prdNo7Description: resb 32
  prdNo7UnitPrice: resb 32
  prdNo7Quantity: resb 32
  prdNo8Id: resb 32
  prdNo8ProductName: resb 32
  prdNo8Manufacturer: resb 32
  prdNo8Description: resb 32
  prdNo8UnitPrice: resb 32
  prdNo8Quantity: resb 32
  prdNo9Id: resb 32
  prdNo9ProductName: resb 32
  prdNo9Manufacturer: resb 32
  prdNo9Description: resb 32
  prdNo9UnitPrice: resb 32
  prdNo9Quantity: resb 32
  prdNo10Id: resb 32
  prdNo10ProductName: resb 32
  prdNo10Manufacturer: resb 32
  prdNo10Description: resb 32
  prdNo10UnitPrice: resb 32
  prdNo10Quantity: resb 32

section .text
  global _start  

_start:
  mov eax, 4
  mov ebx, 1
  mov ecx, header
  mov edx, headerLen
  int 80h

  ; GET PRODUCT 1
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo1Lbl
  mov edx, prdNo1LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo1Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo1ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo1Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo1Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo1UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo1Quantity
  mov edx, 32
  int 80h

  ; GET PRODUCT 2
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo2Lbl
  mov edx, prdNo1LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo2Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo2ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo2Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo2Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo2UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo2Quantity
  mov edx, 32
  int 80h

  ; GET PRODUCT 3
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo3Lbl
  mov edx, prdNo3LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo3Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo3ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo3Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo3Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo3UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo3Quantity
  mov edx, 32
  int 80h

  ; GET PRODUCT 4
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4Lbl
  mov edx, prdNo4LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo4Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo4ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo4Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo4Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo4UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo4Quantity
  mov edx, 32
  int 80h

  ; GET PRODUCT 5 
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo5Lbl
  mov edx, prdNo5LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo5Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo5ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo5Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo5Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo5UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo5Quantity
  mov edx, 32
  int 80h

  ; GET PRODUCT 6
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo6Lbl
  mov edx, prdNo6LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo6Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo6ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo6Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo6Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo6UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo6Quantity
  mov edx, 32
  int 80h

  ; GET PRODUCT 7
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo7Lbl
  mov edx, prdNo7LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo7Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo7ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo7Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo7Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo7UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo7Quantity
  mov edx, 32
  int 80h

  ; GET PRODUCT 8
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo8Lbl
  mov edx, prdNo8LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo8Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo8ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo8Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo8Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo8UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo8Quantity
  mov edx, 32
  int 80h

  ; GET PRODUCT 9
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo9Lbl
  mov edx, prdNo9LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo9Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo9ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo9Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo9Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo9UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo9Quantity
  mov edx, 32
  int 80h

  ; GET PRODUCT 10
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo10Lbl
  mov edx, prdNo10LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo10Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo10ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo10Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo10Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo10UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo10Quantity
  mov edx, 32
  int 80h


  ; DISPLAY PRODUCT 1
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo1Lbl
  mov edx, prdNo1LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo1Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo1ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo1Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo1Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo1UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo1Quantity
  mov edx, 32
  int 80h

  ; DISPLAY PRODUCT 2
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo2Lbl
  mov edx, prdNo2LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo2Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo2ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo2Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo2Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo2UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo2Quantity
  mov edx, 32
  int 80h

  ; DISPLAY PRODUCT 3
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo3Lbl
  mov edx, prdNo3LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo3Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo3ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo3Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo3Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo3UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo3Quantity
  mov edx, 32
  int 80h

  ; DISPLAY PRODUCT 4
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4Lbl
  mov edx, prdNo4LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4Quantity
  mov edx, 32
  int 80h

  ; DISPLAY PRODUCT 5
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo5Lbl
  mov edx, prdNo5LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo5Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo5ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo5Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo5Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo5UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo5Quantity
  mov edx, 32
  int 80h

  ; DISPLAY PRODUCT 6
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo6Lbl
  mov edx, prdNo6LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo6Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo6ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo6Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo6Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo6UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo6Quantity
  mov edx, 32
  int 80h

  ; DISPLAY PRODUCT 7
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo7Lbl
  mov edx, prdNo7LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo7Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo7ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo7Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo7Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo7UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo7Quantity
  mov edx, 32
  int 80h

  ; DISPLAY PRODUCT 8
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo8Lbl
  mov edx, prdNo8LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo8Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo8ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo8Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo8Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo8UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo8Quantity
  mov edx, 32
  int 80h

  ; DISPLAY PRODUCT 9
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo9Lbl
  mov edx, prdNo9LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo9Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo9ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo9Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo9Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo9UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo9Quantity
  mov edx, 32
  int 80h

  ; DISPLAY PRODUCT 10
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo10Lbl
  mov edx, prdNo10LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo10Id
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo10ProductName
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo10Manufacturer
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo10Description
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo10UnitPrice
  mov edx, 32
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblQuantity
  mov edx, lblQuantityLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo10Quantity
  mov edx, 32
  int 80h


  ; DISPLAY FOOTER
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProgrammerName
  mov edx, lblProgrammerNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, programmerName
  mov edx, programmerNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDate
  mov edx, lblDateLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, date
  mov edx, dateLen
  int 80h

  mov eax, 1
  mov ebx, 0
  int 80h
>>>>>>> 403ab8e6716867236379ccb7ef9dc8247e467320
>>>>>>> c5c410bc1ece8a2c55991517a04f251004ffeab6
