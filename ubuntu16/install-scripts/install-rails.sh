#!/bin/sh
# dpw@iMac.localdomain
# 2018.07.21
#

gem install rails -v 4.1.6 --no-ri --no-rdoc

[ which npm ] && {
    echo "install node and npm..."
    apt-get install -y nodejs
}

npm install -g bower


