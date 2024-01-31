#!/bin/bash
set -e

WORKPATH=$GITHUB_WORKSPACE/$INPUT_PATH
cd $WORKPATH

makepkg --printsrcinfo >.SRCINFO
git diff .SRCINFO
