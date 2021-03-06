.data
############################################################
#                      STRUCT ANALYSER                     #
############################################################
############################################################
amount:	.space 4
deposit:	.space 4
withdraw:	.space 4
choice:	.space 4
pin:	.space 4
k:	.space 4
transaction:	.space 4
############################################################
#                      STRING ANALYSER                     #
$STR$0: .asciiz "ENTER YOUR SECRET PIN NUMBER:   "
$STR$1: .asciiz "PLEASE ENTER VALID PASSWORD\n    "
$STR$2: .asciiz "********Welcome to ATM Service**************\n   "
$STR$3: .asciiz "1. Check Balance\n   "
$STR$4: .asciiz "2. Withdraw Cash\n   "
$STR$5: .asciiz "3. Deposit Cash\n    "
$STR$6: .asciiz "4. Quit\n    "
$STR$7: .asciiz "******************?**************************?*\n\n   "
$STR$8: .asciiz "Enter your choice:  "
$STR$9: .asciiz "\n YOUR BALANCE IN Rs :  "
$STR$10: .asciiz "\n ENTER THE AMOUNT TO WITHDRAW:     "
$STR$11: .asciiz "\n PLEASE ENTER THE AMOUNT IN MULTIPLES OF 100!  "
$STR$12: .asciiz "\n INSUFFICENT BALANCE   "
$STR$13: .asciiz "\n\n PLEASE COLLECT CASH  "
$STR$14: .asciiz "\n YOUR CURRENT BALANCE IS:  "
$STR$15: .asciiz "\n ENTER THE AMOUNT TO DEPOSIT:  "
$STR$16: .asciiz "YOUR BALANCE IS:    "
$STR$17: .asciiz "\n THANK YOU FOR USING ATM!  "
$STR$18: .asciiz "\n INVALID CHOICE!   "
$STR$19: .asciiz "\n\n\n DO U WISH TO HAVE ANOTHER TRANSCATION?(y/n): \n  "
$STR$20: .asciiz "\n\n THANKS FOR USING OUR ATM SERVICE!    "
############################################################
.text
	j	main
main: 
	# GUARD
	addiu	$sp, $sp, 0
	lw	$0, 0($sp)
	move	$a0, $sp
	# GUARD END
	addiu	$sp, $sp, -12
	sw	$a0, 8($sp)
	sw	$ra, 4($sp)
	sw	$fp, 0($sp)
	move	$fp, $sp
# ast.Assign@15db9742 : start
	li	$t9, 1000
# ast.VarExpr@7852e922 : start
	la	$t8, amount
# ast.VarExpr@7852e922 : end
	# WORD STORING
	sw	$t9, 0($t8)
# ast.Assign@15db9742 : end
# ast.Assign@70dea4e : start
	li	$t8, 'y'
# ast.VarExpr@5c647e05 : start
	la	$t9, transaction
# ast.VarExpr@5c647e05 : end
	# BYTE STORING
	sb	$t8, 0($t9)
# ast.Assign@70dea4e : end
# ast.Assign@33909752 : start
	li	$t9, 0
# ast.VarExpr@55f96302 : start
	la	$t8, k
# ast.VarExpr@55f96302 : end
	# WORD STORING
	sw	$t9, 0($t8)
# ast.Assign@33909752 : end
# ast.BinOp@3d4eac69 : start
# ast.VarExpr@42a57993 : start
	la	$t8, pin
	lw	$t8, 0($t8) # Val Analysis
# ast.VarExpr@42a57993 : end
	li	$t9, 1520
	bne	$t8, $t9, L1
	li	$t8, 0
	j	L0
L1:
	li	$t8, 1
L0:
# ast.BinOp@3d4eac69 : end
	beqz	$t8, $WHILE_END0
$WHILE0:
# ast.FunCallExpr@75b84c92 : start
# Function call : print_s
# ast.TypecastExpr@6bc7c054 : start
# ast.VarExpr@232204a1 : start
	la	$t8, $STR$0
