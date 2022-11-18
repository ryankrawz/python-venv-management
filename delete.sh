#!/bin/bash

if [ ! -d "./.venv/$1" ]
then
echo "The virtual environment '$1' does not exist."
else
rm -r ./.venv/$1
fi
