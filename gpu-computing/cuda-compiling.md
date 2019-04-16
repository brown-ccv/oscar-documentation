---
title: Cuda Compiling
date: '2019-01-31T22:03:45.000Z'
draft: false
project: Oscar
section: GPU Computing
weight: 0
icon: check
---

# Compiling CUDA

To compile a CUDA program on Oscar, first load the CUDA

```text
     module load cuda
```

The CUDA compiler is called `nvcc`, and for compiling a simple CUDA program it uses syntax simlar to `gcc`:

```text
     nvcc -o program source.cu
```

