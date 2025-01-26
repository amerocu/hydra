#!/bin/sh

DEST_DIR="$(pwd).hydra-data/manual"

mkdir -p "$DEST_DIR"

mdbook serve \
  --port 63332 \
  --dest-dir "$DEST_DIR" \
  ./doc/manual/
