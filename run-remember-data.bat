docker stop couchdb-cors
docker system prune --force
docker build . -t couchdb-cors
docker run --rm -p 5984:5984 --mount type=bind,source="./data",target=/opt/couchdb/data --mount type=bind,source="./etc",target=/opt/couchdb/etc --name couchdb-persistent -d couchdb-cors