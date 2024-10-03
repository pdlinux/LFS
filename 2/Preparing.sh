#!/bin/bash

#2.5. Creating a File System on the Partition
mkswap /dev/sda3
mkfs -v -t ext4 /dev/sda2
mkfs -v -t F32 /dev/sda1

#2.6. Setting The $LFS Variable
export LFS=/mnt/lfs

#2.7. Mounting the New Partition
mkdir -pv $LFS
mount -v -t ext4 /dev/sda2 $LFS

mkdir -v $LFS/boot
mount -v -t ext4 /dev/sda1 $LFS/boot

/sbin/swapon -v /dev/sda3
