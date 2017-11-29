FROM python:3.6

RUN python --version
RUN python3 --version

# package management packages
RUN pip3 install -U pip setuptools wheel twine
RUN pip3 install pipdeptree pip-autoremove

# utility packages
RUN pip3 install colorama
RUN pip3 install six
RUN pip3 install tzlocal

# versioning packages
RUN pip3 install GitPython
RUN pip3 install semver

# code anlysis packages
RUN pip3 install pylint coverage mypy hypothesis

# io packages
RUN pip3 install requests wget defusedxml lxml mpi4py

# sci packages
RUN pip3 install networkx
RUN pip3 install pymbolic sympy
RUN pip3 install numpy scipy
RUN pip3 install statsmodels
RUN pip3 install Pillow
RUN pip3 install matplotlib
RUN pip3 install tables
RUN pip3 install pandas

# code gen packages
RUN pip3 install astunparse
RUN pip3 install loo.py
RUN pip3 install typed-ast
RUN pip3 install typed-astunparse
RUN pip3 install Cython numba Nuitka

# geo packages
RUN pip3 install motionless
RUN pip3 install haversine

# ipython/jupyter packages
RUN pip3 install jupyter notebook ipyparallel

# AST analysis packages
RUN pip3 install horast static-typing

#CMD ["bash"]
CMD ["ipython3", "-m", "jupyter", "notebook"]
