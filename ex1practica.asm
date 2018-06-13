.data

v : .word 1, 2, 3
m: .word 1, 2, 3, 4, 5, 6, 7, 8, 9 
r: .word 0, 0, 0

.text

main:

la $a0, v	#load v	
la $a1, r	#load r
la $a2, m	#load m

jal matrix
j exit

matrix:
	addi $sp, $sp, -32
	sw $t0, 0($sp)		# value to compare with i
	sw $t1, 4($sp)		# value to compare with j
	sw $s0, 8($sp)		# i
	sw $s1, 12($sp)		# j
	sw $s2, 16($sp)		# result for  r[i]
	sw $s3, 20($sp)		# result for M[i][j] 
	sw $s4, 24($sp)		#result for v[j]
	sw $ra, 28($sp)		#return adress
	
	add $s0, $zero, $zero		#i = 0
iLoop:
	slti $t0, $s0, 3
	beq $t0, $zero, exitmatrix	#for i<3
	    add $s1, $zero, $zero	#j=0
jLoop:
 	    slti $t1, $s1, 3		
	    beq $t1, $zero, exitjLoop   #for j<3		

#exitjloop: 	      	     
exitmatrix:
    				#return values to operate
	lw $t0, 0($sp)
	lw $t1, 4($sp)
	lw $s0, 8($sp)
	lw $s1, 12($sp)	
	lw $s2, 16($sp)
	lw $s3, 20($sp)
	lw $s4, 24($sp)
	lw $ra, 28($sp)
	addi $sp, $sp, 32
    	jr $ra 


exit:
