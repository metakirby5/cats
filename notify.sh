#!/usr/bin/env bash

subject="$1"
shift
mail "$(head -n1 "$(dirname "$0")/users.txt")" -s "[Steamed Hams] $subject" <<< "$*"
