docker stop couchdb-generic couchdb-cors couchdb-persistent
docker system prune --force
docker run --rm -p 5984:5984  --name couchdb-cors -d couchdb
docker cp ./cors.ini couchdb-cors:/opt/couchdb/etc/local.d/local.ini
docker restart couchdb-cors