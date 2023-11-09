


global _start
section .data
  msg1: db "Display first number: "
  len1: equ $ - msg1

  msg2: db 10, "Display first number: "
  len2: equ $ - msg2

  newLine: db 10

section .bss
  num1 resb 2
  num2 resb 2

section .text
_start:
  ;typing the first msg
  mov eax,4
  mov ebx,1 
  mov ecx,msg1
  mov edx,len2
  int 0x80
  
  ;getting the user input for the first number 
  mov eax,3
  mov ebx,0 
  mov ecx,num1
  mov edx,2 
  int 0x80

  ;typing the first msg
  mov eax,4
  mov ebx,1 
  mov ecx,msg2
  mov edx,len2
  int 0x80
  
  ;getting the user input for the first number 
  mov eax,3
  mov ebx,0 
  mov ecx,num2
  mov edx,2 
  int 0x80

  ;display number
  mov eax,4
  mov ebx,1 
  mov ecx,newLine
  mov edx,1
  int 0x80

  ;display number
  mov eax,4
  mov ebx,1 
  mov ecx,num1
  mov edx,2
  int 0x80

  ;display number
  mov eax,4
  mov ebx,1 
  mov ecx,num2
  mov edx,2
  int 0x80

  ;exit
  mov eax,1
  mov ebx,0
  int 80h
