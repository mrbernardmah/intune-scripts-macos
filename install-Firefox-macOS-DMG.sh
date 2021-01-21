#!/bin/bash

sas="Enter your SAS URL"
dmgfile="/tmp/Firefox 84.0.2.dmg"
appsource="/Volumes/Firefox/Firefox.app"

# check if Google Chrome is installed
if [ -e /Applications/Firefox\ Firefox.app ]
then
echo "v already installed"
exit 0
fi

#Download package
curl -L -f -o "$dmgfile" "$sas"

#Mount image and install the app
sudo hdiutil attach -nobrowse "$dmgfile"

#Copy file to Applications
sudo cp -rf "$appsource" /Applications

#Cleaning Up
sudo hdiutil detach /Volumes/Firefox\ Firefox/
sudo rm -rf $dmgfile

#Fix up permissions
sudo chown -R root:wheel /Applications/Firefox\ Firefox.app
exit 0