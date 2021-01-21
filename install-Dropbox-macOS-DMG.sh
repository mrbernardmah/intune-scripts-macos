#!/bin/bash

sas="<Enter SAS URL>"
dmgfile="/tmp/Dropbox 112.4.321.dmg"
appsource="/Volumes/Dropbox Offline Installer/Dropbox.app"

# check if Sublime is installed
if [ -e /Applications/Dropbox.app ]
then
echo "Dropbox already installed"
exit 0
fi

#Download package
curl -L -f -o "$dmgfile" "$sas"

#Mount image and install the app
sudo hdiutil attach -nobrowse "$dmgfile"

#Copy file to Applications
sudo cp -rf "$appsource" /Applications

#Cleaning Up
sudo hdiutil detach /Volumes/Dropbox\ Offline\ Installer/
sudo rm -rf $dmgfile

#Fix up permissions
sudo chown -R root:wheel /Applications/Sublime\ Text.app
exit 0