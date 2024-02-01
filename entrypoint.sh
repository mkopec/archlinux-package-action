#!/bin/bash
set -e

WORKPATH=/workspace/michal/$INPUT_PATH
cd $WORKPATH

# HACK: Trick makepkg into running as root.
export FAKEROOTKEY=1

makepkg -F --printsrcinfo >.SRCINFO
git diff .SRCINFO
