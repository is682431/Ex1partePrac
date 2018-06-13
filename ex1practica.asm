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
