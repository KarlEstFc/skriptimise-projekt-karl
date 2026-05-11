#!/bin/bash

FAIL="laiendid.txt"
OUTPUT="random.txt"

if [ ! -f "$FAIL" ]; then
    echo "Viga: fail '$FAIL' puudub"
    exit 1
fi

RAND=$(shuf -n 1 "$FAIL")

echo "$RAND" >> "$OUTPUT"
