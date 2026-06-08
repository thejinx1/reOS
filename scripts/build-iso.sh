#!/bin/sh
set -eu

PROJECT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
cd "${PROJECT_DIR}"

if [ "$(id -u)" -ne 0 ]; then
  exec sudo sh "$0" "$@"
fi

sh ./auto/config
lb build noauto "${@}"
