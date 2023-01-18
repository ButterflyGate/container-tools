ENV_FILES=(db_auth.env nextcloud.env)
VOLUME_DIRS=(nextcloud postgres)

NEXTCLOUD_DATA_STORE_MOUNT_DEVICE="/dev/shinra-bansho/public"
NEXTCLOUD_DATA_STORE_MOUNT_POINT="/mnt/lvm-public"
