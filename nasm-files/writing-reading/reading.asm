; Write the number 42 to the console

section .data
    num db 42

section .bss
    buffer resb 16

section .text
    global _start

_start:
    ; Convert number to string
    mov eax, [num]
    lea edi, [buffer + 15]
    mov byte [edi], 0x0A   ; newline character

convert:
    dec edi
    xor edx, edx
    mov ecx, 10
    div ecx
    add dl, '0'
    mov [edi], dl
    test eax, eax
    jnz convert

    ; Write to console
    mov eax, 4
    mov ebx, 1
    lea ecx, [edi]
    lea edx, [buffer + 16]
    sub edx, ecx
    int 0x80

    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80