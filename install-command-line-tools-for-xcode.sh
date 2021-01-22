#!/bin/sh

# This script will install Command Line Tools for Xcode on a fresh installation of OS X.
# Usage: curl https://raw.github.com/gist/3053979/install-command-line-tools-for-xcode.sh | sh

DMG='https://developer.apple.com/download/ß'

cd $HOME/Downloads
if [ ! -f ./$DMG ]; then
  echo 'Command Line Tools for Xcode not downloaded.'
  exit 1
fi
hdiutil attach $DMG
sudo installer -pkg '/Volumes/Command Line Tools/Command Line Tools.mpkg' -target /
hdiutil detach "/Volumes/Command Line Tools"
rm -i $DMG
cd -
echo 'Finished install Command Line Tools for Xcode'