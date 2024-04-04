---
description: >-
  This is designed to be an early users reference guide for how to build and run
  apptainer images on OSCAR at CCV for Brown University‌
---

# Intro to Apptainer

## Where Can You Run

Currently, apptainer 1.2.2-1.el9 has been installed and is operational on all compute nodes attached to the batch, gpu, and VNC partitions.  If you experience any issues using Singularity, please contact support through the [Support Ticket System](broken-reference).

## How to Load Singularity <a href="#how-to-load-singularity" id="how-to-load-singularity"></a>

‌The current implementation of apptainer on OSCAR is not through the traditional module toolkit. Instead, it is natively installed on each node and automatically added to your `$PATH` such that you immediately have access to the `apptainer` command.

There is no need to load any modules specific for apptainer.
