# H100 NVL Tensor Core GPUs

Oscar has two [DGX ](https://en.wikipedia.org/wiki/Nvidia\_DGX)H100 nodes in the `gpu-he` partition. [H100 ](https://www.nvidia.com/en-us/data-center/h100/)is based on the [Nividia Hopper architecutre](https://www.nvidia.com/en-us/data-center/technologies/hopper-architecture/) that accelerates the training of AI models. The two DGX nodes provides better performance when multiple GPUS are used, in particular with Nvidia software like [NGC containers](https://catalog.ngc.nvidia.com/containers?filters=\&orderBy=weightPopularDESC\&query=\&page=\&pageSize=). &#x20;

{% hint style="info" %}
Multiple-Instance GPU (MIG) is not enabled on the DGX H100 nodes
{% endhint %}

## Hardware Specifications

Each DGX H100 node has 112 Intel CPUs with 2TB memory, and 8 Nvidia H100 GPUs. Each H100 GPU has 80G memory.&#x20;

## Running NGC containers&#x20;

NGC containers provide the best performance from the DGX H100 nodes. [Running tensorflow containers ](../installing-frameworks-pytorch-tensorflow-jax/installing-tensorflow.md)is an example for running NGC containers.&#x20;

## Running Oscar modules

The two nodes have Intel CPUs. So Oscar modules can still be loaded and run on the two DGX nodes.&#x20;
