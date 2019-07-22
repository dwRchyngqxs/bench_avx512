	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"sbox_avx512.c"
	.def	 SubBytes_single__V16;
	.scl	2;
	.type	32;
	.endef
	.globl	SubBytes_single__V16    # -- Begin function SubBytes_single__V16
	.p2align	4, 0x90
SubBytes_single__V16:                   # @SubBytes_single__V16
.seh_proc SubBytes_single__V16
# %bb.0:
	pushq	%rsi
	.seh_pushreg 6
	pushq	%rdi
	.seh_pushreg 7
	pushq	%rbx
	.seh_pushreg 3
	subq	$96, %rsp
	.seh_stackalloc 96
	vmovaps	%xmm11, 80(%rsp)        # 16-byte Spill
	.seh_savexmm 11, 80
	vmovaps	%xmm10, 64(%rsp)        # 16-byte Spill
	.seh_savexmm 10, 64
	vmovaps	%xmm9, 48(%rsp)         # 16-byte Spill
	.seh_savexmm 9, 48
	vmovaps	%xmm8, 32(%rsp)         # 16-byte Spill
	.seh_savexmm 8, 32
	vmovaps	%xmm7, 16(%rsp)         # 16-byte Spill
	.seh_savexmm 7, 16
	vmovaps	%xmm6, (%rsp)           # 16-byte Spill
	.seh_savexmm 6, 0
	.seh_endprologue
	movq	184(%rsp), %rax
	vmovdqa64	(%rax), %zmm3
	vmovdqa64	(%rdx), %zmm16
	vmovdqa64	(%rcx), %zmm17
	movq	176(%rsp), %rax
	vmovdqa64	(%rax), %zmm5
	vmovdqa64	(%r9), %zmm18
	movq	168(%rsp), %rax
	vmovdqa64	(%rax), %zmm19
	movq	208(%rsp), %r9
	movq	200(%rsp), %r10
	movq	240(%rsp), %r11
	movq	248(%rsp), %rax
	movq	224(%rsp), %rdx
	movq	232(%rsp), %rsi
	movq	192(%rsp), %rdi
	movq	216(%rsp), %rcx
	movq	160(%rsp), %rbx
	vpxorq	%zmm18, %zmm19, %zmm0
	vpxorq	%zmm17, %zmm5, %zmm1
	vpxorq	%zmm17, %zmm18, %zmm20
	vpxorq	%zmm17, %zmm19, %zmm2
	vpxorq	(%r8), %zmm16, %zmm21
	vpxorq	%zmm0, %zmm1, %zmm22
	vpxorq	%zmm3, %zmm21, %zmm4
	vpxorq	(%rbx), %zmm22, %zmm23
	vpxorq	%zmm18, %zmm4, %zmm18
	vpxorq	%zmm17, %zmm4, %zmm24
	vpxorq	%zmm5, %zmm4, %zmm5
	vpxorq	%zmm19, %zmm23, %zmm19
	vpxorq	%zmm16, %zmm23, %zmm16
	vpandq	%zmm3, %zmm18, %zmm23
	vpxorq	%zmm2, %zmm5, %zmm25
	vpandq	%zmm4, %zmm5, %zmm26
	vpxorq	%zmm3, %zmm19, %zmm27
	vpxorq	%zmm21, %zmm19, %zmm28
	vpandq	%zmm22, %zmm19, %zmm29
	vpxorq	%zmm20, %zmm16, %zmm30
	vpandq	%zmm25, %zmm27, %zmm31
	vpandq	%zmm2, %zmm28, %zmm6
	vpxorq	%zmm3, %zmm30, %zmm7
	vpxorq	%zmm28, %zmm30, %zmm8
	vpxorq	%zmm21, %zmm30, %zmm21
	vpandq	%zmm20, %zmm30, %zmm9
	vpandq	%zmm24, %zmm7, %zmm10
	vpandq	%zmm0, %zmm8, %zmm11
	vpxorq	%zmm6, %zmm9, %zmm6
	vpxorq	%zmm9, %zmm11, %zmm9
	vpxorq	%zmm16, %zmm29, %zmm16
	vpxorq	%zmm31, %zmm16, %zmm16
	vpxorq	%zmm9, %zmm16, %zmm16
	vpxorq	%zmm2, %zmm23, %zmm23
	vpxorq	%zmm28, %zmm23, %zmm23
	vpxorq	%zmm29, %zmm23, %zmm23
	vpxorq	%zmm6, %zmm23, %zmm23
	vpandnq	%zmm21, %zmm1, %zmm29
	vpxorq	%zmm26, %zmm1, %zmm26
	vpxorq	%zmm26, %zmm29, %zmm26
	vpxorq	%zmm9, %zmm26, %zmm26
	vpxorq	%zmm17, %zmm29, %zmm17
	vpxorq	%zmm6, %zmm10, %zmm29
	vpxorq	%zmm29, %zmm17, %zmm17
	vpxorq	%zmm23, %zmm16, %zmm29
	vpandq	%zmm16, %zmm26, %zmm16
	vpxorq	%zmm17, %zmm26, %zmm31
	vpxorq	%zmm17, %zmm16, %zmm6
	vpxorq	%zmm23, %zmm16, %zmm9
	vpandq	%zmm31, %zmm9, %zmm31
	vpandq	%zmm29, %zmm6, %zmm9
	vpxorq	%zmm23, %zmm9, %zmm23
	vpxorq	%zmm17, %zmm31, %zmm9
	vpandq	%zmm7, %zmm23, %zmm7
	vpandq	%zmm24, %zmm23, %zmm24
	vpxorq	%zmm16, %zmm31, %zmm16
	vpxorq	%zmm23, %zmm9, %zmm31
	vpandq	%zmm3, %zmm9, %zmm3
	vpandq	%zmm18, %zmm9, %zmm18
	vpandq	%zmm17, %zmm16, %zmm16
	vpandq	%zmm30, %zmm31, %zmm17
	vpandq	%zmm20, %zmm31, %zmm20
	vpxorq	%zmm26, %zmm16, %zmm26
	vpxorq	%zmm9, %zmm26, %zmm30
	vpxorq	%zmm6, %zmm16, %zmm16
	vpandq	%zmm27, %zmm30, %zmm27
	vpandq	%zmm25, %zmm30, %zmm25
	vpandq	%zmm23, %zmm16, %zmm16
	vpandq	%zmm19, %zmm26, %zmm19
	vpandq	%zmm22, %zmm26, %zmm22
	vpxorq	%zmm29, %zmm16, %zmm16
	vpxorq	%zmm3, %zmm19, %zmm3
	vpxorq	%zmm27, %zmm19, %zmm19
	vpxorq	%zmm30, %zmm16, %zmm26
	vpxorq	%zmm23, %zmm16, %zmm23
	vpandq	%zmm4, %zmm16, %zmm4
	vpandq	%zmm5, %zmm16, %zmm5
	vpxorq	%zmm31, %zmm26, %zmm16
	vpandq	%zmm28, %zmm26, %zmm27
	vpandq	%zmm2, %zmm26, %zmm2
	vpandq	%zmm21, %zmm23, %zmm21
	vpandq	%zmm1, %zmm23, %zmm1
	vpandq	%zmm8, %zmm16, %zmm23
	vpandq	%zmm0, %zmm16, %zmm0
	vpxorq	%zmm4, %zmm21, %zmm4
	vpxorq	%zmm3, %zmm1, %zmm16
	vpxorq	%zmm27, %zmm16, %zmm16
	vpxorq	%zmm20, %zmm0, %zmm0
	vpxorq	%zmm23, %zmm4, %zmm23
	vpxorq	%zmm4, %zmm19, %zmm4
	vpxorq	%zmm7, %zmm3, %zmm3
	vpxorq	%zmm21, %zmm3, %zmm3
	vpxorq	%zmm25, %zmm0, %zmm19
	vpxorq	%zmm17, %zmm23, %zmm17
	vpxorq	%zmm23, %zmm16, %zmm16
	vpxorq	%zmm22, %zmm19, %zmm21
	vpxorq	%zmm18, %zmm19, %zmm18
	vpxorq	%zmm3, %zmm5, %zmm5
	vpxorq	%zmm5, %zmm0, %zmm0
	vpxorq	%zmm24, %zmm16, %zmm5
	vpxorq	%zmm21, %zmm4, %zmm4
	vmovdqa64	%zmm4, (%rcx)
	vpxorq	%zmm17, %zmm21, %zmm4
	vmovdqa64	%zmm4, (%rdi)
	vpxorq	%zmm5, %zmm18, %zmm4
	vmovdqa64	%zmm4, (%rsi)
	vpxorq	(%rcx), %zmm3, %zmm3
	vmovdqa64	%zmm3, (%rdx)
	vpternlogq	$15, %zmm0, %zmm0, %zmm0
	vpxorq	%zmm0, %zmm1, %zmm1
	vpternlogq	$15, %zmm17, %zmm17, %zmm17
	vpxorq	(%rcx), %zmm17, %zmm3
	vmovdqa64	%zmm1, (%rax)
	vpxorq	%zmm0, %zmm16, %zmm0
	vmovdqa64	%zmm0, (%r11)
	vmovdqa64	%zmm3, (%r10)
	vpxorq	%zmm2, %zmm20, %zmm0
	vpxorq	%zmm0, %zmm17, %zmm0
	vpxorq	%zmm5, %zmm0, %zmm0
	vmovdqa64	%zmm0, (%r9)
	vmovaps	(%rsp), %xmm6           # 16-byte Reload
	vmovaps	16(%rsp), %xmm7         # 16-byte Reload
	vmovaps	32(%rsp), %xmm8         # 16-byte Reload
	vmovaps	48(%rsp), %xmm9         # 16-byte Reload
	vmovaps	64(%rsp), %xmm10        # 16-byte Reload
	vmovaps	80(%rsp), %xmm11        # 16-byte Reload
	addq	$96, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	vzeroupper
	retq
	.seh_handlerdata
	.text
	.seh_endproc
                                        # -- End function
	.def	 SubBytes__;
	.scl	2;
	.type	32;
	.endef
	.globl	SubBytes__              # -- Begin function SubBytes__
	.p2align	4, 0x90
