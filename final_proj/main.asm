
global _start

section .data
  openingScreenLine:  db "Program Name: Parking Management System", 10,
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
  
  slotsLine: db "Parking Lot "
  slotsLineLen: equ $-slotsLine

  displayVacantSlotsTemplate: db 9, 9, " ----- ", 9, 9
  displayVacantSlotsTemplateLen: equ $-displayVacantSlotsTemplate

  endingLine: db "Thank you for using our Parking Management System. Have a great Day!", 10
  endingLineLen: equ $-endingLine
 
  newLine: db 10
  newLineLen: equ $-newLine

  parkingLots: dd 0, 0, 1, 0, 0, 0, 1, 0, 0, 1

section .bss
  buffer: resb 16
  input: resb 16
  isNegative: resd 2

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
  je openSlot

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
    mov ecx, slotsLine
    mov edx, slotsLineLen
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
  jmp mainProgramLoop

openSlot:
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
  
  toIntLoop:
    movzx edx, byte [esi]
    cmp edx, 0xA
    je endToIntLoop
  
    cmp edx, 0x2D
    jne notNegToInt
  
    mov ebx, 1
    inc esi
    jmp toIntLoop
  
    notNegToInt:
    imul eax, 10
    sub edx, '0'
    add eax, edx
    inc esi
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