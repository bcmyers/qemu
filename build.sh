#!/usr/bin/env bash

set -euxo pipefail

./configure \
  --extra-cflags=-mavx2 \
  --enable-tools \
  --target-list=x86_64-softmmu

gmake -j$(nproc)