SubBytes__:                             # @SubBytes__
.seh_proc SubBytes__
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	vmovaps	%xmm11, 80(%rsp)        # 16-byte Spill
	.seh_savexmm 11, 80
	vmovaps	%xmm10, 64(%rsp)        # 16-byte Spill
	.seh_savexmm 10, 64
	vmovaps	%xmm9, 48(%rsp)         # 16-byte Spill
	.seh_savexmm 9, 48
	vmovaps	%xmm8, 32(%rsp)         # 16-byte Spill
	.seh_savexmm 8, 32
	vmovaps	%xmm7, 16(%rsp)         # 16-byte Spill
	.seh_savexmm 7, 16
	vmovaps	%xmm6, (%rsp)           # 16-byte Spill
	.seh_savexmm 6, 0
	.seh_endprologue
	vmovdqa64	(%rcx), %zmm5
	vmovdqa64	64(%rcx), %zmm16
	vmovdqa64	192(%rcx), %zmm4
	vmovdqa64	320(%rcx), %zmm17
	vmovdqa64	384(%rcx), %zmm18
	vmovdqa64	448(%rcx), %zmm19
	vpxorq	%zmm4, %zmm17, %zmm0
	vpxorq	%zmm5, %zmm18, %zmm1
	vpxorq	%zmm5, %zmm4, %zmm20
	vpxorq	%zmm5, %zmm17, %zmm2
	vpxorq	128(%rcx), %zmm16, %zmm21
	vpxorq	%zmm0, %zmm1, %zmm22
	vpxorq	%zmm21, %zmm19, %zmm3
	vpxorq	256(%rcx), %zmm22, %zmm23
	vpxorq	%zmm4, %zmm3, %zmm24
	vpxorq	%zmm5, %zmm3, %zmm25
	vpxorq	%zmm18, %zmm3, %zmm4
	vpxorq	%zmm17, %zmm23, %zmm17
	vpxorq	%zmm16, %zmm23, %zmm16
	vpandq	%zmm19, %zmm24, %zmm18
	vpxorq	%zmm2, %zmm4, %zmm23
	vpandq	%zmm3, %zmm4, %zmm26
	vpxorq	%zmm19, %zmm17, %zmm27
	vpxorq	%zmm21, %zmm17, %zmm28
	vpandq	%zmm22, %zmm17, %zmm29
	vpxorq	%zmm20, %zmm16, %zmm30
	vpandq	%zmm23, %zmm27, %zmm31
	vpandq	%zmm2, %zmm28, %zmm6
	vpxorq	%zmm19, %zmm30, %zmm7
	vpxorq	%zmm28, %zmm30, %zmm8
	vpxorq	%zmm21, %zmm30, %zmm21
	vpandq	%zmm20, %zmm30, %zmm9
	vpandq	%zmm25, %zmm7, %zmm10
	vpandq	%zmm0, %zmm8, %zmm11
	vpxorq	%zmm6, %zmm9, %zmm6
	vpxorq	%zmm9, %zmm11, %zmm9
	vpxorq	%zmm16, %zmm29, %zmm16
	vpxorq	%zmm31, %zmm16, %zmm16
	vpxorq	%zmm9, %zmm16, %zmm16
	vpxorq	%zmm2, %zmm18, %zmm18
	vpxorq	%zmm28, %zmm18, %zmm18
	vpxorq	%zmm29, %zmm18, %zmm18
	vpxorq	%zmm6, %zmm18, %zmm18
	vpandnq	%zmm21, %zmm1, %zmm29
	vpxorq	%zmm1, %zmm26, %zmm26
	vpxorq	%zmm29, %zmm26, %zmm26
	vpxorq	%zmm9, %zmm26, %zmm26
	vpxorq	%zmm5, %zmm29, %zmm5
	vpxorq	%zmm6, %zmm10, %zmm29
	vpxorq	%zmm29, %zmm5, %zmm5
	vpxorq	%zmm18, %zmm16, %zmm29
	vpandq	%zmm16, %zmm26, %zmm16
	vpxorq	%zmm5, %zmm26, %zmm31
	vpxorq	%zmm5, %zmm16, %zmm6
	vpxorq	%zmm18, %zmm16, %zmm9
	vpandq	%zmm31, %zmm9, %zmm31
	vpandq	%zmm29, %zmm6, %zmm9
	vpxorq	%zmm18, %zmm9, %zmm18
	vpxorq	%zmm5, %zmm31, %zmm9
	vpandq	%zmm7, %zmm18, %zmm7
	vpandq	%zmm25, %zmm18, %zmm25
	vpxorq	%zmm16, %zmm31, %zmm16
	vpxorq	%zmm18, %zmm9, %zmm31
	vpandq	%zmm19, %zmm9, %zmm19
	vpandq	%zmm24, %zmm9, %zmm24
	vpandq	%zmm5, %zmm16, %zmm5
	vpandq	%zmm30, %zmm31, %zmm16
	vpandq	%zmm20, %zmm31, %zmm20
	vpxorq	%zmm26, %zmm5, %zmm26
	vpxorq	%zmm9, %zmm26, %zmm30
	vpxorq	%zmm6, %zmm5, %zmm5
	vpandq	%zmm27, %zmm30, %zmm27
	vpandq	%zmm23, %zmm30, %zmm23
	vpandq	%zmm18, %zmm5, %zmm5
	vpandq	%zmm17, %zmm26, %zmm17
	vpandq	%zmm22, %zmm26, %zmm22
	vpxorq	%zmm29, %zmm5, %zmm5
	vpxorq	%zmm19, %zmm17, %zmm19
	vpxorq	%zmm17, %zmm27, %zmm17
	vpxorq	%zmm30, %zmm5, %zmm26
	vpxorq	%zmm18, %zmm5, %zmm18
	vpandq	%zmm3, %zmm5, %zmm3
	vpandq	%zmm4, %zmm5, %zmm4
	vpxorq	%zmm31, %zmm26, %zmm5
	vpandq	%zmm28, %zmm26, %zmm27
	vpandq	%zmm2, %zmm26, %zmm2
	vpandq	%zmm21, %zmm18, %zmm21
	vpandq	%zmm1, %zmm18, %zmm1
	vpandq	%zmm8, %zmm5, %zmm18
	vpandq	%zmm0, %zmm5, %zmm0
	vpxorq	%zmm3, %zmm21, %zmm3
	vpxorq	%zmm19, %zmm1, %zmm5
	vpxorq	%zmm27, %zmm5, %zmm5
	vpxorq	%zmm20, %zmm0, %zmm0
	vpxorq	%zmm18, %zmm3, %zmm18
	vpxorq	%zmm3, %zmm17, %zmm3
	vpxorq	%zmm7, %zmm19, %zmm17
	vpxorq	%zmm21, %zmm17, %zmm17
	vpxorq	%zmm4, %zmm17, %zmm4
	vpxorq	%zmm23, %zmm0, %zmm19
	vpxorq	%zmm16, %zmm18, %zmm16
	vpxorq	%zmm18, %zmm5, %zmm5
	vpxorq	%zmm22, %zmm19, %zmm18
	vpxorq	%zmm24, %zmm19, %zmm19
	vpxorq	%zmm25, %zmm5, %zmm21
	vpxorq	%zmm18, %zmm3, %zmm3
	vmovdqa64	%zmm3, 192(%rdx)
	vpxorq	%zmm16, %zmm18, %zmm18
	vmovdqa64	%zmm18, (%rdx)
	vpxorq	%zmm21, %zmm19, %zmm18
	vmovdqa64	%zmm18, 320(%rdx)
	vpxorq	%zmm17, %zmm3, %zmm17
	vmovdqa64	%zmm17, 256(%rdx)
	vpxorq	%zmm0, %zmm4, %zmm0
	vpternlogq	$15, %zmm0, %zmm0, %zmm0
	vpxorq	%zmm1, %zmm0, %zmm1
	vmovdqa64	%zmm1, 448(%rdx)
	vpxorq	%zmm5, %zmm0, %zmm0
	vmovdqa64	%zmm0, 384(%rdx)
	vpternlogq	$15, %zmm16, %zmm16, %zmm16
	vpxorq	%zmm16, %zmm3, %zmm0
	vmovdqa64	%zmm0, 64(%rdx)
	vpxorq	%zmm20, %zmm2, %zmm0
	vpxorq	%zmm16, %zmm0, %zmm0
	vpxorq	%zmm21, %zmm0, %zmm0
	vmovdqa64	%zmm0, 128(%rdx)
	vmovaps	(%rsp), %xmm6           # 16-byte Reload
	vmovaps	16(%rsp), %xmm7         # 16-byte Reload
	vmovaps	32(%rsp), %xmm8         # 16-byte Reload
	vmovaps	48(%rsp), %xmm9         # 16-byte Reload
	vmovaps	64(%rsp), %xmm10        # 16-byte Reload
	vmovaps	80(%rsp), %xmm11        # 16-byte Reload
	addq	$104, %rsp
	vzeroupper
	retq
	.seh_handlerdata
	.text
	.seh_endproc
                                        # -- End function

	.addrsig
