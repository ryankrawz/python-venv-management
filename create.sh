#!/bin/bash

if [ -d "./.venv/$1" ]
then
echo "The virtual environment '$1' already exists."
else
python3 -m venv ./.venv/$1
fi
