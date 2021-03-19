#!/bin/bash

# SMEE_SOURCE_URL - source url as set on http://smee.io
# SMEE_TARGET_HOST - host to forward request (default 127.0.0.1)
# SMEE_TARGET_PORT - host port (default 80)
# SMEE_TARGET_PATH - host path

set -eo pipefail

smee --url "${SMEE_SOURCE_URL}" \
  --target "${SMEE_TARGET_HOST}:${SMEE_TARGET_PORT}/${SMEE_TARGET_PATH}"
