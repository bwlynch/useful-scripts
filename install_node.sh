#!/bin/bash

wget "https://nodejs.org/dist/v${1}/node-v${1}-linux-x64.tar.xz"
sudo tar xf node-v${1}-linux-x64.tar.xz --directory /usr/local --strip-components 1
