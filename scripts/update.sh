#!/bin/bash

set -e

echo "=== Latest local commit"
git log -1

echo "=== Pulling changes from GitHub"
git pull

echo "=== Pulling deps"
go get ./...

echo "=== Building"
go build -o frontend-server
