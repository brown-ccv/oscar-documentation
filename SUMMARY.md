# Table of contents

* [Oscar - Brown University's Cluster](README.md)
* [System Hardware](system-overview.md)
* [Account Information](account-types.md)
* [Quickstart Guide](getting-started.md)
* [Short "How to" Videos](short-videos.md)
* [Quick Reference](quick-reference/README.md)
  * [Common Acronyms and Terms](quick-reference/common-acronyms-and-terms.md)
  * [Managing Modules](quick-reference/managing-modules.md)
  * [Common Linux Commands](quick-reference/common-linux-commands.md)
* [Citing CCV](citing-ccv.md)

## Connecting to Oscar

* [SSH (Terminal)](connecting-to-oscar/ssh/README.md)
  * [SSH Key Login (Passwordless SSH)](connecting-to-oscar/ssh/ssh-key-login-passwordless-ssh/README.md)
    * [Mac/Linux/Windows(PowerShell)](connecting-to-oscar/ssh/ssh-key-login-passwordless-ssh/mac-linux-windows-powershell.md)
    * [Windows(PuTTY)](connecting-to-oscar/ssh/ssh-key-login-passwordless-ssh/windows-putty.md)
  * [SSH Configuration File](connecting-to-oscar/ssh/ssh-configuration-file.md)
  * [X-Forwarding](connecting-to-oscar/ssh/x-forwarding.md)
  * [SSH Agent Forwarding](connecting-to-oscar/ssh/ssh-agent-forwarding/README.md)
    * [Mac/Linux](connecting-to-oscar/ssh/ssh-agent-forwarding/mac-linux.md)
    * [Windows (PuTTY)](connecting-to-oscar/ssh/ssh-agent-forwarding/key-generation-and-agent-forwarding-with-putty.md)
* [Open OnDemand](connecting-to-oscar/open-ondemand/README.md)
  * [Using File Explorer on OOD](connecting-to-oscar/open-ondemand/using-file-explorer-on-ood.md)
  * [Web-based Terminal App](connecting-to-oscar/open-ondemand/web-based-terminal-app.md)
  * [Interactive Apps on OOD](connecting-to-oscar/open-ondemand/interactive-apps-on-ood.md)
  * [Using Python or Conda environments in the Jupyter App](connecting-to-oscar/open-ondemand/using-python-or-conda-environments-in-the-jupyter-app.md)
* [SMB (Local Mount)](connecting-to-oscar/cifs.md)
* [Remote IDE (VSCode)](connecting-to-oscar/remote-ide/README.md)
  * [From Non-compliant Networks (2-FA)](connecting-to-oscar/remote-ide/from-non-compliant-networks-2-fa.md)
  * [Setup virtual environment and debugger](connecting-to-oscar/remote-ide/setup-virtual-environment-and-debugger.md)

## Managing files

* [Oscar's Filesystem](managing-files/filesystem.md)
* [Transferring Files to and from Oscar](managing-files/filetransfer.md)
* [Transferring Files between Oscar and Campus File Storage (Replicated and Non-Replicated)](managing-files/filetransfer-isilon.md)
* [Inspecting Disk Usage (Ncdu)](managing-files/inspecting-disk-usage-ncdu.md)
* [Restoring Deleted Files](managing-files/restore.md)
* [Best Practices for I/O](managing-files/io-best-practices.md)
* [Version Control](managing-files/version-control.md)

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
* [Associations & Quality of Service (QOS)](submitting-jobs/associations-and-quality-of-service.md)

## GPU Computing

* [GPUs on Oscar](gpu-computing/gpus.md)
* [Submitting GPU Jobs](gpu-computing/submit-gpu.md)
* [Intro to CUDA](gpu-computing/intro-to-cuda.md)
* [Compiling CUDA](gpu-computing/cuda-compiling.md)
* [Ampere Architecture GPUs](gpu-computing/ampere-architecture-gpus.md)
* [Mixing MPI and CUDA](gpu-computing/mpi-cuda.md)
* [Installing Frameworks (PyTorch, TensorFlow, Jax)](gpu-computing/installing-frameworks-pytorch-tensorflow-jax/README.md)
  * [Installing JAX](gpu-computing/installing-frameworks-pytorch-tensorflow-jax/installing-jax.md)

## Large Memory Computing

* [Large Memory Nodes on Oscar](large-memory-computing/large-mem.md)

## Software

* [Software on Oscar](software/software.md)
* [Using Modules](software/modules.md)
* [Migration of MPI Apps to Slurm 22.05.7](software/migration-of-mpi-apps-to-slurm-22.05.7.md)
* [Python on Oscar](software/python-on-oscar.md)
* [Python in batch jobs](software/python-in-batch-jobs.md)
* [Installing Python Packages](software/python-installs.md)
* [Installing R Packages](software/r-installs.md)
* [Using CCMake](software/ccmake.md)
* [Intro to Parallel Programming](software/intro-to-parallel-programming.md)
* [Anaconda](software/anaconda.md)
* [Miniconda](software/miniconda.md)
* [DMTCP](software/dmtcp.md)
* [Screen](software/screen.md)
* [VASP](software/vasp.md)
* [Gaussian](software/gaussian.md)
* [IDL](software/using-idl.md)
* [MPI4PY](software/mpi4py.md)

## Jupyter Notebooks/Labs <a href="#jupyter-notebooks" id="jupyter-notebooks"></a>

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

## Visualization 🕶

* [ParaView Remote Rendering](visualization/paraview-remote-rendering.md)

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

## Installing Software Packages Locally <a href="#local-install" id="local-install"></a>

* [Using a CESM module](local-install/cesm.md)
* [Installing your own version of CESM](local-install/installing-your-own-version-of-cesm.md)
* [Installing your own version of Quantum Espresso](local-install/installing-your-own-version-of-quantum-espresso.md)
* [Installing your own version of Qmcpack](local-install/installing-your-own-version-of-qmcpack.md)

## dbGaP <a href="#dbgap-data" id="dbgap-data"></a>

* [dbGaP Architecture](dbgap-data/dbgap-project.md)
* [dbGaP Data Transfers](dbgap-data/dbgap-data-transfers.md)
* [dbGaP Job Submission](dbgap-data/dbgap-job-submission.md)
