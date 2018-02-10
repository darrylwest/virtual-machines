#!/bin/sh
# dpw@alameda.local
# 2017.09.22
#

yum install maven -y
exit 0

VERS=3.5.0
DIST="apache-maven-$VERS"
TAR="$DIST-bin.tar.gz"

cd /opt \
    && wget "http://www-eu.apache.org/dist/maven/maven-3/$VERS/binaries/$TAR" \
    && tar xvzf $TAR \
    && ln -s $PWD/$DIST/bin/mvn /usr/local/bin/mvn

exit 0
