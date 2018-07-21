#!/bin/sh
# dpw@iMac.localdomain
# 2018.07.21
#

set -eu

REPO='git@github.com:resublime/livingmatrix.git'
echo "clone the repo: $REPO..."
git clone $REPO

cd livingmatrix

echo "update gemfile..."
cp Gemfile /tmp/Gemfile
sed -e 's/2.2.0/2.2.10/' /tmp/Gemfile > Gemfile

echo "copy sample database..."
cp config/database.sample.yml config/database.yml

echo "bundle install..."
bundle config git.allow_insecure true
bundle install

rake bower:install
