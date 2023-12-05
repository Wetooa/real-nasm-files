
global _start

section .data
  openingScreenLine:  db 10, "Program Name: Parking Management System", 10,
                      db "Programmer Name: Adrian Sajulga", 10,
                      db "Date: 06/12/2023", 10
  openingScreenLineLen: equ $-openingScreenLine


  parkingMenuLine:  db 10, 10, "-----PARKING MANAGEMENT MENU------", 10,
                    db "a.) Display Vacant Slots", 10,
                    db "b.) Park a Car", 10,
                    db "c.) Open Slot", 10,
                    db "d.) Exit Program", 10,
                    db "Enter your choice: "
  parkingMenuLineLen: equ $-parkingMenuLine

  displayVacantSlotOpeningLine: db 10, "Choice: Display Vacant Slots", 10, 10, "Slots   : "
  displayVacantSlotOpeningLineLen: equ $-displayVacantSlotOpeningLine
  displayOccupiedSlot: db "|_🚗__"
  displayOccupiedSlotLen: equ $-displayOccupiedSlot
  displayVacantSlot: db "|_____"
  displayVacantSlotLen: equ $-displayVacantSlot
  displayVacantSlotsEndLine: db "|", 10, "No.     :    1     2     3     4     5     6     7     8     9     10", 10, 10, "Hours: ", 10
  displayVacantSlotsEndLineLen: equ $-displayVacantSlotsEndLine
  displayVacantSlotsSlotsLine: db "Parking Lot "
  displayVacantSlotsSlotsLineLen: equ $-displayVacantSlotsSlotsLine
  displayVacantSlotsTemplate: db 9, 9, " ----- ", 9, 9
  displayVacantSlotsTemplateLen: equ $-displayVacantSlotsTemplate

  parkACarOpeningLine:  db 10, "Choice: Park a Car", 10, 10, "Enter number of hours to park: "
  parkACarOpeningLineLen: equ $-parkACarOpeningLine
  parkACarVacantSlotFoundLine: db "Vacant slot found! Car is parked at slot no. "
  parkACarVacantSlotFoundLineLen: equ $-parkACarVacantSlotFoundLine
  parkACarNoVacantSlotsFoundLine: db 10, "PARKING IS FULL!!!", 10
  parkACarNoVacantSlotsFoundLineLen: equ $-parkACarNoVacantSlotsFoundLine

  openASlotOpeningLine: db 10, "Choice: Open a Slot", 10, 10, "Enter the parking slot to open (1-10): "
  openASlotOpeningLineLen: equ $-openASlotOpeningLine
  openASlotInvalidNoLine: db 10, "INVALID NUMBER! CHOOSE A NUMBER BETWEEN 1-10!!!", 10
  openASlotInvalidNoLineLen: equ $-openASlotInvalidNoLine
  openASlotVacantSlotLine: db 10, "CHOSEN SLOT IS VACANT!!!", 10
  openASlotVacantSlotLineLen: equ $-openASlotVacantSlotLine
  openASlotSuccessfulLine: db 10, "Opening parking lot no. "
  openASlotSuccessfulLineLen: equ $-openASlotSuccessfulLine
  openASlotHoursUsedLine: db "Hours used: "
  openASlotHoursUsedLineLen: equ $-openASlotHoursUsedLine
  openASlotDisplayBillLine: db "Total bill = Php 30 x "
  openASlotDisplayBillLineLen: equ $-openASlotDisplayBillLine
  openASlotEqualsLine: db " = Php "
  openASlotEqualsLineLen: equ $-openASlotEqualsLine

  endingLine: db "Thank you for using our Parking Management System. Have a great Day!", 10
  endingLineLen: equ $-endingLine
 
  newLine: db 10
  newLineLen: equ $-newLine

  parkingLots: dd 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

section .bss
  buffer: resb 16
  input: resb 16
  isNegative: resd 2
  slotNumber: resd 2

section .text
_start:

  mov eax, 4
  mov ebx, 1
  mov ecx, openingScreenLine
  mov edx, openingScreenLineLen
  int 80h


