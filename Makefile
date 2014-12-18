# llc: The llc command compiles LLVM bitcode into assembly language for a specified architecture

.SUFFIXES:
.PHONY: all clean
.SECONDARY:

all: testapp

testapp : testapp.c square.o cube.o
	gcc -o $@ $^

clean :
	$(RM) testapp square.o cube.o square.bc cube.bc square.s cube.s

%.ll : %.c
	clang -o $@ -flto -S -O $^

%.bc : %.ll
	llvm-as $<

%.s : %.bc
	llc $^

%.o : %.s
	as -o $@ $^
