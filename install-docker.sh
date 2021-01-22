#!/usr/bin/env bash -e

# download disk image
cd ~/Downloads
curl -O https://download.docker.com/mac/stable/Docker.dmg

# attach disk image
hdiutil attach Docker.dmg

# copy app folder to Applications directory
cp -R /Volumes/Docker/Docker.app /Applications/Docker.app

# detach disk image volume
hdiutil detach /Volumes/Docker

# delete disk image
rm Docker.dmg

# move pwd back to where it was
cd -

# open app
open -a Docker.app
