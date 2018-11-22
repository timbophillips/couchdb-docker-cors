# CouchDB with CORS enabled
# Tim Phillips
# VERSION 0.1

FROM couchdb as couchdb-cors3

RUN echo "[chttpd]" >> /opt/couchdb/etc/local.d/local.ini
RUN echo "bind_address = any" >> /opt/couchdb/etc/local.d/local.ini
RUN echo >> /opt/couchdb/etc/local.d/local.ini
RUN echo "[httpd]" >> /opt/couchdb/etc/local.d/local.ini
RUN echo "bind_address = any" >> /opt/couchdb/etc/local.d/local.ini
RUN echo "enable_cors = true" >> /opt/couchdb/etc/local.d/local.ini
RUN echo >> /opt/couchdb/etc/local.d/local.ini
RUN echo "[cors]" >> /opt/couchdb/etc/local.d/local.ini
RUN echo "origins = *" >> /opt/couchdb/etc/local.d/local.ini
RUN echo "credentials = true" >> /opt/couchdb/etc/local.d/local.ini
RUN echo "methods = GET, PUT, POST, HEAD, DELETE" >> /opt/couchdb/etc/local.d/local.ini
RUN echo "headers = accept, authorization, content-type, origin, referer" >> /opt/couchdb/etc/local.d/local.ini


