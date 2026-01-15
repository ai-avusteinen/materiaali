#!/usr/bin/env bash
set -eEuo pipefail

if [ -z "${MODE:-}" ]; then
  exit 0
fi

if [ ! -f index.md ]; then
  echo "index.md not found!"
  exit 1
fi

build_once() {
  rm -rf /output/*

  rm -rf /tmp/build
  mkdir /tmp/build

  pandoc index.md -o /output/index.html \
    --toc \
    --standalone \
    -c /styles.css \
    --template=/template.html \
    --filter /opt/pandoc-crossref/pandoc-crossref \

  if [ -d images ]; then
    mkdir -p /output/images
    cp -r images/* /output/images/
  fi

  cp /styles.css /output/styles.css
  cp /scripts.js /output/scripts.js
  echo "index.html built"
}

case "${MODE:-}" in
  "build")
    build_once
    ;;
  "dev")
    build_once

    command -v inotifywait >/dev/null 2>&1 || {
      echo "inotifywait missing"
      exit 1
    }

    while inotifywait -q -r -e modify,create,delete,move .; do
      build_once
    done
    ;;
  *)
    echo "Unknown MODE: '${MODE:-}'"
    exit 1
    ;;
esac
