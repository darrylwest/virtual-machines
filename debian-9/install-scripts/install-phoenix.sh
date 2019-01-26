#!/bin/sh
# dpw@oakland.localdomain
# 2019.01.26
#

VERS=1.4.0

mix local.hex --if-missing \
    && mix archive.install hex phx_new $VERS --force
