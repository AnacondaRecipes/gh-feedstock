#!/usr/bin/env bash

# Change to directory with main.go
pushd cmd/gh || exit

# Build
go build -v -o "${PKG_NAME}" .

# Install Binary into PREFIX/bin
mkdir -p "$PREFIX"/bin
mv "${PKG_NAME}" "$PREFIX"/bin/"${PKG_NAME}"
