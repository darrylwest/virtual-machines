#!/bin/sh
#
# centos-base install; run as root (sudo)
#
# @author darryl.west <darwest@ebay.com>
# @created 2017-03-05 12:11:05

function runYum {
    echo "run the yum updates and installs..."

    yum -y update && yum -y install wget uuid git vim-enhanced.x86_64
    yum groupinstall "Development Tools" -y
    yum install -y epel-release
    yum install -y gettext-devel openssl-devel perl-CPAN perl-devel zlib-devel clang jq
}

runYum
