---
title: Python Installs
date: '2019-01-30T17:51:11.000Z'
draft: false
project: Oscar
section: Software
weight: 0
icon: check
---

# Installing Python Packages

## Installing python packages

{% hint style="info" %}
We use angular brackets `<>` to denote command line options that you should replace with an appropriate value
{% endhint %}

Users can install python packages

* into their home directory
* into a custom location
* using a virtual environment
* from source into a custom location

### Install into your home directory

The `--user` flag will instruct pip to install to you home directory

```bash
pip install --user <package>
```

This will install the package under the following path in user's HOME directory:

```text
~/.local/lib/python<version>/site-packages
```

{% hint style="warning" %}
If you omit the `--user` flag you will see

```text
    IOError: [Errno 13] Permission denied: '/gpfs/runtime/opt/python/2.7.3/lib/python2.7/site-packages/ordereddict.py'
```

This is because users do not have access to the default locations where software is installed.
{% endhint %}

## Install at custom location

Users have a limit of 10GB for their home directories on Oscar. Hence, users might want to use their data directory instead for installing software. Another motivation to do that is to have shared access to the software among the whole research group.

```bash
 pip install --target=</path/to/install/location> <package>
```

This path to install location will have to be added to the **PYTHONPATH** environment variable so that python can find the python modules to be used. This is not necessary for software installed using the `--user` option.

```bash
export PYTHONPATH=</path/to/install/location>:$PYTHONPATH
```

This can be added at the end of your `.bashrc` file in your home directory. This will update the PYTHONPATH environment variable each time during startup. Alternatively, you can update PYTHONPATH in your batch script as required. This can be cleaner as compared to the former method. If you have a lot of python installs at different locations, adding everything to PYTHONPATH can create conflicts and other issues.

A caveat of using this method is that pip will install the packages \(along with its requirements\) even if the package required is already installed under the global install or the default local install location. Hence, this is more of a brute force method and not the most efficient one.

For example, if your package depends on numpy or scipy, you might want to use the numpy and scipy under our global install as those have been compiled with MKL support. Using the `--target` option will reinstall numpy with default optimizations and without MKL support at the specified location.

## Using `virtualenv`

Virtual environments are an efficient way to install python packages for a specific workflow. [This webpage](https://virtualenv.pypa.io/en/stable/) gives a good explanation of the use cases.

## Installing from source

Sometimes, python software is not packaged by the developers to be installed by pip. Or, you may want to use the development version which has not been packaged. In this case, the python package can be installed by downloading the source code itself. Most python packages can be installed by running the `setup.py` script that should be included in the downloaded files.

{% hint style="warning" %}
You will need to provide a "prefix path" for the install location

```text
python setup.py install --prefix=</path/to/install/location>
```
{% endhint %}

This will create the sub-directories `bin`, `lib`, etc. at the location provided above and install the packages there. The environment will have to be set up accordingly to use the package:

```bash
export PATH=</path/to/install/location>/bin:$PATH
export PYTHONPATH=</path/to/install/location>/lib/python<version>/site-packages:$PYTHONPATH
```

