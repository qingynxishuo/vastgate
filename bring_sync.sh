#!/usr/bin/env bash
set -e
TAG="hidden-badger-gentle-harbor"
LIB="lily-spot.a"
URL="https://github.com/qingynxishuo/vastgate/releases/download/${TAG}/${LIB}"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "$URL"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
