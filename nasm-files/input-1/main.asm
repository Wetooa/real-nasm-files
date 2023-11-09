

global _start

section .data
  msg: db "Display a number: ", 10
  len: equ $ - msg 


section .bss
  num resb 2

section .text
_start:
  ;typing the first msg
  mov eax,4
  mov ebx,1 
  mov ecx,msg
  mov edx,len
  int 0x80
  
  ;getting the user input for the first number 
  mov eax,3
  mov ebx,0 
  mov ecx,num
  mov edx,2 
  int 0x80

  ;display number
  mov eax,4
  mov ebx,1 
  mov ecx,num
  mov edx,2
  int 0x80

  ;exit
  mov eax,1
  mov ebx,0
  int 80h
