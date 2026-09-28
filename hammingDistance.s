.section .data
  prompt1:
    .ascii "Please enter a string:"
  prompt1_len = . - prompt1
  
  prompt2:
    .ascii "Please enter another string: "
  prompt2_len = . - prompt2

.section . bss
  .lcomm buffer, 64
  .lcomm buffer2, 64
.section .text
  .globl get_input

  get_input:

    pushq %rdi
    pushq %rsi

    movq $1, %rax
    movq $1, %rdi
    movq $prompt1, %rsi
    movq $prompt1_len, $rdx
    syscall
    movq $0, %rax
    movq $0, %rdi
    movq $buffer1, %rsi
    movq $64, %rdx
    movq $0, buffer1-1(%rax)
    movq $1, %rax
    movq $1, %rdi
    movq $prompt2, %rsi
    movq $promp2_len, %rdx
    syscall
    movq $0, buffer2-1(%rax)
    popq %rsi
    popq %rdi

    movq $buffer1, (%rdi)
    movq $buffer2, (%rsi)
    ret

    .section .note.GNU-stack,"",@progbits
