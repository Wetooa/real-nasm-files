


global _start

section .data
  curr: dd 1
  tmp: dd 0

  oneHash: db "#"
  oneHashLen: equ $-oneHash

  headerLine: db " ", 10, "Enter a number: "
  headerLineLen: equ $-headerLine

  choiceLine: db "", 10, "Again? Y/N: "
  choiceLineLen: equ $-choiceLine
  
  invalidLine: db "Invalid Choice!!!"
  invalidLineLen: equ $-invalidLine
  
  space: db " "
  spaceLen: equ $-space
  
  evenLine: db "Even numbers: "
  evenLineLen: equ $-evenLine
  
  oddLine: db "Odd numbers: "
  oddLineLen: equ $-oddLine

  thankYou: db "Thank you."
  thankYouLen: equ $-thankYou

  newLine: db 10
  newLineLen: equ $-newLine

section .bss
  buffer: resd 16
  input: resb 16
  endNum: resd 2
  choice: resb 2

section .text
_start:

  again:
  mov eax, 1
  mov dword [curr], eax

  mov eax, 4
  mov ebx, 1
  mov ecx, headerLine
  mov edx, headerLineLen
  int 80h
  mov eax, 3
  mov ebx, 0
  mov ecx, input
  mov edx, 16
  int 80h
  
  xor eax, eax
  lea esi, [input]
  call to_int
  mov dword [endNum], eax

  cmp eax, 1
  jl done
  cmp eax, 20
  jg done

  mov eax, 4
  mov ebx, 1
  mov ecx, evenLine
  mov edx, evenLineLen
  int 80h
  mov eax, 2
  loop1:
    cmp eax, dword [endNum]
    mov dword [tmp], eax
    jg endLoop1

    lea ecx, [buffer + 15]
    call to_str
    mov eax, 4
    mov ebx, 1
    mov edx, buffer
    add edx, 16
    sub edx, ecx
    int 0x80
    mov eax, 4
    mov ebx, 1
    mov ecx, space
    mov edx, spaceLen
    int 80h


    mov eax, dword [tmp]
    add eax, 2
    mov dword [tmp], eax
    jmp loop1
  endLoop1:

  mov eax, 4
  mov ebx, 1
  mov ecx, newLine
  mov edx, newLineLen
  int 80h

  mov eax, 4
  mov ebx, 1
  mov ecx, oddLine
  mov edx, oddLineLen
  int 80h
  mov eax, 1
  loop2:
    cmp eax, dword [endNum]
    mov dword [tmp], eax
    jg endLoop2

    lea ecx, [buffer + 15]
    call to_str
    mov eax, 4
    mov ebx, 1
    mov edx, buffer
    add edx, 16
    sub edx, ecx
    int 0x80
    mov eax, 4
    mov ebx, 1
    mov ecx, space
    mov edx, spaceLen
    int 80h

    mov eax, dword [tmp]
    add eax, 2
    jmp loop2
  endLoop2:

  jmp done
  isInvalid:
  mov eax, 4
  mov ebx, 1
  mov ecx, invalidLine
  mov edx, invalidLineLen
  int 80h
  done:

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
  add edx, '0'
  mov [ecx], dl
  dec ecx

  test eax, eax
  jnz to_str
  inc ecx
  jmp return

return:
  ret