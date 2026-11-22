#!/usr/bin/env bash
set -e
TAG="crimson-ember-cosmic-comet"
LIB="short-spiral.a"
URL="https://github.com/kesilky/rigidtopaz/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 "$URL" -O "$LIB"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
