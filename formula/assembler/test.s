.global _start

_start:
  callq main.main

os.Exit:
  movq 8(%rsp), %rdi
  movq $60, %rax
  syscall

main.main:
  movq $42, %rax
  pushq %rax
  popq %rax
  pushq %rax
  callq os.Exit
  ret

