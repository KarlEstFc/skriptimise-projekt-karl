#!/bin/bash

if [ -z "$1" ]; then
    echo "Viga: Palun sisesta otsitav laiend!"
    echo "Kasutamine: $0 <laiend>"
    exit 1
fi

LAIEND=$1
FAIL="random.txt"

if [ ! -f "$FAIL" ]; then
    echo "Viga: Faili '$FAIL' ei leitud! Käivita enne task_01.sh"
    exit 1
fi

KOGUS=$(grep -x "$LAIEND" "$FAIL" | wc -l)

echo "Laiendit '$LAIEND' leiti failist $KOGUS korda."
