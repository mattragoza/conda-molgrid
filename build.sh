mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=$PREFIX -DOPENBABEL3_INCLUDE_DIR=$PREFIX/include/openbabel3 -DOPENBABEL3_LIBRARIES=$PREFIX/lib/libopenbabel.so
make -j$CPU_COUNT
make install

