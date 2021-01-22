#!/usr/bin/env bash -e

# download disk image
cd ~/Downloads
curl -o iTerm2.zip 'https://iterm2.com/downloads/stable/latest' &
wait

# unzip package
unzip iTerm2.zip

# move app folder to Applications directory
mv iTerm.app /Applications

# delete zip file
rm iTerm2.zip

# move pwd back to where it was
cd -

# would be nice to have the option to restore profile data from a backup
