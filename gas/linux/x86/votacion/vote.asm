.global _vote

_vote2:
	pushl %ebp			/* Save EBP */
	movl %esp, %ebp		/* Move ESP (where parameters go) to EBP */
	
	movl 8(%ebp), %eax	/* Move C -> EAX(C) */
	orl 16(%ebp), %eax 	/* OR A, EAX(C) -> EAX(C | A) */
	movl %eax, %edx		/* Move EAX(C | A) -> EDX(C | A) */
	andl 12(%ebp),%edx	/* AND B, EDX(C | A) -> EDX(B & (C | A)) */
	movl 16(%ebp),%eax	/* Move A -> EAX(A) */
	andl 8(%ebp),%eax	/* AND C, EAX(A) -> EAX (C & A)*/
	orl %eax,%edx		/* OR EAX(C & A), EDX(B & (C | A)) -> EDX((C & A) | (B & (C | A))) */
	movl %edx,%eax		/* Return value in EAX */
	
	movl %ebp,%esp		/* Restore ESP */
	popl %ebp			/* Pop EBP */
	ret
	
_vote:
	pushl %ebp
	movl %esp, %ebp
	
	pushl %ebx
	movl 16(%ebp), %eax
	andl 12(%ebp), %eax
	movl 8(%ebp), %ebx
	andl 12(%ebp), %ebx
	movl %ebx, %ecx
	movl 8(%ebp), %ebx
	andl 16(%ebp), %ebx
	orl %ecx, %ebx
	orl %ebx, %eax
	
	
	popl %ebx
	jmp .EXIT
.EXIT:
	movl %ebp, %esp
	popl %ebp
	ret
