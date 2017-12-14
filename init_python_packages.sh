#!/bin/bash

python3 --version
pip3 --version

# package management packages
pip3 install pipdeptree pip-autoremove

# utility packages
pip3 install colorama
pip3 install ordered-set
pip3 install python-dateutil
#pip3 install readchar
pip3 install six
pip3 install tzlocal

# versioning packages
pip3 install GitPython
pip3 install semver
pip3 install version-query

# code anlysis packages
pip3 install coverage hypothesis
pip3 install mypy
pip3 install pycodestyle
pip3 install pylint

# io packages
pip3 install oauthlib
pip3 install requests wget
pip3 install defusedxml lxml
pip3 install mpi4py

# sci packages
pip3 install networkx
pip3 install pymbolic sympy
pip3 install numpy Bottleneck scipy
pip3 install statsmodels
pip3 install Pillow
pip3 install matplotlib
pip3 install tables
pip3 install pandas

# accelerator packages
#pip3 install pyopencl

# code gen packages
pip3 install asttokens
pip3 install astunparse
pip3 install loo.py
#pip3 install PyLaTeX
pip3 install typed-ast
pip3 install typed-astunparse
pip3 install Cython numba Nuitka

# geo packages
pip3 install motionless
pip3 install haversine
pip3 install pycountry

# ipython/jupyter packages
pip3 install ipython
pip3 install jupyter notebook ipyparallel
pip3 install nbextensions jupyter_contrib_nbextensions

pip3 freeze
