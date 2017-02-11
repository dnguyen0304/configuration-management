#!/usr/bin/env bash

# Requirements
# ------------

pycharm_version=2016.3.2

set -e

sudo apt-get -y --no-install-recommends install tar wget

wget https://download.jetbrains.com/python/pycharm-community-$pycharm_version.tar.gz
tar -xf pycharm-community-$pycharm_version.tar.gz
sudo mv pycharm-community-$pycharm_version /usr/local/bin/
rm pycharm-community-$pycharm_version.tar.gz
