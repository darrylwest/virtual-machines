#!/bin/sh
# dpw@alameda.local
# 2018.07.22
#

data=/opt/redis/data
[ -d $data ] || mkdir -v -p -m 777 $data

image='redis:4-alpine'
name='redis-db'

if docker inspect $name > /dev/null
then
    docker restart $name
else
    docker run -d --name $name -v "$data":/data -p 6379:6379 $image
fi

