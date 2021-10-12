# Jupyter Notebooks on Oscar

## Installing Jupyter Notebook

The anaconda/3-5.2.0 module provides jupyter-notebook. Users can also use pip or anaconda to [install jupyter notebook](https://jupyter.readthedocs.io/en/latest/install.html). 

## Running Jupyter Notebook on Oscar

There are a couple of ways to use [Jupyter](https://jupyter.org) Notebook on Oscar.   You can run Jupyter Notebook

* in a VNC session 
* using a batch job
* in an interactive session

 With the batch job or interactive session method, you use a browser on your machine to connect to your Jupyter Notebook server on Oscar.  

{% hint style="info" %}
Start by going to the directory you want to access when using Jupyter Notebook, and then start Jupyter Notebook. The directory where a Jupyter Notebook is started is the working directory for the Notebook.
{% endhint %}

{% hint style="warning" %}
Do not run Jupyter Notebook on login nodes.
{% endhint %}

## In a VNC Session

Start a [VNC session](../connecting-to-oscar/vnc.md), and open up a terminal in the VNC session . To start a Jupyter Notebook, enter

```
jupyter-notebook
```

This will start the Jupyter Notebook server and open up a browser with the notebook.

{% hint style="info" %}
If you installed Jupyter Notebook with pip, you may need to give the full path:

`~/.local/bin/jupyter-notebook`
{% endhint %}

## Using a Batch Job

1. Submit an ssh tunnel to the server.
2. Set up an ssh tunnel to the server.
3. Open a browser to view the notebook.
4. Use `scancel` to end the batch job when you are done.

### 1. Submit batch script

Here is an example batch script to start a Jupyter notebook server on an Oscar compute node

```
#!/bin/bash
#SBATCH --nodes 1
#SBATCH -c 6
#SBATCH --time 04:00:00
#SBATCH --mem-per-cpu 3G
#SBATCH --job-name tunnel
#SBATCH --output jupyter-log-%J.txt
## get tunneling info
XDG_RUNTIME_DIR=""
ipnport=$(shuf -i8000-9999 -n1)
ipnip=$(hostname -i)
## print tunneling instructions to jupyter-log-{jobid}.txt
echo -e "
    Copy/Paste this in your local terminal to ssh tunnel with remote
    -----------------------------------------------------------------
    ssh -N -L $ipnport:$ipnip:$ipnport $USER@ssh.ccv.brown.edu
    -----------------------------------------------------------------
    Then open a browser on your local machine to the following address
    ------------------------------------------------------------------
    localhost:$ipnport  (prefix w/ https:// if using password)
    ------------------------------------------------------------------
    "
## start an ipcluster instance and launch jupyter server
module load anaconda/3-5.2.0
jupyter-notebook --no-browser --port=$ipnport --ip=$ipnip
```

{% hint style="info" %}
If you installed Jupyter notebook with pip you may need to give the full path:

`~/.local/bin/jupyter-notebook --no-browser --port-$ipnport --ip=$ipnip`
{% endhint %}

This script can be found in \~/batch_scripts.  Copy this example and submit this script with 

`sbatch jupyter.sh`

Once your batch job is running  there will be a file named `jupyter-log-`{jobid}`.txt`containing the information you need to connect to your jupyter notebook server on Oscar. To check if your job is running, use `myq`.

The output from `myq` will look something like this:

```
Jobs for user mhamilton

Running:
ID       NAME    PART.  QOS          CPU  WALLTIME  REMAIN   NODES
7239096  tunnel  batch  pri-mhamilt  6    4:00:00   3:57:33  node1036

Pending:
(none)
```

### 2. Set up an ssh tunnel to the notebook server

In this example the jobID is 7239096. To view the notebook server information, use `cat`. For this example:

`cat jupyter-log-7239096.txt`

Open a terminal **on your machine** and copy and paste the `ssh -N -L ........` line into the terminal.

```
 ssh -N -L $ipnport:$ipnip:$ipnport user@ssh.ccv.brown.edu
```

{% hint style="info" %}
If you are using Windows, follow the[ Tunneling into Jupyter with Windows](https://docs.ccv.brown.edu/oscar/jupyter-notebooks/tunneling-into-jupyter-with-windows) documentation to complete this step.
{% endhint %}

Enter your Oscar password.  Note it will appear that nothing has happened.

### 3. Open a browser to view the notebook

Open a browser on your local machine to the address given in `cat jupyter-log-{jobid}.txt`.

```
localhost:9349  (prefix w/ https:// if using password)
```

The notebook will ask for a token.  Copy the token from `jupyter-log-{jobid}.txt`. Then your notebook will start.

{% hint style="warning" %}
Remember to `scancel {jobid}` when you are done with your notebook session.
{% endhint %}

## In an Interactive Session

1. Start Jupyter Notebook in an interactive job.
2. Set up an ssh tunnel to the server.
3. Open a browser to view the notebook.
4. Use `scancel` to end the batch job when you are done.

### 1. Start a Jupyter Notebook in an interactive job

Start an [Interactive job](../submitting-jobs/interact.md) and then in your interactive session  enter the following:

```
unset XDG_RUNTIME_DIR
module load anaconda/3-5.2.0
ipnport=$(shuf -i8000-9999 -n1)
echo $ipnport
ipnip=$(hostname -i)
echo $ipnip
jupyter-notebook --no-browser --port=$ipnport --ip=$ipnip
```

An output similar to the one below indicates that Jupyter Notebook has started:

> $ jupyter-notebook --no-browser --port=$ipnport --ip=$ipnip
>
> \[I 13:35:25.948 NotebookApp] JupyterLab beta preview extension loaded from /gpfs/runtime/opt/anaconda/3-5.2.0/lib/python3.6/site-packages/jupyterlab
>
> \[I 13:35:25.948 NotebookApp] JupyterLab application directory is /gpfs/runtime/opt/anaconda/3-5.2.0/share/jupyter/lab
>
> \[I 13:35:25.975 NotebookApp] Serving notebooks from local directory: /gpfs_home/yliu385
>
> \[I 13:35:25.975 NotebookApp] 0 active kernels
>
> \[I 13:35:25.975 NotebookApp] The Jupyter Notebook is running at:
>
> \[I 13:35:25.975 NotebookApp] http://172.20.207.61:8855/?**token=c58d7877cfcf1547dd8e6153123568f58dc6d5ce3f4c9d98**
>
> \[I 13:35:25.975 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
>
> \[C 13:35:25.994 NotebookApp] 
>
>     Copy/paste this URL into your browser when you connect for the first time,
>
>     to login with a token:
>
>         http://172.20.207.61:8855/?token=c58d7877cfcf1547dd8e6153123568f58dc6d5ce3f4c9d98\&token=c58d7877cfcf1547dd8e6153123568f58dc6d5ce3f4c9d98\
>

### 2. Setup an ssh tunnel to the server

Open a terminal **on your machine** and enter the following line (replace $ipnip and $ipnport with the values from the two `echo` commands in the previous step).

```
 ssh -N -L $ipnport:$ipnip:$ipnport user@ssh.ccv.brown.edu
```

{% hint style="info" %}
If you are using Windows, follow the[ Tunneling into Jupyter with Windows](https://docs.ccv.brown.edu/oscar/jupyter-notebooks/tunneling-into-jupyter-with-windows) documentation to complete this step.
{% endhint %}

Enter your Oscar password.  Note it will appear that nothing has happened.

### 3. Open a browser to view the notebook

Open a browser on your local machine to the address:

```
localhost:$ipnport  (prefix w/ https:// if using password)
```

Again, you need to replace `$ipnport` with the value from the first `echo` command in Step 1. The notebook will ask for a token.  You can copy the token from the output from Step 2.

### 4. Press Ctrl+C twice to kill your Jupyter Notebook server

Once you finish and no longer need the Jupyter Notebook server, you can kill the server by pressing Ctrl+C twice in your interactive session.
