#Jimin Kim 700773907

.data
data: 	.word 1,2,3,4,5		# data array

.text 
start:
	la x22, data		# load address
	mv x21, zero		# sum = 0
	mv x20, zero		# i = 0
	li t3, 5

loop:
	slli t0, x20, 2		# multiply i by 4
	add t1, t0, x22		# add to data base
	lw t2, 0(t1)		# load data[i]
	add x21, x21, t2	# sum = sum + data[i]
	
	addi x20, x20, 1	# i++
	
	blt x20, t3, loop	# i<5
	beq x20, t3, exit	
	
exit:
	nop