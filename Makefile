CC=clang -O3
AS=clang

TARGETS=sbox_sse sbox_avx2 sbox_avx512 sbox_jasmin_avx512
PERF=$(addsuffix .perf, $(TARGETS))
ASM=$(addsuffix .s, $(TARGETS))
OBJ=$(addsuffix .o, $(TARGETS))

SSEFLAGS=-msse -msse2 -msse3 -mssse3 -msse4 -msse4a -msse4.1 -msse4.2
AVX512FLAGS=-mavx512f -mavx512pf -mavx512er -mavx512cd -mavx512vl -mavx512bw -mavx512dq -mavx512ifma -mavx512vbmi
AVX2FLAGS=-mavx2

all: bench

bench: $(PERF)

build: $(TARGETS)

%.perf: %
	./$< > $@

%_avx512: %_avx512.o main.c
	$(CC) -DNB_RUN=0x10000000 $^ -o $@

%_avx2: %_avx2.o main.c
	$(CC) -DNB_RUN=0x20000000 $^ -o $@

%_sse: %_sse.o main.c
	$(CC) -DNB_RUN=0x40000000 $^ -o $@

%_avx512.o: %_avx512.s
	$(AS) $(AVX512FLAGS) -c $^

%_avx2.o: %_avx2.s
	$(AS) $(AVX2FLAGS) -c $^

%_sse.o: %_sse.s
	$(AS) $(SSEFLAGS) -c $^

sbox_jasmin_avx512.s: sbox_jasmin_avx512.jazz
	jasminc $^ -o $@.tmp
	cat $@.tmp | sed 's/movdqu/movdqa64/g' > $@
	$(RM) $@.tmp

%_avx512.s: %_avx512.c
	$(CC) -S $(AVX512FLAGS) $^

%_avx2.s: %_avx2.c
	$(CC) -S $(AVX2FLAGS) $^

%_sse.s: %_sse.c
	$(CC) -S $(SSEFLAGS) $^

.PHONY: all build bench clean mrproper

.SUFFIXES:

clean:
	mv sbox_jasmin_avx512.s sbox_jasmin_avx512.ss
	$(RM) $(OBJ) $(ASM)
	mv sbox_jasmin_avx512.ss sbox_jasmin_avx512.s

mrproper: clean
	$(RM) $(PERF) $(TARGETS)
