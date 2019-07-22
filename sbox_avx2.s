	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"sbox_avx2.c"
	.def	 SubBytes_single__V16;
	.scl	2;
	.type	32;
	.endef
	.globl	SubBytes_single__V16    # -- Begin function SubBytes_single__V16
	.p2align	4, 0x90
SubBytes_single__V16:                   # @SubBytes_single__V16
.seh_proc SubBytes_single__V16
# %bb.0:
	subq	$568, %rsp              # imm = 0x238
	.seh_stackalloc 568
	vmovaps	%xmm15, 544(%rsp)       # 16-byte Spill
	.seh_savexmm 15, 544
	vmovaps	%xmm14, 528(%rsp)       # 16-byte Spill
	.seh_savexmm 14, 528
	vmovaps	%xmm13, 512(%rsp)       # 16-byte Spill
	.seh_savexmm 13, 512
	vmovaps	%xmm12, 496(%rsp)       # 16-byte Spill
	.seh_savexmm 12, 496
	vmovaps	%xmm11, 480(%rsp)       # 16-byte Spill
	.seh_savexmm 11, 480
	vmovaps	%xmm10, 464(%rsp)       # 16-byte Spill
	.seh_savexmm 10, 464
	vmovaps	%xmm9, 448(%rsp)        # 16-byte Spill
	.seh_savexmm 9, 448
	vmovaps	%xmm8, 432(%rsp)        # 16-byte Spill
	.seh_savexmm 8, 432
	vmovaps	%xmm7, 416(%rsp)        # 16-byte Spill
	.seh_savexmm 7, 416
	vmovaps	%xmm6, 400(%rsp)        # 16-byte Spill
	.seh_savexmm 6, 400
	.seh_endprologue
	vmovdqa	(%rdx), %ymm0
	vmovdqa	(%rcx), %ymm9
	movq	624(%rsp), %rax
	vmovdqa	(%rax), %ymm2
	vmovdqu	%ymm2, 32(%rsp)         # 32-byte Spill
	vmovdqa	(%r9), %ymm15
	movq	616(%rsp), %rax
	vmovdqa	(%rax), %ymm5
	movq	608(%rsp), %rax
	vpxor	%ymm15, %ymm5, %ymm1
	vpxor	%ymm9, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rsp)         # 32-byte Spill
	vpxor	%ymm9, %ymm15, %ymm10
	vpxor	%ymm9, %ymm5, %ymm4
	vmovdqu	%ymm4, 288(%rsp)        # 32-byte Spill
	vpxor	(%r8), %ymm0, %ymm3
	vpxor	%ymm1, %ymm2, %ymm11
	vmovdqa	%ymm1, %ymm8
	vmovdqu	%ymm1, 352(%rsp)        # 32-byte Spill
	vpxor	(%rax), %ymm11, %ymm7
	vmovdqu	%ymm11, (%rsp)          # 32-byte Spill
	vpxor	%ymm5, %ymm7, %ymm1
	vpxor	%ymm0, %ymm7, %ymm6
	vpxor	%ymm3, %ymm1, %ymm2
	vmovdqa	%ymm10, %ymm0
	vmovdqu	%ymm10, 64(%rsp)        # 32-byte Spill
	vpxor	%ymm10, %ymm6, %ymm7
	vpand	%ymm4, %ymm2, %ymm10
	vpxor	%ymm2, %ymm7, %ymm12
	vmovdqu	%ymm12, 320(%rsp)       # 32-byte Spill
	vmovdqu	%ymm2, 256(%rsp)        # 32-byte Spill
	vpand	%ymm0, %ymm7, %ymm13
	vpxor	%ymm10, %ymm13, %ymm5
	vpand	%ymm8, %ymm12, %ymm10
	vpxor	%ymm13, %ymm10, %ymm12
	movq	632(%rsp), %rax
	vmovdqa	(%rax), %ymm14
	vpxor	%ymm14, %ymm3, %ymm10
	vpxor	32(%rsp), %ymm10, %ymm8 # 32-byte Folded Reload
	vmovdqa	%ymm1, %ymm0
	vmovdqu	%ymm1, 128(%rsp)        # 32-byte Spill
	vpand	%ymm11, %ymm1, %ymm1
	vpxor	%ymm6, %ymm1, %ymm11
	vpxor	%ymm4, %ymm8, %ymm6
	vmovdqu	%ymm6, 32(%rsp)         # 32-byte Spill
	vpxor	%ymm14, %ymm0, %ymm0
	vmovdqu	%ymm0, 160(%rsp)        # 32-byte Spill
	vpand	%ymm6, %ymm0, %ymm13
	vpxor	%ymm13, %ymm11, %ymm11
	vpxor	%ymm15, %ymm10, %ymm0
	vmovdqu	%ymm0, 224(%rsp)        # 32-byte Spill
	vpand	%ymm14, %ymm0, %ymm13
	vpxor	%ymm4, %ymm13, %ymm13
	vpxor	%ymm2, %ymm13, %ymm13
	vpxor	%ymm1, %ymm13, %ymm0
	vpxor	%ymm3, %ymm7, %ymm2
	vmovdqu	%ymm2, 192(%rsp)        # 32-byte Spill
	vpxor	%ymm12, %ymm11, %ymm1
	vpand	%ymm10, %ymm8, %ymm3
	vmovdqa	%ymm8, %ymm6
	vmovdqu	96(%rsp), %ymm4         # 32-byte Reload
	vpxor	%ymm3, %ymm4, %ymm3
	vpandn	%ymm2, %ymm4, %ymm13
	vpxor	%ymm3, %ymm13, %ymm3
	vpxor	%ymm12, %ymm3, %ymm3
	vpxor	%ymm9, %ymm13, %ymm12
	vpxor	%ymm9, %ymm10, %ymm9
	vpxor	%ymm5, %ymm0, %ymm0
	vpxor	%ymm14, %ymm7, %ymm13
	vpand	%ymm9, %ymm13, %ymm15
	vpxor	%ymm5, %ymm15, %ymm2
	vpxor	%ymm2, %ymm12, %ymm2
	vpand	%ymm1, %ymm3, %ymm12
	vpxor	%ymm2, %ymm3, %ymm15
	vpxor	%ymm0, %ymm12, %ymm8
	vpand	%ymm15, %ymm8, %ymm8
	vpxor	%ymm0, %ymm1, %ymm1
	vpxor	%ymm2, %ymm12, %ymm15
	vpand	%ymm1, %ymm15, %ymm4
	vpxor	%ymm0, %ymm4, %ymm0
	vpxor	%ymm12, %ymm8, %ymm4
	vpxor	%ymm2, %ymm8, %ymm8
	vpand	%ymm2, %ymm4, %ymm2
	vpxor	%ymm3, %ymm2, %ymm3
	vpxor	%ymm15, %ymm2, %ymm2
	vpand	%ymm0, %ymm2, %ymm2
	vpxor	%ymm1, %ymm2, %ymm1
	vpand	%ymm14, %ymm8, %ymm2
	vpand	128(%rsp), %ymm3, %ymm4 # 32-byte Folded Reload
	vpand	(%rsp), %ymm3, %ymm5    # 32-byte Folded Reload
	vmovdqu	%ymm5, (%rsp)           # 32-byte Spill
	vpxor	%ymm8, %ymm3, %ymm3
	vpand	160(%rsp), %ymm3, %ymm12 # 32-byte Folded Reload
	vpxor	%ymm2, %ymm4, %ymm14
	vpxor	%ymm12, %ymm4, %ymm4
	vpand	%ymm13, %ymm0, %ymm12
	vpand	%ymm9, %ymm0, %ymm9
	vpand	224(%rsp), %ymm8, %ymm13 # 32-byte Folded Reload
	vpxor	%ymm0, %ymm8, %ymm2
	vpand	32(%rsp), %ymm3, %ymm8  # 32-byte Folded Reload
	vpxor	%ymm3, %ymm1, %ymm3
	vpxor	%ymm0, %ymm1, %ymm15
	vpand	%ymm10, %ymm1, %ymm10
	vpand	%ymm6, %ymm1, %ymm6
	vpand	%ymm7, %ymm2, %ymm7
	vpand	64(%rsp), %ymm2, %ymm1  # 32-byte Folded Reload
	vpxor	%ymm2, %ymm3, %ymm11
	vpand	256(%rsp), %ymm3, %ymm5 # 32-byte Folded Reload
	vpand	288(%rsp), %ymm3, %ymm0 # 32-byte Folded Reload
	vmovdqu	%ymm0, 64(%rsp)         # 32-byte Spill
	vpand	192(%rsp), %ymm15, %ymm3 # 32-byte Folded Reload
	vpand	96(%rsp), %ymm15, %ymm15 # 32-byte Folded Reload
	vpand	320(%rsp), %ymm11, %ymm0 # 32-byte Folded Reload
	vpand	352(%rsp), %ymm11, %ymm11 # 32-byte Folded Reload
	vpxor	%ymm14, %ymm15, %ymm2
	vpxor	%ymm5, %ymm2, %ymm2
	vpxor	%ymm10, %ymm3, %ymm5
	vpxor	%ymm0, %ymm5, %ymm0
	vpxor	%ymm5, %ymm4, %ymm4
	vpxor	%ymm12, %ymm14, %ymm5
	vpxor	%ymm3, %ymm5, %ymm3
	vpxor	%ymm7, %ymm0, %ymm5
	vpxor	%ymm0, %ymm2, %ymm0
	vpxor	%ymm1, %ymm11, %ymm2
	vpxor	%ymm8, %ymm2, %ymm7
	vpxor	(%rsp), %ymm7, %ymm8    # 32-byte Folded Reload
	vpxor	%ymm13, %ymm7, %ymm7
	vpxor	%ymm3, %ymm6, %ymm6
	vpxor	%ymm6, %ymm2, %ymm2
	movq	664(%rsp), %rax
	vpxor	%ymm8, %ymm4, %ymm4
	vmovdqa	%ymm4, (%rax)
	movq	640(%rsp), %rcx
	vpxor	%ymm5, %ymm8, %ymm4
	vmovdqa	%ymm4, (%rcx)
	movq	680(%rsp), %rcx
	vpxor	%ymm9, %ymm0, %ymm4
	vpxor	%ymm4, %ymm7, %ymm6
	vmovdqa	%ymm6, (%rcx)
	movq	696(%rsp), %rcx
	movq	672(%rsp), %rdx
	vpxor	(%rax), %ymm3, %ymm3
	vmovdqa	%ymm3, (%rdx)
	vpcmpeqd	%ymm3, %ymm3, %ymm3
	vpxor	%ymm3, %ymm2, %ymm2
	vpxor	%ymm3, %ymm5, %ymm3
	vpxor	(%rax), %ymm3, %ymm5
	vpxor	%ymm2, %ymm15, %ymm6
	vmovdqa	%ymm6, (%rcx)
	vpxor	%ymm2, %ymm0, %ymm0
	movq	688(%rsp), %rax
	vmovdqa	%ymm0, (%rax)
	movq	648(%rsp), %rax
	vmovdqa	%ymm5, (%rax)
	vpxor	64(%rsp), %ymm1, %ymm0  # 32-byte Folded Reload
	vpxor	%ymm0, %ymm3, %ymm0
	vpxor	%ymm4, %ymm0, %ymm0
	movq	656(%rsp), %rax
	vmovdqa	%ymm0, (%rax)
	vmovaps	400(%rsp), %xmm6        # 16-byte Reload
	vmovaps	416(%rsp), %xmm7        # 16-byte Reload
	vmovaps	432(%rsp), %xmm8        # 16-byte Reload
	vmovaps	448(%rsp), %xmm9        # 16-byte Reload
	vmovaps	464(%rsp), %xmm10       # 16-byte Reload
	vmovaps	480(%rsp), %xmm11       # 16-byte Reload
	vmovaps	496(%rsp), %xmm12       # 16-byte Reload
	vmovaps	512(%rsp), %xmm13       # 16-byte Reload
	vmovaps	528(%rsp), %xmm14       # 16-byte Reload
	vmovaps	544(%rsp), %xmm15       # 16-byte Reload
	addq	$568, %rsp              # imm = 0x238
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
	subq	$600, %rsp              # imm = 0x258
	.seh_stackalloc 600
	vmovaps	%xmm15, 576(%rsp)       # 16-byte Spill
	.seh_savexmm 15, 576
	vmovaps	%xmm14, 560(%rsp)       # 16-byte Spill
	.seh_savexmm 14, 560
	vmovaps	%xmm13, 544(%rsp)       # 16-byte Spill
	.seh_savexmm 13, 544
	vmovaps	%xmm12, 528(%rsp)       # 16-byte Spill
	.seh_savexmm 12, 528
	vmovaps	%xmm11, 512(%rsp)       # 16-byte Spill
	.seh_savexmm 11, 512
	vmovaps	%xmm10, 496(%rsp)       # 16-byte Spill
	.seh_savexmm 10, 496
	vmovaps	%xmm9, 480(%rsp)        # 16-byte Spill
	.seh_savexmm 9, 480
	vmovaps	%xmm8, 464(%rsp)        # 16-byte Spill
	.seh_savexmm 8, 464
	vmovaps	%xmm7, 448(%rsp)        # 16-byte Spill
	.seh_savexmm 7, 448
	vmovaps	%xmm6, 432(%rsp)        # 16-byte Spill
	.seh_savexmm 6, 432
	.seh_endprologue
	vmovdqa	(%rcx), %ymm11
	vmovdqa	32(%rcx), %ymm0
	vmovdqa	96(%rcx), %ymm14
	vmovdqa	160(%rcx), %ymm5
	vmovdqa	192(%rcx), %ymm13
	vpxor	%ymm14, %ymm5, %ymm1
	vpxor	%ymm11, %ymm13, %ymm3
	vmovdqu	%ymm3, 32(%rsp)         # 32-byte Spill
	vpxor	64(%rcx), %ymm0, %ymm6
	vpxor	%ymm11, %ymm14, %ymm2
	vmovdqu	%ymm2, 352(%rsp)        # 32-byte Spill
	vpxor	%ymm1, %ymm3, %ymm3
	vmovdqu	%ymm1, 384(%rsp)        # 32-byte Spill
	vpxor	128(%rcx), %ymm3, %ymm7
	vmovdqu	%ymm3, (%rsp)           # 32-byte Spill
	vpxor	%ymm11, %ymm5, %ymm8
	vpxor	%ymm5, %ymm7, %ymm10
	vpxor	%ymm0, %ymm7, %ymm0
	vpxor	%ymm6, %ymm10, %ymm5
	vpxor	%ymm2, %ymm0, %ymm7
	vpand	%ymm8, %ymm5, %ymm9
	vpxor	%ymm5, %ymm7, %ymm15
	vmovdqu	%ymm5, 256(%rsp)        # 32-byte Spill
	vmovdqu	%ymm15, 320(%rsp)       # 32-byte Spill
	vpand	%ymm2, %ymm7, %ymm12
	vpxor	%ymm9, %ymm12, %ymm4
	vpand	%ymm1, %ymm15, %ymm9
	vpxor	%ymm12, %ymm9, %ymm1
	vmovdqa	224(%rcx), %ymm15
	vpxor	%ymm6, %ymm15, %ymm9
	vpxor	%ymm13, %ymm9, %ymm2
	vpand	%ymm3, %ymm10, %ymm13
	vpxor	%ymm0, %ymm13, %ymm3
	vmovdqu	%ymm8, 288(%rsp)        # 32-byte Spill
	vpxor	%ymm8, %ymm2, %ymm12
	vmovdqu	%ymm12, 224(%rsp)       # 32-byte Spill
	vmovdqu	%ymm2, 160(%rsp)        # 32-byte Spill
	vpxor	%ymm15, %ymm10, %ymm0
	vmovdqu	%ymm0, 96(%rsp)         # 32-byte Spill
	vpand	%ymm12, %ymm0, %ymm12
	vpxor	%ymm12, %ymm3, %ymm0
	vpxor	%ymm14, %ymm9, %ymm3
	vmovdqu	%ymm3, 128(%rsp)        # 32-byte Spill
	vpand	%ymm15, %ymm3, %ymm12
	vpxor	%ymm8, %ymm12, %ymm12
	vpxor	%ymm5, %ymm12, %ymm12
	vpxor	%ymm13, %ymm12, %ymm12
	vpxor	%ymm6, %ymm7, %ymm6
	vmovdqu	%ymm6, 192(%rsp)        # 32-byte Spill
	vpxor	%ymm1, %ymm0, %ymm5
	vpand	%ymm9, %ymm2, %ymm3
	vmovdqu	32(%rsp), %ymm0         # 32-byte Reload
	vpxor	%ymm0, %ymm3, %ymm3
	vpandn	%ymm6, %ymm0, %ymm0
	vpxor	%ymm0, %ymm3, %ymm3
	vpxor	%ymm1, %ymm3, %ymm1
	vpxor	%ymm11, %ymm0, %ymm0
	vpxor	%ymm11, %ymm9, %ymm11
	vpxor	%ymm4, %ymm12, %ymm3
	vpxor	%ymm15, %ymm7, %ymm12
	vpand	%ymm11, %ymm12, %ymm13
	vpxor	%ymm4, %ymm13, %ymm4
	vpxor	%ymm4, %ymm0, %ymm0
	vpand	%ymm5, %ymm1, %ymm4
	vpxor	%ymm0, %ymm1, %ymm13
	vpxor	%ymm3, %ymm4, %ymm14
	vpand	%ymm13, %ymm14, %ymm13
	vpxor	%ymm3, %ymm5, %ymm2
	vpxor	%ymm0, %ymm4, %ymm14
	vpand	%ymm2, %ymm14, %ymm8
	vpxor	%ymm3, %ymm8, %ymm3
	vpxor	%ymm4, %ymm13, %ymm4
	vpxor	%ymm0, %ymm13, %ymm8
	vpand	%ymm0, %ymm4, %ymm0
	vpxor	%ymm1, %ymm0, %ymm1
	vpxor	%ymm14, %ymm0, %ymm0
	vpand	%ymm3, %ymm0, %ymm0
	vpxor	%ymm2, %ymm0, %ymm0
	vpand	%ymm15, %ymm8, %ymm2
	vpand	%ymm10, %ymm1, %ymm4
	vpand	(%rsp), %ymm1, %ymm5    # 32-byte Folded Reload
	vmovdqu	%ymm5, 64(%rsp)         # 32-byte Spill
	vpxor	%ymm8, %ymm1, %ymm1
	vpand	96(%rsp), %ymm1, %ymm13 # 32-byte Folded Reload
	vpxor	%ymm2, %ymm4, %ymm2
	vpxor	%ymm4, %ymm13, %ymm4
	vpand	%ymm12, %ymm3, %ymm12
	vpand	%ymm11, %ymm3, %ymm5
	vmovdqu	%ymm5, (%rsp)           # 32-byte Spill
	vpand	128(%rsp), %ymm8, %ymm13 # 32-byte Folded Reload
	vpxor	%ymm3, %ymm8, %ymm8
	vpand	224(%rsp), %ymm1, %ymm14 # 32-byte Folded Reload
	vpxor	%ymm1, %ymm0, %ymm1
	vpxor	%ymm3, %ymm0, %ymm3
	vpand	%ymm9, %ymm0, %ymm9
	vpand	160(%rsp), %ymm0, %ymm11 # 32-byte Folded Reload
	vpand	%ymm7, %ymm8, %ymm7
	vpand	352(%rsp), %ymm8, %ymm6 # 32-byte Folded Reload
	vpxor	%ymm8, %ymm1, %ymm8
	vpand	256(%rsp), %ymm1, %ymm5 # 32-byte Folded Reload
	vpand	288(%rsp), %ymm1, %ymm10 # 32-byte Folded Reload
	vpand	192(%rsp), %ymm3, %ymm15 # 32-byte Folded Reload
	vpand	32(%rsp), %ymm3, %ymm3  # 32-byte Folded Reload
	vpand	320(%rsp), %ymm8, %ymm0 # 32-byte Folded Reload
	vpand	384(%rsp), %ymm8, %ymm8 # 32-byte Folded Reload
	vpxor	%ymm2, %ymm3, %ymm1
	vpxor	%ymm5, %ymm1, %ymm1
	vpxor	%ymm9, %ymm15, %ymm5
	vpxor	%ymm0, %ymm5, %ymm0
	vpxor	%ymm5, %ymm4, %ymm4
	vpxor	%ymm12, %ymm2, %ymm2
	vpxor	%ymm15, %ymm2, %ymm2
	vpxor	%ymm7, %ymm0, %ymm5
	vpxor	%ymm0, %ymm1, %ymm0
	vpxor	%ymm6, %ymm8, %ymm1
	vpxor	%ymm14, %ymm1, %ymm7
	vpxor	64(%rsp), %ymm7, %ymm8  # 32-byte Folded Reload
	vpxor	%ymm13, %ymm7, %ymm7
	vpxor	%ymm8, %ymm4, %ymm4
	vmovdqa	%ymm4, 96(%rdx)
	vpxor	%ymm5, %ymm8, %ymm8
	vmovdqa	%ymm8, (%rdx)
	vpxor	(%rsp), %ymm0, %ymm8    # 32-byte Folded Reload
	vpxor	%ymm8, %ymm7, %ymm7
	vmovdqa	%ymm7, 160(%rdx)
	vpxor	%ymm11, %ymm2, %ymm7
	vpxor	%ymm2, %ymm4, %ymm2
	vmovdqa	%ymm2, 128(%rdx)
	vpxor	%ymm1, %ymm7, %ymm1
	vpcmpeqd	%ymm2, %ymm2, %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm3, %ymm1, %ymm3
	vmovdqa	%ymm3, 224(%rdx)
	vpxor	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, 192(%rdx)
	vpxor	%ymm2, %ymm5, %ymm0
	vpxor	%ymm0, %ymm4, %ymm1
	vmovdqa	%ymm1, 32(%rdx)
	vpxor	%ymm6, %ymm10, %ymm1
	vpxor	%ymm0, %ymm1, %ymm0
	vpxor	%ymm8, %ymm0, %ymm0
	vmovdqa	%ymm0, 64(%rdx)
	vmovaps	432(%rsp), %xmm6        # 16-byte Reload
	vmovaps	448(%rsp), %xmm7        # 16-byte Reload
	vmovaps	464(%rsp), %xmm8        # 16-byte Reload
	vmovaps	480(%rsp), %xmm9        # 16-byte Reload
	vmovaps	496(%rsp), %xmm10       # 16-byte Reload
	vmovaps	512(%rsp), %xmm11       # 16-byte Reload
	vmovaps	528(%rsp), %xmm12       # 16-byte Reload
	vmovaps	544(%rsp), %xmm13       # 16-byte Reload
	vmovaps	560(%rsp), %xmm14       # 16-byte Reload
	vmovaps	576(%rsp), %xmm15       # 16-byte Reload
	addq	$600, %rsp              # imm = 0x258
	vzeroupper
	retq
	.seh_handlerdata
	.text
	.seh_endproc
                                        # -- End function

	.addrsig
