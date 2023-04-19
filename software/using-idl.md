---
description: >-
  Interactive Data Language (IDL) is a programming language used for data
  analysis and is popular in several scientific fields. This page explains how
  to use the IDL module on Oscar run IDL programs.
---

# IDL

## Setting Up IDL

First load the IDL module that you want to use with `module load idl/version_number`:

{% hint style="info" %}
You can use the command `module load idl` to simply load the default version. This is demonstrated in the following command followed by system dialogue.
{% endhint %}

```
$ module load idl
module: loading 'idl/8.5.1'
module: idl: License owned by Jonathan Pober. Set up the environment for IDL by running: "shopt -s expand_aliases; source $IDL/envi53/bin/envi_setup.bash".
```

As indicated by the system dialogue, you will need to enter the following command to set up the environment for IDL:

```
$ shopt -s expand_aliases; source $IDL/envi53/bin/envi_setup.bash
```

## IDL Command Line

Once you've set up IDL in the way outlined above, you can open the IDL command line by simply using the command `idl`:

```
$ idl
IDL Version 8.5.1 (linux x86_64 m64). (c) 2015, Exelis Visual Information Solutions, Inc., a subsidiary of Harris Corporation.
Installation number: 5501393-2.
Licensed for use by: Brown University

IDL>
```

{% hint style="info" %}
Note: To exit this environment, simply use the command `exit`
{% endhint %}

As is stated in the [IDL Documentation](https://www.l3harrisgeospatial.com/docs/using\_idl\_home.html), IDL in command-line mode "uses a text-only interface and sends output to your terminal screen or shell window." Thus, this is a mode in which you can enter commands and see their results in real time, but it is not where one should write full IDL programs.

## IDL Programs

To write an IDL program, you can use any of the text editors on Oscar (such as vim, emacs, and nano) or you can create the program in a file on your own computer and then copy that file to Oscar when you are finished. Here is an example (hello world) IDL program `idl_hello_world.pro`:

```
PRO IDL_HELLO_WORLD

PRINT, ("Hello World!")

END
```

{% hint style="info" %}
This file and the batch file below can be found at `/gpfs/runtime/software_examples/idl/8.5.1` if you wish to copy them and test the process yourself.
{% endhint %}

Once you have the `.pro` file on Oscar, you can then run this file using a batch script. Here is a bare bones version of a batch script (called `idl_hello_world.sh)`that will run the script `idl_hello_world.pro` (note that the `.pro` is omitted in the script).

```
#!/bin/bash

module load idl
shopt -s expand_aliases; source $IDL/envi53/bin/envi_setup.bash

idl -e idl_hello_world
```

We can then run the batch file by using the `sbatch` command:

```
$ sbatch idl_hello_world.sh
```
