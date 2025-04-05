#!/bin/env bash

set -xeuo pipefail

qmk --verbose setup

EXTRAFLAGS="-flto -fipa-pta -fipa-sra -fdata-sections -ffunction-sections -mcpu=cortex-m0plus -g0 -O3 -fomit-frame-pointer -falign-functions=16"
EXTRALDFLAGS="$EXTRAFLAGS"

env EXTRAFLAGS="$EXTRAFLAGS" EXTRALDFLAGS="$EXTRALDFLAGS" qmk --verbose compile -kb osupico -km default

file osupico_default.uf2
ls -lah osupico_default.uf2

unset EXTRAFLAGS
unset EXTRALDFLAGS
