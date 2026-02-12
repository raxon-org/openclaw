#!/bin/sh
docker-compose up -d --build
docker exec -it openclaw-13.2-core /bin/bash
