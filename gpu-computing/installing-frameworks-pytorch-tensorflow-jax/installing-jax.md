---
description: This page describes how to install JAX with Python virtual environments
---

# Installing JAX

In this example, we will install **PyTorch** (refer to sub-pages for TensorFlow and Jax).&#x20;

**Step 1:** Request an interactive session on a GPU node with Ampere architecture GPUs

```
interact -q gpu -g 1 -f ampere -m 20g -n 4
```

Here, -f = feature. We only need to build on Ampere once.&#x20;

**Step 2:** Once your session has started on a compute node, run `nvidia-smi` to verify the GPU and then load the appropriate modules&#x20;

```
module load python/3.11.0 openssl/3.0.0 cuda/11.7.1 cudnn/8.2.0
```

**Step 3:** Create and activate the virtual environment

```
virtualenv -p python3 jax.venv
source jax.venv/bin/activate
```

**Step 4:** Install the required packages

```
pip install --upgrade pip
pip install --upgrade "jax[cuda]" -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html 
```

**Step 5:** Test that PyTorch is able to detect GPUs

```
python
>>> from jax.lib import xla_bridge
>>> print(xla_bridge.get_backend().platform)
gpu
```

If the above function returns `gpu`, then it's working correctly. You are all set, now you can install other necessary packages.

