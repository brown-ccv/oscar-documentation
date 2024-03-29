---
description: This page describes how to install JAX with Python virtual environments
---

# Installing JAX

In this example, we will install **Jax**.&#x20;

**Step 1:** Request an interactive session on a GPU node with Ampere architecture GPUs

```
interact -q gpu -g 1 -f ampere -m 20g -n 4
```

Here, -f = feature. We only need to build on Ampere once.&#x20;

**Step 2:** Once your session has started on a compute node, run `nvidia-smi` to verify the GPU and then load the appropriate modules&#x20;

```
module purge 
unset $LD_LIBRARY_PATH
module load cuda cudnn
```

**Step 3:** Create and activate the virtual environment

```
python -m venv jax.venv
source jax.venv/bin/activate
```

**Step 4:** Install the required packages

```
pip install --upgrade pip
pip  install  --upgrade  "jax[cuda12_pip]"  -f  https://storage.googleapis.com/jax-releases/jax_cuda_releases.html
```

**Step 5:** Test that JAX is able to detect GPUs

```
python
>>> from jax.lib import xla_bridge
>>> print(xla_bridge.get_backend().platform)
gpu
```

If the above function returns `gpu`, then it's working correctly. You are all set, now you can install other necessary packages.

#### Modify batch file: See below the example batch file with the created environment

```
#SBATCH -J RBC
#SBATCH -N 1
#SBATCH --ntasks=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=3:30:00
#SBATCH --mem=64GB
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH -o RBC_job_%j.o
#SBATCH -e RBC_job_%j.e

echo $LD_LIBRARY_PATH
unset LD_LIBRARY_PATH
echo $LD_LIBRARY_PATH

source /oscar/data/gk/psaluja/jax_env.venv/bin/activate
python3 -u kernel.py
```

