.section .data
  prompt:
    .ascii "Please enter a string"
  prompt_len = . - prompt

.section . bss
  .lcomm buffer, 64

.section .text
  .globl_