# ast.VarExpr@232204a1 : end
# ast.TypecastExpr@6bc7c054 : end
	li	$v0, 4
	addu	$a0, $0, $t8
	syscall
# ast.Assign@4aa298b7 : start
# ast.FunCallExpr@7d4991ad : start
# Function call : read_i
	li	$v0, 5
	syscall
	addu	$t8, $0, $v0
# ast.VarExpr@28d93b30 : start
	la	$t9, pin
# ast.VarExpr@28d93b30 : end
	# WORD STORING
	sw	$t8, 0($t9)
# ast.Assign@4aa298b7 : end
# ast.If@1b6d3586 : start
# ast.BinOp@4554617c : start
# ast.VarExpr@74a14482 : start
	la	$t9, pin
	lw	$t9, 0($t9) # Val Analysis
# ast.VarExpr@74a14482 : end
	li	$t8, 1520
	bne	$t9, $t8, L3
	li	$t9, 0
	j	L2
L3:
	li	$t9, 1
L2:
# ast.BinOp@4554617c : end
	bnez	$t9, $IF_STMT0
	j	$ELSE0
$IF_STMT0:
# ast.FunCallExpr@1540e19d : start
# Function call : print_s
# ast.TypecastExpr@677327b6 : start
# ast.VarExpr@14ae5a5 : start
	la	$t9, $STR$1
# ast.VarExpr@14ae5a5 : end
# ast.TypecastExpr@677327b6 : end
	li	$v0, 4
	addu	$a0, $0, $t9
	syscall
$ELSE0:
# ast.If@1b6d3586 : end
# ast.BinOp@3d4eac69 : start
# ast.VarExpr@42a57993 : start
	la	$t9, pin
	lw	$t9, 0($t9) # Val Analysis
# ast.VarExpr@42a57993 : end
	li	$t8, 1520
	bne	$t9, $t8, L5
	li	$t9, 0
	j	L4
L5:
	li	$t9, 1
L4:
# ast.BinOp@3d4eac69 : end
	bnez	$t9, $WHILE0
$WHILE_END0:
# ast.BinOp@7f31245a : start
# ast.VarExpr@6d6f6e28 : start
	la	$t9, k
	lw	$t9, 0($t9) # Val Analysis
# ast.VarExpr@6d6f6e28 : end
	li	$t8, 0
	beq	$t9, $t8, L7
	li	$t9, 0
	j	L6
L7:
	li	$t9, 1
L6:
# ast.BinOp@7f31245a : end
	beqz	$t9, $WHILE_END1
$WHILE1:
# ast.FunCallExpr@135fbaa4 : start
# Function call : print_c
	li	$t9, '\n'
	li	$v0, 11
	add	$a0, $0, $t9
	syscall
# ast.FunCallExpr@45ee12a7 : start
# Function call : print_s
# ast.TypecastExpr@330bedb4 : start
# ast.VarExpr@2503dbd3 : start
	la	$t9, $STR$2
# ast.VarExpr@2503dbd3 : end
# ast.TypecastExpr@330bedb4 : end
	li	$v0, 4
	addu	$a0, $0, $t9
	syscall
# ast.FunCallExpr@4b67cf4d : start
# Function call : print_s
# ast.TypecastExpr@7ea987ac : start
# ast.VarExpr@12a3a380 : start
	la	$t9, $STR$3
# ast.VarExpr@12a3a380 : end
# ast.TypecastExpr@7ea987ac : end
	li	$v0, 4
	addu	$a0, $0, $t9
	syscall
# ast.FunCallExpr@29453f44 : start
# Function call : print_s
# ast.TypecastExpr@5cad8086 : start
# ast.VarExpr@6e0be858 : start
	la	$t9, $STR$4
# ast.VarExpr@6e0be858 : end
# ast.TypecastExpr@5cad8086 : end
	li	$v0, 4
	addu	$a0, $0, $t9
	syscall
# ast.FunCallExpr@61bbe9ba : start
# Function call : print_s
# ast.TypecastExpr@610455d6 : start
# ast.VarExpr@511d50c0 : start
	la	$t9, $STR$5
