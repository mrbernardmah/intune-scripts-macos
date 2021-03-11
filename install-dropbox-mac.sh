#!/bin/sh

curl -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1 Safari/605.1.15" -L https://www.dropbox.com/download?os=mac > /Users/Shared/DropBoxInstaller.dmg

hdiutil attach /Users/Shared/DropBoxInstaller.dmg

open -g "/Volumes/Dropbox Installer/Dropbox.app"

#echo "20 seconds wait"
sleep 20

hdiutil detach /Volumes/Dropbox\ Installer/

rm -rf /Users/Shared/DropBoxInstaller.dmg

exit 0