mainProgramLoop:

  mov eax, 4
  mov ebx, 1
  mov ecx, parkingMenuLine
  mov edx, parkingMenuLineLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, input
  mov edx, 16
  int 80h
  movzx eax, byte [input]

  cmp eax, 0x61
  je displayVacantSlots

  cmp eax, 0x62
  je parkACar

  cmp eax, 0x63
  je openASlot

  cmp eax, 0x64
  je mainProgramEnd


displayVacantSlots:
  mov eax, 4
  mov ebx, 1
  mov ecx, displayVacantSlotOpeningLine
  mov edx, displayVacantSlotOpeningLineLen
  int 80h

  xor esi, esi
  displayVacantSlotsLoop1:
    cmp esi, 10
    jge endDisplayVacantSlotLoop1
    mov ebx, dword [parkingLots + esi * 4]
    inc esi
    cmp ebx, 0
    je displayNotVacant
    mov eax, 4
    mov ebx, 1
    mov ecx, displayOccupiedSlot
    mov edx, displayOccupiedSlotLen
    int 80h
    jmp displayVacantSlotsLoop1
    displayNotVacant:
    mov eax, 4
    mov ebx, 1
    mov ecx, displayVacantSlot
    mov edx, displayVacantSlotLen
    int 80h
    jmp displayVacantSlotsLoop1
  endDisplayVacantSlotLoop1:
  mov eax, 4
  mov ebx, 1
  mov ecx, displayVacantSlotsEndLine
  mov edx, displayVacantSlotsEndLineLen
  int 80h

  xor esi, esi
  displayVacantSlotsLoop2:
    cmp esi, 10
    jge endDisplayVacantSlotsLoop2
    mov eax, 4
    mov ebx, 1
    mov ecx, displayVacantSlotsSlotsLine
    mov edx, displayVacantSlotsSlotsLineLen
    int 80h
    mov eax, esi
    inc eax
    lea ecx, [buffer + 15]
    call toStr
    mov eax, 4
    mov ebx, 1
    mov edx, buffer
    add edx, 16
    sub edx, ecx
    int 0x80
    mov eax, 4
    mov ebx, 1
    mov ecx, displayVacantSlotsTemplate
    mov edx, displayVacantSlotsTemplateLen
    int 80h
    mov eax, dword [parkingLots + esi * 4]
    lea ecx, [buffer + 15]
    call toStr
    mov eax, 4
    mov ebx, 1
    mov edx, buffer
    add edx, 16
    sub edx, ecx
    int 0x80
    mov eax, 4
    mov ebx, 1
    mov ecx, newLine
    mov edx, newLineLen
    int 80h
    inc esi
    jmp displayVacantSlotsLoop2
  endDisplayVacantSlotsLoop2:
  jmp mainProgramLoop


parkACar:
  mov eax, -1
  xor esi, esi
  findVacantSlotLoop:
    mov ebx, dword [parkingLots + esi * 4]
    cmp ebx, 0
    je foundVacantSlot

    inc esi
    cmp esi, 10
    jl findVacantSlotLoop
  mov eax, 4
  mov ebx, 1
  mov ecx, parkACarNoVacantSlotsFoundLine
  mov edx, parkACarNoVacantSlotsFoundLineLen
  int 80h
  jmp mainProgramLoop

  foundVacantSlot:
  mov eax, 4
  mov ebx, 1
  mov ecx, parkACarOpeningLine
  mov edx, parkACarOpeningLineLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, input
  mov edx, 16
  int 80h
  lea ecx, [input]
  call toInt
  mov dword [parkingLots + esi * 4], eax
  mov eax, 4
  mov ebx, 1
  mov ecx, parkACarVacantSlotFoundLine
  mov edx, parkACarVacantSlotFoundLineLen
  int 80h
  mov eax, esi
  inc eax
  lea ecx, [buffer + 15]
  call toStr
  mov eax, 4
  mov ebx, 1
  mov edx, buffer
  add edx, 16
  sub edx, ecx
  int 0x80
  jmp mainProgramLoop

