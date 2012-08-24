# Project Euler Problem 001
# MIPS Assembly
# by Sviatoslav "Lermex" Chumakov

.text
    li      $t1,0			# Loop counter
    li      $t8,0			# Sum of integers - answer
loop:		
    addi    $t1,$t1,1
    li      $t3,3
    div     $t1,$t3
    mfhi    $t4
    beqz    $t4,addNumber
    li      $t3,5
    div     $t1,$t3
    mfhi    $t4
    beqz    $t4,addNumber
condition:
    blt     $t1,999,loop
    nop
    j       exit

addNumber:
    add     $t8,$t8,$t1
    j       condition

exit:	
    li      $v0,1			# v0 = 1 - "Print Integer"
    move    $a0,$t8
    syscall

