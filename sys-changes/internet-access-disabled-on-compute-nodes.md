# Internet Access Disabled on Compute Nodes

## <mark style="color:red;">**This page is under Construction**</mark>

Access to Internet from Oscar compute nodes is no long allowed since November 19, 2025.  This will enhance security on Oscar.&#x20;

## What are the Changes

Oscar compute nodes will be divided into regular nodes and vnc nodes.

* regular nodes will NOT have access to Internet
* vnc nodes will have access to Internet

Gateway nodes still have access to Internet. They include&#x20;

* login nodes
* transfer nodes
* VsCode node

## What are the Impacts

* Any commands accessing Internet will fail on regular nodes. Below are typical commands/tasks/workflows that no longer work on regular nodes
  * apptainer pull
  * conda install
  * git commands that access Internet
  * huggingface commands/programs accessing Internet for data or repos
* Open OnDemand (OOD) apps run on compute nodes. They will NOT have access to Internet when running on regular nodes.
*   A job/workflow that currently depend on Internet access will need to be divided in such a way that the portions needing internet access are executed on a login node or other internet-facing node.&#x20;



## What if I Still Need Access to Internet

* All[ file transfer methods](../managing-files/filetransfer.md) are NOT affected and still have access to Internet.
* User could still install packages via pip, R install.packages and bioc\_install following our instructions. The instructions will be provided later.
  * Instructions for "pip intall"
  * instructions for R "install\_packages "
  * instructions for R "BiocManager::install"

## Need Help

The CCV team is happy to help restructure your workflow so that this change is minimally disruptive to users. Please drop by our usual CCV office hours on Fridays from  10:00am to 12:00pm. You can also schedule a time to meet with us by emailing [support@ccv.brown.edu](mailto:support@ccv.brown.edu)

\
