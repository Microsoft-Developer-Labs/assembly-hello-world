section .text
  global _start

_start:
  mov edx,len ;Length of the message
  mov ecs,msg ;The message
  mov ebx,1 ;File descriptor
  mov eax,4 ;System call number
  int 0x80 ;Kernel

section .data
msg db 'Hello World!', 0xa ;String for the message
len equ $ - msg ;Length of the string
