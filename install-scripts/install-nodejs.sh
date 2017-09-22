#!/bin/sh
# dpw@seattle.local
# 2017.03.05
#

function installNode {
    [ -d /downloads ] || mkdir /downloads

    cd /downloads
    vers=v6.11.2
    echo "install node version ${vers}..."

    wget "https://nodejs.org/dist/$vers/node-${vers}-linux-x64.tar.xz" \
        && unxz "node-${vers}-linux-x64.tar.xz" \
        && cd /usr/local \
        && tar --strip-components 1 -xvf "/downloads/node-${vers}-linux-x64.tar" \
        && echo "node ${vers} installed..."
}

installNode

