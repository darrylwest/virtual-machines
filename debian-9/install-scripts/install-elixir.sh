#!/bin/sh
# dpw@oakland.localdomain
# 2019.01.25
#

host="https://packages.erlang-solutions.com/erlang/elixir/FLAVOUR_2_download"
deb="elixir_1.8.0-1~debian~stretch_amd64.deb"

wget "$host/$deb"
sudo dpkg -i $deb
