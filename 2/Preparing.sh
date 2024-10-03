#!/bin/bash
#2.6
export LFS=/mnt/lfs
#2.7
mkdir -pv $LFS
mount -v -t ext4 /dev/sda2 $LFS

mkdir -v $LFS/boot
mount -v -t ext4 /dev/sda1 $LFS/boot

/sbin/swapon -v /dev/sda3
