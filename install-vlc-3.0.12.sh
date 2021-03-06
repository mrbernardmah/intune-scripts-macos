#!/bin/sh

# This script will download and install VLC on a fresh installation of OS X.

readonly VLC_VERSION=3.0.12
cd $HOME/Downloads
curl -L -o VLC.dmg "https://get.videolan.org/vlc/$VLC_VERSION/macosx/vlc-$VLC_VERSION-intel64.dmg"
hdiutil attach VLC.dmg
ditto -rsrc "/Volumes/VLC Media Player/VLC.app" /Applications/VLC.app
hdiutil detach "/Volumes/VLC Media Player"
cd -
