#!/bin/bash
set -e

ls

WORKPATH=/workspace/michal/$INPUT_PATH
cd $WORKPATH

ls
ls ..

# HACK: Trick makepkg into running as root.
export FAKEROOTKEY=1

makepkg -F --printsrcinfo >.SRCINFO
