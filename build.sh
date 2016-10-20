#!/bin/bash
pip2 install sphinx
pip2 install -U PySide
PYTHON_DIR=/usr/local/Frameworks/Python.framework/Versions/2.7
mkdir ../build-FreeCAD
cd ../build-FreeCAD
cmake  \
    -DPYTHON_EXECUTABLE=/usr/local/bin/python2 \
    -DPYTHON_INCLUDE_DIR=${PYTHON_DIR}/include/python2.7 \
    -DPYTHON_LIBRARY=${PYTHON_DIR}/lib/libpython2.7.dylib \
    -DCMAKE_BUILD_TYPE=Debug \
    -DCMAKE_INSTALL_PREFIX=/opt/freecad \
    -DBUILD_GUI:BOOL=OFF \
    -DBUILD_SMESH:BOOL=OFF \
    ../FreeCAD

make -j 8
