#!/bin/sh
# darwest@ebay.com <darryl.west>
# 2018-03-27 16:16:46
#

[ -d /downloads ] || mkdir /downloads
cd /downloads

wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F && oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/9.0.1+11/jdk-9.0.1_linux-x64_bin.rpm"

yum install jdk-9.0.1_linux-x64_bin.rpm -y

rm jdk-9.0.1_linux-x64_bin.rpm
