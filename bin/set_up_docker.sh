#!/usr/bin/env bash

# Requirements
# ------------

set -e

sudo apt-get -y update

sudo apt-get -y --no-install-recommends install wget

sudo apt-get -y --no-install-recommends install linux-image-extra-$(uname -r) linux-image-extra-virtual
sudo apt-get -y --no-install-recommends install apt-transport-https ca-certificates software-properties-common
wget -q -O - https://yum.dockerproject.org/gpg | sudo apt-key add -
distribution_name=$(lsb_release -cs)
if [ $distribution_name = "freya" ]; then
    distribution_name="trusty"
fi
sudo add-apt-repository "deb https://apt.dockerproject.org/repo/ ubuntu-$distribution_name main"

sudo apt-get -y update

sudo apt-get -y --no-install-recommends install docker-engine
