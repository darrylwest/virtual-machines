#!/bin/sh
# dpw@iMac.localdomain
# 2018.07.28
#

# run as root...

add-apt-repository ppa:gophers/archive \
    && apt-get update \
    && apt-get install -y golang-1.10-go \
    && ln -s /usr/lib/go-1.10/bin/go /usr/local/bin/go \
    && ln -s /usr/lib/go-1.10/bin/gofmt /usr/local/bin/gofmt \
    && go version

