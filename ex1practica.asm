.data

v : .word 1, 2, 3
m: .word 1, 2, 3, 4, 5, 6 
r: .word 0, 0, 0

.text

	add $a0, $zero, $zero	# initalize i
	add $a1, $zero, $zero	# initalize j
	addi $t0, $zero, 3	# used to compare if j < 3
 
 
