#!/usr/bin/env bash

set -e

if [ "$(id -u)" -ne 0 ]; then
    echo -e 'Script must be run as root. Use sudo, su, or add "USER root" to your Dockerfile before running this script.'
    exit 1
fi

# Install needed packages and setup non-root user. Use a separate RUN statement to add your own dependencies.
export DEBIAN_FRONTEND=noninteractive

t=$(mktemp) && \
  wget 'https://dist.1-2.dev/imei.sh' -qO "$t" && \
  bash "$t" && \
  rm "$t"