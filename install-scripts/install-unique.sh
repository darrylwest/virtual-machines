#!/bin/sh
# dpw@alameda.local
# 2017.09.24
#

cd /usr/local/bin \
    && wget https://github.com/darrylwest/go-unique/raw/master/linux/unique \
    && chmod a+x unique \
    && for f in olid txid tsid; do ln -f /usr/local/bin/unique $f; done

exit 0
