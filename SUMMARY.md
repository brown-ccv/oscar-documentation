# Table of contents

* [Oscar - Brown University's Cluster](README.md)
* [System Hardware](system-overview.md)
* [Quickstart Guide](getting-started.md)
* [Short "How to" Videos](short-videos.md)
* [Quick Reference](quick-reference.md)
* [Slurm Migration](mpi-applications-for-slurm-migration.md)
* [Citing CCV](citing-ccv.md)

## Connecting to Oscar

* [SSH \(Terminal\)](connecting-to-oscar/ssh/README.md)
  * [SSH Key Login \(Passwordless SSH\)](connecting-to-oscar/ssh/ssh-key-login-passwordless-ssh.md)
  * [X-Forwarding](connecting-to-oscar/ssh/x-forwarding.md)
* [VNC \(Virtual Desktop\)](connecting-to-oscar/vnc.md)
* [SMB \(Local Mount\)](connecting-to-oscar/cifs.md)
* [CIFS  non-AD \(Local Mount\)](connecting-to-oscar/cifs-non-ad-local-mount.md)
* [Remote IDE](connecting-to-oscar/remote-ide.md)

## Accounts on Oscar

* [Account Types](accounts-on-oscar/account-types.md)
* [Passwords](accounts-on-oscar/passwords.md)
* [Associations & Quality of Service \(QOS\)](accounts-on-oscar/associations-and-quality-of-service.md)

## Managing files

* [Oscar's Filesystem](managing-files/filesystem.md)
* [Transferring Files to and from Oscar](managing-files/filetransfer.md)
* [Transferring Files between Oscar and Campus File Storage \(Replicated and Non-Replicated\)](managing-files/filetransfer-isilon.md)
* [Inspecting Disk Usage \(Ncdu\)](managing-files/inspecting-disk-usage-ncdu.md)
* [Restoring Deleted Files](managing-files/restore.md)
* [Best Practices for I/O](managing-files/io-best-practices.md)
* [Version Control](managing-files/version-control/README.md)
  * [SSH Agent Forwarding](managing-files/version-control/ssh-agent-forwarding.md)
  * [Key Generation & Agent Forwarding with PuTTY](managing-files/version-control/key-generation-and-agent-forwarding-with-putty.md)

## Submitting jobs

* [Running Jobs](submitting-jobs/shared-machine.md)
* [Slurm Partitions](submitting-jobs/slurm.md)
* [Interactive Jobs](submitting-jobs/interact.md)
* [Batch Jobs](submitting-jobs/batch.md)
* [Managing Jobs](submitting-jobs/managing-jobs.md)
* [Job Arrays](submitting-jobs/array.md)
* [MPI Jobs](submitting-jobs/mpi-jobs.md)
* [Condo/Priority Jobs](submitting-jobs/condo-priority-jobs.md)
* [Dependent Jobs](submitting-jobs/dependent-jobs.md)

## GPU Computing

* [GPUs on Oscar](gpu-computing/gpus.md)
* [Submitting GPU Jobs](gpu-computing/submit-gpu.md)
* [Intro to CUDA](gpu-computing/intro-to-cuda.md)
* [Compiling CUDA](gpu-computing/cuda-compiling.md)
* [Ampere Architecture GPUs](gpu-computing/ampere-architecture-gpus.md)
* [Mixing MPI and CUDA](gpu-computing/mpi-cuda.md)

## Large Memory Computing

* [Large Memory Nodes on Oscar](large-memory-computing/large-mem.md)

## Software

* [Software on Oscar](software/software.md)
* [Using Modules](software/modules.md)
* [Python on Oscar](software/python-on-oscar.md)
* [Python in batch jobs](software/python-in-batch-jobs.md)
* [Installing Python Packages](software/python-installs.md)
* [Installing R Packages](software/r-installs.md)
* [Using CCMake](software/ccmake.md)
* [Intro to Parallel Programming](software/intro-to-parallel-programming.md)
* [Anaconda](software/anaconda.md)
* [Screen](software/screen.md)
* [VASP](software/vasp.md)
* [Gaussian](software/gaussian.md)
* [IDL](software/using-idl.md)

## Jupyter Notebooks/Labs <a id="jupyter-notebooks"></a>

* [Jupyter Notebooks on Oscar](jupyter-notebooks/jupyter-notebooks-on-oscar-1.md)
* [Jupyter Labs on Oscar](jupyter-notebooks/jupyter-notebooks-on-oscar.md)
* [Tunneling into Jupyter with Windows](jupyter-notebooks/tunneling-into-jupyter-with-windows.md)

## Debugging

* [Arm Forge](debugging/arm-forge/README.md)
  * [Configuring Remote Launch](debugging/arm-forge/configuring-remote-launch.md)
  * [Setting Job Submission Settings](debugging/arm-forge/setting-job-submission-settings.md)

## MATLAB

* [Matlab GUI](matlab/matlab-gui.md)
* [Matlab Batch Jobs](matlab/matlab-batch.md)
* [Improving Performance and Memory Management](matlab/performance.md)
* [Parallel Matlab](matlab/parallel-matlab.md)

## Singularity Containers

* [Intro to Singularity](singularity-containers/untitled.md)
* [Building Images](singularity-containers/building-images.md)
* [Running Images](singularity-containers/running-images.md)
* [Accessing Oscar Filesystem](singularity-containers/accessing-oscar-filesystem.md)
* [Example - Tensorflow](singularity-containers/example-tensorflow.md)
* [Singularity Tips and Tricks](singularity-containers/singularity-tips-and-tricks.md)

## Getting Help

* [Common Problems](getting-help/common-problems.md)
* [FAQ](getting-help/faq.md)
* [File a Support Ticket](getting-help/ticket.md)
* [Visit Office Hours](getting-help/office-hours.md)
* [Meet with CCV Staff](getting-help/meet-ccv.md)
* [CCV User Policies](getting-help/ccv-user-policies.md)

## Installing Software Packages Locally <a id="local-install"></a>

* [Using a CESM module](local-install/cesm.md)
* [Installing your own version of CESM](local-install/installing-your-own-version-of-cesm.md)
* [Installing your own version of Quantum Espresso](local-install/installing-your-own-version-of-quantum-espresso.md)
* [Installing your own version of Qmcpack](local-install/installing-your-own-version-of-qmcpack.md)

## dbGaP <a id="dbgap-data"></a>

* [dbGaP Architecture](dbgap-data/dbgap-project.md)
* [dbGaP Data Transfers](dbgap-data/dbgap-data-transfers.md)
* [dbGaP Job Submission](dbgap-data/dbgap-job-submission.md)

