


; .data is where we define constants
section .data
  hello: db 'Hello World!', 10
  helloLen: equ $-hello ; equ (equate) will subtract the current position ($) with the starting of hello (to get the length)

; this is the entry point
section .text
  global _start

  _start:
    mov eax,4
    mov ebx,1
    mov ecx,hello
    mov edx,helloLen

    int 80h
    mov eax,1
    mov ebx,0
    int 80h;
