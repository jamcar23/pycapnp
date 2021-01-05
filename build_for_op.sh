#!/usr/bin/bash

echo "Installing requirements..."
pip install -r requirements.txt
echo "Installing requirements done."

echo "Build pycapnp..."
python setup.py build --force-cython --force-setup-libcapnp
echo "Build pycapnp done."

echo "Build bdist..."
python setup.py bdist_wheel --force-cython --force-setup-libcapnp
echo "Build bdist done."

echo "Build sdist..."
python setup.py sdist --force-cython --force-setup-libcapnp
echo "Build sdist done."

echo "Install pycapnp..."
python setup.py install --force-cython --force-system-libcapnp
echo "Install pycapnp done."

