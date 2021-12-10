# bsp-qemu-arm
Minimal BSP for run QNX 6.5.0 on QEMU ARM System emulator.

## Description

My configruation: QEMU version: 6.0.93, Windows 10

Working:
 - startup
 - procnto-smp
 - serial driver (pl011)
 - shell
Need:
 - pci-server
 - virtio driver
 - network driver
 - etc


## How to start

1. Start QEMU emulator:
```sh
qemu-system-arm.exe -M virt -m 256 -cpu cortex-a15 -bios ./images/u-boot.bin -hda fat:rw:./images -vga none -serial stdio
```

2. Enter commands in U-Boot:
```sh
virtio scan
fatload virtio 0:1 0x40200000 bsp-qemu-virt.bin
go 0x40200000
```

