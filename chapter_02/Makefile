
		
SRCS = $(wildcard *.c)
OBJS = $(SRCS:.c=.o)
TARGET = /usr/local/cross-compiler/bin/arm-none-eabi
CFLAGS = -mcpu=arm1176jzf-s -fpic -ffreestanding
all: clean kernel7.img
boot.o: boot.S
	$(TARGET)-gcc $(CFLAGS) -c boot.S -o boot.o
kernel7.img: boot.o
	$(TARGET)-gcc -T linker.ld -o kernel7.elf -ffreestanding -O2 -nostdlib boot.o
	$(TARGET)-objdump -D kernel7.elf > kernel7.dump
	$(TARGET)-objcopy kernel7.elf -O binary kernel7.img

clean:
	rm kernel7.dump kernel7.elf kernel7.img *.o >/dev/null 2>/dev/null || true

