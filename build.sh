#!/bin/bash
set -e

lb config \
  --distribution bookworm \
  --archive-areas "main contrib non-free non-free-firmware" \
  --apt-recommends false \
  --bootappend-live "boot=live components username=camouflage hostname=lume" \
  --iso-application "Lume Linux" \
  --iso-publisher "camouflage" \
  --iso-volume "LUME"

lb build
