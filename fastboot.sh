fastboot flash partmap device/nexell/s5p6818_avn_ref_bt/partmap.txt
fastboot flash 2ndboot result/2ndboot.bin
fastboot flash bootloader result/u-boot.bin
fastboot flash boot result/boot.img
fastboot flash system result/system.img
fastboot flash root result/root.img
fastboot reboot
