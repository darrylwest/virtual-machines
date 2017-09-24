#!/bin/sh
# dpw@seattle.local
# 2017.03.05
#

set -eu

function installGolang {
    [ -d /downloads ] || mkdir /downloads
    cd /downloads || {
        echo "error! no downloads folder! exiting..."
        exit 1
    }

    vers=1.9
    wget "https://storage.googleapis.com/golang/go${vers}.linux-amd64.tar.gz"
    cd /usr/local

    tar -xvzf "/downloads/go${vers}.linux-amd64.tar.gz" \
        && ln -s /usr/local/go/bin/go /usr/local/bin/go \
        && ln -s /usr/local/go/bin/godoc /usr/local/bin/godoc \
        && ln -s /usr/local/go/bin/gofmt /usr/local/bin/gofmt 

}

installGolang

