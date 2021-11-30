---
description: >-
  This page documents how to use the MPI for Python package within a Conda
  environment.
---

# MPI4PY

## Using MPI4PY in a Python Script

{% hint style="info" %}
The installation of mpi4py will be discussed in the following sections. This section provides an example of how mpi4py would be used in a python script after such an installation.
{% endhint %}

To use MPI in a python script through `mpi4py`, you must first import it using the following code:

```
from mpi4py import MPI
```

### Example Script

Here is an example python script `mpi4pytest.py` that uses MPI:

```
from mpi4py import MPI
import sys

def print_hello(rank, size, name):
  msg = "Hello World! I am process {0} of {1} on {2}.\n"
  sys.stdout.write(msg.format(rank, size, name))

if __name__ == "__main__":
  size = MPI.COMM_WORLD.Get_size()
  rank = MPI.COMM_WORLD.Get_rank()
  name = MPI.Get_processor_name()

  print_hello(rank, size, name)
```

{% hint style="info" %}
The file `mpi4pytest.py` __ can be found at _/gpfs/runtime/softwareexamples/mpi4py/_
{% endhint %}

## Conda Environment

Start by creating and activating a [conda environment](https://docs.ccv.brown.edu/oscar/software/anaconda#conda-environment):

```
$ module load anaconda/2020.02
$ conda create -n my_env
$ conda activate my_env
```

Once you have activated your conda environment, run the following commands to install `mpi4py`:

```
$ module load mpi/mpi/openmpi_4.0.5_gcc_10.2_slurm20
$ module load gcc/10.2 cuda/11.1.1
$ pip install python=3.7 mpi4py
```

{% hint style="info" %}
You may change the python version in the pip command.
{% endhint %}

{% hint style="info" %}
To check that the installation process was a success you can run

```
$ python -c "import mpi4py"
```

If no errors result from running the command, the installation has worked correctly.
{% endhint %}

Here is an example batch job script `mpi4pytest_conda.sh` that uses  `mpi4pytest.py` and the conda environment setup:

```
#!/bin/bash

#SBATCH -N 2
#SBATCH --mem=1G

module load anaconda/2020.02
source /gpfs/runtime/opt/anaconda/2020.02/etc/profile.d/conda.sh
conda activate my_env
module load mpi/mpi/openmpi_4.0.5_gcc_10.2_slurm20 gcc/10.2 cuda/11.1.1

srun --mpi=pmix python mpi4pytest.py
```

{% hint style="info" %}
The example script above runs the python script on two nodes by using the `#SBATCH -N 2` command. For more information on `#SBATCH` options, see our [documentation](https://docs.ccv.brown.edu/oscar/submitting-jobs/batch#sbatch-command-options).
{% endhint %}

## Python Virtual Environment

Start by creating and activating a python virtual environment:

```
$ module load python/2.7.16
$ virtualenv my_env
$ source my_env/bin/activate
```

Once you have activated your conda environment, run the following command to install `mpi4py`:

```
$ python -m pip install mpi4py
$ deactivate
```

Here is an example batch job script `mpi4pytest_virtualenv.sh`  and the python virtual environment setup:

```
#!/bin/bash

#SBATCH -N 2
#SBATCH --mem=1G

module load python/2.7.16
module load mpi/mpi/openmpi_4.0.5_gcc_10.2_slurm20 gcc/10.2 cuda/11.1.1
source my_env/bin/activate

srun --mpi=pmix python mpi4pytest.py
```
