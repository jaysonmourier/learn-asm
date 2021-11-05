hello:
	@nasm -felf64 hello.asm -o obj/hello.o
	@ld obj/hello.o -o bin/hello

clean:
	@rm -r bin/*
	@rm -r obj/*
