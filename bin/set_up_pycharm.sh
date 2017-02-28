#!/usr/bin/env bash

# Requirements
# ------------
# Base
#
# Reminders
# ---------
# Change the configuration file.

file_name="pycharm-community-2016.3.2"
compressed_file_name="$file_name.tar.gz"
directory_path="/usr/local/bin/$file_name"

set -e

mkdir $directory_path

wget https://download.jetbrains.com/python/$compressed_file_name
tar -xf $compressed_file_name --directory $directory_path --strip-components 1
mv $compressed_file_name $directory_path

chown --recursive ubuntu:ubuntu $directory_path
