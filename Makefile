# A MAKE FILE :)

make: clear compile link

compile:
	@echo "Compiling project..."
	@nasm -f elf32 hidemsg.asm
link:
	@echo "Linking ASM"
	@ld -m elf_i386 hidemsg.o -o hidemsg
clear:
	@echo "Cleaning project..."
	@rm -f Makefile~
	@rm -f *.ppm~
	@rm -f *.o
	@rm -f hidemsg
