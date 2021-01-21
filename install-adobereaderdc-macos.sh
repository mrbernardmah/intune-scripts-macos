#! /bin/sh
url=https://ardownload2.adobe.com/pub/adobe/reader/mac/AcrobatDC/2001320074/AcroRdrDC_2001320074_MUI.dmg
 
set -x
tempd=$(mktemp -d)
curl $url > $tempd/AdobeReaderDC.dmg
listing=$(sudo hdiutil attach $tempd/AdobeReaderDC.dmg | grep Volumes)
volume=$(echo "$listing" | cut -f 3)
package=$(ls -1 "$volume" | grep .pkg | head -1)
sudo installer -pkg "$volume"/"$package" -target /
sudo hdiutil detach "$(echo "$volume" | cut -f 1)"
rm -rf $tempd
set +x 

