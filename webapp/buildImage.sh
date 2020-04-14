#!/bin/sh

mkdir -p build/dependency && (cd build/dependency; jar -xf ../libs/*.jar)

docker build -t parameswaranvv/opa-web-demo:latest .
