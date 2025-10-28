section .text
  global ft_strcpy

; char  *ft_strcpy(char *dest, const char *src);
; dest == rdi, src == rsi

ft_strcpy:
  push rdi ; guardamos el puntero para el retorno de dest
.loop:
	mov al, byte [rsi]     ; leer byte de [src] y meterlo en en los 8 bits mas bajos de RAX
	mov [rdi], al          ; escribir en dest
	cmp al, 0              ; null cmp
	je .done
	inc rdi
	inc rsi
	jmp .loop
.done:
	pop rax
	ret

section .note.GNU-stack noalloc noexec nowrite progbits