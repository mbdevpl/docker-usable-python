#!/bin/bash
set -Eeuxo pipefail

python3 --version
pip3 --version

# accelerator packages
pip3 install pyopencl

# code/ast manipulation packages
pip3 install PyLaTeX