# ast.VarExpr@511d50c0 : end
# ast.TypecastExpr@610455d6 : end
	li	$v0, 4
	addu	$a0, $0, $t9
	syscall
# ast.FunCallExpr@60e53b93 : start
# Function call : print_s
# ast.TypecastExpr@5e2de80c : start
# ast.VarExpr@1d44bcfa : start
	la	$t9, $STR$6
# ast.VarExpr@1d44bcfa : end
# ast.TypecastExpr@5e2de80c : end
	li	$v0, 4
	addu	$a0, $0, $t9
	syscall
# ast.FunCallExpr@266474c2 : start
# Function call : print_s
# ast.TypecastExpr@6f94fa3e : start
# ast.VarExpr@5e481248 : start
	la	$t9, $STR$7
# ast.VarExpr@5e481248 : end
# ast.TypecastExpr@6f94fa3e : end
	li	$v0, 4
	addu	$a0, $0, $t9
	syscall
# ast.FunCallExpr@66d3c617 : start
# Function call : print_s
# ast.TypecastExpr@63947c6b : start
# ast.VarExpr@2b193f2d : start
	la	$t9, $STR$8
# ast.VarExpr@2b193f2d : end
# ast.TypecastExpr@63947c6b : end
	li	$v0, 4
	addu	$a0, $0, $t9
	syscall
# ast.Assign@355da254 : start
# ast.FunCallExpr@4dc63996 : start
# Function call : read_i
	li	$v0, 5
	syscall
	addu	$t9, $0, $v0
# ast.VarExpr@d716361 : start
	la	$t8, choice
# ast.VarExpr@d716361 : end
	# WORD STORING
	sw	$t9, 0($t8)
# ast.Assign@355da254 : end
# ast.If@6ff3c5b5 : start
# ast.BinOp@3764951d : start
# ast.VarExpr@4b1210ee : start
	la	$t8, choice
	lw	$t8, 0($t8) # Val Analysis
# ast.VarExpr@4b1210ee : end
	li	$t9, 1
	beq	$t8, $t9, L9
	li	$t8, 0
	j	L8
L9:
	li	$t8, 1
L8:
# ast.BinOp@3764951d : end
	bnez	$t8, $IF_STMT1
# ast.If@4d7e1886 : start
# ast.BinOp@3cd1a2f1 : start
# ast.VarExpr@2f0e140b : start
	la	$t8, choice
	lw	$t8, 0($t8) # Val Analysis
# ast.VarExpr@2f0e140b : end
	li	$t9, 2
	beq	$t8, $t9, L11
	li	$t8, 0
	j	L10
L11:
	li	$t8, 1
L10:
# ast.BinOp@3cd1a2f1 : end
	bnez	$t8, $IF_STMT2
# ast.If@7440e464 : start
# ast.BinOp@49476842 : start
# ast.VarExpr@78308db1 : start
	la	$t8, choice
	lw	$t8, 0($t8) # Val Analysis
# ast.VarExpr@78308db1 : end
	li	$t9, 3
	beq	$t8, $t9, L13
	li	$t8, 0
	j	L12
L13:
	li	$t8, 1
L12:
# ast.BinOp@49476842 : end
	bnez	$t8, $IF_STMT3
# ast.If@27c170f0 : start
# ast.BinOp@5451c3a8 : start
# ast.VarExpr@2626b418 : start
	la	$t8, choice
	lw	$t8, 0($t8) # Val Analysis
# ast.VarExpr@2626b418 : end
	li	$t9, 4
	beq	$t8, $t9, L15
	li	$t8, 0
	j	L14
L15:
	li	$t8, 1
L14:
# ast.BinOp@5451c3a8 : end
	bnez	$t8, $IF_STMT4
# ast.FunCallExpr@5a07e868 : start
# Function call : print_s
# ast.TypecastExpr@76ed5528 : start
# ast.VarExpr@2c7b84de : start
	la	$t8, $STR$18
# ast.VarExpr@2c7b84de : end
# ast.TypecastExpr@76ed5528 : end
	li	$v0, 4
	addu	$a0, $0, $t8
	syscall
	j	$ELSE4
