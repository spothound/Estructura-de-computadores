
.data
msg:	.string "¡Hola, mundo!\n"
tam:	.quad . - msg # esta dirección menos la de msg (anterior) 


.text
	.globl _start


write: movl $4, %eax
       movl $1, %ebx
       movl $msg, %ecx
       movl tam, %edx
       int $0x80
       ret

exit:  movl $1, %eax
       xorl %ebx, %ebx
       int $0x80

_start:
	call write
	call exit
	
       
