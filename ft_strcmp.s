section .text
	global ft_strcmp

; int strcmp(const char *s1, const char *s2);
; RETURN VALUE
;       The strcmp() function return an integer less than, equal to, or greater than zero if s1 (or the first n bytes thereof) is  found,  respec‐
;       tively, to be less than, to match, or be greater than s2.
; ret s1[i] - s2[i]

; RDI == s1 y RSI == s2

ft_strcmp:
    xor rax, rax         ; clear rax (will hold return value)
    xor rcx, rcx         ; i = 0

.loop:
    mov al, [rdi + rcx]  ; al = s1[i]
    mov bl, [rsi + rcx]  ; bl = s2[i]
    cmp al, bl
    jne .done            ; if not equal, jump
    test al, al          ; check if al == 0
    je .ret              ; both are '\0', strings equal
    inc rcx              ; i++
    jmp .loop

.done:
    sub al, bl           ; al = s1[i] - s2[i]
    movsx rax, al        ; sign-extend byte result into rax
    ret

.ret:
    xor rax, rax         ; return 0
    ret

section .note.GNU-stack noalloc noexec nowrite progbits