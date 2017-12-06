FROM mbdevpl/usable-ubuntu

MAINTAINER Mateusz Bysiek <mateusz.bysiek.spam@gmail.com>

RUN python3 --version
RUN pip3 --version

# package management packages
RUN pip3 install pipdeptree pip-autoremove

# utility packages
RUN pip3 install colorama
RUN pip3 install ordered-set
RUN pip3 install python-dateutil
#RUN pip3 install readchar
RUN pip3 install six
RUN pip3 install tzlocal

# versioning packages
RUN pip3 install GitPython
RUN pip3 install semver
RUN pip3 install version-query

# code anlysis packages
RUN pip3 install coverage hypothesis
RUN pip3 install mypy
RUN pip3 install pycodestyle
RUN pip3 install pylint

# io packages
RUN pip3 install oauthlib
RUN pip3 install requests wget
RUN pip3 install defusedxml lxml
#RUN pip3 install mpi4py

# sci packages
RUN pip3 install networkx
RUN pip3 install pymbolic sympy
RUN pip3 install numpy Bottleneck scipy
RUN pip3 install statsmodels
RUN pip3 install Pillow
RUN pip3 install matplotlib
RUN pip3 install tables
RUN pip3 install pandas

# accelerator packages
#RUN pip3 install pyopencl

# code gen packages
RUN pip3 install asttokens
RUN pip3 install astunparse
RUN pip3 install loo.py
#RUN pip3 install PyLaTeX
RUN pip3 install typed-ast
RUN pip3 install typed-astunparse
RUN pip3 install Cython numba Nuitka

# geo packages
RUN pip3 install motionless
RUN pip3 install haversine
RUN pip3 install pycountry

# ipython/jupyter packages
RUN pip3 install ipython
RUN pip3 install jupyter notebook ipyparallel

RUN pip3 freeze

WORKDIR /root

echo "python3 -m ipython" > .bash_history
echo "python3 -m jupyter notebook --ip=0.0.0.0 --port=8080 --allow-root" > .bash_history
