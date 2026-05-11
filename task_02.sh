#!/bin/bash
[[ -z "$1" ]] && { echo "usage: ${0##*/} <ext>" >&2; exit 1; }
echo "$1: $(grep -xc "$1" random.txt 2>/dev/null || echo 0)"
