#!/bin/sh
# dpw@MacBook-Pro.localdomain
# 2018.07.21
#

echo "\nINSTALL NODE as `whoami`"

curl -sL https://deb.nodesource.com/setup_8.x | bash -
apt-get install -y nodejs

npm install -g bower

