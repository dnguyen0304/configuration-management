#!/usr/bin/env bash

# Requirements
# ------------

python_version=$1

sudo apt-get -y update

sudo apt-get -y --no-install-recommends install wget

sudo apt-get -y --no-install-recommends install build-essential libbz2-dev libgdbm-dev libncursesw5-dev libreadline-dev libsqlite3-dev libssl-dev libz-dev
# Should the following line be added here?
# rm -r /var/lib/apt/lists
wget https://www.python.org/ftp/python/$python_version/Python-$python_version.tar.xz
tar -xf Python-$python_version.tar.xz
cd Python-$python_version
# Python 3.3 and 3.4 don't support the --enable-optimizations feature.
./configure --enable-optimizations --prefix /usr/local/
make
sudo make altinstall
cd ..
rm Python-$python_version.tar.xz
sudo rm -r Python-$python_version
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
mkdir --parents ~/.config/pip
if ! grep --quiet "\[list\]" ~/.config/pip/pip.conf; then
    echo -e "[list]\nformat = columns" >> ~/.config/pip/pip.conf
fi
rm get-pip.py
sudo /usr/local/bin/pip${python_version:0:3} install --upgrade pip
sudo /usr/local/bin/pip${python_version:0:3} install virtualenv
