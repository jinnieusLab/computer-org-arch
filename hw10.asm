# Jimin Kim 700773907
	
test:
	li a0, 20
	li a1, 30
	jal ra, mean
	j exit
	
mean:
	addi sp, sp, -8 # stack for 2 regs
	sw t0, 4(sp)	# push
	sw s4, 0(sp)
	add t0, a0, a1	# calculate
	srli s4, t0, 1
	mv a0, s4
	lw s4, 0(sp)	# pop
	lw t0, 4(sp)
	addi sp, sp, 8
	ret

exit:
	nop