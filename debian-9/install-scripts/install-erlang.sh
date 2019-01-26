#!/bin/sh
# dpw@oakland.localdomain
# 2019.01.25
#

host="https://packages.erlang-solutions.com/erlang/esl-erlang/FLAVOUR_1_general"
deb="esl-erlang_21.2.4-1~debian~stretch_amd64.deb"

wget "$link/$deb"

sudo dpkg -i $deb
