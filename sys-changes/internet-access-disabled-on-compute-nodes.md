# Internet Access Disabled on Compute Nodes

## Overview

Since **November 19, 2025**, direct Internet access has been **disabled** on Oscar compute nodes to enhance system security.

## Changes

**Compute nodes** are now divided into two categories:

* **Regular nodes**: **No Internet access**
* **VNC nodes**: **Have Internet access**

Gateway nodes continue to have Internet access, including:

* Login nodes
* Transfer nodes
* VSCode node

## Impacts

* Any Internet-dependent commands will fail on regular nodes. Examples:
  * `apptainer pull`
  * `conda install`
  * `git` commands that fetch from remote repositories
  * `huggingface` commands/programs requiring online access for data or repos
* **Open OnDemand (OOD) apps** run on compute nodes. They will not be able to access the Internet when executed on regular nodes.
* Jobs or workflows requiring Internet access must be split so that only the Internet-dependent steps are executed on **login nodes** or other Internet-facing nodes.

## Alternatives if Internet Access is Required

* All[ file transfer methods](../managing-files/filetransfer.md) remain unaffected and continue to support Internet access.
* Users can still install packages via:
  * `pip install` (Instructions)
  * R `install.packages()` (Instructions)
  * R `BiocManager::install()` (Instructions)

## Need Help

The CCV team is here to support you in adapting your workflow so that the new Internet access policy has minimal impact.

* You are welcome to attend **CCV office hours every Friday from 10:00 AM to 12:00 PM**.
* Alternatively, you may **schedule an appointment** by contacting us at support@ccv.brown.edu.

<figure><img src="../.gitbook/assets/image (29).png" alt=""><figcaption></figcaption></figure>
