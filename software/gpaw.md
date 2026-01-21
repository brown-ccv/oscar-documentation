---
description: Instructions to build gpaw on Oscar for RHEL 9.6
---

# Gpaw

GPAW is a density-functional theory (DFT) [Python](https://www.python.org/) code based on the projector-augmented wave (PAW) method and the atomic simulation environment ([ASE](https://ase-lib.org/)). It uses plane-waves, atom-centered basis-functions or real-space uniform grids combined with multigrid methods.

Webpage: [https://gpaw.readthedocs.io/](https://gpaw.readthedocs.io/)



#### Steps to Install

1.  Start with a clean environment: make sure you don't have any conda in your path

    ```sh
    module purge
    vim ~/.bashrc   # check and remove the lines under `conda initialize`, if they exist.
    ```
2.  Start a new login session if you edited your .bashrc, then go to a compute node

    ```sh
    interact -n 4 -m 32g -t 01:00:00
    ```
3.  Clean environment within the interact session

    ```sh
    module purge
    unset LD_LIBRARY_PATH
    ```
4.  Load modules (the latest `gpaw 25.7` requires `python >=3.10`, and `python/3.12.8` has tkinter configured with it)

    ```sh
    module load hpcx-mpi libxc fftw-mpi netlib-scalapack-mpi intel-oneapi-mkl
    module load python/3.12.8
    ```
5.  Move to directory you want to build gpaw in:

    ```sh
    cd <your_gpaw_directory>
    ```
6.  Create python virtual environment, go to that directory and activate the environment

    ```sh
    python -m venv gpaw.venv
    cd gpaw.venv
    source bin/activate
    ```
7.  Upgrade pip and setuptools

    ```sh
    pip install --upgrade pip setuptools
    ```
8.  Install pip requirements

    ```sh
    pip install ase pytest pytest-xdist flask
    ```
9.  Run ase test (note: you will get errors/failures related to deprecated syntax, external calculators, etc. Don't worry about them.)

    ```sh
    ase test
    ```
10. Clone the gpaw repo

    ```sh
    git clone https://gitlab.com/gpaw/gpaw.git  # latest and greatest version
    ```
11. Copy the following contents to a new file `gpaw.venv/gpaw/siteconfig.py`

    ```sh
    """User provided customizations.

    Here one changes the default arguments for compiling _gpaw.so.

    Here are all the lists that can be modified:

    * libraries
      List of libraries to link: -l<lib1> -l<lib2> ...
    * library_dirs
      Library search directories: -L<dir1> -L<dir2> ...
    * include_dirs
      Header search directories: -I<dir1> -I<dir2> ...
    * extra_link_args
      Arguments forwarded directly to linker
    * extra_compile_args
      Arguments forwarded directly to compiler
    * runtime_library_dirs
      Runtime library search directories: -Wl,-rpath=<dir1> -Wl,-rpath=<dir2> ...
    * extra_objects
    * define_macros

    The following lists work like above, but are only linked when compiling
    the parallel interpreter:

    * mpi_libraries
    * mpi_library_dirs
    * mpi_include_dirs
    * mpi_runtime_library_dirs
    * mpi_define_macros

    To override use the form:

        libraries = ['somelib', 'otherlib']

    To append use the form

        libraries += ['somelib', 'otherlib']
    """

    mpi = True
    compiler = 'mpicc'

    ###### CCV ######
    # LIBRARIES 
    libraries = [
        'xc', 
        'mkl_intel_lp64', 
        'mkl_sequential', 
        'mkl_core',
        'pthread'
    ]

    library_dirs += ['/oscar/rt/9.6/25/x86_64_v3/intel-oneapi-mkl-2025.2.0-zewc2sjxfgfl7r6qrgn2boc2l4nzoidg/mkl/2025.2/lib/intel64']
    include_dirs += ['/oscar/rt/9.6/25/x86_64_v3/intel-oneapi-mkl-2025.2.0-zewc2sjxfgfl7r6qrgn2boc2l4nzoidg/mkl/2025.2/include']

    # COMPILE OPTIONS
    ###### CCV ######

    # FFTW3:
    #fftw = False			# CCV
    fftw = True			# CCV
    if fftw:
        libraries += ['fftw3']

    # ScaLAPACK (version 2.0.1+ required):
    scalapack = True		# CCV
    if scalapack:
        libraries += ['mkl_scalapack_lp64', 'mkl_blacs_openmpi_lp64'] 	# CCV
        
    # Use Elpa (requires ScaLAPACK and Elpa API 20171201):

    # LibXC:
    # In order to link libxc installed in a non-standard location
    # (e.g.: configure --prefix=/home/user/libxc-2.0.1-1), use:

    # - dynamic linking (requires rpath or setting LD_LIBRARY_PATH at runtime):
    libxc = True
    if libxc:
        xc = '/oscar/rt/9.6/25/spack/x86_64_v3/libxc-7.0.0-zerxhvnwwklf5ec3j2tbqopbvzwjuvqo/'
        include_dirs += [xc + 'include']
        library_dirs += [xc + 'lib']
        # You can use rpath to avoid changing LD_LIBRARY_PATH:
        extra_link_args += ['-Wl,-rpath={xc}/lib'.format(xc=xc)]
        if 'xc' not in libraries:
            libraries.append('xc')
    ```
12. Install gpaw and test

    ```sh
    cd gpaw
    pip install -e . -v
    gpaw -P 4 test
    ```

#### Other options

If there are errors, start again with a clean environment.&#x20;

If your solution is failing/not converging for any reason, please try `mpirun` instead of `srun --mpi-pmix` in your submit script.

If you're using `ase gui`, use it either on your login node or on OOD desktop.&#x20;
