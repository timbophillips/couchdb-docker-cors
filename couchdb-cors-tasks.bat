docker stop couchdb-generic cts
docker system prune
docker run --rm -p 5984:5984 --mount type=bind,source="%cd%\\couchdb-data",target=/opt/couchdb/data --mount type=bind,source="%cd%\\couchdb-settings",target=/opt/couchdb/etc --name cts -d couchdb
