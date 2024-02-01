#!/bin/bash
set -e

cd $INPUT_PATH

export EUID=1000

makepkg --printsrcinfo >.SRCINFO
git diff .SRCINFO
