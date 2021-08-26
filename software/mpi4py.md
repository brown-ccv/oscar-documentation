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

```text
from mpi4py import MPI
```

### Example Script

Here is an example python script that uses MPI:

```text
from mpi4py import MPI
import sys

size = MPI.COMM_WORLD.Get_size()
rank = MPI.COMM_WORLD.Get_rank()
name = MPI.Get_processor_name()

sys.stdout.write("Hello, world! I am process %d of %d on %s.\n"%(rank,size,name))
```

## Conda Environment

Start by creating and activating a [conda environment](https://docs.ccv.brown.edu/oscar/software/anaconda#conda-environment):

```text
$ module load anaconda/2020.02
$ conda create -n my_env
$ conda activate my_env
```

Once you have activated your conda environment, run the following commands to install `mpi4py`:

```text
$ module load mpi/mpi/openmpi_4.0.5_gcc_10.2_slurm2
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

Here is an example batch job that uses  `mpi4pytest.py` and the conda environment setup:

```text
#!/bin/bash

#SBATCH -N 2
#SBATCH --mem=1G

module load anaconda/2020.02
source /gpfs/runtime/opt/anaconda/2020.02/etc/profile.d/conda.sh
conda activate my_env
module load gcc/10.2
module load cuda/11.1.1

srun --mpi=pmix python mpi4pytest.py
```

{% hint style="info" %}
The file _mpi4pytest.py_ and the example batch file _mpi4py\_conda.sh can be found at /gpfs/runtime/softwareexamples/mpi4py/_
{% endhint %}

{% hint style="info" %}
The example script above runs the python script on two nodes by using the `#SBATCH -N 2` command. For more information on `#SBATCH` options, see our [documentation](https://docs.ccv.brown.edu/oscar/submitting-jobs/batch#sbatch-command-options).
{% endhint %}

## Python Virtual Environment

Start by creating and activating a python virtual environment:

```text
$ module load python/2.7.16
$ cd
$ virtualenv env
$ source ~/env/bin/activate
```

Once you have activated your conda environment, run the following command to install `mpi4py`:

```text
$ python -m pip install mpi4py
$ deactivate
```

Here is an example batch job that uses [the python script above](https://docs.ccv.brown.edu/oscar/software/MPI4PY#example-script) \(referenced as `mpi4pytest.py`\) and the python virtual environment setup:

```text
#!/bin/bash

#SBATCH -N 2
#SBATCH --mem=1G

module load python/2.7.16
module load mpi/openmpi_4.0.5_gcc_10.2_slurm20
module load gcc/10.2
module load cuda/11.1.1
source ~/env/bin/activate

srun --mpi=pmix python mpi4pytest.py
```

