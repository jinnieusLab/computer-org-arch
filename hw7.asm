# Jimin Kim 700773907
# f = (g - i + 4) - (h - 7)

.data
vars:
f:       .word 0
g:       .word 0
h:       .word 0
i:       .word 0
f_msg:   .asciz "The result f is = "

.text
start:
         la t0, vars      	# Load the address of the variables into t0 
        
         li a7, 5
         ecall
         sw a0, 4(t0)		# Store user input value into memory location for ㅎ
         
         li a7, 5
         ecall
         sw a0, 12(t0)		# Store user input value into memory location for i
         
         lw t1, 4(t0)		# Load variable g into t1
         lw t2, 12(t0)		# Load variable i into t2
         sub t3, t1, t2		# g-i and store in t3
         addi t3, t3, 4		# g-i+4 and store in t3
         
         li a7, 5
         ecall
         sw a0, 8(t0)		# Store user input value into memory location for h
         	
         lw t1, 8(t0)    # Load variable h into t1
         addi t4, t1, -7   # h-7 and store in t4
         sub t5, t3, t4   # (g-i+4)-(h-7) and store in t5
         
         sw t5, 0(t0)     # Store t5 in variable f
         
         li a7, 4         # PrintString call number
         la a0, f_msg      # Load address of f_msg string to a0
         ecall            # Make the call

         li a7, 1          # PrintInt call number
         lw a0, 0(t0)      # Read the result f from memory into a0
         ecall            # Make the call
