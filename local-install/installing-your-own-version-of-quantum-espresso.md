# Installing your own version of Quantum Espresso

These instructions are for users who need to install their own version of Quantum Espresso. 

{% hint style="warning" %}
Do not load the 'quantumespresso' module.  If you have a 'quantumespresso' module loaded, unload it:

`module unload`quantumespresso
{% endhint %}

Step 1: Create a new directory where you want to install Quantum Espresso:

```text
mkdir -p quantum-espresso/src
cd quantum-espresso/src/
```

Step 2: Download the version of Quantum Espresso you want from the GitHub repo:

```text
https://github.com/QEF/q-e/releases
wget https://github.com/QEF/q-e/archive/refs/tags/qe-6.4.tar.gz
tar xvf qe-6.4.tar.gz
cd q-e-qe-6.4/
```

Step 3: Load the newer compiler module and configure it with custom flags.

```text
module load intel/2020.2
CC=icc CXX=icpc F77=ifort FC=ifort ./configure --prefix=/users/<username>/data/quantum-espresso/
```

{% hint style="warning" %}
The --prefix PATH will be replaced by your custom install location
{% endhint %}

Step 4: If you are happy with the configure flags then install them by:

```text
make
make install 
```

## Installing custom Addon patches for Quantum Espresso 

There are various addons available for Quantum Espresso, in this tutorial, we will install [Environ](https://environ.readthedocs.io/en/latest/) - a computational library aimed at introducing environment effects to atomistic first-principles simulations.

The source code can be obtained from [this github repo](https://github.com/brown-ccv/CIME_Oscar). The easiest way to incorporate these files into your build is to place them in the root directory of Quantum Espresso \(~/data/quantum-espresso/src/q-e-qe-6.4\). For example:

```text
git clone https://gitlab.com/olivieroandreussi/Environ.git
```

1. run the QE script addonpatch.sh with the -patch option:

   ```text
   ./install/addsonpatch.sh Environ Environ/src Modules -patch
   ```

2. run the Environ installation script with the -patch option:

   ```text
   ./Environ/patches/environpatch.sh -patch
   ```

3. run the QE script to regenerate modules’ dependencies:

   ```text
   ./install/makedeps.sh
   ```

4. re-compile, e.g.:

   ```text
   make pw
   ```

