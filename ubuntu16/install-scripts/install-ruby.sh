#!/bin/sh
# dpw@iMac.localdomain
# 2018.07.21
#

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

apt-get update
apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn

wget http://ftp.ruby-lang.org/pub/ruby/2.2/ruby-2.2.10.tar.gz
tar -xzvf ruby-2.2.10.tar.gz
cd ruby-2.2.10/
./configure
make
make install
ruby -v