$IF_STMT4:
# ast.FunCallExpr@3fee733d : start
# Function call : print_s
# ast.TypecastExpr@5acf9800 : start
# ast.VarExpr@4617c264 : start
	la	$t8, $STR$17
# ast.VarExpr@4617c264 : end
# ast.TypecastExpr@5acf9800 : end
	li	$v0, 4
	addu	$a0, $0, $t8
	syscall
$ELSE4:
# ast.If@27c170f0 : end
	j	$ELSE3
$IF_STMT3:
# ast.FunCallExpr@36baf30c : start
# Function call : print_s
# ast.TypecastExpr@7a81197d : start
# ast.VarExpr@5ca881b5 : start
	la	$t8, $STR$15
# ast.VarExpr@5ca881b5 : end
# ast.TypecastExpr@7a81197d : end
	li	$v0, 4
	addu	$a0, $0, $t8
	syscall
# ast.Assign@24d46ca6 : start
# ast.FunCallExpr@4517d9a3 : start
# Function call : read_i
	li	$v0, 5
	syscall
	addu	$t8, $0, $v0
# ast.VarExpr@372f7a8d : start
	la	$t9, deposit
# ast.VarExpr@372f7a8d : end
	# WORD STORING
	sw	$t8, 0($t9)
# ast.Assign@24d46ca6 : end
# ast.Assign@2f92e0f4 : start
# ast.BinOp@28a418fc : start
# ast.VarExpr@5305068a : start
	la	$t9, amount
	lw	$t9, 0($t9) # Val Analysis
# ast.VarExpr@5305068a : end
# ast.VarExpr@1f32e575 : start
	la	$t8, deposit
	lw	$t8, 0($t8) # Val Analysis
# ast.VarExpr@1f32e575 : end
	addu	$t9, $t9, $t8
# ast.BinOp@28a418fc : end
# ast.VarExpr@279f2327 : start
	la	$t8, amount
# ast.VarExpr@279f2327 : end
	# WORD STORING
	sw	$t9, 0($t8)
# ast.Assign@2f92e0f4 : end
# ast.FunCallExpr@2ff4acd0 : start
# Function call : print_s
# ast.TypecastExpr@54bedef2 : start
# ast.VarExpr@5caf905d : start
	la	$t8, $STR$16
# ast.VarExpr@5caf905d : end
# ast.TypecastExpr@54bedef2 : end
	li	$v0, 4
	addu	$a0, $0, $t8
	syscall
# ast.FunCallExpr@27716f4 : start
# Function call : print_i
# ast.VarExpr@8efb846 : start
	la	$t8, amount
	lw	$t8, 0($t8) # Val Analysis
# ast.VarExpr@8efb846 : end
	li	$v0, 1
	addu	$a0, $0, $t8
	syscall
$ELSE3:
# ast.If@7440e464 : end
	j	$ELSE2
$IF_STMT2:
# ast.FunCallExpr@2a84aee7 : start
# Function call : print_s
# ast.TypecastExpr@a09ee92 : start
# ast.VarExpr@30f39991 : start
	la	$t8, $STR$10
# ast.VarExpr@30f39991 : end
# ast.TypecastExpr@a09ee92 : end
	li	$v0, 4
	addu	$a0, $0, $t8
	syscall
# ast.Assign@452b3a41 : start
# ast.FunCallExpr@4a574795 : start
# Function call : read_i
	li	$v0, 5
	syscall
	addu	$t8, $0, $v0
# ast.VarExpr@f6f4d33 : start
	la	$t9, withdraw
# ast.VarExpr@f6f4d33 : end
	# WORD STORING
	sw	$t8, 0($t9)
# ast.Assign@452b3a41 : end
# ast.If@23fc625e : start
# ast.BinOp@3f99bd52 : start
# ast.BinOp@4f023edb : start
# ast.VarExpr@3a71f4dd : start
	la	$t9, withdraw
	lw	$t9, 0($t9) # Val Analysis
