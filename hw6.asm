# Jimin Kim 700773907

# Input g
li a7, 5
ecall
mv x21, a0

# Input i
li a7, 5
ecall
mv x23, a0

# g-i+4
sub t0, x21, x23
addi t0, t0, 4

# Input h
li a7, 5
ecall
mv x22, a0

# h-7
addi t1, x22, -7

# (g-i+4) - (h-7)
sub x20, t0, t1

# Output
li a7, 1
mv a0, x20
ecall