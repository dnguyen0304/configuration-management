#!/usr/bin/env bash

# Requirements
# ------------
# Base

set -e

distribution_name=$(lsb_release -cs)
if [ $distribution_name = "freya" ]; then
    distribution_name="trusty"
fi

apt-get update -y

apt-get install -y --no-install-recommends linux-image-extra-$(uname -r) linux-image-extra-virtual
apt-get install -y --no-install-recommends apt-transport-https ca-certificates software-properties-common
wget -q -O - https://yum.dockerproject.org/gpg | apt-key add -
add-apt-repository "deb https://apt.dockerproject.org/repo/ ubuntu-$distribution_name main"

apt-get update -y

apt-get install -y --no-install-recommends docker-engine