openASlot:
  mov eax, 4
  mov ebx, 1
  mov ecx, openASlotOpeningLine
  mov edx, openASlotOpeningLineLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, input
  mov edx, 16
  int 80h
  lea ecx, [input]
  call toInt

  cmp eax, 1
  jl openASlotInvalidNo
  cmp eax, 10
  jg openASlotInvalidNo

  mov esi, eax
  dec esi
  mov eax, dword [parkingLots + esi * 4]
  cmp eax, 0
  je openASlotVacantSlot

  mov eax, 4
  mov ebx, 1
  mov ecx, openASlotSuccessfulLine
  mov edx, openASlotSuccessfulLineLen
  int 80h
  mov eax, esi
  inc eax
  lea ecx, [buffer + 15]
  call toStr
  mov eax, 4
  mov ebx, 1
  mov edx, buffer
  add edx, 16
  sub edx, ecx
  int 0x80
  mov eax, 4
  mov ebx, 1
  mov ecx, newLine
  mov edx, newLineLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, openASlotHoursUsedLine
  mov edx, openASlotHoursUsedLineLen
  int 80h
  mov eax, dword [parkingLots + esi * 4]
  lea ecx, [buffer + 15]
  call toStr
  mov eax, 4
  mov ebx, 1
  mov edx, buffer
  add edx, 16
  sub edx, ecx
  int 0x80
  mov eax, 4
  mov ebx, 1
  mov ecx, newLine
  mov edx, newLineLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, openASlotDisplayBillLine
  mov edx, openASlotDisplayBillLineLen
  int 80h
  mov eax, dword [parkingLots + esi * 4]
  lea ecx, [buffer + 15]
  call toStr
  mov eax, 4
  mov ebx, 1
  mov edx, buffer
  add edx, 16
  sub edx, ecx
  int 0x80
  mov eax, 4
  mov ebx, 1
  mov ecx, openASlotEqualsLine
  mov edx, openASlotEqualsLineLen
  int 80h
  mov eax, dword [parkingLots + esi * 4]
  imul eax, 30
  lea ecx, [buffer + 15]
  call toStr
  mov eax, 4
  mov ebx, 1
  mov edx, buffer
  add edx, 16
  sub edx, ecx
  int 0x80
  mov eax, 4
  mov ebx, 1
  mov ecx, newLine
  mov edx, newLineLen
  int 80h
  xor eax, eax
  mov dword [parkingLots + esi * 4], eax

  jmp mainProgramLoop

  openASlotInvalidNo:
  mov eax, 4
  mov ebx, 1
  mov ecx, openASlotInvalidNoLine
  mov edx, openASlotInvalidNoLineLen
  int 80h
  jmp mainProgramLoop
  openASlotVacantSlot:
  mov eax, 4
  mov ebx, 1
  mov ecx, openASlotVacantSlotLine
  mov edx, openASlotVacantSlotLineLen
  int 80h
  jmp mainProgramLoop

mainProgramEnd:
  mov eax, 4
  mov ebx, 1
  mov ecx, endingLine
  mov edx, endingLineLen
  int 80h

  mov eax, 1
  mov ebx, 0
  int 80h





toInt:
  xor ebx, ebx
  xor eax, eax
  
  toIntLoop:
    movzx edx, byte [ecx]
    cmp edx, 0xA
    je endToIntLoop
  
    cmp edx, 0x2D
    jne notNegToInt
  
    mov ebx, 1
    inc ecx
    jmp toIntLoop
  
    notNegToInt:
    imul eax, 10
    sub edx, '0'
    add eax, edx
    inc ecx
    jmp toIntLoop
  endToIntLoop:
  
  cmp ebx, 1
  jne return
  neg eax
  jmp return
  
toStr:
  xor ebx, ebx
  mov dword [isNegative], ebx
  cmp eax, 0
  jge notNegToStr
  neg eax
  mov ebx, 1
  mov dword [isNegative], ebx
  notNegToStr:
  
  toStrLoop:
    xor edx, edx 
    mov ebx, 10
    div ebx
    add edx, '0'
    mov [ecx], dl
    dec ecx
  
    test eax, eax
    jnz toStrLoop
   
  mov ebx, dword [isNegative]
  cmp ebx, 1
  jne endToStr
  mov ebx, '-'
  mov [ecx], bl
  dec ecx
  endToStr:
  inc ecx
  jmp return
  
return:
  ret