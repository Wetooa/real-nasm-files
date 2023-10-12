

section .data
  msg: db "hello word!"
  msgLen: equ $-msg


section .text
  global _start

  _start:
    mov eax,4
    mov ebx,1
    mov ecx,msg
    mov edx,msgLen

    int 80h
    mov eax,1
    mov ebx,0
    int 80h
  

.386
.MODEL flat, stdcall
 STD_OUTPUT_HANDLE EQU -11 
 GetStdHandle PROTO, nStdHandle: DWORD 
 WriteConsoleA PROTO, handle: DWORD, lpBuffer:PTR BYTE, nNumberOfBytesToWrite:DWORD, lpNumberOfBytesWritten:PTR DWORD, lpReserved:DWORD
 ExitProcess PROTO, dwExitCode: DWORD 

 .data
 consoleOutHandle DWORD ? 
 bytesWritten DWORD ?
 message BYTE "Hello World from MASM!", 0Ah ;0Ah means new line, equal to \n in Java/C
 lmessage DWORD 23

 .code
 main PROC
  INVOKE GetStdHandle, STD_OUTPUT_HANDLE
  mov consoleOutHandle, eax 
  mov edx, offset message 
  pushad    
  mov eax, lmessage
  INVOKE WriteConsoleA, consoleOutHandle, edx, eax, offset bytesWritten, 0
  popad
  INVOKE ExitProcess,0 
 main ENDP
END main


.model small
.stack 100h

.data
message db 13,10,"Hello World!$"

.code
main proc near
   lea dx, message
   mov ah, 09h
   int 21h

   mov ah,4ch
   int 21h
main endp


format PE console
entry main

section '.data' data readable writeable
  hello db 'Hello, World!',0

section '.text' code readable executable
  main:
    ; Write the message to stdout
    mov eax, 4        ; sys_write
    mov ebx, 1        ; file descriptor (stdout)
    mov ecx, hello    ; pointer to the message
    mov edx, 13       ; message length
    int 80h           ; invoke the syscall

    ; Exit the program
    mov eax, 1        ; sys_exit
    xor ebx, ebx      ; exit status
    int 80h           ; invoke the syscall


.model small
.stack	100h
.data
msg	db "Merry Christmas!",'$'
.code
main	proc
    mov ax, SEG msg
	mov	ds, ax
	mov	dx, offset msg
	mov	ah, 9
	int	21h
	mov	ax, 4c00h
	int	21h
main	endp
end	main

section .data
    hello db 'Hello, World!',0

section .text
    global _start

_start:
    ; Write the message to stdout (file descriptor 1)
    mov eax, 4        ; sys_write
    mov ebx, 1        ; file descriptor (stdout)
    mov ecx, hello    ; pointer to the message
    mov edx, 13       ; message length
    int 0x80          ; invoke the syscall

    ; Exit the program
    mov eax, 1        ; sys_exit
    mov ebx, 0        ; exit status
    int 0x80          ; invoke the syscall

section .data
    hello db 'Hello, World!',0   ; Null-terminated string to be printed

section .text
    global _start               ; Entry point for the program

_start:
    ; Write the message to stdout (file descriptor 1)
    mov eax, 4                  ; Syscall number for sys_write (4)
    mov ebx, 1                  ; File descriptor for stdout (1)
    mov ecx, hello              ; Pointer to the message
    mov edx, 13                 ; Message length
    int 0x80                    ; Invoke the syscall

    ; Exit the program
    mov eax, 1                  ; Syscall number for sys_exit (1)
    xor ebx, ebx                ; Exit status (0)
    int 0x80                    ; Invoke the syscall
