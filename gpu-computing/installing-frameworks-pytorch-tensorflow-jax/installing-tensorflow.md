# Installing TensorFlow

In this example, we will install **TensorFlow.**&#x20;

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
virtualenv -p python3 tensorflow.venv
source tensorflow.venv/bin/activate
```

**Step 4:** Install the required packages

```
pip install --upgrade pip
 pip install tensorflow
```

**Step 5:** Test that PyTorch is able to detect GPUs

```
python
>>> import tensorflow as tf
>>> tf.test.is_gpu_available(cuda_only=False, min_cuda_compute_capability=None)
True
```

If the above function returns `True`, then you are all set.&#x20;
