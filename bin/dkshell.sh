#!/usr/bin/env bash
# Just runs bash in the specified docker image

SCRIPT_DIR=$(cd `dirname $0` && pwd)
source ${SCRIPT_DIR}/functions.sh

docker run -it --rm $1 /bin/bash
