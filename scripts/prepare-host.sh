#!/bin/sh
set -eu

if [ "$(id -u)" -ne 0 ]; then
  echo "Bu betik root olarak calismali. Ornek: sudo ./scripts/prepare-host.sh" >&2
  exit 1
fi

apt-get update
apt-get install -y \
  live-build \
  debootstrap \
  squashfs-tools \
  xorriso \
  isolinux \
  syslinux-common \
  syslinux-utils \
  grub-pc-bin \
  grub-efi-amd64-bin \
  mtools \
  dosfstools \
  ca-certificates

echo "Host hazir. Simdi: sudo ./scripts/build-iso.sh"

