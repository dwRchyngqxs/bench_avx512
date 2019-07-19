CC=clang -O3
AS=clang

TARGETS=sbox_clang_512 sbox_jasmin_512 sbox_clang_2
PERF=$(addsuffix .perf, $(TARGETS))
ASM=$(addsuffix .s, $(TARGETS))
OBJ=$(addsuffix .o, $(TARGETS))

all: $(OBJ) bench

build: $(TARGETS)

bench: $(PERF)

%.perf: %
	perf stat -o $@ -d ./$<

%_512.o: %_512.s
	$(AS) -mavx512f -c $^

%_2.o: %_2.s
	$(AS) -mavx2 -c $^

sbox_clang_512.s: sbox_clang_512.c
	$(CC) -S -mavx512f $^

sbox_clang_2.s: sbox_clang_2.c
	$(CC) -S -mavx2 $^

sbox_jasmin_512.s: sbox_jasmin_512.jazz
	jasminc $^ -o $@.tmp
	cat $@.tmp | sed 's/movdqu/movdqa64/g' > $@
	$(RM) $@.tmp

%:: main.c %.o
	$(CC) $^ -o $@

.PHONY: clean mrproper

clean:
	$(RM) $(OBJ) $(ASM)

mrproper: clean
	$(RM) $(PERF) $(TARGETS)