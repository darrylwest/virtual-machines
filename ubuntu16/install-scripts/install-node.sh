#!/bin/sh
# dpw@MacBook-Pro.localdomain
# 2018.07.21
#

set -eu

apt-get update -qq && apt-get install -y nodejs && npm install -g bower

