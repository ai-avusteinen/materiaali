#!/usr/bin/env sh

if [ "${MODE:-}" != "dev" ]; then
  exit 0
fi

nginx -g 'daemon off;'
