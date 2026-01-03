#!/usr/bin/env bash

DELAY=1

mkdir -p ~/smb/n8n

sync() {
  rsync -azv \
    --delete \
    --partial \
    --inplace \
    --chmod=Du=rwx,Dgo=rx,Fu=rw,Fgo=r \
    ~/.n8n/ ~/smb/n8n/
}

sync

fswatch -o "$LOCAL_DIR" | while read _; do
  sleep "$DELAY"
  sync
done
