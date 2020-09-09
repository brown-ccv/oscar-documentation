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

### anaconda/2020.02

This is the newest anaconda module on Oscar. The first time you load the anaconda/2020.02 module, you need initialize the environment by running the following command:

```text
$conda init bash
no change     /gpfs/runtime/opt/anaconda/2020.02/condabin/conda
no change     /gpfs/runtime/opt/anaconda/2020.02/bin/conda
no change     /gpfs/runtime/opt/anaconda/2020.02/bin/conda-env
no change     /gpfs/runtime/opt/anaconda/2020.02/bin/activate
no change     /gpfs/runtime/opt/anaconda/2020.02/bin/deactivate
no change     /gpfs/runtime/opt/anaconda/2020.02/etc/profile.d/conda.sh
no change     /gpfs/runtime/opt/anaconda/2020.02/etc/fish/conf.d/conda.fish
no change     /gpfs/runtime/opt/anaconda/2020.02/shell/condabin/Conda.psm1
no change     /gpfs/runtime/opt/anaconda/2020.02/shell/condabin/conda-hook.ps1
no change     /gpfs/runtime/opt/anaconda/2020.02/lib/python3.7/site-packages/xontrib/conda.xsh
no change     /gpfs/runtime/opt/anaconda/2020.02/etc/profile.d/conda.csh
modified      /users/yliu385/.bashrc

==> For changes to take effect, close and re-open your current shell. <==

```

{% hint style="warning" %}
Do not load the module in your .modules or .bashrc file. Otherwise, your VNC session cannot start.
{% endhint %}

### anaconda/3-5.2.0

{% hint style="info" %}
If you load the module in your .modules or .bashrc file, you may need to have the following lines in your .bashrc as well to be able to start a VNC session:

unset SESSION\_MANAGER

unset DBUS\_SESSION\_BUS\_ADDRESS
{% endhint %}

## Conda

Anaconda uses conda to install packages and manage their depenencies. You can use conda to manage [conda environments](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html). To access conda, you need to load an Anaconda module. For example,

```text
module load anaconda/2020.02
```

or

```text
module load anaconda/3-5.2.0
```

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

After creating a conda environment, users can activate a conda environment to install or access packages in the environment. The command is slightly different for anaconda modules.

For the anaoconda/2020.02 module, users can activate an environment  by the following command:

```text
conda activate conda_environment_name
```

If you need to activate a conda environment in a bash script, you need source the conda.sh as shown in the follwoing example bash script:

```text
#!/usr/bin/bash
module load anaconda/2020.02
source /gpfs/runtime/opt/anaconda/2020.02/etc/profile.d/conda.sh
conda activate my_env
```

For the anaconda/3-5.2.0 module, users can activate an environment by the following command:

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

