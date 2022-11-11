#!/bin/zsh
this_file=$(basename $0)
this_dir=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)

mountdev="/dev/shinra-bansho/public"
mountpoint="/mnt/lvm-public"
mountedpoint=$(findmnt --output=TARGET -n -S /dev/shinra-bansho/public)
# sudo mount /dev/shinra-bansho/private /mnt/lvm-private
# sudo mount /dev/shinra-bansho/public /mnt/lvm-public

function startup() {



    docker-compose up -d
}

if [[ -n $mountedpoint ]]; then
    if [[ $mountedpoint != $mountpoint ]]; then
        sudo umount $mountedpoint
    fi
fi

if [[ $mountedpoint != $mountpoint ]]; then
    sudo mount $mountdev $mountpoint
fi

startup()
