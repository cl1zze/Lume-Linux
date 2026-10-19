#!/bin/bash
set -e

lb config \
  --mode debian \
  --distribution bookworm \
  --archive-areas "main contrib non-free non-free-firmware" \
  --security true \
  --apt-recommends false \
  --mirror-bootstrap "http://deb.debian.org/debian/" \
  --mirror-chroot "http://deb.debian.org/debian/" \
  --mirror-binary "http://deb.debian.org/debian/" \
  --mirror-binary-security "http://security.debian.org/debian-security/" \
  --mirror-chroot-security "http://security.debian.org/debian-security/" \
  --bootappend-live "boot=live components username=camouflage hostname=lume" \
  --iso-application "Lume Linux" \
  --iso-publisher "camouflage" \
  --iso-volume "LUME"

lb build
