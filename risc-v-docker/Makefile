CROSS_COMPILE=riscv64-linux-gnu-
CFLAGS = -nostdlib -nostdinc -static -g -march=rv32i -mabi=ilp32

QEMU = qemu-system-riscv32
QFLAGS = -nographic -m 2G -machine virt -bios none 

GDB = gdb-multiarch
CC = ${CROSS_COMPILE}gcc

OBJCOPY = ${CROSS_COMPILE}objcopy
OBJDUMP = ${CROSS_COMPILE}objdump

GDBINIT = ./gdbinit

%.elf: %.s
	${CC} ${CFLAGS} $< -Ttext=0x80000000 -o $@


.PHONY:
%.debug:%.elf
	${QEMU} ${QFLAGS} -kernel $< -s -S &
	${GDB} $< -q -x ${GDBINIT}


.PHONY: objdump
%.dump:%.elf
	${OBJDUMP} -d $< 


.PHONY: clean
clean:
	rm -rf *.o *.elf
