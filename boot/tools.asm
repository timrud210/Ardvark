; Ardvark
;
; by: Timur Rudzinsky (timrud210@gmail.com)
;
; Tools

use16

; PRINT

%macro print 1
  pusha
  mov si, [%1]
  put:
    mov al, [si]
    cmp al, 0
    je endput
    mov ah, 0Eh
    int 010h
    inc si
    jmp put
  endput:
    popa
%endmacro

; CLEAR

%macro clear_screen 0
  mov ah, 0
  int 010h
  mov ah, 06h
  mov al, 0
  mov ch, 0
  mov cl, 0
  mov dh, 24
  mov dl, 79
  int 010h
%endmacro

; READ (DISK)

%macro read_disk 5
  mov ah, 02h
  mov al, %1
  mov dh, 0
  mov dl, %2
  mov ch, 0
  mov cl, %3
  mov ax, %4
  mov es, ax
  mov bx, %5
  int 013h
%endmacro
