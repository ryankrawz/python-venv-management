#!/bin/bash

VENV_DIR="${1:-.venv}"

printf "%-30s %-20s\n" "ENV NAME" "LAST MODIFIED"
printf "%s\n" "------------------------------ --------------------"

for f in "$VENV_DIR"/*; do
    [ -e "$f" ] || continue
    name=$(basename "$f")
    # %Sm = formatted modification time with locale; adjust as needed
    mtime=$(stat -f "%Sm" "$f")
    printf "%-30s %-20s\n" "$name" "$mtime"
done

