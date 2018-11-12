#!/bin/bash
docker stop couchdb-generic couchdb-cors couchdb-persistent
docker system prune
docker run --rm -p 5984:5984 --mount type=bind,source=$(pwd)"/couchdb-data",target=/opt/couchdb/data --mount type=bind,source=$(pwd)"/couchdb-settings",target=/opt/couchdb/etc --name couchdb-persistent -d couchdb
