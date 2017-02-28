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
# # There is also a version without the JDK.
# wget https://download.jetbrains.com/idea/ideaIC-2016.3.4-no-jdk.tar.gz
# tar -xf ideaIC-2016.3.4.tar.gz
# sudo mv ideaIC-2016.3.4 /usr/local/bin/
# rm ideaIC-2016.3.4.tar.gz
