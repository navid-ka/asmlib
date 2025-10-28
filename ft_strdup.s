section .text
	extern malloc
	extern ft_strlen
	extern ft_strcpy
	global ft_strdup

ft_strdup:
		push	rdi
		call	ft_strlen wrt ..plt
		inc		rax
		mov		rdi, rax

		call	malloc	wrt ..plt			; call malloc
		pop		rdi

		mov		rsi, rdi			; 2nd = str
		mov		rdi, rax			; 1st = ptr
		call	ft_strcpy	wrt ..plt		; ft_strcpy(ptr, str)
		ret

section .note.GNU-stack noalloc noexec nowrite progbits