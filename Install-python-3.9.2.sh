#!/bin/sh

echo "Installed Python 3.9.2"

#Make temp folder for downloads
mkdir "/tmp/python";
cd "/tmp/python";

curl -O https://www.python.org/ftp/python/3.9.2/python-3.9.2-macosx10.9.pkg
sudo installer -pkg "python-3.9.2-macosx10.9.pkg" -target /

#echo "10 seconds wait"
sleep 10


#Remove Temp Files
sudo rm -rf "/tmp/python/";

exit 0





