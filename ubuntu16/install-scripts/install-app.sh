#!/bin/sh
# dpw@iMac.localdomain
# 2018.07.21
#

set -eu

git clone git@github.com:resublime/livingmatrix.git

cd livingmatrix
bundle config git.allow_insecure true
npm install -g bower

cp config/database.sample.yml config/dtabase.yml
