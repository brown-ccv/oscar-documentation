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
The file `mpi4pytest.py`  can be found at _/gpfs/runtime/softwareexamples/mpi4py/_
{% endhint %}

## Conda Environment

Start by creating and activating a [conda environment](miniconda.md):

Once you have activated your conda environment, run the following commands to install `mpi4py`:

```
$ module load hpcx-mpi/4.1.5rc2-mt
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

#SBATCH --nodes=2
#SBATCH --ntasks-per-node=4
#SBATCH --mem=1G

module load miniconda3/23.11.0s
source /oscar/runtime/software/external/miniconda3/23.11.0/etc/profile.d/conda.sh
conda activate my_env
module hpcx-mpi/4.1.5rc2-mt

srun --mpi=pmix python mpi4pytest.py
```

{% hint style="info" %}
The example script above runs the python script on two nodes by using the `#SBATCH -N 2` command. For more information on `#SBATCH` options, see our [documentation](https://docs.ccv.brown.edu/oscar/submitting-jobs/batch#sbatch-command-options).
{% endhint %}

## Python Environment

Start by creating and activating a[ Python environment](python-installs.md#using-python-enviroments-venv)

Once you have activated your conda environment, run the following command to install `mpi4py`:

```
$ python -m pip install mpi4py
$ deactivate
```

Below is an example batch job script `mpi4pytest_env.sh`:

```
#!/bin/bash

#SBATCH --nodes=2
#SBATCH --ntasks-per-node=4
#SBATCH --mem=1G


module load hpcx-mpi/4.1.5rc2-mt
source my_env/bin/activate

srun --mpi=pmix python mpi4pytest.py
```
