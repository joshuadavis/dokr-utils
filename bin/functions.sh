#!/usr/bin/env bash

# Prevent use of unset variables
set -u

warn() {
    echo "$*" 1>&2
}

die() {
    warn "$@"
    exit 1
}
