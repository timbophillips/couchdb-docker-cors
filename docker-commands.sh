#!/bin/bash
docker stop cts
docker system prune
docker run --rm -p 5984:5984 --mount type=bind,source=$(pwd)"/couchdb-data",target=/opt/couchdb/data --mount type=bind,source=$(pwd)"/couchdb-settings",target=/opt/couchdb/etc --name cts -d couchdb
# docker run -p 8080:80 --rm --mount type=bind,source=$(pwd)"/dist",target="/usr/share/nginx/html" --name nts2 -d nts
