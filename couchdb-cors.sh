#!/bin/bash
docker stop couchdb-generic couchdb-cors couchdb-persistent
docker system prune --force
docker run --rm -p 5984:5984 --mount type=bind,source=$(pwd)"/local.ini.cors",target=/opt/couchdb/etc/local.d/local.ini --name couchdb-cors -d couchdb
