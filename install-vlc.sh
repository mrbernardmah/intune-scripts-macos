#!/bin/sh

# This script will download and install VLC on a fresh installation of OS X.
# Usage: curl https://raw.github.com/gist/3053979/install-vlc.sh | sh

readonly VLC_VERSION=3.0.11.1
cd $HOME/Downloads
curl -L -o VLC.dmg "https://get.videolan.org/vlc/3.0.11.1/macosx/vlc-3.0.11.1.dmg"
hdiutil attach VLC.dmg
ditto -rsrc "/Volumes/VLC media player/VLC.app" /Applications/VLC.app
hdiutil detach "/Volumes/VLC media player"
rm -i VLC.dmg
cd -