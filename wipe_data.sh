#!/bin/sh

echo "wipe data start"
rm -rf /root/data/*
sync
umount /root
echo "wipe data end"
