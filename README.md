# Slurper To-Go
A Dockerized [MailSlurper](https://mailslurper.com/).

## Build

```
docker build -t slurper-to-go .
```

## Run
```
docker run -p 8080:8080 -p 8085:8085 -p 2500:2500 -d --name slurper-to-go slurper-to-go
```

## Prebuilt

Get [geoffhayward/slurper-to-go](https://hub.docker.com/r/geoffhayward/slurper-to-go) from Docker Hub.
```
docker run -p 8080:8080 -p 8085:8085 -p 2500:2500 -d --name slurper-to-go geoffhayward/slurper-to-go
```
