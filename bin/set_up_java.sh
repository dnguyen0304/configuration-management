#!/usr/bin/env bash

# Requirements
# ------------

set -e

apt-add-repository -y ppa:openjdk-r/ppa
apt-get update -y
apt-get install -y --no-install-recommends openjdk-8-jdk

# # (option-1) Set the JAVA_HOME environment variable.
# echo 'export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64/jre/"' >> ~/.bashrc 
# echo 'export PATH=$PATH:$JAVA_HOME/bin' >> ~/.bashrc 
# source ~/.bashrc

# # (option-2) Set up an integrated development environment (IDE).
# # There are versions with and without the JDK.
# version="2017.2-no-jdk"
#
# binary_name="ideaIC-${version}"
# archive_name="${binary_name}.tar.gz"
# directory_path="/usr/local/bin/${binary_name}"
#
# mkdir ${directory_path}
#
# wget https://download.jetbrains.com/idea/${archive_name}
# tar -xf ${archive_name} --directory ${directory_path} --strip-components 1
# mv ${archive_name} ${directory_path}
