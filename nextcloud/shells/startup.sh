#!/bin/bash

# sudo mount /dev/shinra-bansho/private /mnt/lvm-private
# sudo mount /dev/shinra-bansho/public /mnt/lvm-public

mountdev="/dev/shinra-bansho/public"
mountpoint="/mnt/lvm-public"
mountedpoint=$(findmnt --output=TARGET -n -S /dev/shinra-bansho/public)


if [[ -n $mountedpoint ]]; then
    if [[ $mountedpoint != $mountpoint ]]; then
        sudo umount $mountedpoint
    fi
fi

if [[ $mountedpoint != $mountpoint ]]; then
    sudo mount $mountdev $mountpoint
fi

docker-compose up -d
