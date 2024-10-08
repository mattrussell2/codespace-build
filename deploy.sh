#!/bin/bash

docker login ghcr.io
docker build --tag ghcr.io/mattrussell2/codespace-build:latest .
docker push ghcr.io/mattrussell2/codespace-build:latest