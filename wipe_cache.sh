#!/bin/sh

echo "wipe cache start"
rm -rf /root/cache/*
sync
umount /root
echo "wipe cache end"
