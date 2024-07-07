#!/usr/bin/env bash
SIZE=${1:-11G}
MOUNT_POINT=${2:-/mnt/ramdisk}
test -d ${MOUNT_POINT} || mkdir -p ${MOUNT_POINT}
echo "mount -t tmpfs -o size=${SIZE} tmpfs ${MOUNT_POINT}"
mount -t tmpfs -o size="${SIZE}" tmpfs "${MOUNT_POINT}"
