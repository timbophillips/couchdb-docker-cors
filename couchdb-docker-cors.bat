#!/bin/bash
docker stop couchdb-cors
docker system prune --force
docker build . -t couchdb-cors
docker run --rm -p 5984:5984  --name couchdb-cors -d -it couchdb-cors