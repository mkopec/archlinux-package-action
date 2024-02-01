#!/bin/bash
set -e

WORKPATH=/workspace/michal/$INPUT_PATH
cd $WORKPATH

export EUID=1000

makepkg --printsrcinfo >.SRCINFO
git diff .SRCINFO
