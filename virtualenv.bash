#!/bin/bash

# Script for setting up the development environment.

if [ "${VIRTUAL_ENV}" == "" ]; then
  workon py_trees
  if [ $? -ne 0 ]; then
    mkvirtualenv py_trees
  fi
fi
# Always pulling for now
pip install -r rtd-requirements.txt
python setup.py develop

echo ""
echo "Leave the virtual environment with 'deactivate'"
echo ""
echo "I'm grooty, you should be too."
echo ""

