.section .data
msg:    .ascii "Hello World\n"

.section .text
.global _start

_start:
    // write(1, msg, 12)

    mov x0, #1          // stdout
    ldr x1, =msg        // endereço da mensagem
    mov x2, #12         // tamanho da string
    mov x8, #64         // syscall write
    svc 0

    // exit(0)

    mov x0, #0          // código de saída
    mov x8, #93         // syscall exit
    svc 0
