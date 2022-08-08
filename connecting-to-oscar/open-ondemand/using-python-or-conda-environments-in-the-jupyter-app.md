# Using Python or Conda environments in the Jupyter App

We recommend all users to install Python packages within an environment. This can be a Conda to a python virtual environment. More information can be found [here](../../software/python-installs.md). Follow these steps to use such environments in the [Jupyter app](https://ood.ccv.brown.edu/pun/sys/dashboard/batch\_connect/sys/bc\_ccv\_jupyter/session\_contexts/new).

## Python Environments:

### One Time Setup:

1. Open a terminal on Oscar.
2. Load the relevant python module and activate the environment
3. Run `pip install notebook` to install Jupyter notebook, if not already installed.
4. Run `pip install ipykernel` to install ipykernel in this environment.
5. Run `python -m ipykernel install --user --name=<myenv>` where `<myenv>` is the name of the environment.

### Launching Jupyter Notebook

1. Open the "Basic Jupyter Notebook" app on the Open OnDemand interface
2. Under "Oscar Anaconda module", choose "anaconda/2020.02"
3. Leave the "Conda Env" field blank
4. Under the "Modules" , enter the name of the python module used to create the environment.
5. Choose the other options as required.
6. Click "Launch" to start the job
7. Click "Connect to Jupyter" on the next screen.
8. To start a new notebook, click "New" -> \<myenv> where \<myenv> is the environment.
9. For starting a pre-existing notebook, open the notebook. In the Jupyter interface, click "Kernel" -> "Change Kernel" -> \<myenv> where myenv is the name of the environment.

## Conda Environments



### One Time Setup:

1. Open a terminal on Oscar.
2. Activate the conda environment.
3. Run `pip install notebook` to install Jupyter notebook, if not already installed.
4. Run `pip install ipykernel` to install ipykernel in this environment.
5. Run `python -m ipykernel install --user --name=<myenv>` where `<myenv>` is the name of the environment.

### Launching Jupyter Notebook

1. Open the "Basic Jupyter Notebook" app on the Open OnDemand interface
2. Under "Oscar Anaconda module", choose "anaconda/2020.02"
3. Enter the name of the conda environment in "Conda Env"
4. Choose the other options as required.
5. Click "Launch" to start the job
6. Click "Connect to Jupyter" on the next screen.
7. To start a new notebook, click "New" -> \<myenv> where \<myenv> is the environment.
8. For starting a pre-existing notebook, open the notebook. In the Jupyter interface, click "Kernel" -> "Change Kernel" -> \<myenv> where myenv is the name of the environment.
