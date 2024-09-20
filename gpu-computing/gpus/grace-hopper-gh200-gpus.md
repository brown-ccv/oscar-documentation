# Grace Hopper GH200 GPUs

Oscar has two Grace Hopper GH200 GPU nodes. Each node combines [Nvidia Grace Arm CPU](https://www.nvidia.com/en-us/data-center/grace-cpu/) and [Hopper GPU architecture](https://www.nvidia.com/en-us/data-center/technologies/hopper-architecture/).&#x20;

## Hardware Specifications

Each GH200 node has 72 Arm cores with 530G memory. `Multiple-Install GPU (MIG)` is enabled on only one GH200 node and the node that has 4 GPUs/MIGs. One MIG has 12G GPU memory, while each of the other three MIGs has 24G GPU memory.

## Access

The two GH200 nodes are in the `gracehopper` partition.&#x20;

### gk-condo Account

A gk-condo user can submit jobs to the GH200 nodes with their gk-gh200-gcondo account, i.e.,

```
#SBACH --account=gk-gh200-gcondo
#SBATCH --partition=gracehopper
```

### CCV Account&#x20;

For a user who is not a gk-condo users, a _High End GPU priority account_ is required for accessing the `gracehopper` partition and GH200 nodes. All users with access to the GH200 nodes need to submit jobs to the nodes with the ccv-gh200-gcondo account, i.e.

```
#SBACH --account=ccv-gh200-gcondo
#SBATCH --partition=gracehopper
```

### MIG Access

To request a MIG, the feature mig must be specified, i.e.

```
#SBATCH --constraint=mig
```

## Running NGC Containers&#x20;

NGC containers provide the best performance from the GH200 nodes. [Running tensorflow containers ](../installing-frameworks-pytorch-tensorflow-jax/installing-tensorflow.md)is an example for running NGC containers.&#x20;

{% hint style="info" %}
A NGC container must be built on a GH200 node for the container to run on GH200 nodes
{% endhint %}

## Running Modules

The two nodes have Arm CPUs. So Oscar modules **do not** run on the two GH200 nodes. Please contact support@ccv.brown.edu about installing and running modules on GH200 nodes.
