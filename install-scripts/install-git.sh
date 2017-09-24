#!/bin/sh
# dpw@seattle.local
# 2017.03.06
#

set -eu

function installGit {
    [ -d /downloads ] || mkdir /downloads
    cd /downloads

    vers=2.13.4
    echo "install git version ${vers}..."


    wget https://github.com/git/git/archive/v${vers}.tar.gz -O git.tar.gz \
        && tar -zxf git.tar.gz \
        && cd git-* \
        && make configure \
        && ./configure --prefix=/usr/local \
        && make install
}

installGit
