---
description: >-
  Setting up a GPU-accelerated environment can be challenging due to driver
  dependencies, version conflicts, and other complexities. Apptainer simplifies
  this process by encapsulating all these details
---

# Installing TensorFlow

## Apptainer Using NGC Containers (Our #1 Recommendation)

There are multiple ways to install and run TensorFlow. Our recommended approach is via NGC containers. The containers are available via [NGC Registry](https://catalog.ngc.nvidia.com/orgs/nvidia/containers/tensorflow). In this example we will pull TensorFlow NGC container

1. Build the container:&#x20;

```
apptainer build tensorflow-24.03-tf2-py3.simg docker://nvcr.io/nvidia/tensorflow:24.03-tf2-py3
```

This will take some time, and once it completes you should see a .simg file.&#x20;

{% hint style="info" %}
For your convenience, the pre-built container images are located in directory:

`/oscar/runtime/software/external/ngc-containers/tensorflow.d/x86_64/`

You can choose either to build your own or use one of the pre-downloaded images.&#x20;
{% endhint %}

{% hint style="danger" %}
Working with Apptainer images requires lots of storage space. By default Apptainer will use \~/.apptainer as a cache directory which can cause you to go over your Home quota.

```
export APPTAINER_CACHEDIR=/tmp
export APPTAINER_TMPDIR=/tmp
```
{% endhint %}

2. Once the container is ready, request an interactive session with a GPU

```
interact -q gpu -g 1 -f ampere -m 20g -n 4
```

3. Run a container wih GPU support

```
export APPTAINER_BINDPATH="/oscar/home/$USER,/oscar/scratch/$USER,/oscar/data"
# Run a container with GPU support
apptainer run --nv tensorflow-24.03-tf2-py3.simg
```

{% hint style="success" %}
the --nv flag is important. As it enables the NVIDA sub-system
{% endhint %}

4. Or, if you're executing a specific command inside the container:

```
# Execute a command inside the container with GPU support
$ apptainer exec --nv tensorflow-24.03-tf2-py3.simg nvidia-smi
```

5. Make sure your Tensorflow image is able to detect GPUs

```
$ python
>>> import tensorflow as tf
>>> tf.test.is_gpu_available(cuda_only=False, min_cuda_compute_capability=None)
True
```

6. If you need to install more custom packages, the containers itself are non-writable but we can use the `--user` flag to install packages inside `.local` Example:

```
Apptainer> pip install <package-name> --user
```

### Slurm Script:

Here is how you can submit a SLURM job script by using the srun command to run your container. Here is a basic example:

```
#!/bin/bash
#SBATCH --nodes=1               # node count
#SBATCH -p gpu --gres=gpu:1     # number of gpus per node
#SBATCH --ntasks-per-node=1     # total number of tasks across all nodes
#SBATCH --cpus-per-task=1       # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem=40G               # total memory (4 GB per cpu-core is default)
#SBATCH -t 01:00:00             # total run time limit (HH:MM:SS)
#SBATCH --mail-type=begin       # send email when job begins
#SBATCH --mail-type=end         # send email when job ends
#SBATCH --mail-user=<USERID>@brown.edu

module purge
unset LD_LIBRARY_PATH
export APPTAINER_BINDPATH="/oscar/home/$USER,/oscar/scratch/$USER,/oscar/data"
srun apptainer exec --nv tensorflow-24.03-tf2-py3.simg python examples/tensorflow_examples/models/dcgan/dcgan.py
```

