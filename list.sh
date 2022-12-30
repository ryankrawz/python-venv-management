#!/bin/bash

ls -l ./.venv | awk '{print $9, "  ", $6, $7, $8}'
