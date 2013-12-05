.global _add #define the function

_add:
	movl 4(%esp), %eax #get the second parameter
	movl 8(%esp), %edx #get the first parameter
	addl %edx, %eax #add, store the value on eax
	ret
