# docker-bedquiltdb

A Docker image for [BedquiltDB](https://bedquiltdb.github.io), based on the official [postgres image](https://hub.docker.com/_/postgres/).


## From Docker Hub

This image is available from the [Docker Hub](https://hub.docker.io).

```bash
docker pull bedquiltdb/bedquiltdb:latest
```

## Build

```bash
docker build -t bedquiltdb .
```

## Run

```bash
docker run -it -P --name bq bedquiltdb
```


## Connect from psql

Run `docker ps` to get the port PostgreSQL is mapped to, then supply that port to `psql`

```bash
psql -h 0.0.0.0 -p 34242 -U docker
```
