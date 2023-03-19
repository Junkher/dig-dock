# dig-dock thoughts

## Pre·req·ui·site

- docker
- docker compose

## Create an image

Using a `Dockerfile`, which contains a list of commands that the Docker client calls while creating an image.
```sh
docker build -t <name:tag> .
``` 
> Attention: '.' means current work directory, which is a necessary argument

If necessary(eg. host proxy is needed, GFW), set the networking mode for the run commands during build. Besides, uncomment the ENV in `Dockerfile`.
```sh
docker build -t <name:tag> --network host .
```

## Use docker compose

starts the containers in the background and leaves them running.
```
docker compose up -d
```

> As for the proxychains, never mind.

