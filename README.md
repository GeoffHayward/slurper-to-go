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