# ast.VarExpr@3a71f4dd : end
	li	$t8, 100
	div	$t9, $t9, $t8
	mfhi	$t9
# ast.BinOp@4f023edb : end
	li	$t8, 0
	bne	$t9, $t8, L17
	li	$t9, 0
	j	L16
L17:
	li	$t9, 1
L16:
# ast.BinOp@3f99bd52 : end
	bnez	$t9, $IF_STMT5
# ast.If@7adf9f5f : start
# ast.BinOp@85ede7b : start
# ast.VarExpr@5674cd4d : start
	la	$t9, withdraw
	lw	$t9, 0($t9) # Val Analysis
# ast.VarExpr@5674cd4d : end
# ast.BinOp@63961c42 : start
# ast.VarExpr@65b54208 : start
	la	$t8, amount
	lw	$t8, 0($t8) # Val Analysis
# ast.VarExpr@65b54208 : end
	li	$s7, 500
	subu	$t8, $t8, $s7
# ast.BinOp@63961c42 : end
	slt	$t9, $t8, $t9
# ast.BinOp@85ede7b : end
	bnez	$t9, $IF_STMT6
# ast.Assign@6b884d57 : start
# ast.BinOp@38af3868 : start
# ast.VarExpr@77459877 : start
	la	$t9, amount
	lw	$t9, 0($t9) # Val Analysis
# ast.VarExpr@77459877 : end
# ast.VarExpr@5b2133b1 : start
	la	$t8, withdraw
	lw	$t8, 0($t8) # Val Analysis
# ast.VarExpr@5b2133b1 : end
	subu	$t9, $t9, $t8
# ast.BinOp@38af3868 : end
# ast.VarExpr@72ea2f77 : start
	la	$t8, amount
# ast.VarExpr@72ea2f77 : end
	# WORD STORING
	sw	$t9, 0($t8)
# ast.Assign@6b884d57 : end
# ast.FunCallExpr@33c7353a : start
# Function call : print_s
# ast.TypecastExpr@681a9515 : start
# ast.VarExpr@3af49f1c : start
	la	$t8, $STR$13
# ast.VarExpr@3af49f1c : end
# ast.TypecastExpr@681a9515 : end
	li	$v0, 4
	addu	$a0, $0, $t8
	syscall
# ast.FunCallExpr@19469ea2 : start
# Function call : print_s
# ast.TypecastExpr@13221655 : start
# ast.VarExpr@2f2c9b19 : start
	la	$t8, $STR$14
# ast.VarExpr@2f2c9b19 : end
# ast.TypecastExpr@13221655 : end
	li	$v0, 4
	addu	$a0, $0, $t8
	syscall
# ast.FunCallExpr@31befd9f : start
# Function call : print_i
# ast.VarExpr@1c20c684 : start
	la	$t8, amount
	lw	$t8, 0($t8) # Val Analysis
# ast.VarExpr@1c20c684 : end
	li	$v0, 1
	addu	$a0, $0, $t8
	syscall
	j	$ELSE6
$IF_STMT6:
# ast.FunCallExpr@1fb3ebeb : start
# Function call : print_s
# ast.TypecastExpr@548c4f57 : start
# ast.VarExpr@1218025c : start
	la	$t8, $STR$12
# ast.VarExpr@1218025c : end
# ast.TypecastExpr@548c4f57 : end
	li	$v0, 4
	addu	$a0, $0, $t8
	syscall
$ELSE6:
# ast.If@7adf9f5f : end
	j	$ELSE5
$IF_STMT5:
# ast.FunCallExpr@816f27d : start
# Function call : print_s
# ast.TypecastExpr@87aac27 : start
# ast.VarExpr@3e3abc88 : start
	la	$t8, $STR$11
# ast.VarExpr@3e3abc88 : end
# ast.TypecastExpr@87aac27 : end
	li	$v0, 4
	addu	$a0, $0, $t8
	syscall
$ELSE5:
# ast.If@23fc625e : end
$ELSE2:
# ast.If@4d7e1886 : end
	j	$ELSE1
