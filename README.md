# docker-bedquiltdb

A Docker image for [BedquiltDB](https://bedquiltdb.github.io), based on the official [postgres image](https://hub.docker.com/_/postgres/).

This image is essentially the same as the `postgres` image, but with the `bedquilt` extension pre-installed on the default template, and an empty `docker` database and user ready to go.For full documentation of options available, see the [postgres image](https://hub.docker.com/_/postgres/) page.

Github: https://github.com/BedquiltDB/docker-bedquilt


## From Docker Hub

This image is available from the [Docker Hub](https://hub.docker.com/r/bedquiltdb/bedquiltdb/).

```bash
docker pull bedquiltdb/bedquiltdb:latest
```


## Run

```bash
docker run -d -P --name bq bedquiltdb/bedquiltdb
```


## Connect from psql

Run `docker ps` to get the port PostgreSQL is mapped to, then supply that port to `psql`

```bash
psql -h 0.0.0.0 -p 34242 -U docker
```


## Build From Source

```bash
docker build -t bedquiltdb .
```
