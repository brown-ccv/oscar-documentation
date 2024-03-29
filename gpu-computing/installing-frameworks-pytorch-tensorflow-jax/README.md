---
description: >-
  This page describes installing popular frameworks like TensorFlow, PyTorch &
  JAX, etc. on your Oscar account.
---

# Installing Frameworks (PyTorch, TensorFlow, Jax)

{% hint style="info" %}
Preface: Oscar is a heterogeneous cluster meaning we have nodes with different architecture GPUs (Pascal, Volta, Turing, and Ampere). We recommend building the environment first time on Ampere GPUs with the latest CUDA11 modules so it's backward compatible with older architecture GPUs.
{% endhint %}

In this example, we will install **PyTorch** (refer to sub-pages for TensorFlow and Jax).

**Step 1:** Request an interactive session on a GPU node with Ampere architecture GPUs

`interact -q gpu -g 1 -f ampere -m 20g -n 4`

Here, -f = feature. We only need to build on Ampere once.

**Step 2:** Once your session has started on a compute node, run `nvidia-smi` to verify the GPU and then load the appropriate modules

**Step 3:** Create and activate the virtual environment, unload the pre-loaded modules then load cudnn and cuda dependencies

```
module purge
unset LD_LIBRARY_PATH
module load cudnn cuda
```

**Step 4: Create a new vittual environment**&#x20;

```
python -m venv pytorch.venv
source pytorch.venv/bin/activate
```

**Step 5:** Install the required packages

```
pip install --upgrade pip
pip install torch torchvision torchaudio
```

The aforementioned will install the latest version of PyTorch with cuda11 compatibility, for older versions you can specify the version by:

```
pip install torch torchvision torchaudio
```

**Step 6:** Test that PyTorch is able to detect GPUs

```
python
>>> import torch 
torch.cuda.is_available()
True
>>> torch.cuda.get_device_name(0)
'NVIDIA GeForce RTX 3090'
```

If the above functions return `True` and GPU `model`, then it's working correctly. You are all set, now you can install other necessary packages.
