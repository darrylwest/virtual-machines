#!/bin/sh
# dpw@oakland.localdomain
# 2019.01.26
#

/vagrant/install-scripts/keygen-linux

git clone https://github.com/esl/MongooseIM.git
git clone https://github.com/danielberkompas/ex_twilio.git
git clone https://github.com/duailibe/cuid.git
git clone https://github.com/danielberkompas/cloak

# copy the id_rsa first...
git clone git@gitlab.com:SkedgeAlert/skedgealert.git

