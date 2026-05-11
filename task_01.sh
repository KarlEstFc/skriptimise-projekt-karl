#!/bin/bash
set -e
RAND=$(shuf -n 1 laiendid.txt) && echo "$RAND" >> random.txt && echo "✓ $RAND"
