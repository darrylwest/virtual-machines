#!/bin/sh
# dpw@oakland.localdomain
# 2019.01.26
#

sudo cp /vagrant/install-scripts/motd /etc/motd

/vagrant/install-scripts/keygen-linux
/vagrant/install-scripts/install-phoenix.sh
cp /vagrant/install-scripts/gitconfig .gitconfig

[ -d ex_twillo ] || git clone https://github.com/danielberkompas/ex_twilio.git

# copy the id_rsa first...
[ -d skedgealert ] || git clone git@gitlab.com:SkedgeAlert/skedgealert.git

tar xvzf /vagrant/install-scripts/env.tgz

