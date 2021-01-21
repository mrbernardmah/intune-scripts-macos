#!/bin/sh

echo "Installed TeamViewer Host"

#Make temp folder for downloads
mkdir "/tmp/teamviewer/";
cd "/tmp/teamviewer/";

curl -O https://dl.teamviewer.com/download/version_15x/CustomDesign/Install%20TeamViewerHost-idcXXXXXXX.pkg
curl -O https://teamviewer.com/TeamViewer_Assignment
chmod +x TeamViewer_Assignment
sudo installer -pkg "Install%20TeamViewerHost-idcXXXXXX.pkg" -target /

#echo "10 seconds wait"
sleep 10


sudo /Applications/TeamViewerHost.app/Contents/Helpers/TeamViewer_Assignment -api-token <API token> -group-id gXXXXXXX -grant-easy-access


#Remove Temp Files
sudo rm -rf "/tmp/teamviewer/";

exit 0





