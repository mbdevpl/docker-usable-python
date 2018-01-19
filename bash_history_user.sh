python3 setup.py bdist_wheel
python3 setup.py sdist
sudo python3 -m pip install dist/*.whl
python3 -m pip install --user dist/*.whl
python3 -m ipython
python3 -m jupyter notebook --ip=0.0.0.0 --port=8888
python3 -m jupyter notebook --ip="$(hostname -i)" --port=8888
