#!/bin/bash

VENV_DIR="${1:-.venv}"

ls -l "$VENV_DIR" | awk '
BEGIN {
    # Header
    printf "%-30s %-20s\n", "ENV NAME", "LAST MODIFIED";
    print  "------------------------------ --------------------";
}
NR > 1 {
    # Skip the "total" line and format the rest
    printf "%-30s %-20s\n", $9, $6 " " $7 " " $8;
}'
