#!/bin/sh

echo "Installed TeamViewer Host"

#Make temp folder for downloads
mkdir "/tmp/teamviewerfull/";
cd "/tmp/teamviewerfull";

curl -O https://dl.teamviewer.com/download/version_15x/CustomDesign/Install%20TeamViewer-idcXXXXXX.pkg
sudo installer -pkg "Install%20TeamViewer-idcXXXXXX.pkg" -target /

#echo "10 seconds wait"
sleep 10


#Remove Temp Files
sudo rm -rf "/tmp/teamviewerfull/";

exit 0





