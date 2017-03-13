#!/bin/bash

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"\ 
&& echo "---- Homebrew installed" || exit 1

# MongoDB
brew install mongodb && sudo mkdirp -p /data/db && sudo chown krszwsk /data/db \
&& echo "---- MongoDB installed" || exit 1