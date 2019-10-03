#!/usr/bin/env bash

set -euo pipefail

SCRIPTS_DIR=$(dirname $0)
BUILD_DIR="${SCRIPTS_DIR}/../bin/"
SOURCE_DIR="${SCRIPTS_DIR}/../src/"
PROVIDER_NAME_FILE="${SCRIPTS_DIR}/../PROVIDER_NAME.txt"
PROVIDER_VERSION_FILE="${SCRIPTS_DIR}/../PROVIDER_VERSION.txt"


function log() {
    LEVEL="$1"
    shift
    echo "[$LEVEL] $@"
}

function info() {
    log "INFO" $@
}

function fatal() {
    log "FATAL" $@
    exit 1
}
