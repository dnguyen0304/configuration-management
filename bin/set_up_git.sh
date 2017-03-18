#!/usr/bin/env bash

# Requirements
# ------------

set -e

apt-get install -y --no-install-recommends git
git config --global credential.helper store
