This repo contains a conda build recipe for [molgrid](https://github.com/gnina/libmolgrid).

NOTE the build recipe does not work yet!

However, you can use the `environment.yaml` file to create a conda environment in which you can build molgrid from source:

```
git clone git@github.com:gnina/libmolgrid.git
git clone git@github.com:mattragoza/conda-molgrid.git
conda create --file=conda-molgrid/environment.yaml
conda activate molgrid
cd libmolgrid
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=$HOME/.local/ -DOPENBABEL3_INCLUDE_DIR=$CONDA_PREFIX/include/openbabel3 -DOPENBABEL3_LIBRARIES=$CONDA_PREFIX/lib/libopenbabel.so
make -j8
make install
pytest ..
```
