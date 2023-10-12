; man dugaya nako ani tungod lang kay nakalimot ko sa ebx :)

global _start

section .data
  msg1: db "Enter number: "
  msg1_len: equ $-msg1

  is_fizz: db "fizz", 10
  is_fizz_len: equ $-is_fizz

  is_buzz: db "buzz", 10
  is_buzz_len: equ $-is_buzz

  is_fizzbuzz: db "fizzbuzz", 10
  is_fizzbuzz_len: equ $-is_fizzbuzz

  curr: dd 0
  tmp: dd 0
  tt: dd 0


section .bss
  input: resd 16
  strOut: resd 16


section .text
_start:

  mov eax, 4
  mov ebx, 1
  mov ecx, msg1
  mov edx, msg1_len
  int 80h

  mov eax, 3
  mov ebx, 0
  mov ecx, input
  mov edx, 16
  int 80h

  xor eax, eax
  lea esi, [input]
  call convert_to_int
  mov dword [curr], eax

  mov ecx, 1

fizzbuzz:
  xor eax, eax
  mov dword [tmp], eax
  mov dword [tt], ecx

  xor edx, edx
  mov eax, ecx 
  mov ebx, 3
  div ebx
  cmp edx, 0
  jne not_div_3
  lea eax, [tmp]
  or dword [eax], 1
  not_div_3:

  xor edx, edx
  mov eax, ecx 
  mov ebx, 5
  div ebx
  cmp edx, 0
  jne not_div_5
  lea eax, [tmp]
  or dword [eax], 2
  not_div_5:

  mov eax, dword [tmp]

  cmp eax, 1
  je div_3
  cmp eax, 2
  je div_5
  cmp eax, 3
  je div_15

  mov ecx, dword [tt]
  jmp not_div

out:
  mov ecx, dword [tt]
  inc ecx
  cmp ecx, dword [curr]
  jle fizzbuzz

  mov eax, 1
  mov ebx, 0
  int 80h

not_div:
  mov eax, ecx 
  lea ecx, [strOut + 15]
  mov [ecx], dword 10
  dec ecx
  mov ebx, 10
  call convert_to_str

  mov eax, 4
  mov ebx, 1
  mov ecx, strOut
  mov edx, 16
  int 80h
  jmp out

div_3:
  mov eax, 4
  mov ebx, 1
  mov ecx, is_fizz
  mov edx, is_fizz_len
  int 80h
  jmp out

div_5:
  mov eax, 4
  mov ebx, 1
  mov ecx, is_buzz
  mov edx, is_buzz_len
  int 80h
  jmp out

div_15:
  mov eax, 4
  mov ebx, 1
  mov ecx, is_fizzbuzz
  mov edx, is_fizzbuzz_len
  int 80h
  jmp out


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
  div ebx
  add edx, '0'
  mov [ecx], dl
  dec ecx

  test eax, eax
  jnz convert_to_str
  jmp return


return:
  ret