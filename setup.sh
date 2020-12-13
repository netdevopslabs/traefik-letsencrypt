#!/bin/bash

ENV_FILE=.env
if [ -f "$ENV_FILE" ]; then
    echo "$ENV_FILE already exists."
else 
    cp .env.example .env
    echo "$ENV_FILE created."
fi

ACME_FILE=acme.json
if [ -f "$ACME_FILE" ]; then
    echo "$ACME_FILE already exists."
else 
    touch acme.json
    chmod 600 acme.json
    echo "$ACME_FILE created."
fi

# Create traefik network if not exits
docker network inspect $NETWORK_NAME > /dev/null 2>&1
EXIT_CODE=$?
if [ $EXIT_CODE -ne 0 ]; then
    docker network create $NETWORK_NAME
    echo "Network $NETWORK_NAME created."
else
    echo "Network $NETWORK_NAME already exists."
fi
