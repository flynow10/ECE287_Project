createBoard:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	li	a0,264
	call	malloc
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	li	a4,1
	sb	a4,256(a5)
	li	a0,20
	call	malloc
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	sw	zero,8(a5)
	lw	a5,-28(s0)
	li	a4,-1
	sw	a4,4(a5)
	lw	a5,-28(s0)
	sw	zero,0(a5)
	lw	a5,-28(s0)
	sw	zero,12(a5)
	lw	a5,-24(s0)
	lw	a4,-28(s0)
	sw	a4,260(a5)
	sw	zero,-20(s0)
	j	board.L2
board.L3:
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,0(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
board.L2:
	lw	a4,-20(s0)
	li	a5,63
	ble	a4,a5,board.L3
	lw	a5,-24(s0)
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
makeMove:
	addi	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	addi	s0,sp,64
	sw	a0,-52(s0)
	mv	s1,a1
	lw	a5,0(s1)
	lw	a4,-52(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	beq	a5,zero,board.L6
	lw	a5,-20(s0)
	andi	a5,a5,16
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a4,a5
	lw	a5,-52(s0)
	lbu	a5,256(a5)
	bne	a4,a5,board.L7
board.L6:
	li	a5,0
	j	board.L14
board.L7:
	lw	a5,4(s1)
	lw	a4,-52(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-24(s0)
	lw	a5,-52(s0)
	lw	a5,260(a5)
	lw	a1,0(a5)
	lw	a2,4(a5)
	lw	a3,8(a5)
	lw	a4,12(a5)
	lw	a5,16(a5)
	sw	a1,-44(s0)
	sw	a2,-40(s0)
	sw	a3,-36(s0)
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	sw	a5,-32(s0)
	lw	a5,-52(s0)
	lw	a5,260(a5)
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	bne	a5,zero,board.L9
	lw	a5,-20(s0)
	andi	a4,a5,15
	li	a5,1
	beq	a4,a5,board.L9
	lw	a5,-44(s0)
	addi	a5,a5,1
	sw	a5,-44(s0)
board.L9:
	lw	a5,8(s1)
	beq	a5,zero,board.L10
	lw	a4,8(s1)
	lw	a5,-52(s0)
	lbu	a5,256(a5)
	beq	a5,zero,board.L11
	li	a5,0
	j	board.L12
board.L11:
	li	a5,16
board.L12:
	lw	a2,4(s1)
	or	a4,a5,a4
	lw	a3,-52(s0)
	slli	a5,a2,2
	add	a5,a3,a5
	sw	a4,0(a5)
	j	board.L13
board.L10:
	lw	a5,4(s1)
	lw	a4,-52(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,0(a5)
board.L13:
	lw	a5,0(s1)
	lw	a4,-52(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,0(a5)
	lw	a5,-52(s0)
	lbu	a5,256(a5)
	snez	a5,a5
	andi	a5,a5,0xff
	xori	a5,a5,1
	andi	a5,a5,0xff
	andi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-52(s0)
	sb	a4,256(a5)
	li	a5,1
board.L14:
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	addi	sp,sp,64
	jr	ra
undoMove:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	mv	s1,a1
	lw	a5,4(s1)
	lw	a4,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	lw	a5,0(s1)
	lw	a4,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,0(a5)
	lw	a5,-36(s0)
	lw	a5,260(a5)
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	lw	a4,16(a5)
	lw	a5,-36(s0)
	sw	a4,260(a5)
	lw	a5,4(s1)
	lw	a4,-24(s0)
	lw	a4,12(a4)
	lw	a3,-36(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a5,-36(s0)
	lbu	a5,256(a5)
	snez	a5,a5
	andi	a5,a5,0xff
	xori	a5,a5,1
	andi	a5,a5,0xff
	andi	a5,a5,1
	andi	a4,a5,0xff
	lw	a5,-36(s0)
	sb	a4,256(a5)
	lw	a0,-24(s0)
	call	free
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	addi	sp,sp,48
	jr	ra