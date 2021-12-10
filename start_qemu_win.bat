rem U-Boot commands:
rem > virtio scan
rem > fatload virtio 0:1 0x40200000 bsp-qemu-virt.bin
rem > go 0x40200000
C:\Program Files (x86)\qemu\qemu-system-arm.exe -M virt -m 256 -cpu cortex-a15 -bios u-boot.bin -hda fat:rw:./images -vga none -serial stdio

rem For redirect serial to TCP:
rem -serial telnet:localhost:1234,server
rem 
