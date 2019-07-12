#!/bin/sh
# dpw@debian9
# 2019.03.05
#

set -eu

# create the data folder
[ -d /opt/pet/data ] || sudo mkdir -p /opt/pet/data && sudo chmod a+rwx /opt/pet/data && sudo chown vagrant /opt/pet/data

[ -d $HOME/pet-groomer-app ] || mkdir $HOME/pet-groomer-app

cd $HOME/pet-groomer-app \
    && git clone git@gitlab.com:darrylwest/pet-groomer-docs.git \
    && git clone git@gitlab.com:darrylwest/unique_keys.git \
    && git clone git@gitlab.com:darrylwest/validation-rules.git validation_rules \
    && git clone git@gitlab.com:darrylwest/pet-groomer-domain.git pet_groomer_domain \
    && git clone git@gitlab.com:darrylwest/pet-groomer-web.git pet_groomer_web \
    && git clone git@gitlab.com:darrylwest/pet-groomer-integration-tests.git pet_integration_tests \
    && (cd pet-groomer-docs && git checkout develop) \
    && (cd unique_keys && git checkout develop && mix test --cover) \
    && (cd validation_rules && git checkout develop && mix test --cover) \
    && (cd pet_groomer_domain && git checkout develop && mix test --cover) \
    && (cd pet_integration_tests && git checkout develop) 

