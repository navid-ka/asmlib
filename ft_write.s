section .text
    global ft_write
    extern __errno_location

; ssize_t ft_write(int fd, const void *buf, size_t count)
; Arguments from C: rdi=fd, rsi=buf, rdx=count
ft_write:
    mov     rax, 1      ; Linux syscall number for write
    syscall
    cmp     rax, 0
    jge     .done       ; on success  return rax

.error:
    push    rax               ; save errno
    call    __errno_location wrt ..plt  ; PIE-safe normal __errno_location not working on my linker
    mov     rdi, rax          ; rdi = &errno
    pop     rax               ; restore errno
    mov     [rdi], eax        ; store 32-bit errno
    mov     rax, -1           ; return -1
.done:
    ret
section .note.GNU-stack noalloc noexec nowrite progbits