#!/bin/sh
# dpw@oakland.localdomain
# 2019.01.26
#

apt-get update -qq \
    && apt-get upgrade \
    && apt-get install -y jq unzip git vim uuid tree \
    && apt-get install -y postgresql-9.6
