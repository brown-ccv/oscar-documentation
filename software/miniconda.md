---
description: >-
  The Miniconda modules include only conda, mamba, python, and a few other
  packages. Users can use either mamba (preferred) or condo to install packages
  in their own conda environment.
---

# Miniconda

## Modules

$ module avail miniconda

```
miniconda/4.10    miniconda/4.12.0  
```

## Conda

Please refere to [here ](anaconda.md#conda)for using a conda environment.

## Mamba

Mamba is a drop-in replacement of conda, and is faster than conda.&#x20;

Only activating and deactivating a conda environment still requires conda

```
conda activate <my_conda_environment>
conda deactivate
```

&#x20;For _a_ll other commands, `conda` can be replaced with `mamba`.
