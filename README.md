# conda-molgrid

This repo contains a WIP conda build recipe for [molgrid](https://github.com/gnina/libmolgrid), the GPU-acclerated molecular gridding framework used in projects like [gnina](https://github.com/gnina/gnina) and [liGAN](https://github.com/mattragoza/liGAN).

**NOTE**: The build recipe does not work yet!

However, you can use the provided `environment.yaml` to create a conda environment in which you can build molgrid from source.

## Building libmolgrid from source

Run the following commands to build and install libmolgrid:

```bash
git clone git@github.com:gnina/libmolgrid.git
git clone git@github.com:mattragoza/conda-molgrid.git
mamba env create --file=conda-molgrid/environment.yaml
mamba activate molgrid
cd libmolgrid
mkdir build
cd build
cmake .. \
	-DCMAKE_INSTALL_PREFIX=$CONDA_PREFIX \
	-DOPENBABEL3_INCLUDE_DIR=$CONDA_PREFIX/include/openbabel3 \
	-DOPENBABEL3_LIBRARIES=$CONDA_PREFIX/lib/libopenbabel.so \
	-DZLIB_LIBRARY=$CONDA_PREFIX/lib/libz.so
make -j8
make install
```

If you run into issues while following these instructions, please open an issue in THIS repository (as opposed to the libmolgrid repo) and I will try to help you resolve them.

## Why mamba instead of conda?

I *highly* recommend using [mamba](https://mamba.readthedocs.io/en/latest/index.html) for managing your conda environments. Mamba is a drop-in replacement for conda that is:
- Faster at solving environments (>10x in my experience)
- Better at resolving conflicts
- More informative when something goes wrong

If you run the commands in the previous section with conda and run into issues, there is a non-negligible change that simply using mamba instead will fix the problem.
