#!/bin/sh
# dpw@alameda.local
# 2017.09.22
#

cd /opt
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u144-b01/090f390dda5b47b9b721c7dfaa008135/jdk-8u144-linux-x64.tar.gz"

tar xzf jdk-8u144-linux-x64.tar.gz
cd jdk-8u144-linux-x64

# alternatives
alternatives --install /usr/bin/java java /opt/jdk1.8.0_144/bin/java 2
alternatives --config java

alternatives --install /usr/bin/jar jar /opt/jdk1.8.0_144/bin/jar 2
alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_144/bin/javac 2
alternatives --set jar /opt/jdk1.8.0_144/bin/jar
alternatives --set javac /opt/jdk1.8.0_144/bin/javac

