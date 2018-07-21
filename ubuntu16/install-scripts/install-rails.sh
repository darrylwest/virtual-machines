#!/bin/sh
# dpw@iMac.localdomain
# 2018.07.21
#

set -eu

gem install rails -v 4.1.6 --no-ri --no-rdoc

if [ -x /usr/bin/npm ] 
then
    echo "node and npm installed..."
else
    echo "install node and npm..."
    apt-get install -y nodejs
fi

npm install -g bower

