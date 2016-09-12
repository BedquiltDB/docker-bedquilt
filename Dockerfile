FROM postgres:9.5.4
MAINTAINER Shane Kilkelly <shane@kilkelly.me>


RUN apt-get update && apt-get -y -q install \
  postgresql-server-dev-9.5 \
  postgresql-plpython3-9.5 \
  build-essential


RUN mkdir -p /docker-entrypoint-initdb.d


ADD bedquilt-package /tmp/bedquilt-package
RUN cd /tmp/bedquilt-package && make install


ADD bootstrap.sh /docker-entrypoint-initdb.d/bootstrap.sh