

global _start

section .data
  curr: dd 1

  oneHash: db "#"
  oneHashLen: equ $-oneHash

  headerLine: db " ", 10, "Enter a number: "
  headerLineLen: equ $-headerLine

  choiceLine: db "", 10, "Again? Y/N: "
  choiceLineLen: equ $-choiceLine

  thankYou: db "Thank you."
  thankYouLen: equ $-thankYou

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
  call convert_to_int
  mov dword [endNum], eax

  loop:
    mov eax, dword [curr]
    cmp eax, dword [endNum]
    jg endLoop

    mov ebx, eax
    inc ebx
    mov dword [curr], ebx

    mov eax, 4
    mov ebx, 1
    mov ecx, oneHash
    mov edx, oneHashLen
    int 80h

    jmp loop
  endLoop:

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