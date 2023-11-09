

section .data
  printl: db 'My Personal Data', 10, 'CIT-U ID Number: 22-1437-172', 10, 'Last Name: Sajulga', 10, 'First Name: Adrian', 10, 'Middle Name: Tantiado', 10, 'Birthday: Feb 08, 2004', 10 , 'Email: adrian.sajulga@cit.edu', 10, 'Contact Number: 09089592393', 10, 'Course & Year: BSCS - 2'
  printLen: equ $-printl

section .text
  global _start

_start:
  mov eax,4                         ;The system call for write(sys_write)
  mov ebx,1                         ;File descriptor 1 - standard output
  mov ecx,printl
  mov edx,printLen                  ;helloLen is a constant, so we don't need to say
                                    ;mov edx,[helloLen] to get it's actual value
  int 80h                           ;Call the kernel
  mov eax,1                         ;The system call for exit (sys_exit)
  mov ebx,0                         ;Exit with return "code" of 0 (no error)
  int 80h;