#!/bin/bash
docker stop couchdb-generic couchdb-cors couchdb-persistent
docker system prune
docker run --rm -p 5984:5984  --name couchdb-generic -d couchdb
