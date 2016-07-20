#!/system/bin/sh

echo 1 > /proc/deferred_initcalls

echo interactive > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

# stop backward camera
echo 1 > /sys/devices/platform/backward_camera/stop&

# printk log level
echo 7 > /proc/sys/kernel/printk

chmod 777 /dev/input/*

chmod 777 /data/misc/dhcp
chmod 777 /data/misc/dhcp/*

sleep 0.5
setprop sys.usb.config none 
sleep 0.5
stop adbd
sleep 0.5
setprop sys.usb.config adb
