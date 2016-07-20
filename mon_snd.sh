#!/system/bin/sh

ls /dev/snd/pcmC0D0p
while [ $? != 0 ]
do
    #sleep 0.1
    sleep 0.5
    ls /dev/snd/pcmC0D0p
done

chmod 777 /dev/snd/*

setprop ctl.stop media
setprop ctl.start media
