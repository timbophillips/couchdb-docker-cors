docker stop couchdb-generic couchdb-cors couchdb-persistent
docker system prune
docker run --rm -p 5984:5984 --mount type=bind,source="%cd%\\couchdb-data",target=/opt/couchdb/data --mount type=bind,source="%cd%\\local.ini.cors",target=/opt/couchdb/etc/local.d/local.ini --name couchdb-persistent -d couchdb
