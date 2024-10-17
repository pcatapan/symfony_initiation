#!/bin/sh

if [ -z "$1" ]; then
  echo "Use: $0 <link bit.ly>"
  exit 1
fi

original_url=$(curl -Ls -o /dev/null -w "%{url_effective}" "$1")

echo $original_url
