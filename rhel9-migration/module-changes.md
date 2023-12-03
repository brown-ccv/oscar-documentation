# Module Changes

The table below lists old Oscar modules and their corresponding LMOD modules.

If a cell&#x20;

* is blank, that module will be installed later
* says "(system RPM)", that software is installed on the nodes. Users don't need to load this module.&#x20;
* says "N/A", that module will NOT be installed
* lists one or more modules , users can load a listed module using the command `module load <name>`

| Old Oscar Module      | LMOD Module                                                                                     |
| --------------------- | ----------------------------------------------------------------------------------------------- |
| abaqus                |                                                                                                 |
| abinit                | abinit-mpi/9.8.3                                                                                |
| admixture             | admixture/1.3.0                                                                                 |
| afni                  | afni/23.3.07s                                                                                   |
| ambertools            |                                                                                                 |
| anaconda              | miniconda3/22.11.1                                                                              |
| angsd                 | angsd/0.935                                                                                     |
| ants                  | ants/2.4.3                                                                                      |
| apache-ant            | ant/1.10.13                                                                                     |
| argweaver             |                                                                                                 |
| aria2                 | aria2/1.36.0                                                                                    |
| ase                   | N/A - Users install in their python/conda environments                                          |
| aspera                |                                                                                                 |
| assura                |                                                                                                 |
| atlas                 | openblas/0.3.23                                                                                 |
| atom                  | atom/1.19.3                                                                                     |
| awscli                | awscli/1.27.84                                                                                  |
| bamtools              | bamtools/2.5.2                                                                                  |
| basilisk              | basilisk/2023.11.11s                                                                            |
| bazel                 | bazel/6.1.1                                                                                     |
| bbmap                 | bbmap/39.01                                                                                     |
| bbtools               | bbmap/39.01                                                                                     |
| bcftools              | bcftools/1.16                                                                                   |
| bcl2fastq             | bcl2fastq2/2.20.0.422                                                                           |
| beagle                | beagle/5.4                                                                                      |
| bedGraphToBigWig      |                                                                                                 |
| bedops                |                                                                                                 |
| bedtools              | bedtools2/2.31.0                                                                                |
| binutils              | (system RPM)                                                                                    |
| biopython             | N/A - User install in their python/conda environments                                           |
| bismark               | bismark/0.23.0                                                                                  |
| blas                  | netlib-lapack/3.11.0                                                                            |
| blast                 | blast-plus/2.2.30                                                                               |
| blat                  | blat/37                                                                                         |
| blender               | blender/4.0.0                                                                                   |
| boost                 | <ul><li>boost/1.80.0 </li><li>boost-mpi/1.82.0</li></ul>                                        |
| bowtie                | bowtie/1.3.1                                                                                    |
| bowtie2               | bowtie2/2.4.2                                                                                   |
| brotli                | brotli/1.0.9                                                                                    |
| busco                 |                                                                                                 |
| bwa                   | bwa/0.7.17                                                                                      |
| bxh\_xcede\_tools     |                                                                                                 |
| bzip2                 | (system RPM)                                                                                    |
| cadence               | cadence/IC06.18.090                                                                             |
| caffe                 |                                                                                                 |
| cantera               |                                                                                                 |
| cartopy               |                                                                                                 |
| casa                  |                                                                                                 |
| cave-utils            | N/A                                                                                             |
| cdhit                 | cdhit/4.8.1                                                                                     |
| cdo                   | cdo-mpi/2.1.1                                                                                   |
| cellranger            | <ul><li>cellranger/arc-2.0.1 </li><li>cellranger/atac-2.0.0 </li><li>cellranger/6.0.0</li></ul> |
| cesm                  | N/A                                                                                             |
| cfitsio               | cfitsio/4.2.0                                                                                   |
| cgal                  | cgal/5.4.1                                                                                      |
| CharMM                |                                                                                                 |
| chrome                | chrome/119.0.6045.159s                                                                          |
| circlator             |                                                                                                 |
| clang                 | llvm/16.0.2                                                                                     |
| CloudCompare          |                                                                                                 |
| clustal\_omega        | clustal-omega/1.2.4                                                                             |
| cmake                 | cmake/3.26.3                                                                                    |
| colordiff             | olordiff/1.0.21                                                                                 |
| comsol                |                                                                                                 |
| conn                  | conn/22a                                                                                        |
| connectome\_workbench | connectome-workbench/1.5.0                                                                      |
| cp2k                  |                                                                                                 |
| cppunit               |                                                                                                 |
| crossrate             |                                                                                                 |
| cuda                  | cuda/12.1.1                                                                                     |
| cudnn                 | cudnn/8.7.0.84-11.8                                                                             |
| cufflinks             | cufflinks/2.2.1                                                                                 |
| curl                  | (system RPM)                                                                                    |
| cutadapt              | N/A - User install in their python/conda environments                                           |
| dada2                 | N/A - User install in their python/conda environments                                           |
| datamash              | datamash/1.8                                                                                    |
| dcm2bids              | N/A - User install in their python/conda environments                                           |
| dcm2niix              | dcm2niix/1.0.20220720                                                                           |
| dedalus               |                                                                                                 |
| deeparg               | N/A - User install in their python/conda environments                                           |
| deeplabcut            | N/A - User install in their python/conda environments                                           |
| deeptools             | N/A - User install in their python/conda environments                                           |
| deeptoolsintervals    | N/A - User install in their python/conda environments                                           |
| diamond               | diamond/2.0.15                                                                                  |
| dicombrowser          |                                                                                                 |
| dlib                  | dlib/19.22                                                                                      |
| dmtcp                 | dmtcp/3.0.0                                                                                     |
| dos2unix              | dos2unix/7.4.2                                                                                  |
| dotnet                |                                                                                                 |
| dropest               | dropest/0.8.6                                                                                   |
| ds9                   | ds/9.8.5s                                                                                       |
| dsi                   |                                                                                                 |
| dtitk                 | dtitk/2.3.1s                                                                                    |
| eigen                 | eigen/3.4.0                                                                                     |
| eigensoft             | eigensoft/7.2.1                                                                                 |
| elbencho              |                                                                                                 |
| emacs                 | (system RPM)                                                                                    |
| emboss                |                                                                                                 |
| engineering           |                                                                                                 |
| fastme                | fastme/2.1.5.1                                                                                  |
| fastq\_screen         |                                                                                                 |
| fastqc                | fastqc/0.11.9                                                                                   |
| fasttree              | fasttree/2.1.11                                                                                 |
| fastx-toolkit         | fastx-toolkit/0.0.14                                                                            |
| ferret                | ferret/7.6.0                                                                                    |
| ffmpeg                | ffmpeg/6.0                                                                                      |
| fftw                  | fftw/3.3.10                                                                                     |
| fiji                  | fiji/20231107-1617                                                                              |
| fileZilla             | filezilla/3.49.1                                                                                |
| firefox               | firefox-102.9.0                                                                                 |
| flashpca              |                                                                                                 |
| freebayes             | freebayes/1.3.6                                                                                 |
| freeglut              | freeglut/3.2.2                                                                                  |
| freesurfer            | freesurfer/7.3.2                                                                                |
| freetype              | freetype/2.11.1                                                                                 |
| fsl                   | fsl/6.0.5.2s                                                                                    |
| fv                    | fv/5.5.2                                                                                        |
| gatk                  | gatk/4.3.0.0                                                                                    |
| gaussian              | gaussian/09\_v1                                                                                 |
| gaussview             | gaussview/v05                                                                                   |
| gcc                   | (system RPM)                                                                                    |
| gdal                  | gdal/3.7.0                                                                                      |
| gdb                   | (system RPM)                                                                                    |
| geos                  | geos/3.11.2                                                                                     |
| ghostscript           | ghostscript/10.0.0                                                                              |
| gimp                  |                                                                                                 |
| git                   | (system RPM)                                                                                    |
| gitlfs                | git-lfs/3.3.0                                                                                   |
| glew                  | glew/2.2.0                                                                                      |
| glm                   | glm/0.9.9.8                                                                                     |
| glmnet                | N/A - User install in their python/conda environments                                           |
| global\_arrays        | globalarrays-mpi/5.8.                                                                           |
| globus                | N/A - User install in their python/conda environments                                           |
| gmp                   | gmp/6.2.1                                                                                       |
| gnuplot               | gnuplot/5.4.3                                                                                   |
| golang                | go/1.20.3                                                                                       |
| gpaw                  |                                                                                                 |
| grace                 | grace/5.1.25                                                                                    |
| graphviz              | graphviz/8.0.1                                                                                  |
| gromacs               |                                                                                                 |
| gsl                   | gsl/2.7.1                                                                                       |
| gsutil                |                                                                                                 |
| guppy                 | <ul><li>guppy/6.0.1</li><li>guppy/6.1.2</li></ul>                                               |
| gurobi                | gurobi/10.0.1                                                                                   |
| h5py                  | N/A - User install in their python/conda environments                                           |
| haplostrips           |                                                                                                 |
| hdf5                  | hdf5/1.14.1-2                                                                                   |
| hdfview               | <ul><li>hdf5-mpi/1.12.2</li><li>hdf5/1.14.1-2</li></ul>                                         |
| hmmer                 | hmmer-mpi/3.3.2                                                                                 |
| homer                 | homer/4.11.1                                                                                    |
| htop                  | htop/3.2.2                                                                                      |
| htseq                 | N/A - User install in their python/conda environments                                           |
| htslib                | htslib/1.17                                                                                     |
| idba                  | idba/1.1.3                                                                                      |
| idemp                 |                                                                                                 |
| idl                   | idl/8.8.2                                                                                       |
| idl\_DEEPS            |                                                                                                 |
| igraph                | igraph/0.7.1                                                                                    |
| imagej                | imagej/154-linux64-java8                                                                        |
| imagemagick           | imagemagick/7.1.1-3                                                                             |
| incisive              |                                                                                                 |
| inkscape              | inkscape/1.3s                                                                                   |
| intel                 | intel-oneapi-compilers/2023.1.0                                                                 |
| intltool              | intltool/0.51.0                                                                                 |
| ior                   | ior-mpi/3.3.0                                                                                   |
| iq-tree               | iq-tree/2.1.3                                                                                   |
| iraf                  |                                                                                                 |
| isis                  |                                                                                                 |
| JAGS                  | jags/4.3.1                                                                                      |
| java                  | openjdk/11.0.17\_8                                                                              |
| jellyfish             |                                                                                                 |
| jo                    |                                                                                                 |
| json\_cpp             | jsoncpp/1.9.5                                                                                   |
| json\_fortran         | json-fortran@8.3.0                                                                              |
| julia                 | julia/1.9.0                                                                                     |
| keras                 | N/A - User install in their python/conda environments                                           |
| kneaddata             |                                                                                                 |
| kraken                | kraken/1.1.1                                                                                    |
| lammps                | lammps-mpi/20220623.3                                                                           |
| lapack                | netlib-lapack/3.11.0                                                                            |
| leveldb               | leveldb/1.23                                                                                    |
| lftp                  | lftp/4.9.2                                                                                      |
| libarchive            | libarchive/3.6.2                                                                                |
| libbeef               | libbeef/Nov2020                                                                                 |
| libcutensor           | cutensor/1.5.0.3                                                                                |
| libgd                 | libgd/2.3.3                                                                                     |
| libgeotiff            | libgeotiff/1.6.0                                                                                |
| libgit                | libgit2/1.6.4                                                                                   |
| libjpeg               | libjpeg/9e                                                                                      |
| libjpeg-turbo         | libjpeg-turbo/2.1.5                                                                             |
| libpng12              | libpng/1.6.39                                                                                   |
| libreoffice           | libreoffice/7.2.2.sif                                                                           |
| libtiff               | libtiff/4.5.0                                                                                   |
| libvdwxc              | libvdwxc-mpi/0.4.0                                                                              |
| libwnck               | libwnck/3.24.1                                                                                  |
| libxc                 | libxc/5.2.3                                                                                     |
| libzip                | libzip/1.3.2                                                                                    |
| llvm                  | llvm/16.0.2                                                                                     |
| macs                  | N/A - User install in their python/conda environments                                           |
| mafft                 | mafft/7.505                                                                                     |
| magma-gpu             | magma/2.7.1                                                                                     |
| maple                 | maple/22                                                                                        |
| mark                  | mark/2018.07.08                                                                                 |
| materialstudio        | materialstudio/2020s                                                                            |
| mathematica           | mathematica/13.2.0                                                                              |
| matlab                | matlab/R2023a                                                                                   |
| matplotlib            | N/A - User install in their python/conda environments                                           |
| maven                 | maven/3.8.4                                                                                     |
| mayavi                | N/A - User install in their python/conda environments                                           |
| meme                  | meme-mpi/5.3.0                                                                                  |
| mentor-calibre        |                                                                                                 |
| mercurial             | mercurial/5.8                                                                                   |
| meshlab               |                                                                                                 |
| metaphlan             |                                                                                                 |
| metis                 | metis/5.1.0                                                                                     |
| miniconda             | miniconda3/22.11.1                                                                              |
| minimap2              | minimap2/2.14                                                                                   |
| minvr                 |                                                                                                 |
| mne                   | N/A - User install in their python/conda environments                                           |
| molden                | molden/6.7                                                                                      |
| Molpro                |                                                                                                 |
| mpfr                  | mpfr/4.2.0                                                                                      |
| mpi                   | <ul><li>hpcx-mpi/4.1.5rc2s</li><li>openmpi/4.1.2</li></ul>                                      |
| mpi4py                |                                                                                                 |
| mrcc                  |                                                                                                 |
| mriconvert            |                                                                                                 |
| mricrogl              | mricrogl/2022.07.20                                                                             |
| mricron               | mricron/201909                                                                                  |
| msmc                  | msmc2/2.1.4                                                                                     |
| msprime               | N/A - User install in their python/conda environments                                           |
| mujoco-py             | N/A - User install in their python/conda environments                                           |
| MultiQC               | N/A - User install in their python/conda environments                                           |
| multiwfn              |                                                                                                 |
| mummer                | mummer4/4.0.0rc1                                                                                |
| muscle                | muscle/3.8.1551                                                                                 |
| mysql                 | mysql/8.0.29                                                                                    |
| n2p2                  | n2p2-mpi/2.2.0                                                                                  |
| nbo                   | nbo/7.0                                                                                         |
| nccl                  |                                                                                                 |
| ncdu                  | ncdu/1.18.1                                                                                     |
| ncl                   |                                                                                                 |
| nco                   | nco/5.1.5                                                                                       |
| ncview                | ncview/2.1.8                                                                                    |
| neovim                | neovim/0.9.4                                                                                    |
| netcdf                | netcdf-c/4.7.4                                                                                  |
| netpbm                | netpbm/10.73.43                                                                                 |
| neuron                | N/A - User install in their python/conda environments                                           |
| ninja                 | ninja/1.11.1                                                                                    |
| nipype                | N/A - User install in their python/conda environments                                           |
| nlopt                 | nlopt/2.7.1                                                                                     |
| node.js               | node-js/18.12.1                                                                                 |
| numpy                 | N/A - User install in their python/conda environments                                           |
| numpydoc              | N/A - User install in their python/conda environments                                           |
| nvhpc-sdk             |                                                                                                 |
| nvtop                 | nvtop/3.0.1                                                                                     |
| nwchem                | nwchem-mpi/7.2.0                                                                                |
| obitools              |                                                                                                 |
| octopus               | octopus-lunter/0.7.4                                                                            |
| openbabel             | openbabel/3.1.1                                                                                 |
| openblas              | openblas/0.3.23                                                                                 |
| opencv                | opencv/4.6.0s                                                                                   |
| opencv-python         | N/A - User install in their python/conda environments                                           |
| openexr               | openexr/3.1.5                                                                                   |
| openfoam              |                                                                                                 |
| opengl                | mesa/22.1.6                                                                                     |
| openjpeg              | openjpeg/2.5.0                                                                                  |
| openmolcas            |                                                                                                 |
| openscenegraph        | N/A                                                                                             |
| openslide             | openslide/3.4.1                                                                                 |
| openslide-python      | N/A - User install in their python/conda environments                                           |
| openssl               | <ul><li>openssl/3.0.7s</li><li>openssl/1.1.1t</li></ul>                                         |
| orca                  | orca-mpi/5.0.7                                                                                  |
| osgearth              | N/A                                                                                             |
| ovito                 |                                                                                                 |
| p7zip                 | p7zip/17.05                                                                                     |
| pandas                | N/A - User install in their python/conda environments                                           |
| pandoc                | pandoc/2.19.2                                                                                   |
| paraview              |                                                                                                 |
| patchelf              | patchelf/0.17.2                                                                                 |
| paup                  | paup/4.0a168                                                                                    |
| pcre2                 | pcre2/10.42                                                                                     |
| pdftk                 |                                                                                                 |
| pdsh                  |                                                                                                 |
| perl                  | perl/5.36.0                                                                                     |
| petsc                 |                                                                                                 |
| photoscan             |                                                                                                 |
| picard-tools          | picard/2.26.2                                                                                   |
| pigz                  | pigz/2.7                                                                                        |
| planetaryviewer       | N/A - User install in their python/conda environments                                           |
| plink                 | plink/2.00                                                                                      |
| plotly                | N/A - User install in their python/conda environments                                           |
| plumed                |                                                                                                 |
| pnetcdf               | parallel-netcdf-mpi/1.12.3                                                                      |
| popoolation2          | popoolation2/1.205s                                                                             |
| prodigal              | prodigal/2.6.3                                                                                  |
| proj                  | proj/9.2.0                                                                                      |
| protobuf              | protobuf/3.22.2                                                                                 |
| py2bit                | N/A - User install in their python/conda environments                                           |
| pybigwig              | N/A - User install in their python/conda environments                                           |
| pycharm               | pycharm-community/2021.3.3                                                                      |
| pymol                 | N/A - User install in their python/conda environments                                           |
| pypy                  | pypy/7.3.13                                                                                     |
| pysam                 | N/A - User install in their python/conda environments                                           |
| pyscf                 | N/A - User install in their python/conda environments                                           |
| python                | (system RPM - python/3.9.16)                                                                    |
| pytorch               | N/A - User install in their python/conda environments                                           |
| qchem                 |                                                                                                 |
| qgis                  |                                                                                                 |
| qiime                 |                                                                                                 |
| qit                   |                                                                                                 |
| qmcpack               |                                                                                                 |
| qt                    | qt/5.15.9                                                                                       |
| qualimap              | qualimap/2.2.1                                                                                  |
| quantumespresso       | quantum-espresso/7.1                                                                            |
| quast                 |                                                                                                 |
| R                     | r/4.2.2                                                                                         |
| RAiSD                 | raisd/2.9                                                                                       |
| raxml                 |                                                                                                 |
| raxml-ng              |                                                                                                 |
| rclone                |                                                                                                 |
| repeatmasker          |                                                                                                 |
| root                  |                                                                                                 |
| rsem                  | rsem/1.3.3                                                                                      |
| rstudio               |                                                                                                 |
| rsync                 | (system RPM)                                                                                    |
| ruby                  |                                                                                                 |
| rust                  | rust/1.74.0s                                                                                    |
| sage                  | sage/9.5                                                                                        |
| salmon                | salmon/1.9.0                                                                                    |
| samtools              | samtools/1.16.1                                                                                 |
| SAS                   |                                                                                                 |
| scalable              |                                                                                                 |
| scalapack             | netlib-scalapack                                                                                |
| schrodinger           |                                                                                                 |
| scikit-image          | N/A - Users install in their python/conda environments                                          |
| scikit-learn          | N/A - Users install in their python/conda environments                                          |
| scons                 | scons/4.5.2                                                                                     |
| scotch                | scotch-mpi/7.0.3                                                                                |
| seaborn               | N/A - Users install in their python/conda environments                                          |
| selscan               | selscan/2.0.0                                                                                   |
| seqkit                | seqkit/0.10.1                                                                                   |
| seqtk                 | seqtk/1.3                                                                                       |
| sextractor            |                                                                                                 |
| sga                   |                                                                                                 |
| sharc                 | sharc-mpi/3.0.1                                                                                 |
| singularity2          | (system RPM)                                                                                    |
| six                   | N/A - Users install in their python/conda environments                                          |
| skewer                |                                                                                                 |
| slicer                | slicer/5.4.0                                                                                    |
| slim                  | slim/4.0.1                                                                                      |
| snakemake             | N/A - Users install in their python/conda environments                                          |
| SNAP                  |                                                                                                 |
| spectre               |                                                                                                 |
| splash                |                                                                                                 |
| spm                   | spm/12\_r7606                                                                                   |
| spyder                | N/A - Users install in their python/conda environments                                          |
| sqlite                | (system RPM)                                                                                    |
| sratoolkit            | sratoolkit/3.0.0                                                                                |
| stacks                | stacks/2.65                                                                                     |
| star                  | star/2.7.10b                                                                                    |
| stata                 | stata/mp17                                                                                      |
| statsmodels           | N/A - Users install in their python/conda environments                                          |
| sublime               | sublime-text/4.4143                                                                             |
| subread               | subread/2.0.2                                                                                   |
| svn                   | subversion/1.14.1                                                                               |
| swarp                 |                                                                                                 |
| sympy                 |                                                                                                 |
| synopsys              |                                                                                                 |
| sysstat               | sysstat/12.5.4                                                                                  |
| tabix                 | tabix/2013-12-16                                                                                |
| tecplot               | tecplot/2022r1                                                                                  |
| tensorflow            | N/A - Users install in their python/conda environments                                          |
| tesseract             |                                                                                                 |
| texlive               | texlive/20220321                                                                                |
| texstudio             | texstudio/3.0.1                                                                                 |
| tmux                  | tmux/3.3a                                                                                       |
| tn93                  |                                                                                                 |
| tophat                |                                                                                                 |
| tortoise              |                                                                                                 |
| tree                  | tree/2.1.0-7                                                                                    |
| trimal                | trimal/1.4.1                                                                                    |
| trimgalore            | trimgalore/0.6.6                                                                                |
| trimmomatic           | trimmomatic/0.39                                                                                |
| trinity               |                                                                                                 |
| udunits               | udunits/2.2.28                                                                                  |
| usearch               | usearch/11.0.667                                                                                |
| v8                    | v8/3.14.5                                                                                       |
| vasp                  |                                                                                                 |
| vcftools              | vcftools/0.1.14                                                                                 |
| vep                   |                                                                                                 |
| vim                   | (system RPM)                                                                                    |
| virtualgl             | virtualgl/3.1                                                                                   |
| visit                 |                                                                                                 |
| vmd                   | vmd/1.9.3                                                                                       |
| vrg3d                 | N/A                                                                                             |
| vrpn                  | N/A                                                                                             |
| vscode                | vscode/1.84.2                                                                                   |
| vtk                   |                                                                                                 |
| wcstools              |                                                                                                 |
| weblogo               |                                                                                                 |
| workshop              |                                                                                                 |
| xcrysden              |                                                                                                 |
| xeyes                 | xeyes/1.2.0                                                                                     |
| xfce                  |                                                                                                 |
| xgboost               |                                                                                                 |
| Xvfb                  | (system RPM)                                                                                    |
| yaml-cpp              |                                                                                                 |
| zlib                  | zlib/1.2.13                                                                                     |
| zsh                   | (system RPM)                                                                                    |
