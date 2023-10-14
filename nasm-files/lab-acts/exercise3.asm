

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
  lblExpiryDate: db "Expiry Date: "
  lblExpiryDateLen: equ $-lblExpiryDate

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

  ; FOOTER
  lblProgrammerName: db "Programmer Name: "
  lblProgrammerNameLen: equ $-lblProgrammerName
  programmerName: db "Adrian Sajulga", 10
  programmerNameLen: equ $-programmerName
  lblDate: db "Date: "
  lblDateLen: equ $-lblDate
  date: db "10-5-2023"
  dateLen: equ $-date

section .bss
  prdNo1Id: resb 16
  prdNo1ProductName: resb 16
  prdNo1Manufacturer: resb 16
  prdNo1Description: resb 16
  prdNo1UnitPrice: resb 16
  prdNo1ExpiryDate: resb 16
  prdNo2Id: resb 16
  prdNo2ProductName: resb 16
  prdNo2Manufacturer: resb 16
  prdNo2Description: resb 16
  prdNo2UnitPrice: resb 16
  prdNo2ExpiryDate: resb 16
  prdNo3Id: resb 16
  prdNo3ProductName: resb 16
  prdNo3Manufacturer: resb 16
  prdNo3Description: resb 16
  prdNo3UnitPrice: resb 16
  prdNo3ExpiryDate: resb 16
  prdNo4Id: resb 16
  prdNo4ProductName: resb 16
  prdNo4Manufacturer: resb 16
  prdNo4Description: resb 16
  prdNo4UnitPrice: resb 16
  prdNo4ExpiryDate: resb 16
  prdNo5Id: resb 16
  prdNo5ProductName: resb 16
  prdNo5Manufacturer: resb 16
  prdNo5Description: resb 16
  prdNo5UnitPrice: resb 16
  prdNo5ExpiryDate: resb 16

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
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo1ProductName
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo1Manufacturer
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo1Description
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo1UnitPrice
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblExpiryDate
  mov edx, lblExpiryDateLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo1ExpiryDate
  mov edx, 16
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
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo2ProductName
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo2Manufacturer
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo2Description
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo2UnitPrice
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblExpiryDate
  mov edx, lblExpiryDateLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo2ExpiryDate
  mov edx, 16
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
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo3ProductName
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo3Manufacturer
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo3Description
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo3UnitPrice
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblExpiryDate
  mov edx, lblExpiryDateLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo3ExpiryDate
  mov edx, 16
  int 80h

  ; GET PRODUCT 4
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4Lbl
  mov edx, prdNo4LblLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, lblId
  mov edx, lblIdLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4Id
  mov edx, 16
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4ProductName
  mov edx, 16
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4Manufacturer
  mov edx, 16
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4Description
  mov edx, 16
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4UnitPrice
  mov edx, 16
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, lblExpiryDate
  mov edx, lblExpiryDateLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4ExpiryDate
  mov edx, 16
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
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo5ProductName
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo5Manufacturer
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo5Description
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo5UnitPrice
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblExpiryDate
  mov edx, lblExpiryDateLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, prdNo5ExpiryDate
  mov edx, 16
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
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo1ProductName
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo1Manufacturer
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo1Description
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo1UnitPrice
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblExpiryDate
  mov edx, lblExpiryDateLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo1ExpiryDate
  mov edx, 16
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
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo2ProductName
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo2Manufacturer
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo2Description
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo2UnitPrice
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblExpiryDate
  mov edx, lblExpiryDateLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo2ExpiryDate
  mov edx, 16
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
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo3ProductName
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo3Manufacturer
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo3Description
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo3UnitPrice
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblExpiryDate
  mov edx, lblExpiryDateLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo3ExpiryDate
  mov edx, 16
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
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4ProductName
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4Manufacturer
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4Description
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4UnitPrice
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblExpiryDate
  mov edx, lblExpiryDateLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo4ExpiryDate
  mov edx, 16
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
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProductName
  mov edx, lblProductNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo5ProductName
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblManufacturer
  mov edx, lblManufacturerLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo5Manufacturer
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDescription
  mov edx, lblDescriptionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo5Description
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblUnitPrice
  mov edx, lblUnitPriceLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo5UnitPrice
  mov edx, 16
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblExpiryDate
  mov edx, lblExpiryDateLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, prdNo5ExpiryDate
  mov edx, 16
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

