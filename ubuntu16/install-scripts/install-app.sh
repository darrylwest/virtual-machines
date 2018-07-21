#!/bin/sh
# dpw@iMac.localdomain
# 2018.07.21
#

set -eu
set -x

git clone git@github.com:resublime/livingmatrix.git

cd livingmatrix

cp Gemfile /tmp/Gemfile
sed -e 's/2.2.0/2.2.10/' /tmp/Gemfile > Gemfile

bundle config git.allow_insecure true
bundle install

cp config/database.sample.yml config/dtabase.yml
