# Jimin Kim 700773907
start:
	li a0, 20
	li a1, 30
	li a2, 40
	jal diff_mean
	j end
	
diff_mean:
	addi sp, sp, -4		# make space for 2 registers
	sw ra, 0(sp)
	jal mean
	mv t1, a0		# m1
	
	mv a0, a1
	mv a1, a2
	jal mean
	mv t2, a0		# m2
	
	sub a0, t1, t2		# m1 - m2
	
	lw ra, 0(sp)		# pop
	addi sp, sp, 4
	ret
	
mean:
	add t0, a0, a1
	srli a0, t0, 1		# m = (x+y)/2
	ret	

end:
	nop