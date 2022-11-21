#!/bin/bash

ls -l ./.venv | awk '{print $9, "\t", $6, $7, $8}'
