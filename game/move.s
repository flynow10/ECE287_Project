createMove:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a5,-40(s0)
	sw	a5,-28(s0)
	lw	a5,-44(s0)
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	lw	a5,-36(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	lw	a4,-24(s0)
	sw	a4,4(a5)
	lw	a4,-20(s0)
	sw	a4,8(a5)
	lw	a0,-36(s0)
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra