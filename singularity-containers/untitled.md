---
description: >-
  This is designed to be an early users reference guide for how to build and run
  singularity images on OSCAR at CCV for Brown University‌
---

# Intro to Singularity

## Where Can You Run

Currently, Singularity 3.6.1 has been installed and is operational on all compute nodes attached to the batch, gpu, and VNC partitions.  If you experience any issues using Singularity, please contact support through the [Support Ticket System](broken-reference).

## How to Load Singularity <a href="#how-to-load-singularity" id="how-to-load-singularity"></a>

‌The current implementation of Singularity on OSCAR is not through the traditional module toolkit. Instead, it is natively installed on each node and automatically added to your `$PATH` such that you immediately have access to the `singularity` command.

There is no need to load any modules specific for singularity.
