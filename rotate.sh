#!/usr/bin/env bash

cd "$(dirname "$0")"
users='./users.txt'

# Notify the previous user about rotation.
next="$(awk 'NR == 2 {print $1}' "$users")"
./notify.sh "Cat duty has been handed off to $next!"

# Rotate users.
rot="$(cat <(tail -n+2 "$users") <(head -n1 "$users"))"
echo "$rot" > "$users"

# Notify on-call.
./notify.sh "$next, you are now on cat duty!"
