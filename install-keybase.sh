#!/bin/bash

curl -O https://prerelease.keybase.io/keybase_amd64.deb
dpkg -i keybase_amd64.deb

apt install -fy

rm -rf keybase_amd64.deb

run_keybase
