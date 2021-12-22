mkdir build
cd build
cmake .. -DOPENBABEL3_INCLUDE_DIR=$PREFIX/include/openbabel3 -DOPENBABEL3_LIBRARIES=$PREFIX/lib/libopenbabel.so
make -j8
make install

