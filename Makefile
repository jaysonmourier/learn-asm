hello:
	@nasm -felf64 hello.asm -o obj/hello.o
	@ld obj/hello.o -o bin/hello

swap:
	@nasm -felf64 swap.asm -o obj/swap.o
	@ld obj/swap.o -o bin/swap

clean:
	@rm -r bin/*
	@rm -r obj/*
