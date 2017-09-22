#!/bin/sh
# dpw@alameda.local
# 2017.09.22
#

VERS=2.4.12
DIST="apache-groovy-binary-$VERS"
ZIP="$DIST.zip"

cd /opt
wget https://bintray.com/artifact/download/groovy/maven/$ZIP

unzip $ZIP

# remove the msdos files...
cd groovy-$VERS/bin \
    && /bin/rm *.bat \
    && for f in *; do /bin/rm -f /usr/local/bin/$f ; ln -s "$PWD/$f" /usr/local/bin/$f ; done

