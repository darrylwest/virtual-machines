#!/bin/sh
# dpw@MacBook-Pro.localdomain
# 2018.07.21
#

image='postgres:9-alpine'
name=pg-db

docker run --name $name -e POSTGRES_PASSWORD=stagingdb -p 5432:5432 -d $image
