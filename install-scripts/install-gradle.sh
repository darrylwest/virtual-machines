#!/bin/sh
# dpw@alameda.local
# 2017.09.22
#

set -eu

VERS=4.2
DIST=gradle-$VERS
ZIP=gradle-4.2-bin.zip

cd /opt \
    && wget https://services.gradle.org/distributions/$ZIP \
    && unzip $ZIP \
    && ln -s "/opt/$DIST/bin/gradle" /usr/local/bin/gradle

exit 0
