#!/bin/sh
# darryl@livingmatrix.com
# 2018.07.21
#

[ -d /opt/pg/data ] || mkdir -v -p -m 777 /opt/pg/data

image='postgres:9-alpine'
name=pg-db

if docker inspect $name > /dev/null
then
    docker restart $name
else
    docker run -d --name $name \
        -e POSTGRES_PASSWORD=stagingdb \
        -v /opt/pg/data:/var/lib/postgresql/data \
        -p 5432:5432 $image
fi
