# Testing Jupyter Notebooks on RHEL9 mini-cluster

Follow these instructions to test your Jupyter notebooks on the RHEL 9 minicluster during the transition to the new cluster. After maintenance, these instructions will be obsolete and you will be able to use the OOD apps.

## Instructions:

### 1. Start a Desktop session

1. Start a desktop session on Open OnDemand. For a refresher, follow the instructions [here](../connecting-to-oscar/open-ondemand/desktop-app-vnc.md).
2. Open a terminal. This terminal is running on the old RHEL 7. Run this command to start firefox

```bash
 module load firefox/87.0 && firefox &
```

### 2. Start an interactive job on RHEL 9

1. Follow the instructions [here](lmod-new-module-system.md#accessing-rhel9-minicluster) to connect to login009.
2. Start an interactive job with the appropriate amount of resources. For example, to request 4 cores and 16GB of memory for 2 hours, run:

```bash
interact -n 1 -m 16g -t 2:00:00
```

3. On the compute node, run these commands:

```bash
unset XDG_RUNTIME_DIR
module load anaconda
ipnport=$(shuf -i8000-9999 -n1)
echo $ipnport
ipnip=$(hostname -i)
echo $ipnip
jupyter-notebook --no-browser --port=$ipnport --ip=$ipnip
```

{% hint style="info" %}
Replace jupyter-notebook with jupyter-lab in the last line to use JupyterLab interface
{% endhint %}

4. You will see a lot of text output in the terminal screen. Find the line that looks like&#x20;

```bash
file:///oscar/home/...........-open.html
```

5. Copy that line.

### 3. Run Jupyter notebook in the Desktop session

Go back to your Open OnDemand Desktop session. Paste the line from the previous step in the address bar on Firefox.

You should see Jupyter notebook displayed inside the browser. While the computations happen on the compute node running RHEL 9, you will see the Jupyter interface on the older OS.

## Testing Virtual Environments:

There are two ways to test any conda or python virtual environments that you may have installed in your personal directories on Oscar.

### - Switch kernel in the Jupyter interface

If your Python or Conda environment has been configured with ipykernel correctly, you will see your environment in the selection list when you try to switch the kernel.&#x20;

For more information on configuring your environments, follow the instructions [here](../connecting-to-oscar/open-ondemand/using-python-or-conda-environments-in-the-jupyter-app.md).

### - Activate environment before starting Jupyter notebook

Activate your Python virtual environment or Conda environment before running the `jupyter-notebook` command. If you are using a Python virtual environment, you may not need to run the line `module load anaconda`
