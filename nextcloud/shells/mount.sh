#!/bin/zsh
THIS_MOUNT_FILE=$(basename $0)
THIS_MOUNT_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
source $THIS_DIR/settings.sh

# sudo mount /dev/shinra-bansho/private /mnt/lvm-private
# sudo mount /dev/shinra-bansho/public /mnt/lvm-public
DEVICE_MOUNTED_POINT=$(findmnt --output=TARGET -n -S /dev/shinra-bansho/public)
function mount_volume () {
    if [[ -n $DEVICE_MOUNTED_POINT ]]; then
        if [[ $DEVICE_MOUNTED_POINT != $NEXTCLOUD_DATA_STORE_MOUNT_POINT ]]; then
            sudo umount $DEVICE_MOUNTED_POINT
        fi
    fi

    if [[ $DEVICE_MOUNTED_POINT != $NEXTCLOUD_DATA_STORE_MOUNT_POINT ]]; then
        sudo mount $NEXTCLOUD_DATA_STORE_MOUNT_DEVICE $NEXTCLOUD_DATA_STORE_MOUNT_POINT
    fi
}

mount_volume
