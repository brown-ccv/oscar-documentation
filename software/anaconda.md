# Anaconda

Anaconda provides Python, R and other packages for scietific computing including data sciences, machine learning, etc.  

## Anaconda Modules

There are several anaconda modules available on Oscar. To list all anaconda modules, run `module avail anaconda`. The anaconda/3-5.2.0 module is recommended.

```text
$ module avail anaconda
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ name: anaconda*/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
anaconda/2-4.3.0  anaconda/2020.02  anaconda/3-5.2.0  
anaconda/2-5.3.0  anaconda/3-4.3.0  
```

## Conda

Anaconda uses conda to install packages and manage their depenencies. You can use condo to manage [conda environments](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html).

### Conda Environment

A user may install all needed software packages for a project in a conda environment. A conda environment can be

* shared among all users if the environment is installed in a shared directory
* private to one user if the environment is installed in a user's private directory

The command 'conda info' shows important configurations for conda environment.

```text
$ conda info

     active environment : None
       user config file : /users/yliu385/.condarc
 populated config files : 
          conda version : 4.5.4
    conda-build version : 3.10.5
         python version : 3.6.5.final.0
       base environment : /gpfs/runtime/opt/anaconda/3-5.2.0  (read only)
           channel URLs : https://repo.anaconda.com/pkgs/main/linux-64
                          https://repo.anaconda.com/pkgs/main/noarch
                          https://repo.anaconda.com/pkgs/free/linux-64
                          https://repo.anaconda.com/pkgs/free/noarch
                          https://repo.anaconda.com/pkgs/r/linux-64
                          https://repo.anaconda.com/pkgs/r/noarch
                          https://repo.anaconda.com/pkgs/pro/linux-64
                          https://repo.anaconda.com/pkgs/pro/noarch
          package cache : /gpfs/runtime/opt/anaconda/3-5.2.0/pkgs
                          /users/yliu385/.conda/pkgs
       envs directories : /users/yliu385/anaconda
                          /users/yliu385/.conda/envs
                          /gpfs/runtime/opt/anaconda/3-5.2.0/envs
               platform : linux-64
             user-agent : conda/4.5.4 requests/2.18.4 CPython/3.6.5 Linux/3.10.0-957.5.1.el7.x86_64 rhel/7.3 glibc/2.17
                UID:GID : 20175:601
             netrc file : None
           offline mode : False

```

Below are some important configurations:

* envs directories: a list of directories where a conda environment is installed by default. In the output of 'conda info' above, the first default directory to install a conda environment  is a $HOME/anaconda. 
* package cache: a list of directories where downloaded packages are stored.

### Create a New Conda Environment

To create a new conda environment in a default directory, run the following command:

```text
conda create -n conda_environment_name
```

To create  a new conda environment in a different directory, run the following command:

```text
conda create -p  /path/to/install/conda_environment_name
```

### Activate a Conda Environment

After creating a conda environment, we can activate a conda environment by the following command:

```text
source activate conda_environment_name
```

### Install Packages in an Active Conda Environment

To install a package, we need first activate a conda environment, and the run

```text
conda install package_name=version
```

The "=version" is optional. By default, conda install a package from the anaconda channel. To install a package from a different channel, run `conda install` with the `-c` option. For example, to install a package form the conda\_forge channel, run

```text
conda install -c conda_forge conda_environment_name
```

### Delete a Conda Environment

To delete a conda environment, run

```text
conda remove -n conda_environment_name --all
```

### Remove Caches

Condo may dowload lots of packages when installing a package. A user may use up all quota due to the downloaded packages, To remove the downloaded packges, run

```text
conda clean --all
```

