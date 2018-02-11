#!/bin/sh
# dpw@alameda.local
# 2017.09.24
#

cd /usr/local/bin \
    && wget -O unique https://github.com/darrylwest/go-unique/raw/master/linux/unique \
    && chmod a+x unique \
    && ln -f unique ulid \
    && ln -f unique uuid \
    && ln -f unique guid \
    && ln -f unique txid \
    && ln -f unique tsid \
    && ln -f unique cuid \
    && ln -f unique xuid

exit 0
