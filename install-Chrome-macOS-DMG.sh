#!/bin/bash

sas="s<Enter SAS URL>"
dmgfile="/tmp/googlechrome.dmg"
appsource="/Volumes/Google Chrome/Google Chrome.app"

# check if Google Chrome is installed
if [ -e /Applications/Google Chrome\ Google Chrome.app ]
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
sudo hdiutil detach /Volumes/Google Chrome\ Google Chrome/
sudo rm -rf $dmgfile

#Fix up permissions
sudo chown -R root:wheel /Applications/Google Chrome\ Google Chrome.app
exit 0