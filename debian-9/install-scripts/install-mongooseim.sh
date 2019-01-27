#!/bin/sh
# dpw@oakland.localdomain
# 2019.01.26
#

wget https://packages.erlang-solutions.com/erlang/mongooseim/FLAVOUR_1_main/mongooseim_3.2.0-1~debian~stretch_amd64.deb \
    && dpkg -i mongooseim_3.2.0-1~debian~stretch_amd64.deb \
    && apt-get update -y \
    && apt-get install mongooseim -y \
    && /bin/rm mongooseim_3.2.0-1~debian~stretch_amd64.deb 

