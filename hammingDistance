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

    push %rdi
    push %rsi

    mov $1, %rax
    mov $1, %rdi
    mov $prompt1, %rsi
    mov $prompt1_len, $rdx
    syscall
    mov $0, %rax
    mov $0, %rdi
    mov $buffer1, %rsi
    mov $64, %rdx
    mov $0, buffer1-1(%rax)
    mov $1, %rax
    mov $1, %rdi
    mov $prompt2, %rsi
    mov $promp2_len, %rdx
    syscall
    mov $0, buffer2-1(%rax)
    pop %rsi
    pop %rdi

    mov $buffer1, (%rdi)
    mov $buffer2, (%rsi)
    ret

    .section .note.GNU-stack,"",@progbits
