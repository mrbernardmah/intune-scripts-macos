#!/bin/sh

# This script will install Homebrew on a fresh installation of OS X.
# Usage: curl https://raw.github.com/gist/3053979/install-homebrew.sh | sh

# https://github.com/mxcl/homebrew/wiki/installation
/usr/bin/ruby -e "$(/usr/bin/curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"