#!/bin/bash
### pwndbg needed to setup 

if [ -z "$1" ]
  then 
    echo "Pwndbg is needed in order for vHeap to work. To install it: https://github.com/pwndbg/pwndbg"
    echo "If you already have pwndbg. Enter its path to setup."
    echo "Usage: setup.sh PWNDBG_PATH (e.g: /usr/local/pwndbg/)"
    exit 1
fi


### Setup
# install dependencies in pwndbg venv
"$1/.venv/bin/python3" -m pip install -r requirements.txt
echo "source $PWD/vheap.py" >> ~/.gdbinit

echo "vHeap Installed."
