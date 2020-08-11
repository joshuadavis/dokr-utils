#!/usr/bin/env bash
# docker-cleanup.sh - General docker cleanup

SCRIPT_DIR=$(cd `dirname $0` && pwd)
source ${SCRIPT_DIR}/functions.sh

# Remove all stopped containers
docker container prune -f || die "Container cleanup failed!"

docker volume prune -f || die "Volume cleanup failed!"

docker network prune -f || die "Network cleanup failed!"

docker image prune -f || die "Image cleanup failed!"
