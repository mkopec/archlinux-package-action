#!/bin/bash
set -e

cd $INPUT_PATH

makepkg --printsrcinfo >.SRCINFO
git diff .SRCINFO