$IF_STMT1:
# ast.FunCallExpr@6ce253f1 : start
# Function call : print_s
# ast.TypecastExpr@53d8d10a : start
# ast.VarExpr@e9e54c2 : start
	la	$t8, $STR$9
# ast.VarExpr@e9e54c2 : end
# ast.TypecastExpr@53d8d10a : end
	li	$v0, 4
	addu	$a0, $0, $t8
	syscall
# ast.FunCallExpr@65ab7765 : start
# Function call : print_i
# ast.VarExpr@1b28cdfa : start
	la	$t8, amount
	lw	$t8, 0($t8) # Val Analysis
# ast.VarExpr@1b28cdfa : end
	li	$v0, 1
	addu	$a0, $0, $t8
	syscall
$ELSE1:
# ast.If@6ff3c5b5 : end
# ast.FunCallExpr@eed1f14 : start
# Function call : print_s
# ast.TypecastExpr@7229724f : start
# ast.VarExpr@4c873330 : start
	la	$t8, $STR$19
# ast.VarExpr@4c873330 : end
# ast.TypecastExpr@7229724f : end
	li	$v0, 4
	addu	$a0, $0, $t8
	syscall
# ast.Assign@119d7047 : start
# ast.FunCallExpr@776ec8df : start
# Function call : read_c
	li	$v0, 12
	syscall
	addu	$t8, $0, $v0
# ast.VarExpr@4eec7777 : start
	la	$t9, transaction
# ast.VarExpr@4eec7777 : end
	# BYTE STORING
	sb	$t8, 0($t9)
# ast.Assign@119d7047 : end
# ast.If@3b07d329 : start
# ast.BinOp@41629346 : start
# ast.BinOp@404b9385 : start
# ast.VarExpr@6d311334 : start
	la	$t9, transaction
	lb	$t9, 0($t9)
# ast.VarExpr@6d311334 : end
	li	$t8, 'n'
	beq	$t9, $t8, L19
	li	$t9, 0
	j	L18
L19:
	li	$t9, 1
L18:
# ast.BinOp@404b9385 : end
	bnez	$t9, L20
# ast.BinOp@682a0b20 : start
# ast.VarExpr@3d075dc0 : start
	la	$t8, transaction
	lb	$t8, 0($t8)
# ast.VarExpr@3d075dc0 : end
	li	$s7, 'N'
	beq	$t8, $s7, L23
	li	$t8, 0
	j	L22
L23:
	li	$t8, 1
L22:
# ast.BinOp@682a0b20 : end
	bnez	$t8, L20
	li	$t9, 0
	j	L21
L20:
	li	$t9, 1
L21:
# ast.BinOp@41629346 : end
	bnez	$t9, $IF_STMT7
	j	$ELSE7
$IF_STMT7:
# ast.Assign@214c265e : start
	li	$t9, 1
# ast.VarExpr@448139f0 : start
	la	$t8, k
# ast.VarExpr@448139f0 : end
	# WORD STORING
	sw	$t9, 0($t8)
# ast.Assign@214c265e : end
$ELSE7:
# ast.If@3b07d329 : end
# ast.BinOp@7f31245a : start
# ast.VarExpr@6d6f6e28 : start
	la	$t8, k
	lw	$t8, 0($t8) # Val Analysis
# ast.VarExpr@6d6f6e28 : end
	li	$t9, 0
	beq	$t8, $t9, L25
	li	$t8, 0
	j	L24
L25:
	li	$t8, 1
L24:
# ast.BinOp@7f31245a : end
	bnez	$t8, $WHILE1
$WHILE_END1:
# ast.FunCallExpr@7cca494b : start
# Function call : print_s
# ast.TypecastExpr@7ba4f24f : start
# ast.VarExpr@3b9a45b3 : start
	la	$t8, $STR$20
# ast.VarExpr@3b9a45b3 : end
# ast.TypecastExpr@7ba4f24f : end
	li	$v0, 4
	addu	$a0, $0, $t8
	syscall
main_epilogue:
	li	$a0, 0
	li	$v0, 17
	syscall
