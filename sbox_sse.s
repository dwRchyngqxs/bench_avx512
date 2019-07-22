	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"sbox_sse.c"
	.def	 SubBytes_single__V16;
	.scl	2;
	.type	32;
	.endef
	.globl	SubBytes_single__V16    # -- Begin function SubBytes_single__V16
	.p2align	4, 0x90
SubBytes_single__V16:                   # @SubBytes_single__V16
.seh_proc SubBytes_single__V16
# %bb.0:
	subq	$328, %rsp              # imm = 0x148
	.seh_stackalloc 328
	movaps	%xmm15, 304(%rsp)       # 16-byte Spill
	.seh_savexmm 15, 304
	movaps	%xmm14, 288(%rsp)       # 16-byte Spill
	.seh_savexmm 14, 288
	movaps	%xmm13, 272(%rsp)       # 16-byte Spill
	.seh_savexmm 13, 272
	movaps	%xmm12, 256(%rsp)       # 16-byte Spill
	.seh_savexmm 12, 256
	movaps	%xmm11, 240(%rsp)       # 16-byte Spill
	.seh_savexmm 11, 240
	movaps	%xmm10, 224(%rsp)       # 16-byte Spill
	.seh_savexmm 10, 224
	movaps	%xmm9, 208(%rsp)        # 16-byte Spill
	.seh_savexmm 9, 208
	movaps	%xmm8, 192(%rsp)        # 16-byte Spill
	.seh_savexmm 8, 192
	movaps	%xmm7, 176(%rsp)        # 16-byte Spill
	.seh_savexmm 7, 176
	movaps	%xmm6, 160(%rsp)        # 16-byte Spill
	.seh_savexmm 6, 160
	.seh_endprologue
	movq	392(%rsp), %rax
	movdqa	(%rax), %xmm8
	movdqa	(%rdx), %xmm1
	movdqa	(%rcx), %xmm6
	movq	384(%rsp), %rax
	movdqa	(%rax), %xmm10
	movdqa	(%r9), %xmm0
	movq	376(%rsp), %rax
	movdqa	(%rax), %xmm3
	movq	368(%rsp), %rax
	movdqa	%xmm3, %xmm2
	pxor	%xmm0, %xmm2
	movdqa	%xmm10, %xmm5
	pxor	%xmm6, %xmm5
	movdqa	(%r8), %xmm12
	pxor	%xmm1, %xmm12
	movdqa	%xmm5, %xmm4
	pxor	%xmm2, %xmm4
	movdqa	%xmm2, %xmm15
	movdqa	%xmm2, 144(%rsp)        # 16-byte Spill
	movdqa	%xmm12, %xmm9
	pxor	%xmm8, %xmm9
	movdqa	(%rax), %xmm11
	pxor	%xmm4, %xmm11
	movdqa	%xmm4, %xmm7
	movdqa	%xmm4, (%rsp)           # 16-byte Spill
	movdqa	%xmm9, %xmm2
	pxor	%xmm0, %xmm2
	movdqa	%xmm2, 16(%rsp)         # 16-byte Spill
	movdqa	%xmm6, 32(%rsp)         # 16-byte Spill
	pxor	%xmm6, %xmm0
	movdqa	%xmm11, %xmm14
	pxor	%xmm3, %xmm14
	pxor	%xmm6, %xmm3
	movdqa	%xmm3, %xmm4
	pxor	%xmm1, %xmm11
	movdqa	%xmm2, %xmm3
	pand	%xmm8, %xmm3
	movdqa	%xmm14, %xmm1
	pxor	%xmm12, %xmm1
	movdqa	%xmm1, %xmm2
	movdqa	%xmm14, %xmm1
	pand	%xmm7, %xmm1
	movdqa	%xmm4, %xmm13
	movdqa	%xmm4, 112(%rsp)        # 16-byte Spill
	pxor	%xmm4, %xmm3
	movdqa	%xmm2, %xmm4
	movdqa	%xmm2, 128(%rsp)        # 16-byte Spill
	pxor	%xmm2, %xmm3
	pxor	%xmm1, %xmm3
	movdqa	%xmm1, %xmm2
	pxor	%xmm11, %xmm2
	movdqa	%xmm0, 96(%rsp)         # 16-byte Spill
	pxor	%xmm0, %xmm11
	movdqa	%xmm4, %xmm1
	pand	%xmm13, %xmm1
	movdqa	%xmm11, %xmm7
	pxor	%xmm4, %xmm7
	movdqa	%xmm11, %xmm4
	pand	%xmm0, %xmm4
	movdqa	%xmm7, %xmm0
	pand	%xmm15, %xmm0
	pxor	%xmm4, %xmm1
	pxor	%xmm4, %xmm0
	pxor	%xmm9, %xmm10
	movdqa	%xmm10, 48(%rsp)        # 16-byte Spill
	movdqa	%xmm10, %xmm6
	pxor	%xmm13, %xmm6
	movdqa	%xmm14, %xmm13
	pxor	%xmm8, %xmm13
	movdqa	%xmm13, %xmm15
	pand	%xmm6, %xmm15
	pxor	%xmm2, %xmm15
	pand	%xmm9, %xmm10
	pxor	%xmm11, %xmm12
	movdqa	%xmm12, 64(%rsp)        # 16-byte Spill
	pxor	%xmm0, %xmm15
	movdqa	%xmm5, 80(%rsp)         # 16-byte Spill
	movdqa	%xmm5, %xmm2
	pandn	%xmm12, %xmm2
	pxor	%xmm5, %xmm10
	pxor	%xmm2, %xmm10
	pxor	%xmm0, %xmm10
	movdqa	%xmm9, %xmm4
	movdqa	32(%rsp), %xmm0         # 16-byte Reload
	pxor	%xmm0, %xmm4
	pxor	%xmm0, %xmm2
	movdqa	%xmm11, %xmm12
	pxor	%xmm8, %xmm12
	movdqa	%xmm12, %xmm0
	pand	%xmm4, %xmm0
	movdqa	%xmm4, %xmm5
	pxor	%xmm1, %xmm3
	pxor	%xmm0, %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm10, %xmm2
	pand	%xmm15, %xmm2
	movdqa	%xmm10, %xmm4
	pxor	%xmm1, %xmm4
	movdqa	%xmm2, %xmm0
	pxor	%xmm3, %xmm0
	pand	%xmm4, %xmm0
	pxor	%xmm3, %xmm15
	movdqa	%xmm0, %xmm4
	pxor	%xmm2, %xmm0
	pxor	%xmm1, %xmm2
	pand	%xmm1, %xmm0
	pxor	%xmm0, %xmm10
	pxor	%xmm2, %xmm0
	pand	%xmm15, %xmm2
	pxor	%xmm3, %xmm2
	pxor	%xmm1, %xmm4
	pand	%xmm4, %xmm8
	movdqa	16(%rsp), %xmm1         # 16-byte Reload
	pand	%xmm4, %xmm1
	movdqa	%xmm1, 16(%rsp)         # 16-byte Spill
	movdqa	%xmm4, %xmm3
	pxor	%xmm10, %xmm4
	pand	%xmm10, %xmm14
	pand	(%rsp), %xmm10          # 16-byte Folded Reload
	pand	%xmm2, %xmm0
	pxor	%xmm15, %xmm0
	pand	%xmm4, %xmm13
	pxor	%xmm14, %xmm8
	pxor	%xmm13, %xmm14
	pand	%xmm2, %xmm12
	pand	%xmm2, %xmm5
	movdqa	%xmm5, (%rsp)           # 16-byte Spill
	pxor	%xmm2, %xmm3
	pand	%xmm4, %xmm6
	pxor	%xmm0, %xmm4
	pxor	%xmm0, %xmm2
	pand	%xmm0, %xmm9
	pand	48(%rsp), %xmm0         # 16-byte Folded Reload
	pand	%xmm3, %xmm11
	movdqa	96(%rsp), %xmm13        # 16-byte Reload
	pand	%xmm3, %xmm13
	pxor	%xmm4, %xmm3
	movdqa	128(%rsp), %xmm5        # 16-byte Reload
	pand	%xmm4, %xmm5
	pand	112(%rsp), %xmm4        # 16-byte Folded Reload
	movdqa	64(%rsp), %xmm15        # 16-byte Reload
	pand	%xmm2, %xmm15
	pand	80(%rsp), %xmm2         # 16-byte Folded Reload
	pand	%xmm3, %xmm7
	pand	144(%rsp), %xmm3        # 16-byte Folded Reload
	movdqa	%xmm2, %xmm1
	pxor	%xmm8, %xmm1
	pxor	%xmm5, %xmm1
	pxor	%xmm15, %xmm9
	pxor	%xmm9, %xmm7
	pxor	%xmm14, %xmm9
	pxor	%xmm12, %xmm8
	pxor	%xmm15, %xmm8
	pxor	%xmm7, %xmm11
	pxor	%xmm1, %xmm7
	pxor	%xmm13, %xmm3
	pxor	%xmm3, %xmm6
	pxor	%xmm6, %xmm10
	pxor	16(%rsp), %xmm6         # 16-byte Folded Reload
	pxor	%xmm8, %xmm0
	pxor	%xmm3, %xmm0
	movq	424(%rsp), %rax
	pxor	%xmm10, %xmm9
	movdqa	%xmm9, (%rax)
	movq	400(%rsp), %rcx
	pxor	%xmm11, %xmm10
	movdqa	%xmm10, (%rcx)
	movq	440(%rsp), %rcx
	movdqa	(%rsp), %xmm1           # 16-byte Reload
	pxor	%xmm7, %xmm1
	pxor	%xmm1, %xmm6
	movdqa	%xmm1, %xmm3
	movdqa	%xmm6, (%rcx)
	movq	456(%rsp), %rcx
	movq	432(%rsp), %rdx
	pxor	(%rax), %xmm8
	movdqa	%xmm8, (%rdx)
	pcmpeqd	%xmm1, %xmm1
	pxor	%xmm1, %xmm0
	pxor	%xmm0, %xmm2
	pxor	%xmm1, %xmm11
	movdqa	(%rax), %xmm1
	movdqa	%xmm2, (%rcx)
	pxor	%xmm7, %xmm0
	movq	448(%rsp), %rax
	movdqa	%xmm0, (%rax)
	movq	408(%rsp), %rax
	pxor	%xmm11, %xmm1
	movdqa	%xmm1, (%rax)
	pxor	%xmm13, %xmm4
	pxor	%xmm11, %xmm4
	pxor	%xmm3, %xmm4
	movq	416(%rsp), %rax
	movdqa	%xmm4, (%rax)
	movaps	160(%rsp), %xmm6        # 16-byte Reload
	movaps	176(%rsp), %xmm7        # 16-byte Reload
	movaps	192(%rsp), %xmm8        # 16-byte Reload
	movaps	208(%rsp), %xmm9        # 16-byte Reload
	movaps	224(%rsp), %xmm10       # 16-byte Reload
	movaps	240(%rsp), %xmm11       # 16-byte Reload
	movaps	256(%rsp), %xmm12       # 16-byte Reload
	movaps	272(%rsp), %xmm13       # 16-byte Reload
	movaps	288(%rsp), %xmm14       # 16-byte Reload
	movaps	304(%rsp), %xmm15       # 16-byte Reload
	addq	$328, %rsp              # imm = 0x148
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
	subq	$312, %rsp              # imm = 0x138
	.seh_stackalloc 312
	movaps	%xmm15, 288(%rsp)       # 16-byte Spill
	.seh_savexmm 15, 288
	movaps	%xmm14, 272(%rsp)       # 16-byte Spill
	.seh_savexmm 14, 272
	movaps	%xmm13, 256(%rsp)       # 16-byte Spill
	.seh_savexmm 13, 256
	movaps	%xmm12, 240(%rsp)       # 16-byte Spill
	.seh_savexmm 12, 240
	movaps	%xmm11, 224(%rsp)       # 16-byte Spill
	.seh_savexmm 11, 224
	movaps	%xmm10, 208(%rsp)       # 16-byte Spill
	.seh_savexmm 10, 208
	movaps	%xmm9, 192(%rsp)        # 16-byte Spill
	.seh_savexmm 9, 192
	movaps	%xmm8, 176(%rsp)        # 16-byte Spill
	.seh_savexmm 8, 176
	movaps	%xmm7, 160(%rsp)        # 16-byte Spill
	.seh_savexmm 7, 160
	movaps	%xmm6, 144(%rsp)        # 16-byte Spill
	.seh_savexmm 6, 144
	.seh_endprologue
	movdqa	(%rcx), %xmm5
	movdqa	16(%rcx), %xmm1
	movdqa	48(%rcx), %xmm0
	movdqa	80(%rcx), %xmm3
	movdqa	96(%rcx), %xmm11
	movdqa	112(%rcx), %xmm10
	movdqa	%xmm3, %xmm2
	pxor	%xmm0, %xmm2
	movdqa	%xmm11, %xmm4
	pxor	%xmm5, %xmm4
	movdqa	%xmm4, 32(%rsp)         # 16-byte Spill
	movdqa	32(%rcx), %xmm12
	pxor	%xmm1, %xmm12
	pxor	%xmm2, %xmm4
	movdqa	%xmm2, %xmm7
	movdqa	%xmm2, 128(%rsp)        # 16-byte Spill
	movdqa	%xmm10, %xmm8
	pxor	%xmm12, %xmm8
	movdqa	64(%rcx), %xmm9
	pxor	%xmm4, %xmm9
	movdqa	%xmm4, %xmm6
	movdqa	%xmm4, (%rsp)           # 16-byte Spill
	movdqa	%xmm8, %xmm4
	pxor	%xmm0, %xmm4
	movdqa	%xmm4, 16(%rsp)         # 16-byte Spill
	pxor	%xmm5, %xmm0
	movdqa	%xmm9, %xmm14
	pxor	%xmm3, %xmm14
	pxor	%xmm5, %xmm3
	pxor	%xmm1, %xmm9
	pand	%xmm10, %xmm4
	movdqa	%xmm14, %xmm1
	pxor	%xmm12, %xmm1
	movdqa	%xmm1, %xmm2
	movdqa	%xmm14, %xmm1
	pand	%xmm6, %xmm1
	movdqa	%xmm3, %xmm13
	movdqa	%xmm3, 96(%rsp)         # 16-byte Spill
	pxor	%xmm3, %xmm4
	movdqa	%xmm2, %xmm3
	movdqa	%xmm2, 112(%rsp)        # 16-byte Spill
	pxor	%xmm2, %xmm4
	pxor	%xmm1, %xmm4
	movdqa	%xmm1, %xmm2
	pxor	%xmm9, %xmm2
	movdqa	%xmm0, 80(%rsp)         # 16-byte Spill
	pxor	%xmm0, %xmm9
	movdqa	%xmm3, %xmm1
	pand	%xmm13, %xmm1
	movdqa	%xmm9, %xmm6
	pxor	%xmm3, %xmm6
	movdqa	%xmm9, %xmm3
	pand	%xmm0, %xmm3
	movdqa	%xmm6, %xmm0
	pand	%xmm7, %xmm0
	pxor	%xmm3, %xmm1
	pxor	%xmm3, %xmm0
	pxor	%xmm8, %xmm11
	movdqa	%xmm11, 48(%rsp)        # 16-byte Spill
	movdqa	%xmm11, %xmm7
	pxor	%xmm13, %xmm7
	movdqa	%xmm14, %xmm13
	pxor	%xmm10, %xmm13
	movdqa	%xmm13, %xmm15
	pand	%xmm7, %xmm15
	pxor	%xmm2, %xmm15
	pand	%xmm8, %xmm11
	pxor	%xmm9, %xmm12
	movdqa	%xmm12, 64(%rsp)        # 16-byte Spill
	pxor	%xmm0, %xmm15
	movdqa	32(%rsp), %xmm3         # 16-byte Reload
	movdqa	%xmm3, %xmm2
	pandn	%xmm12, %xmm2
	pxor	%xmm3, %xmm11
	pxor	%xmm2, %xmm11
	pxor	%xmm0, %xmm11
	movdqa	%xmm8, %xmm3
	pxor	%xmm5, %xmm3
	pxor	%xmm5, %xmm2
	movdqa	%xmm9, %xmm12
	pxor	%xmm10, %xmm12
	movdqa	%xmm12, %xmm0
	pand	%xmm3, %xmm0
	movdqa	%xmm3, %xmm5
	pxor	%xmm1, %xmm4
	pxor	%xmm0, %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm11, %xmm2
	pand	%xmm15, %xmm2
	movdqa	%xmm11, %xmm3
	pxor	%xmm1, %xmm3
	movdqa	%xmm2, %xmm0
	pxor	%xmm4, %xmm0
	pand	%xmm3, %xmm0
	pxor	%xmm4, %xmm15
	movdqa	%xmm0, %xmm3
	pxor	%xmm2, %xmm0
	pxor	%xmm1, %xmm2
	pand	%xmm1, %xmm0
	pxor	%xmm0, %xmm11
	pxor	%xmm2, %xmm0
	pand	%xmm15, %xmm2
	pxor	%xmm4, %xmm2
	pxor	%xmm1, %xmm3
	pand	%xmm3, %xmm10
	movdqa	16(%rsp), %xmm1         # 16-byte Reload
	pand	%xmm3, %xmm1
	movdqa	%xmm1, 16(%rsp)         # 16-byte Spill
	movdqa	%xmm3, %xmm1
	pxor	%xmm11, %xmm3
	pand	%xmm11, %xmm14
	pand	(%rsp), %xmm11          # 16-byte Folded Reload
	pand	%xmm2, %xmm0
	pxor	%xmm15, %xmm0
	pand	%xmm3, %xmm13
	pxor	%xmm14, %xmm10
	pxor	%xmm13, %xmm14
	pand	%xmm2, %xmm12
	pand	%xmm2, %xmm5
	movdqa	%xmm5, (%rsp)           # 16-byte Spill
	pxor	%xmm2, %xmm1
	pand	%xmm3, %xmm7
	pxor	%xmm0, %xmm3
	pxor	%xmm0, %xmm2
	pand	%xmm0, %xmm8
	pand	48(%rsp), %xmm0         # 16-byte Folded Reload
	pand	%xmm1, %xmm9
	movdqa	80(%rsp), %xmm13        # 16-byte Reload
	pand	%xmm1, %xmm13
	pxor	%xmm3, %xmm1
	movdqa	112(%rsp), %xmm5        # 16-byte Reload
	pand	%xmm3, %xmm5
	pand	96(%rsp), %xmm3         # 16-byte Folded Reload
	movdqa	64(%rsp), %xmm15        # 16-byte Reload
	pand	%xmm2, %xmm15
	pand	32(%rsp), %xmm2         # 16-byte Folded Reload
	pand	%xmm1, %xmm6
	pand	128(%rsp), %xmm1        # 16-byte Folded Reload
	movdqa	%xmm2, %xmm4
	pxor	%xmm10, %xmm4
	pxor	%xmm5, %xmm4
	pxor	%xmm15, %xmm8
	pxor	%xmm8, %xmm6
	pxor	%xmm14, %xmm8
	pxor	%xmm12, %xmm10
	pxor	%xmm15, %xmm10
	pxor	%xmm6, %xmm9
	pxor	%xmm4, %xmm6
	pxor	%xmm13, %xmm1
	pxor	%xmm1, %xmm7
	pxor	%xmm7, %xmm11
	pxor	16(%rsp), %xmm7         # 16-byte Folded Reload
	pxor	%xmm11, %xmm8
	movdqa	%xmm8, 48(%rdx)
	pxor	%xmm9, %xmm11
	movdqa	%xmm11, (%rdx)
	movdqa	(%rsp), %xmm4           # 16-byte Reload
	pxor	%xmm6, %xmm4
	pxor	%xmm4, %xmm7
	movdqa	%xmm7, 80(%rdx)
	pxor	%xmm10, %xmm0
	pxor	%xmm8, %xmm10
	movdqa	%xmm10, 64(%rdx)
	pxor	%xmm1, %xmm0
	pcmpeqd	%xmm1, %xmm1
	pxor	%xmm1, %xmm0
	pxor	%xmm0, %xmm2
	movdqa	%xmm2, 112(%rdx)
	pxor	%xmm6, %xmm0
	movdqa	%xmm0, 96(%rdx)
	pxor	%xmm1, %xmm9
	pxor	%xmm9, %xmm8
	movdqa	%xmm8, 16(%rdx)
	pxor	%xmm13, %xmm3
	pxor	%xmm9, %xmm3
	pxor	%xmm4, %xmm3
	movdqa	%xmm3, 32(%rdx)
	movaps	144(%rsp), %xmm6        # 16-byte Reload
	movaps	160(%rsp), %xmm7        # 16-byte Reload
	movaps	176(%rsp), %xmm8        # 16-byte Reload
	movaps	192(%rsp), %xmm9        # 16-byte Reload
	movaps	208(%rsp), %xmm10       # 16-byte Reload
	movaps	224(%rsp), %xmm11       # 16-byte Reload
	movaps	240(%rsp), %xmm12       # 16-byte Reload
	movaps	256(%rsp), %xmm13       # 16-byte Reload
	movaps	272(%rsp), %xmm14       # 16-byte Reload
	movaps	288(%rsp), %xmm15       # 16-byte Reload
	addq	$312, %rsp              # imm = 0x138
	retq
	.seh_handlerdata
	.text
	.seh_endproc
                                        # -- End function

	.addrsig
