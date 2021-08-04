---
description: The new Ampere architecture GPUs on Oscar (A6000's and RTX 3090's)
---

# Ampere Architecture GPUs

The new Ampere architecture GPUs do not support older CUDA modules. Users must re-compile their applications with the newer CUDA/11 or older modules. Here are detailed instructions to compile major frameworks such as PyTorch, TensorFlow. 

### PyTorch

Users can install PyTorch from a pip virtual environment or use pre-built singularity containers provided by Nvidia NGC. 

#### To install via virtual environment:

```text
module load python/3.7.4
module load cuda/11.3.1
module load cudnn/8.2.0

virtualenv -p python3 pytorch.venv
source pytorch.venv/bin/activate

pip install torch==1.8.0+cu111 torchvision==0.9.0+cu111 torchaudio==0.8.0 -f https://download.pytorch.org/whl/torch_stable.html
```

#### To use NGC containers via Singularity :

* Pull the image from NGC

```
singularity build pytorch:21.06-py3 docker://nvcr.io/nvidia/pytorch:21.06-py3
```

* Export PATHs to mount the Oscar file system

```
export SINGULARITY_BINDPATH="/gpfs/home/$USER,/gpfs/scratch/$USER,/gpfs/data/"
```

* To use the image interactively

```
singularity shell --nv pytorch\:21.06-py3
```

* To submit batch jobs

```
#!/bin/bash

# Request a GPU partition node and access to 1 GPU
#SBATCH -p 3090-gcondo,gpu --gres=gpu:1

# Ensures all allocated cores are on the same node
#SBATCH -N 1

# Request 2 CPU cores
#SBATCH -n 2
#SBATCH --mem=40g
#SBATCH --time=10:00:00

#SBATCH -o %j.out

export SINGULARITY_BINDPATH="/gpfs/home/$USER,/gpfs/scratch/$USER,/gpfs/data/"
singularity --version

# Use environment from the singularity image
singularity exec --nv pytorch:21.06-py3 python pytorch-cifar100/train.py -net vgg16 -gpu
```



