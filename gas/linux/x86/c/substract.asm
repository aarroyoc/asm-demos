.global _substract

_substract:
	movl 4(%esp), %eax
	movl 8(%esp), %edx
	subl %edx, %eax
	ret
