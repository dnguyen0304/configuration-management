#!/usr/bin/env bash

# Requirements
# ------------

echo 'export HISTTIMEFORMAT="%Y-%m-%d %T "' >> ~/.bashrc
source ~/.bashrc

## If there is a prompt asking about configuring GRUB, select "/dev/sda".
apt-get update -y && apt-get dist-upgrade -y && apt-get autoremove -y

apt-get install -y --no-install-recommends curl tar vim wget
