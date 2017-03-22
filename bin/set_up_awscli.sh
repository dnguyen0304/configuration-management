#!/usr/bin/env bash

# Requirements
# ------------

set -eu

username=$1
aws_directory_path="/home/${username}/.aws"

mkdir ${aws_directory_path}

cat <<EOF > "${aws_directory_path}/credentials"
[default]
aws_access_key_id=
aws_secret_access_key=
EOF

chown --recursive ${username}:${username} ${aws_directory_path}
chmod 700 ${aws_directory_path}
chmod 600 "${aws_directory_path}/credentials"
