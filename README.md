# bsp-qemu-arm
Minimal BSP for run QNX 6.5.0 on QEMU ARM System emulator.

1. Run QEMU emulator:
```sh
qemu-system-arm.exe -M virt -m 256 -cpu cortex-a15 -bios ./images/u-boot.bin -hda fat:rw:./images -vga none -serial stdio
```

2. Enter commands to U-Boot:
```sh
virtio scan
fatload virtio 0:1 0x40200000 bsp-qemu-virt.bin
go 0x40200000
```
