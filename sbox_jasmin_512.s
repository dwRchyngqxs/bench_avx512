	.text
	.p2align	5
	.globl	_SubBytes__
	.globl	SubBytes__
_SubBytes__:
SubBytes__:
	pushq	%rbp
	vmovdqa64	(%rdi), %zmm0
	vmovdqa64	1(%rdi), %zmm1
	vmovdqa64	2(%rdi), %zmm2
	vmovdqa64	3(%rdi), %zmm3
	vmovdqa64	4(%rdi), %zmm4
	vmovdqa64	5(%rdi), %zmm5
	vmovdqa64	6(%rdi), %zmm6
	vmovdqa64	7(%rdi), %zmm7
	vpxorq	%zmm5, %zmm3, %zmm8
	vpxorq	%zmm6, %zmm0, %zmm9
	vpxorq	%zmm3, %zmm0, %zmm10
	vpxorq	%zmm5, %zmm0, %zmm11
	vpxorq	%zmm1, %zmm2, %zmm2
	vpxorq	%zmm8, %zmm9, %zmm12
	vpxorq	%zmm7, %zmm2, %zmm13
	vpxorq	%zmm12, %zmm4, %zmm4
	vpxorq	%zmm13, %zmm3, %zmm3
	vpxorq	%zmm13, %zmm0, %zmm14
	vpxorq	%zmm13, %zmm6, %zmm6
	vpxorq	%zmm4, %zmm5, %zmm5
	vpxorq	%zmm4, %zmm1, %zmm1
	vpandq	%zmm3, %zmm7, %zmm4
	vpxorq	%zmm6, %zmm11, %zmm15
	vpandq	%zmm6, %zmm13, %zmm16
	vpxorq	%zmm5, %zmm7, %zmm17
	vpxorq	%zmm5, %zmm2, %zmm18
	vpandq	%zmm5, %zmm12, %zmm19
	vpxorq	%zmm1, %zmm10, %zmm20
	vpandq	%zmm17, %zmm15, %zmm21
	vpandq	%zmm18, %zmm11, %zmm22
	vpxorq	%zmm20, %zmm7, %zmm23
	vpxorq	%zmm20, %zmm18, %zmm24
	vpxorq	%zmm20, %zmm2, %zmm2
	vpandq	%zmm20, %zmm10, %zmm25
	vpandq	%zmm23, %zmm14, %zmm26
	vpandq	%zmm24, %zmm8, %zmm27
	vpxorq	%zmm25, %zmm22, %zmm22
	vpxorq	%zmm27, %zmm25, %zmm25
	vpxorq	%zmm19, %zmm1, %zmm1
	vpxorq	%zmm1, %zmm21, %zmm1
	vpxorq	%zmm1, %zmm25, %zmm1
	vpxorq	%zmm4, %zmm11, %zmm4
	vpxorq	%zmm4, %zmm18, %zmm4
	vpxorq	%zmm4, %zmm19, %zmm4
	vpxorq	%zmm4, %zmm22, %zmm4
	vpandnq	%zmm9, %zmm2, %zmm19
	vpxorq	%zmm16, %zmm9, %zmm16
	vpxorq	%zmm16, %zmm19, %zmm16
	vpxorq	%zmm16, %zmm25, %zmm16
	vpxorq	%zmm19, %zmm0, %zmm0
	vpxorq	%zmm26, %zmm22, %zmm19
	vpxorq	%zmm0, %zmm19, %zmm0
	vpxorq	%zmm1, %zmm4, %zmm19
	vpandq	%zmm16, %zmm1, %zmm1
	vpxorq	%zmm16, %zmm0, %zmm21
	vpxorq	%zmm1, %zmm0, %zmm22
	vpxorq	%zmm1, %zmm4, %zmm25
	vpandq	%zmm25, %zmm21, %zmm21
	vpandq	%zmm22, %zmm19, %zmm25
	vpxorq	%zmm25, %zmm4, %zmm4
	vpxorq	%zmm21, %zmm0, %zmm25
	vpandq	%zmm4, %zmm23, %zmm23
	vpandq	%zmm4, %zmm14, %zmm14
	vpxorq	%zmm21, %zmm1, %zmm1
	vpxorq	%zmm25, %zmm4, %zmm21
	vpandq	%zmm25, %zmm7, %zmm7
	vpandq	%zmm25, %zmm3, %zmm3
	vpandq	%zmm1, %zmm0, %zmm0
	vpandq	%zmm21, %zmm20, %zmm1
	vpandq	%zmm21, %zmm10, %zmm10
	vpxorq	%zmm0, %zmm16, %zmm16
	vpxorq	%zmm16, %zmm25, %zmm20
	vpxorq	%zmm0, %zmm22, %zmm0
	vpandq	%zmm20, %zmm17, %zmm17
	vpandq	%zmm20, %zmm15, %zmm15
	vpandq	%zmm0, %zmm4, %zmm0
	vpandq	%zmm16, %zmm5, %zmm5
	vpandq	%zmm16, %zmm12, %zmm12
	vpxorq	%zmm0, %zmm19, %zmm0
	vpxorq	%zmm5, %zmm7, %zmm7
	vpxorq	%zmm17, %zmm5, %zmm5
	vpxorq	%zmm0, %zmm20, %zmm16
	vpxorq	%zmm0, %zmm4, %zmm4
	vpandq	%zmm0, %zmm13, %zmm13
	vpandq	%zmm0, %zmm6, %zmm0
	vpxorq	%zmm16, %zmm21, %zmm6
	vpandq	%zmm16, %zmm18, %zmm17
	vpandq	%zmm16, %zmm11, %zmm11
	vpandq	%zmm4, %zmm2, %zmm2
	vpandq	%zmm4, %zmm9, %zmm4
	vpandq	%zmm6, %zmm24, %zmm9
	vpandq	%zmm6, %zmm8, %zmm6
	vpxorq	%zmm2, %zmm13, %zmm8
	vpxorq	%zmm4, %zmm7, %zmm13
	vpxorq	%zmm13, %zmm17, %zmm13
	vpxorq	%zmm6, %zmm10, %zmm6
	vpxorq	%zmm8, %zmm9, %zmm9
	vpxorq	%zmm5, %zmm8, %zmm5
	vpxorq	%zmm7, %zmm23, %zmm7
	vpxorq	%zmm7, %zmm2, %zmm2
	vpxorq	%zmm2, %zmm0, %zmm0
	vpxorq	%zmm6, %zmm15, %zmm7
	vpxorq	%zmm9, %zmm1, %zmm1
	vpxorq	%zmm13, %zmm9, %zmm8
	vpxorq	%zmm7, %zmm12, %zmm9
	vpxorq	%zmm7, %zmm3, %zmm3
	vpxorq	%zmm8, %zmm14, %zmm7
	vpxorq	%zmm5, %zmm9, %zmm5
	vmovdqa64	%zmm5, 192(%rsi)
	vpxorq	%zmm9, %zmm1, %zmm9
	vmovdqa64	%zmm9, (%rsi)
	vpxorq	%zmm3, %zmm7, %zmm3
	vmovdqa64	%zmm3, 320(%rsi)
	vpxorq	%zmm5, %zmm2, %zmm2
	vmovdqa64	%zmm2, 256(%rsi)
	vpxorq	%zmm0, %zmm6, %zmm0
	vpternlogq	$15, %zmm0, %zmm0, %zmm0
	vpxorq	%zmm0, %zmm4, %zmm2
	vmovdqa64	%zmm2, 448(%rsi)
	vpxorq	%zmm0, %zmm8, %zmm0
	vmovdqa64	%zmm0, 384(%rsi)
	vpternlogq	$15, %zmm1, %zmm1, %zmm1
	vpxorq	%zmm5, %zmm1, %zmm0
	vmovdqa64	%zmm0, 64(%rsi)
	vpxorq	%zmm11, %zmm10, %zmm0
	vpxorq	%zmm0, %zmm1, %zmm0
	vpxorq	%zmm0, %zmm7, %zmm0
	vmovdqa64	%zmm0, 128(%rsi)
	vzeroupper
	popq	%rbp
	ret 
