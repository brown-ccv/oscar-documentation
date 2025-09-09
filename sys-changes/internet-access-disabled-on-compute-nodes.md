# Internet Access Disabled on Compute Nodes

## Overview

From **November 19, 2025**, direct Internet access will been **disabled** on Oscar compute nodes to enhance system security.

## Changes

**Compute nodes** are now divided to two categories:

* **Regular nodes,** which **do not have Internet access**
* **VNC nodes,** which continue to **have Internet access**

Gateway nodes will continue to have Internet access. These include:

* Login nodes
* Transfer nodes
* VSCode node

## Impacts

* Any task that accesses the internet will fail on regular nodes. Some examples:
  * `apptainer pull`
  * `conda install`
  * `git` commands like clone, fetch, and push, that access remote repositories
  * `huggingface` commands/programs requiring online access for data or repos
* **Open OnDemand (OOD) apps** run on compute nodes. Thus, they will not be able to access the Internet if they are running on regular nodes.
* Jobs or workflows requiring Internet access must be split so that the Internet-dependent steps are executed on the Internet-facing nodes.

## Alternatives if Internet Access is Required

* All[ file transfer methods](../managing-files/filetransfer.md) remain unaffected and continue to support Internet access.
* Users can still install packages via mirror servers hosted at Brown. These mirror servers can be accessed from any Oscar node.
  * Python `pip install` (Instructions) &#x20;
  * R from CRAN  `install.packages()` (Instructions)
  * R from Bioconductor `BiocManager::install()` (Instructions)

## Testing your workflow before the change

If you would like to test your Oscar workflow to prepare for the upcoming change, you can access our test cluster.&#x20;

* To access this cluster, run `ssh login92` on any of the Oscar login nodes.
* You can start jobs on the  `batch` or `gpu` partition on this cluster using `sbatch` or `interact` commands.
* You cannot test Open OnDemand jobs on this test cluster.

## Need Help

The CCV team is here to support you in adapting your workflow so that the new Internet access policy has minimal impact.

* You are welcome to [attend **CCV office hours**](https://brown.zoom.us/j/93572022965) **every Friday from 10:00 AM to 12:00 PM**.
* Alternatively, you may **schedule an appointment** by contacting us at support@ccv.brown.edu.
