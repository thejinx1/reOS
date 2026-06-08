#!/bin/sh
set -eu

PROJECT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
cd "${PROJECT_DIR}"

required_files="
auto/config
auto/build
auto/clean
reos.env
config/package-lists/reos-base.list.chroot
config/package-lists/reos-desktop.list.chroot
config/package-lists/reos-firmware.list.chroot
config/hooks/normal/0100-reos-branding.hook.chroot
config/hooks/normal/0200-reos-locale.hook.chroot
config/hooks/normal/0300-reos-cleanup.hook.chroot
"

missing=0
for file in ${required_files}; do
  if [ ! -f "${file}" ]; then
    echo "Eksik: ${file}" >&2
    missing=1
  fi
done

if [ "${missing}" -ne 0 ]; then
  exit 1
fi

sh -n auto/config
sh -n auto/build
sh -n auto/clean
sh -n scripts/prepare-host.sh
sh -n scripts/build-iso.sh
sh -n scripts/clean.sh

for hook in config/hooks/normal/*.hook.chroot; do
  sh -n "${hook}"
done

if command -v lb >/dev/null 2>&1; then
  echo "live-build bulundu: $(lb --version 2>/dev/null | head -n 1)"
else
  echo "Uyari: live-build bulunamadi. Kurmak icin: sudo ./scripts/prepare-host.sh" >&2
fi

echo "Proje iskeleti saglam gorunuyor."

