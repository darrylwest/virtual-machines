#!/bin/sh
# dpw@oakland.localdomain
# 2019.01.26
#

apt-get update \
    && apt-get install -y jq unzip git vim uuid tree figlet \
    && apt-get install -y postgresql-9.6
