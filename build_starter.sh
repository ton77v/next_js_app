#!/bin/sh

echo "🏃🏿‍♂️‍➡️ setting NODE VERSION"
export NODE_VERSION=22

echo "🏃🏿‍♂️‍➡️ starting docker compose build"
docker compose up build
