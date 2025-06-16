section .text
  global ft_strlen

ft_strlen:
  xor rax, rax

.loop:
  cmp byte [rdi + rax], 0
  je .fin
  inc rax ;i++
  jmp .loop
  .fin:
  ret

