---
description: >-
  Both the miniconda3 and minforge modules include only conda, python, and a few
  other packages. Only the  Users can use either mamba (preferred) or conda to
  install packages in their conda environment.
---

# Conda and Mamba

Mamba is a drop-in replacement of conda, and is faster at resolving dependencies than conda.  For commands like `conda install` and `conda search`, `conda`can be replaced with `mamba`on Oscar. More details can be found in [Mamba User Guide](https://mamba.readthedocs.io/en/latest/user\_guide/mamba.html).

## Conda Initialization

Users need to initialize conda in their \~/.bashrc. This is a one-time operation.&#x20;

### 1. Delete Existing Intitialization Commands in \~/.bashrc

If you have initialized conda before via an old miniconda or anaconda module, you need to delete the initialization commands from your \~/.bahsrc. Below is an example of the initialization commands in \~/.bashrc to delete:

```
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/oscar/runtime/opt/anaconda/2022.05/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/oscar/runtime/opt/anaconda/2022.05/etc/profile.d/conda.sh" ]; then
        . "/oscar/runtime/opt/anaconda/2022.05/etc/profile.d/conda.sh"
    else
        export PATH="/oscar/runtime/opt/anaconda/2022.05/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

```

### 2. Exit Your Current Oscar Connection

### 3. Start a New Oscar Connection and Initialize Conda

Start a new Oscar connection, load a miniconda3 or miniforge module and then run the following command n a terminal

{% tabs %}
{% tab title="Miniconda3" %}
`module load miniconda3/23.11.0s`

`conda init`
{% endtab %}

{% tab title="Miniforge" %}
`module load miniforge/23.11.0-0s`

`conda init`
{% endtab %}
{% endtabs %}

{% hint style="info" %}
If your default shell is NOT bash, you need to run _`conda init <my_default_shell>`_ where _`<my_default_shell>`_ should be replaced with your default shell, e.g., _zsh_.
{% endhint %}

{% hint style="danger" %}
Don't use `mamba init` which doesn't work on Oscar
{% endhint %}

### 4. Disable Base Environment

The base environment is automatically activated after conda initialization is completed. Normally users don't need to activate the base environment and can deactivate it via the following command:&#x20;

```bash
conda config --set auto_activate_base false
```

{% hint style="info" %}
Users need to run the deactivation command only once as the deactivation command adds a line in \~/.condarc.&#x20;
{% endhint %}

## Conda Environment

A user may install all needed software packages for a project in a conda environment. A conda environment can be

* shared among all users if the environment is installed in a shared directory
* private to one user if the environment is installed in a user's private directory

The command 'conda info' shows important configurations for conda environment.

```
$ conda info 

     active environment : None
            shell level : 0
       user config file : /users/yliu385/.condarc
 populated config files : /users/yliu385/.condarc
          conda version : 23.1.0
    conda-build version : not installed
         python version : 3.10.9.final.0
       virtual packages : __archspec=1=x86_64
                          __glibc=2.34=0
                          __linux=5.14.0=0
                          __unix=0=0
       base environment : /oscar/runtime/software/external/miniconda3/23.11.0  (writable)
      conda av data dir : /oscar/runtime/software/external/miniconda3/23.11.0/etc/conda
  conda av metadata url : None
           channel URLs : https://repo.anaconda.com/pkgs/main/linux-64
                          https://repo.anaconda.com/pkgs/main/noarch
                          https://repo.anaconda.com/pkgs/r/linux-64
                          https://repo.anaconda.com/pkgs/r/noarch
          package cache : /oscar/runtime/software/external/miniconda3/23.11.0/pkgs
                          /users/yliu385/.conda/pkgs
       envs directories : /oscar/runtime/software/external/miniconda3/23.11.0/envs
                          /users/yliu385/.conda/envs
               platform : linux-64
             user-agent : conda/23.1.0 requests/2.28.1 CPython/3.10.9 Linux/5.14.0-284.11.1.el9_2.x86_64 rhel/9.2 glibc/2.34
                UID:GID : 140348764:2128288
             netrc file : None
           offline mode : False

```

Below are some important configurations:

* `envs directories`: a list of directories where a conda environment is installed by default. In the output of 'conda info' above, the first default directory to install a conda environment is a $HOME/anaconda.
* `package cache`: a list of directories where downloaded packages are stored.

### Create a New Conda Environment

To create a new conda environment in a default directory, run the following command:

```
conda create -n conda_environment_name
```

To create a new conda environment in a different directory, run the following command:

```
conda create -p  /path/to/install/conda_environment_name
```

### Activate a Conda Environment

After creating a conda environment, users can activate a conda environment to install or access packages in the environment via the following command.&#x20;

```
conda activate conda_environment_name
```

{% hint style="info" %}
The commands above will only work if:

* A conda environment with the specified name (`conda_environment_name` in the example) exists
* The appropriate anaconda module has been loaded (if you are unsure about this one, consult [this documentation](https://docs.ccv.brown.edu/oscar/software/modules))
{% endhint %}

If you need to activate a conda environment in a bash script, you need to source the conda.sh as shown in the following example bash script:



{% tabs %}
{% tab title="Miniconda3" %}
`#!/usr/bin/bash`&#x20;

`module load miniconda3/23.11.0s`&#x20;

`source /oscar/runtime/software/external/miniconda3/23.11.0/etc/profile.d/conda.sh`&#x20;

`conda activate my_env`
{% endtab %}

{% tab title="Miniforge" %}
`#!/usr/bin/bash`&#x20;

`module load miniforge/23.11.0-0s`&#x20;

`source /oscar/runtime/software/external/miniforge/23.11.0-0/etc/profile.d/conda.sh`&#x20;

`conda activate my_env`
{% endtab %}
{% endtabs %}

{% hint style="info" %}
After installing packages in an active environment (instructions below), you do **not** need to load or install those packages in the bash script; any packages installed in the conda environment (before the script even starts) will be available through the environment after it is activated (line 4 in the code above).
{% endhint %}

{% hint style="danger" %}
Do NOT activate a conda environment before submitting a batch job if the batch job activates a conda environment. Otherwise, the batch job will not be able to activate the conda environment and hence fail.
{% endhint %}

To deactivate a conda environment, simply use the following command:

```
conda deactivate
```

### Install Packages in an Active Conda Environment

To install a package, we need to first activate a conda environment, and then run

{% tabs %}
{% tab title="Conda" %}
`conda install package_name=version`
{% endtab %}

{% tab title="Mamba" %}
`mamba install package_name=version`
{% endtab %}
{% endtabs %}

The "=version" is optional. By default, conda install a package from the anaconda channel. To install a package from a different channel, run `conda install` with the `-c` option. For example, to install a package from the bioconda channel, run

{% tabs %}
{% tab title="Conda" %}
`conda  install -c bioconda package_name`
{% endtab %}

{% tab title="Mamba" %}
`mamba install -c bioconda package_name`
{% endtab %}
{% endtabs %}

### Delete a Conda Environment

To delete a conda environment, run

```
conda env remove -n conda_environment_name
```

### Remove Caches

Conda may download lots of additional packages when installing a package. A user may use up all quota due to these downloaded packages. To remove the downloaded packges, run

```
conda clean --all
```

