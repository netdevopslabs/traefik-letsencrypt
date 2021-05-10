# Traefik with let's encrypt and docker

## Components

- [Traefik](https://doc.traefik.io/traefik/): [reverse-proxy](https://en.wikipedia.org/wiki/Reverse_proxy) used for deploying microservices
- [Let's Encrypt](https://letsencrypt.org/): free certificate authority
- Docker

## Environment variables

- TAG
  - `Traefik image tag`
- NETWORK_NAME
  - `Docker network name`
- HOST_FQDN
  - `Dashboard domain name`
- AUTH_USER
  - `Dashboard user`
- AUTH_PASSWORD
  - `Dashboard password`

## Getting started

### First time setup

```bash
./setup.sh
```
### Set environment variables

```bash
vim .env
```
### Run

```bash
docker-compose up -d
```